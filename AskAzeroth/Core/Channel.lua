-- luacheck: read globals JoinTemporaryChannel JoinChannelByName LeaveChannelByName GetChannelName GetChannelList ChatFrameUtil ChatFrame_AddMessageEventFilter ChatFrame_AddChannel ChatFrame_RemoveChannel Constants NUM_CHAT_WINDOWS
local _, ns = ...

-- One hidden chat channel per question language ("AskAzerothDE", …). They are
-- joined after login, once the client has joined its default channels
-- (otherwise ours could take slot 1 and shift General/Trade), and removed
-- from every chat frame.
local Channel = {}
ns.Channel = Channel

local C = ns.C

-- Delay after entering the world before the first join attempt, and the
-- number of attempts to wait for the default channels / our channel.
local JOIN_DELAY = 5
local RETRY_DELAY = 3
local MAX_ATTEMPTS = 8

local maxWindows = Constants and Constants.ChatFrameConstants and Constants.ChatFrameConstants.MaxChatWindows or NUM_CHAT_WINDOWS or 10
local AddFilter = ChatFrameUtil and ChatFrameUtil.AddMessageEventFilter or ChatFrame_AddMessageEventFilter

-- Selected languages; deselected ones are stored as false so the default
-- doesn't come back.
ns.dbDefaults.languages = { [C.GetClientLanguage()] = true }

-- Lower-case channel name → language.
local langByName = {}
for _, lang in ipairs(C.LANGUAGES) do
	langByName[C.GetChannelName(lang):lower()] = lang
end

-- lang → { attempts, requested, ready, timer }
local states = {}

-- While false, the channels and their notices are shown in chat (debugging).
Channel.hidden = true

-- Language of one of our channels by its base name, or nil.
function Channel.GetLanguage(baseName)
	return type(baseName) == "string" and langByName[baseName:lower()] or nil
end

-- Local channel index, or nil while not joined. The number can change when
-- other channels are left or joined; look it up on every send.
function Channel.GetNumber(lang)
	local id = GetChannelName(C.GetChannelName(lang))
	if type(id) == "number" and id > 0 then
		return id
	end
end

-- Join state of a language: attempts, requested, ready, or nil before the
-- first join. A copy; for display (/aa channels).
function Channel.GetState(lang)
	local state = states[lang]
	if state then
		return { attempts = state.attempts, requested = state.requested, ready = state.ready == true, waiting = state.timer ~= nil }
	end
end

Channel.MAX_ATTEMPTS = MAX_ATTEMPTS

function Channel.IsReady(lang)
	return states[lang] ~= nil and states[lang].ready == true
end

-- Languages whose channel is joined, in C.LANGUAGES order.
function Channel.GetReadyLanguages()
	local list = {}
	for _, lang in ipairs(C.LANGUAGES) do
		if Channel.IsReady(lang) then
			list[#list + 1] = lang
		end
	end
	return list
end

function Channel.GetSelectedLanguages()
	local list = {}
	local selected = ns.db and ns.db.languages or {}
	for _, lang in ipairs(C.LANGUAGES) do
		if selected[lang] then
			list[#list + 1] = lang
		end
	end
	return list
end

-- Number of channels the client is in (default channels included).
function Channel.CountJoined()
	return select("#", GetChannelList()) / 3
end

local function ForEachChatFrame(func)
	for i = 1, maxWindows do
		local frame = _G["ChatFrame" .. i]
		if frame then
			func(frame)
		end
	end
end

-- Which API removes/adds channels on chat frames; reported by the probe.
function Channel.GetChatFrameApi()
	local frame = _G.ChatFrame1
	if frame and frame.RemoveChannel then
		return "ChatFrame:RemoveChannel"
	elseif ChatFrame_RemoveChannel then
		return "ChatFrame_RemoveChannel"
	end
	return "none"
end

local function RemoveFromChatFrames(lang)
	local name = C.GetChannelName(lang)
	ForEachChatFrame(function(frame)
		if frame.RemoveChannel then
			frame:RemoveChannel(name)
		elseif ChatFrame_RemoveChannel then
			ChatFrame_RemoveChannel(frame, name)
		end
	end)
end

local function AddToChatFrame(lang)
	local frame = DEFAULT_CHAT_FRAME
	local name = C.GetChannelName(lang)
	if frame.AddChannel then
		frame:AddChannel(name)
	elseif ChatFrame_AddChannel then
		ChatFrame_AddChannel(frame, name)
	end
end

function Channel.SetHidden(hidden)
	Channel.hidden = hidden
	for _, lang in ipairs(C.LANGUAGES) do
		if Channel.GetNumber(lang) then
			if hidden then
				RemoveFromChatFrames(lang)
			else
				AddToChatFrame(lang)
			end
		end
	end
end

--------------------------------------------------------------------------------
-- Chat filter
--------------------------------------------------------------------------------
-- Drops chat text and notices of our channels, should they still be shown in
-- a frame or someone types into one. The 9th event argument is the channel's
-- base name. Blizzard skips filters for messages with secret values.

local FILTER_EVENTS = {
	"CHAT_MSG_CHANNEL",
	"CHAT_MSG_CHANNEL_NOTICE",
	"CHAT_MSG_CHANNEL_NOTICE_USER",
	"CHAT_MSG_CHANNEL_JOIN",
	"CHAT_MSG_CHANNEL_LEAVE",
	-- Member lists requested by Peers.lua.
	"CHAT_MSG_CHANNEL_LIST",
}

local function Filter(_, _, ...)
	return Channel.hidden and Channel.GetLanguage(select(9, ...)) ~= nil
end

if AddFilter then
	for _, event in ipairs(FILTER_EVENTS) do
		AddFilter(event, Filter)
	end
end
Channel.hasChatFilter = AddFilter ~= nil

--------------------------------------------------------------------------------
-- Joining
--------------------------------------------------------------------------------

local function RemoveIfHidden(lang)
	if Channel.hidden then
		RemoveFromChatFrames(lang)
	end
end

local function SetReady(lang)
	local state = states[lang]
	RemoveIfHidden(lang)
	-- The chat frames may add the channel after our handler for the join
	-- notice has run.
	C_Timer.After(1, function()
		RemoveIfHidden(lang)
	end)
	if not state.ready then
		state.ready = true
		ns:Fire("AA_CHANNEL_READY", lang, Channel.GetNumber(lang))
	end
end

local function TryJoin(lang)
	local state = states[lang]
	state.timer = nil
	if state.ready then
		return
	end
	if Channel.GetNumber(lang) then
		SetReady(lang)
		return
	end
	state.attempts = state.attempts + 1
	-- Wait for the default channels unless there are none here (e.g. in an
	-- instance), then give up waiting.
	if Channel.CountJoined() > 0 or state.attempts >= MAX_ATTEMPTS / 2 then
		if not state.requested then
			state.requested = true
			-- Temporary: not stored in the client's channel list, so the
			-- addon stays in control of when it is joined.
			local join = JoinTemporaryChannel or JoinChannelByName
			join(C.GetChannelName(lang))
			ns:Fire("AA_CHANNEL_JOIN_REQUESTED", lang, state.attempts)
		end
	end
	if state.attempts < MAX_ATTEMPTS then
		state.timer = C_Timer.NewTimer(RETRY_DELAY, function()
			TryJoin(lang)
		end)
	else
		ns:Fire("AA_CHANNEL_FAILED", lang)
	end
end

function Channel.Join(lang)
	local state = states[lang]
	if state and state.timer then
		state.timer:Cancel()
	end
	states[lang] = { attempts = 0, requested = false, ready = state ~= nil and state.ready }
	TryJoin(lang)
end

function Channel.Leave(lang)
	local state = states[lang]
	if state and state.timer then
		state.timer:Cancel()
		state.timer = nil
	end
	LeaveChannelByName(C.GetChannelName(lang))
end

-- Language for new questions: the chosen one while it is selected,
-- otherwise the first selected language.
function Channel.GetAskLanguage()
	local chosen = ns.db and ns.db.settings.askLanguage
	if chosen and Channel.IsSelected(chosen) then
		return chosen
	end
	return Channel.GetSelectedLanguages()[1] or C.GetClientLanguage()
end

function Channel.IsSelected(lang)
	return ns.db ~= nil and ns.db.languages[lang] == true
end

-- Selects or deselects a language and joins or leaves its channel (once the
-- automatic join after login has run). The last selected language can't be
-- deselected; returns false then.
function Channel.SetSelected(lang, selected)
	if not C.IsLanguage(lang) or Channel.IsSelected(lang) == selected then
		return true
	end
	if not selected and #Channel.GetSelectedLanguages() <= 1 then
		return false
	end
	ns.db.languages[lang] = selected
	if Channel.autoJoined then
		if selected then
			Channel.Join(lang)
		else
			Channel.Leave(lang)
		end
	end
	ns:Fire("AA_LANGUAGES_CHANGED", lang, selected)
	return true
end

function Channel.JoinSelected()
	Channel.autoJoined = true
	for _, lang in ipairs(Channel.GetSelectedLanguages()) do
		Channel.Join(lang)
	end
end

ns:RegisterEvent("PLAYER_ENTERING_WORLD", function(_, isLogin, isReload)
	if isLogin or isReload then
		C_Timer.After(JOIN_DELAY, Channel.JoinSelected)
	end
end)

-- Notices for our channels: YOU_JOINED/YOU_CHANGED, YOU_LEFT, errors such as
-- WRONG_PASSWORD or BANNED. Forwarded for logging.
ns:RegisterEvent("CHAT_MSG_CHANNEL_NOTICE", function(_, notice, ...)
	local lang = Channel.GetLanguage(select(8, ...))
	if not lang then
		return
	end
	if notice == "YOU_JOINED" or notice == "YOU_CHANGED" then
		if not states[lang] then
			states[lang] = { attempts = 0, requested = true }
		end
		SetReady(lang)
	elseif notice == "YOU_LEFT" and states[lang] then
		states[lang].ready = false
		ns:Fire("AA_CHANNEL_LEFT", lang)
	end
	ns:Fire("AA_CHANNEL_NOTICE", lang, notice)
end)

-- Notices about other members: owner and moderator changes, kicks, bans,
-- password changes. playerName is the member concerned, if any.
ns:RegisterEvent("CHAT_MSG_CHANNEL_NOTICE_USER", function(_, notice, playerName, ...)
	local lang = Channel.GetLanguage(select(7, ...))
	if lang then
		ns:Fire("AA_CHANNEL_NOTICE_USER", lang, notice, playerName)
	end
end)
