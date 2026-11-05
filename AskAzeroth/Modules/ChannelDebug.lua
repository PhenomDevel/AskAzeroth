-- luacheck: read globals GetChannelList
local _, ns = ...

-- Channel debug for players (packaged, unlike Probe/):
--   /aa channels               state of every language channel and the
--                              client's full channel list
--   /aa channels debug [on|off] prints channel events to chat as they happen
--                              (joins, notices, sent and received messages);
--                              saved, so the joins after login show up too
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
}

local function NoticeText(notice)
	notice = Safe(notice)
	if NOTICES[notice] then
		return ("%s (%s)"):format(NOTICES[notice], notice)
	end
	return notice
end

ns.RegisterCallback(ChannelDebug, "AA_CHANNEL_JOIN_REQUESTED", function(_, lang, attempt)
	Log(L.CHDBG_EV_JOIN, C.GetChannelName(lang), attempt, Channel.CountJoined())
end)

ns.RegisterCallback(ChannelDebug, "AA_CHANNEL_READY", function(_, lang, number)
	Log(L.CHDBG_EV_READY, C.GetChannelName(lang), tostring(number), Channel.CountJoined())
end)

ns.RegisterCallback(ChannelDebug, "AA_CHANNEL_FAILED", function(_, lang)
	Log(L.CHDBG_EV_FAILED, C.GetChannelName(lang), Channel.MAX_ATTEMPTS, Channel.CountJoined())
end)

ns.RegisterCallback(ChannelDebug, "AA_CHANNEL_LEFT", function(_, lang)
	Log(L.CHDBG_EV_LEFT, C.GetChannelName(lang))
end)

ns.RegisterCallback(ChannelDebug, "AA_CHANNEL_NOTICE", function(_, lang, notice)
	Log(L.CHDBG_EV_NOTICE, C.GetChannelName(lang), NoticeText(notice))
end)

ns.RegisterCallback(ChannelDebug, "AA_CHANNEL_NOTICE_USER", function(_, lang, notice, playerName)
	Log(L.CHDBG_EV_NOTICE_USER, C.GetChannelName(lang), NoticeText(notice), Safe(playerName))
end)

ns.RegisterCallback(ChannelDebug, "AA_PLAYER_NAME_CHANGED", function(_, old, new)
	Log(L.CHDBG_EV_NAME, Safe(old), Safe(new))
end)

ns.RegisterCallback(ChannelDebug, "AA_LANGUAGES_CHANGED", function(_, lang, selected)
	Log(selected and L.CHDBG_EV_SELECTED or L.CHDBG_EV_DESELECTED, ChannelLabel(lang))
end)

ns.RegisterCallback(ChannelDebug, "AA_NET_SENT", function(_, kind, lang, bytes, held)
	local t = traffic[lang]
	if t then
		t.sent = t.sent + 1
		if held then
			t.held = t.held + 1
		end
	end
	Log(L.CHDBG_EV_SENT, C.GetChannelName(lang), Safe(kind), bytes or 0, held and (" " .. L.CHDBG_HELD) or "")
end)

ns.RegisterCallback(ChannelDebug, "AA_NET_RECEIVED", function(_, kind, sender, lang, bytes)
	local t = traffic[lang]
	if t then
		t.received = t.received + 1
		t.lastReceived = GetTime()
	end
	Log(L.CHDBG_EV_RECEIVED, C.GetChannelName(lang), Safe(kind), Safe(sender), bytes or 0)
end)

ns.RegisterCallback(ChannelDebug, "AA_MESSAGE_DROPPED", function(_, reason, sender, kind)
	Log(L.CHDBG_EV_DROPPED, Safe(kind or "?"), Safe(sender or "?"), Safe(reason))
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
