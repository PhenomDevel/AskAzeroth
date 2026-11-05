local _, ns = ...

-- Transport for all addon traffic: compress + encode with LibDeflate, send via
-- AceComm over the language channel. Messages are held while their channel
-- isn't joined or chat messaging is locked down (encounters etc.) and sent
-- afterwards in order. ChatThrottleLib would drop them instead: it only
-- retries on AddonMessageThrottle, not on lockdown.
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

function Comm.InLockdown()
	local check = C_ChatInfo.InChatMessagingLockdown
	return check ~= nil and check() and true or false
end

function Comm.CanSend(lang)
	return ns.Channel.GetNumber(lang) ~= nil and not Comm.InLockdown()
end

function Comm.GetQueueLength()
	return #queue
end

local function Transmit(entry)
	local callback = entry.callback
	Comm:SendCommMessage(C.GetCommPrefix(entry.lang), entry.data, "CHANNEL", ns.Channel.GetNumber(entry.lang), entry.prio, callback and function(_, sent, total, didSend)
		callback(sent, total, didSend)
	end)
end

-- Sends what can go out now; a held message keeps later ones of the same
-- language back so their order is kept.
local function Flush()
	local blocked = {}
	local i = 1
	while queue[i] do
		local entry = queue[i]
		if not blocked[entry.lang] and Comm.CanSend(entry.lang) then
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

-- Sends text to everyone in the channel of lang. prio: ChatThrottleLib
-- priority ("BULK", "NORMAL", "ALERT"). callback(sentBytes, totalBytes,
-- didSend) runs per transmitted chunk. Returns the encoded size and whether
-- the message was held for later.
function Comm.Send(lang, text, prio, callback)
	local data = LibDeflate:EncodeForWoWAddonChannel(LibDeflate:CompressDeflate(text))
	local entry = { lang = lang, data = data, prio = prio or "NORMAL", callback = callback }
	if not HasQueued(lang) and Comm.CanSend(lang) then
		Transmit(entry)
		return #data, false
	end
	if #queue >= MAX_QUEUE then
		table.remove(queue, 1)
	end
	queue[#queue + 1] = entry
	if not ticker then
		ticker = C_Timer.NewTicker(FLUSH_INTERVAL, Flush)
	end
	ns:Fire("AA_COMM_HELD", #queue)
	return #data, true
end

-- handler(text, sender, lang) receives every valid message of other players
-- (and own ones while Comm.loopback is set).
function Comm.RegisterHandler(handler)
	handlers[#handlers + 1] = handler
end

local function IsSelf(sender)
	return ns.Util.FullName(sender) == ns:GetPlayerFullName()
end
Comm.IsSelf = IsSelf

function Comm:OnCommReceived(prefix, data, distribution, sender)
	local lang = langByPrefix[prefix]
	if not lang or distribution ~= "CHANNEL" then
		return
	end
	if issecretvalue and (issecretvalue(data) or issecretvalue(sender)) then
		return
	end
	if type(data) ~= "string" or type(sender) ~= "string" or #data > Comm.MAX_MESSAGE_SIZE or (IsSelf(sender) and not Comm.loopback) then
		return
	end
	local decoded = LibDeflate:DecodeForWoWAddonChannel(data)
	local text = decoded and LibDeflate:DecompressDeflate(decoded)
	if type(text) ~= "string" then
		ns:Fire("AA_COMM_INVALID", sender, lang)
		return
	end
	for i = 1, #handlers do
		handlers[i](text, sender, lang)
	end
end

for _, lang in ipairs(C.LANGUAGES) do
	local prefix = C.GetCommPrefix(lang)
	langByPrefix[prefix] = lang
	Comm:RegisterComm(prefix)
end

ns.RegisterCallback(Comm, "AA_CHANNEL_READY", Flush)
