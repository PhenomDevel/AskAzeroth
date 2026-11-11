-- luacheck: read globals UnitName
local _, ns = ...

-- Transport for all addon traffic: compress + encode with LibDeflate, send via
-- AceComm. Messages are held while they can't go out (channel not joined, no
-- peers known, chat messaging locked down during encounters etc.) and sent
-- afterwards in order. ChatThrottleLib would drop them instead: it only
-- retries on AddonMessageThrottle, not on lockdown.
--
-- Two modes:
--   * "channel" (retail): to everyone in the language channel.
--   * "whisper" (Forever): the server rejects addon messages in chat
--     channels (CHAT_MSG_CHANNEL_NOTICE "NOT_ALLOWED_IN_CHANNEL"), so
--     messages go as addon whispers to random peers (Peers.lua) and are
--     passed on by them (Net.lua). Forever starts in this mode; retail
--     switches to it on that notice and resends what just went out.
--
-- Besides that, both modes can greet the own group and guild over their
-- addon distributions (Comm.SendGroup): those are no chat channels, so the
-- server delivers them on Forever too. Whoever answers is a peer, which
-- finds other AskAzeroth users without the channel's join notices.
--
-- Message: AA_COMM_MODE (mode)
local Comm = {}
ns.Comm = Comm

local C = ns.C
local LibDeflate = LibStub("LibDeflate")
LibStub("AceComm-3.0"):Embed(Comm)

-- Received messages above this (encoded) size are dropped unread.
Comm.MAX_MESSAGE_SIZE = 32 * 1024
-- Deliver own messages to the handlers too. The server echoes CHANNEL
-- messages back to the sender, so this allows testing with a single account.
Comm.loopback = false

local MAX_QUEUE = 100
local FLUSH_INTERVAL = 1

local queue = {}
local ticker
local handlers = {}
local langByPrefix = {}
-- Recently transmitted channel messages, resent when the mode switches.
local recent = {}
-- Payloads sent in the last SENT_MEMORY seconds: data → GetTime(). One that
-- comes back is our own (e.g. a whisper to ourselves while our name format
-- wasn't known yet); its sender is how the others see our name.
local SENT_MEMORY = 120
local sentData = {}

-- Forever builds use interface numbers below retail's (16001 vs. 12xxxx).
-- Addon distributions that reach the own group or guild (Comm.SendGroup).
local GROUP_DISTRIBUTIONS = { PARTY = true, RAID = true, INSTANCE_CHAT = true, GUILD = true }

local function IsForever()
	local _, _, _, interface = GetBuildInfo()
	return type(interface) == "number" and interface < 100000
end

Comm.mode = IsForever() and "whisper" or "channel"

function Comm.IsWhisperMode()
	return Comm.mode == "whisper"
end

function Comm.InLockdown()
	local check = C_ChatInfo.InChatMessagingLockdown
	return check ~= nil and check() and true or false
end

-- entry: { lang, targets?, distribution? }
local function CanSend(entry)
	if Comm.InLockdown() then
		return false
	end
	if entry.distribution then
		return true
	end
	if Comm.IsWhisperMode() then
		return entry.targets ~= nil or ns.Peers.Count(entry.lang) > 0
	end
	return ns.Channel.GetNumber(entry.lang) ~= nil
end

function Comm.CanSend(lang)
	return CanSend({ lang = lang })
end

function Comm.GetQueueLength()
	return #queue
end

local function Transmit(entry)
	local callback = entry.callback
	local onChunk = callback and function(_, sent, total, didSend)
		callback(sent, total, didSend)
	end
	local prefix = C.GetCommPrefix(entry.lang)
	local now = GetTime()
	for data, time in pairs(sentData) do
		if time < now - SENT_MEMORY then
			sentData[data] = nil
		end
	end
	sentData[entry.data] = now
	if entry.distribution then
		Comm:SendCommMessage(prefix, entry.data, entry.distribution, nil, entry.prio, onChunk)
		return
	end
	if Comm.IsWhisperMode() then
		local targets = entry.targets or ns.Peers.Pick(entry.lang, C.WHISPER_FANOUT)
		for i, name in ipairs(targets) do
			-- Progress of the first copy only.
			Comm:SendCommMessage(prefix, entry.data, "WHISPER", ns.Util.WhisperName(name), entry.prio, i == 1 and onChunk or nil)
		end
		return
	end
	Comm:SendCommMessage(prefix, entry.data, "CHANNEL", ns.Channel.GetNumber(entry.lang), entry.prio, onChunk)
	while recent[1] and recent[1].time < now - C.RESEND_WINDOW do
		table.remove(recent, 1)
	end
	entry.time = now
	recent[#recent + 1] = entry
end

-- Sends what can go out now; a held message keeps later ones of the same
-- language back so their order is kept.
local function Flush()
	local blocked = {}
	local i = 1
	while queue[i] do
		local entry = queue[i]
		if not blocked[entry.lang] and CanSend(entry) then
			table.remove(queue, i)
			Transmit(entry)
		else
			blocked[entry.lang] = true
			i = i + 1
		end
	end
	if not queue[1] and ticker then
		ticker:Cancel()
		ticker = nil
		ns:Fire("AA_COMM_FLUSHED")
	end
end

local function HasQueued(lang)
	for i = 1, #queue do
		if queue[i].lang == lang then
			return true
		end
	end
	return false
end

local function Hold(entry)
	if #queue >= MAX_QUEUE then
		table.remove(queue, 1)
	end
	queue[#queue + 1] = entry
	if not ticker then
		ticker = C_Timer.NewTicker(FLUSH_INTERVAL, Flush)
	end
	ns:Fire("AA_COMM_HELD", #queue)
end

-- Sends text in lang: to everyone in the language channel, or in whisper
-- mode to targets (list of full names) or else to C.WHISPER_FANOUT random
-- peers. Targets are ignored in channel mode. prio: ChatThrottleLib priority
-- ("BULK", "NORMAL", "ALERT"). callback(sentBytes, totalBytes, didSend) runs
-- per transmitted chunk. Returns the encoded size and whether the message
-- was held for later.
function Comm.Send(lang, text, prio, callback, targets)
	local data = LibDeflate:EncodeForWoWAddonChannel(LibDeflate:CompressDeflate(text))
	if targets and #targets == 0 then
		return #data, false
	end
	local entry = { lang = lang, data = data, prio = prio or "NORMAL", callback = callback, targets = targets }
	if not HasQueued(lang) and CanSend(entry) then
		Transmit(entry)
		return #data, false
	end
	Hold(entry)
	return #data, true
end

-- Sends text in lang to the own group or guild: distribution is one of
-- PARTY, RAID, INSTANCE_CHAT, GUILD. Only players who selected lang read it.
function Comm.SendGroup(lang, text, distribution, prio)
	if not GROUP_DISTRIBUTIONS[distribution] then
		return 0, false
	end
	local data = LibDeflate:EncodeForWoWAddonChannel(LibDeflate:CompressDeflate(text))
	local entry = { lang = lang, data = data, prio = prio or "NORMAL", distribution = distribution }
	if not HasQueued(lang) and CanSend(entry) then
		Transmit(entry)
		return #data, false
	end
	Hold(entry)
	return #data, true
end

-- Switches to whisper mode and resends the channel messages of the last
-- C.RESEND_WINDOW seconds (the server answers the rejected ones late).
function Comm.SetWhisperMode()
	if Comm.IsWhisperMode() then
		return
	end
	Comm.mode = "whisper"
	local now = GetTime()
	for _, entry in ipairs(recent) do
		if entry.time >= now - C.RESEND_WINDOW then
			entry.time = nil
			Hold(entry)
		end
	end
	wipe(recent)
	ns:Fire("AA_COMM_MODE", Comm.mode)
end

-- handler(text, sender, lang, distribution) receives every valid message of
-- other players (and own ones while Comm.loopback is set).
function Comm.RegisterHandler(handler)
	handlers[#handlers + 1] = handler
end

local function IsSelf(sender)
	return ns.Util.FullName(sender) == ns:GetPlayerFullName()
end
Comm.IsSelf = IsSelf

-- An own payload came back from sender. Taken as the own name only when it
-- starts with the character's name, so a player who sends our message back
-- to us can't pass as us.
local function LearnSelf(sender)
	local own = UnitName("player")
	if type(own) ~= "string" or own == "" or sender:sub(1, #own) ~= own then
		return
	end
	ns.Peers.RemoveEverywhere(sender, "self")
	if ns.charDb and ns.charDb.selfName ~= sender then
		ns.charDb.selfName = sender
		ns:CheckPlayerName()
	end
end

function Comm:OnCommReceived(prefix, data, distribution, sender)
	local lang = langByPrefix[prefix]
	if not lang or (distribution ~= "CHANNEL" and distribution ~= "WHISPER" and not GROUP_DISTRIBUTIONS[distribution]) then
		return
	end
	if issecretvalue and (issecretvalue(data) or issecretvalue(sender)) then
		return
	end
	if type(data) ~= "string" or type(sender) ~= "string" or #data > Comm.MAX_MESSAGE_SIZE then
		return
	end
	local own = sentData[data] ~= nil
	if own then
		LearnSelf(sender)
	end
	if (own or IsSelf(sender)) and not Comm.loopback then
		return
	end
	-- First-hand contact: the sender uses AskAzeroth in this language.
	if distribution ~= "CHANNEL" then
		if not ns.Channel.IsSelected(lang) then
			return
		end
		ns.Peers.Add(lang, sender, false, distribution == "WHISPER" and "whisper" or "group")
	end
	local decoded = LibDeflate:DecodeForWoWAddonChannel(data)
	local text = decoded and LibDeflate:DecompressDeflate(decoded)
	if type(text) ~= "string" then
		ns:Fire("AA_COMM_INVALID", sender, lang)
		return
	end
	for i = 1, #handlers do
		handlers[i](text, sender, lang, distribution)
	end
end

for _, lang in ipairs(C.LANGUAGES) do
	local prefix = C.GetCommPrefix(lang)
	langByPrefix[prefix] = lang
	Comm:RegisterComm(prefix)
end

ns.RegisterCallback(Comm, "AA_CHANNEL_READY", Flush)
ns.RegisterCallback(Comm, "AA_PEERS_CHANGED", Flush)

ns.RegisterCallback(Comm, "AA_CHANNEL_NOTICE", function(_, _, notice)
	if notice == "NOT_ALLOWED_IN_CHANNEL" then
		Comm.SetWhisperMode()
	end
end)
