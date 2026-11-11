-- luacheck: read globals GetChannelList
local _, ns = ...

-- Channel debug for players (packaged, unlike Probe/):
--   /aa channels               state of every language channel, known
--                              users, last sync, the client's channel list
--   /aa channels debug [on|off] tells in chat, in plain sentences, what the
--                              addon does as it happens: channels, other
--                              users found or lost, sync requests and
--                              answers, presence, sent, received and
--                              ignored messages; saved, so the joins after
--                              login show up too
--   /aa channels show | hide   shows our channels in the main chat window
--                              (their notices become visible) or hides them
-- Only reads what the addon and the client already know; sends nothing.
local ChannelDebug = {}
ns.ChannelDebug = ChannelDebug

local C = ns.C
local L = ns.L
local Channel = ns.Channel

ns.dbDefaults.settings.channelDebug = false

-- lang → { sent, received, held, lastReceived (GetTime) }; counted from
-- login, whether the debug output is on or not.
local traffic = {}
for _, lang in ipairs(C.LANGUAGES) do
	traffic[lang] = { sent = 0, received = 0, held = 0 }
end

local TAG_COLOR = "ff9f40"

local function IsOn()
	return ns.db ~= nil and ns.db.settings.channelDebug == true
end

local function IsSecret(value)
	return issecretvalue ~= nil and issecretvalue(value) and true or false
end

local function Safe(value)
	if IsSecret(value) then
		return "<secret>"
	end
	return tostring(value)
end

local function Line(text, ...)
	if select("#", ...) > 0 then
		text = text:format(...)
	end
	DEFAULT_CHAT_FRAME:AddMessage("  " .. text)
end

-- Live output, with a tag so it stands apart from the addon's normal lines.
local function Log(text, ...)
	if not IsOn() then
		return
	end
	if select("#", ...) > 0 then
		text = text:format(...)
	end
	ns:Print("|cff%s[%s]|r %s", TAG_COLOR, L.CHDBG_TAG, text)
end

local function YesNo(value)
	return value and L.YES or L.NO
end

local function ChannelLabel(lang)
	return ("%s (%s)"):format(C.GetChannelName(lang), C.LANGUAGE_NAMES[lang] or lang)
end

local function Ago(at)
	if not at then
		return L.CHDBG_NEVER
	end
	return L.CHDBG_AGO:format(math.floor(GetTime() - at))
end

--------------------------------------------------------------------------------
-- Overview
--------------------------------------------------------------------------------

local function LanguageStatus(lang)
	local number = Channel.GetNumber(lang)
	local state = Channel.GetState(lang)
	if number then
		return L.CHDBG_JOINED:format(number)
	elseif not Channel.IsSelected(lang) then
		return L.CHDBG_NOT_SELECTED
	elseif not state then
		return L.CHDBG_NOT_STARTED
	elseif state.waiting then
		return L.CHDBG_JOINING:format(state.attempts, Channel.MAX_ATTEMPTS)
	elseif state.attempts >= Channel.MAX_ATTEMPTS then
		return L.CHDBG_FAILED
	end
	return L.CHDBG_NOT_JOINED
end

-- The client's channels in slot order: GetChannelList returns
-- id, name, disabled for each of them.
local function ClientChannels()
	local list = {}
	local values = { GetChannelList() }
	for i = 1, #values - 2, 3 do
		list[#list + 1] = { id = values[i], name = values[i + 1], disabled = values[i + 2] }
	end
	return list
end

function ChannelDebug.PrintOverview()
	ns:Print(L.CHDBG_HEADER)
	for _, lang in ipairs(C.LANGUAGES) do
		local t = traffic[lang]
		local status = LanguageStatus(lang)
		if t.sent > 0 or t.received > 0 or Channel.GetNumber(lang) then
			status = status .. " – " .. L.CHDBG_TRAFFIC:format(t.sent, t.held, t.received, Ago(t.lastReceived))
		end
		Line("|cffffd100%s|r: %s", ChannelLabel(lang), status)
		if Channel.GetNumber(lang) then
			local waitingForPeer, lastSync = ns.Sync.GetState(lang)
			Line("    " .. L.CHDBG_PEERS_SYNC, ns.Peers.Count(lang), waitingForPeer and L.CHDBG_SYNC_STATE_WAITING or Ago(lastSync))
		end
	end
	local unitName, unitRealm = UnitFullName("player")
	Line(L.CHDBG_SELF, Safe(ns:GetPlayerFullName()), Safe(ns.charDb and ns.charDb.selfName or L.CHDBG_NOT_YET), Safe(unitName), Safe(unitRealm), Safe(ns:GetOwnRealm()))
	Line(L.CHDBG_SUMMARY, YesNo(Channel.hidden), YesNo(ns.Comm.InLockdown()), ns.Comm.GetQueueLength(), YesNo(Channel.hasChatFilter), YesNo(IsOn()))

	local channels = ClientChannels()
	ns:Print(L.CHDBG_CLIENT_HEADER, #channels)
	for _, entry in ipairs(channels) do
		local suffix = ""
		if not IsSecret(entry.name) and Channel.GetLanguage(entry.name) then
			suffix = " |cff" .. ns.color .. "(" .. ns.title .. ")|r"
		end
		if not IsSecret(entry.disabled) and entry.disabled == true then
			suffix = suffix .. " " .. L.CHDBG_DISABLED
		end
		Line("#%s %s%s", Safe(entry.id), Safe(entry.name), suffix)
	end
end

--------------------------------------------------------------------------------
-- Live events
--------------------------------------------------------------------------------
-- Every line is a sentence that says what just happened and why, prefixed
-- with the language. Sync, presence and peer events come from Sync.lua,
-- Presence.lua and Peers.lua; the plain sent/received lines cover the rest.

-- Readable notice codes of CHAT_MSG_CHANNEL_NOTICE(_USER); unknown ones are
-- shown as they come (new codes need no update here).
local NOTICES = {
	YOU_JOINED = L.CHDBG_NOTICE_JOINED,
	YOU_CHANGED = L.CHDBG_NOTICE_CHANGED,
	YOU_LEFT = L.CHDBG_NOTICE_LEFT,
	SUSPENDED = L.CHDBG_NOTICE_SUSPENDED,
	THROTTLED = L.CHDBG_NOTICE_THROTTLED,
	WRONG_PASSWORD = L.CHDBG_NOTICE_PASSWORD,
	BANNED = L.CHDBG_NOTICE_BANNED,
	NOT_ALLOWED_IN_CHANNEL = L.CHDBG_NOTICE_NOT_ALLOWED,
}

local function NoticeText(notice)
	notice = Safe(notice)
	if NOTICES[notice] then
		return ("%s (%s)"):format(NOTICES[notice], notice)
	end
	return notice
end

-- What a message is, as a noun ("a question").
local KINDS = {
	Q = L.CHDBG_KIND_Q,
	A = L.CHDBG_KIND_A,
	S = L.CHDBG_KIND_S,
	D = L.CHDBG_KIND_D,
	SR = L.CHDBG_KIND_SR,
	SP = L.CHDBG_KIND_SP,
	P = L.CHDBG_KIND_P,
}

local function KindText(kind)
	return KINDS[kind] or L.CHDBG_KIND_UNKNOWN
end

-- Why a message was ignored (Store.lua, Protocol.lua, Net.lua reasons).
local DROP_REASONS = {
	duplicate = L.CHDBG_DROP_DUPLICATE,
	collision = L.CHDBG_DROP_COLLISION,
	expired = L.CHDBG_DROP_EXPIRED,
	unknown = L.CHDBG_DROP_UNKNOWN,
	lang = L.CHDBG_DROP_LANG,
	rate = L.CHDBG_DROP_RATE,
	["open-limit"] = L.CHDBG_DROP_OPEN_LIMIT,
	["not-author"] = L.CHDBG_DROP_NOT_AUTHOR,
	["answers-full"] = L.CHDBG_DROP_ANSWERS_FULL,
	time = L.CHDBG_DROP_TIME,
	format = L.CHDBG_DROP_FORMAT,
	type = L.CHDBG_DROP_TYPE,
	sender = L.CHDBG_DROP_SENDER,
}

local function DropText(reason)
	reason = Safe(reason)
	return DROP_REASONS[reason] or L.CHDBG_DROP_INVALID:format(reason)
end

local PEER_SOURCES = {
	join = L.CHDBG_SRC_JOIN,
	list = L.CHDBG_SRC_LIST,
	whisper = L.CHDBG_SRC_WHISPER,
	group = L.CHDBG_SRC_GROUP,
	reported = L.CHDBG_SRC_REPORTED,
}

local PEER_REASONS = {
	left = L.CHDBG_RSN_LEFT,
	offline = L.CHDBG_RSN_OFFLINE,
	self = L.CHDBG_RSN_SELF,
}

local DISTRIBUTIONS = {
	PARTY = L.CHDBG_DIST_PARTY,
	RAID = L.CHDBG_DIST_RAID,
	INSTANCE_CHAT = L.CHDBG_DIST_INSTANCE,
	GUILD = L.CHDBG_DIST_GUILD,
}

local MAX_NAMES = 5

local function Name(name)
	if type(name) ~= "string" or IsSecret(name) then
		return Safe(name)
	end
	return ns.Util.ShortName(name)
end

-- "Anna, Bernd" or "Anna, Bernd, … and 18 more"; nil targets: the channel.
local function Targets(targets)
	if not targets then
		return L.CHDBG_TO_CHANNEL
	end
	local names = {}
	for i = 1, math.min(#targets, MAX_NAMES) do
		names[i] = Name(targets[i])
	end
	local text = table.concat(names, ", ")
	if #targets > MAX_NAMES then
		text = L.CHDBG_AND_MORE:format(text, #targets - MAX_NAMES)
	end
	return text
end

-- Log with the language in front: "[Deutsch] …".
local function LogLang(lang, text, ...)
	if not IsOn() then
		return
	end
	if select("#", ...) > 0 then
		text = text:format(...)
	end
	Log("|cffffd100[%s]|r %s", C.LANGUAGE_NAMES[lang] or tostring(lang), text)
end

-- Channels ---------------------------------------------------------------

ns.RegisterCallback(ChannelDebug, "AA_CHANNEL_JOIN_REQUESTED", function(_, lang, attempt)
	LogLang(lang, L.CHDBG_EV_JOIN, C.GetChannelName(lang), attempt, Channel.CountJoined())
end)

ns.RegisterCallback(ChannelDebug, "AA_CHANNEL_READY", function(_, lang, number)
	LogLang(lang, ns.Comm.IsWhisperMode() and L.CHDBG_EV_READY_WHISPER or L.CHDBG_EV_READY, C.GetChannelName(lang), tostring(number))
end)

ns.RegisterCallback(ChannelDebug, "AA_CHANNEL_FAILED", function(_, lang)
	LogLang(lang, L.CHDBG_EV_FAILED, C.GetChannelName(lang), Channel.MAX_ATTEMPTS, Channel.CountJoined())
end)

ns.RegisterCallback(ChannelDebug, "AA_CHANNEL_LEFT", function(_, lang)
	LogLang(lang, L.CHDBG_EV_LEFT, C.GetChannelName(lang))
end)

ns.RegisterCallback(ChannelDebug, "AA_CHANNEL_NOTICE", function(_, lang, notice)
	LogLang(lang, L.CHDBG_EV_NOTICE, C.GetChannelName(lang), NoticeText(notice))
end)

ns.RegisterCallback(ChannelDebug, "AA_CHANNEL_NOTICE_USER", function(_, lang, notice, playerName)
	LogLang(lang, L.CHDBG_EV_NOTICE_USER, C.GetChannelName(lang), NoticeText(notice), Name(playerName))
end)

ns.RegisterCallback(ChannelDebug, "AA_COMM_MODE", function()
	Log(L.CHDBG_EV_WHISPER_MODE)
end)

ns.RegisterCallback(ChannelDebug, "AA_PLAYER_NAME_CHANGED", function(_, old, new)
	Log(L.CHDBG_EV_NAME, Safe(old), Safe(new))
end)

ns.RegisterCallback(ChannelDebug, "AA_LANGUAGES_CHANGED", function(_, lang, selected)
	LogLang(lang, selected and L.CHDBG_EV_SELECTED or L.CHDBG_EV_DESELECTED, C.GetChannelName(lang))
end)

-- Other AskAzeroth users ---------------------------------------------------

ns.RegisterCallback(ChannelDebug, "AA_PEER_ADDED", function(_, lang, name, source, count)
	LogLang(lang, L.CHDBG_PEER_ADDED, Name(name), PEER_SOURCES[source] or tostring(source), count)
end)

ns.RegisterCallback(ChannelDebug, "AA_PEER_REMOVED", function(_, lang, name, reason, count)
	LogLang(lang, L.CHDBG_PEER_REMOVED, Name(name), PEER_REASONS[reason] or tostring(reason), count)
end)

ns.RegisterCallback(ChannelDebug, "AA_PEERS_LOADED", function(_, lang, added, count)
	if added > 0 then
		LogLang(lang, L.CHDBG_PEERS_LOADED, added, count)
	else
		LogLang(lang, L.CHDBG_PEERS_LOADED_NONE)
	end
end)

-- Sync ---------------------------------------------------------------------

local SYNC_SENT = {
	login = L.CHDBG_SYNC_SENT,
	retry = L.CHDBG_SYNC_SENT_RETRY,
	peer = L.CHDBG_SYNC_SENT_PEER,
}

ns.RegisterCallback(ChannelDebug, "AA_SYNC_SENT", function(_, lang, targets, known, why)
	if why == "welcome" then
		LogLang(lang, L.CHDBG_SYNC_SENT_WELCOME, Targets(targets), known)
	else
		LogLang(lang, SYNC_SENT[why] or L.CHDBG_SYNC_SENT, Targets(targets), known)
	end
end)

ns.RegisterCallback(ChannelDebug, "AA_SYNC_WAITING", function(_, lang)
	LogLang(lang, L.CHDBG_SYNC_WAITING, C.GetChannelName(lang))
end)

ns.RegisterCallback(ChannelDebug, "AA_SYNC_NO_ANSWER", function(_, lang, targets, seconds)
	LogLang(lang, L.CHDBG_SYNC_NO_ANSWER, Targets(targets), seconds)
end)

ns.RegisterCallback(ChannelDebug, "AA_SYNC_INCOMING", function(_, lang, sender, known, outcome, delay)
	local name = Name(sender)
	if outcome == "later" then
		LogLang(lang, L.CHDBG_SYNC_IN_LATER, name, known, math.floor(delay + 0.5))
	elseif outcome == "pending" then
		LogLang(lang, L.CHDBG_SYNC_IN_PENDING, name)
	elseif outcome == "recent" then
		LogLang(lang, L.CHDBG_SYNC_IN_RECENT, name, math.floor(C.SYNC_ANSWER_INTERVAL / 60))
	else
		LogLang(lang, L.CHDBG_SYNC_IN_GAP, name)
	end
end)

ns.RegisterCallback(ChannelDebug, "AA_SYNC_ANSWERED", function(_, lang, target, count)
	LogLang(lang, L.CHDBG_SYNC_ANSWERED, count, target and Name(target) or L.CHDBG_TO_CHANNEL)
end)

ns.RegisterCallback(ChannelDebug, "AA_SYNC_NOT_ANSWERED", function(_, lang, target, reason)
	local name = target and Name(target) or L.CHDBG_TO_CHANNEL
	if reason == "faster" then
		LogLang(lang, L.CHDBG_SYNC_FASTER)
	elseif reason == "left" then
		LogLang(lang, L.CHDBG_SYNC_LEFT, name)
	else
		LogLang(lang, L.CHDBG_SYNC_NOTHING, name)
	end
end)

ns.RegisterCallback(ChannelDebug, "AA_SYNC_RECEIVED", function(_, lang, sender, count, newQuestions, newAnswers)
	if newQuestions + newAnswers > 0 then
		LogLang(lang, L.CHDBG_SYNC_RECEIVED, Name(sender), count, newQuestions, newAnswers)
	else
		LogLang(lang, L.CHDBG_SYNC_RECEIVED_NOTHING, Name(sender), count)
	end
end)

-- Presence -----------------------------------------------------------------

ns.RegisterCallback(ChannelDebug, "AA_PRESENCE_SENT", function(_, lang, targets, distribution, reply)
	if distribution then
		LogLang(lang, L.CHDBG_PRESENCE_GROUP, DISTRIBUTIONS[distribution] or distribution)
	else
		LogLang(lang, reply and L.CHDBG_PRESENCE_SENT_ASK or L.CHDBG_PRESENCE_SENT, Targets(targets))
	end
end)

ns.RegisterCallback(ChannelDebug, "AA_PRESENCE_RECEIVED", function(_, lang, sender, mentor, online, reply)
	LogLang(lang, reply and L.CHDBG_PRESENCE_RECEIVED_ASK or L.CHDBG_PRESENCE_RECEIVED,
		Name(sender), mentor and L.CHDBG_ROLE_MENTOR or L.CHDBG_ROLE_PLAYER, online)
end)

-- Other messages -------------------------------------------------------------

-- Sync and presence messages have their own lines above.
local OWN_LINES = { SR = true, SP = true, P = true }

ns.RegisterCallback(ChannelDebug, "AA_NET_SENT", function(_, kind, lang, bytes, held, distribution, targets)
	local t = traffic[lang]
	if t then
		t.sent = t.sent + 1
		if held then
			t.held = t.held + 1
		end
	end
	if OWN_LINES[kind] and not held then
		return
	end
	local to = distribution and (DISTRIBUTIONS[distribution] or distribution) or Targets(targets)
	if not targets and not distribution and ns.Comm.IsWhisperMode() then
		to = L.CHDBG_TO_PEERS:format(math.min(ns.Peers.Count(lang), C.WHISPER_FANOUT))
	end
	LogLang(lang, held and L.CHDBG_SENT_HELD or L.CHDBG_SENT, KindText(kind), to, bytes or 0)
end)

ns.RegisterCallback(ChannelDebug, "AA_NET_RECEIVED", function(_, kind, sender, lang, bytes)
	local t = traffic[lang]
	if t then
		t.received = t.received + 1
		t.lastReceived = GetTime()
	end
	if OWN_LINES[kind] or kind == "?" then
		return
	end
	LogLang(lang, L.CHDBG_RECEIVED, KindText(kind), Name(sender), bytes or 0)
end)

ns.RegisterCallback(ChannelDebug, "AA_MESSAGE_DROPPED", function(_, reason, sender, kind)
	-- Sync data without anything new has its own line (AA_SYNC_RECEIVED).
	if reason == "nothing-new" then
		return
	end
	Log(L.CHDBG_EV_DROPPED, KindText(kind), Name(sender or "?"), DropText(reason))
end)

ns.RegisterCallback(ChannelDebug, "AA_COMM_HELD", function(_, length)
	Log(L.CHDBG_EV_HELD, length or 0)
end)

ns.RegisterCallback(ChannelDebug, "AA_COMM_FLUSHED", function()
	Log(L.CHDBG_EV_FLUSHED)
end)

-- Reminder after login, so the output doesn't look like a fault.
ns:RegisterEvent("PLAYER_LOGIN", function()
	if IsOn() then
		ns:Print(L.CHDBG_STILL_ON)
	end
end)

--------------------------------------------------------------------------------
-- Command
--------------------------------------------------------------------------------

local function SetDebug(enabled)
	ns.db.settings.channelDebug = enabled
	ns:Print(enabled and L.CHDBG_DEBUG_ON or L.CHDBG_DEBUG_OFF)
end

ns:RegisterCommand("channels", function(args)
	local sub, rest = args:lower():match("^(%S*)%s*(.-)$")
	if sub == "" then
		ChannelDebug.PrintOverview()
	elseif sub == "debug" then
		if rest == "on" then
			SetDebug(true)
		elseif rest == "off" then
			SetDebug(false)
		else
			SetDebug(not IsOn())
		end
	elseif sub == "show" then
		Channel.SetHidden(false)
		ns:Print(L.CHDBG_SHOWN)
	elseif sub == "hide" then
		Channel.SetHidden(true)
		ns:Print(L.CHDBG_HIDDEN)
	else
		ns:Print(L.CHDBG_USAGE)
	end
end, "channels [debug|show|hide]", L.CMD_CHANNELS)
