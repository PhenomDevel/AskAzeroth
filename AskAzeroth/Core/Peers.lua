-- luacheck: read globals ListChannelByName ChatFrameUtil ChatFrame_AddMessageEventFilter ERR_CHAT_PLAYER_NOT_FOUND_S WorldFrame InCombatLockdown
local _, ns = ...

-- Other AskAzeroth users per language, for the whisper transport (Forever
-- drops addon messages in chat channels, see Comm.lua). The language
-- channels are still joined, only to find each other:
--   * the channel's member list (ListChannelByName → CHAT_MSG_CHANNEL_LIST),
--     wanted when the channel is ready and every C.PEERS_ROSTER_INTERVAL.
--     ListChannelByName is protected: it only works during a key press or
--     click. So a wanted list is requested on the player's next click into
--     the world or into our window (Peers.OnHardwareEvent), never from a
--     timer. Should the client block it there too (ADDON_ACTION_BLOCKED),
--     member lists stay off until the next game build,
--   * join/leave notices of the channel; on a join, a few members greet the
--     newcomer with a hello whisper (H), so it learns about them even
--     without a member list,
--   * senders of addon whispers on the language's prefix.
-- Once member lists arrive, entries not confirmed for C.PEERS_EXPIRE
-- seconds are dropped; offline peers also drop out on the server's "No
-- player named …" answer to a whisper.
--
-- Message: AA_PEERS_CHANGED (lang)
local Peers = {}
ns.Peers = Peers

local C = ns.C
local Util = ns.Util

local AddFilter = ChatFrameUtil and ChatFrameUtil.AddMessageEventFilter or ChatFrame_AddMessageEventFilter

-- lang → { [fullName] = last seen (GetTime) }
local peers = {}
-- lang → GetTime() of the last own member list request / received list
local lastRoster = {}
local lastList = {}
-- Member lists of our channels arriving before this time answer our own
-- request and are hidden; a player's /chatlist after that is shown.
local hideListUntil = 0
local HIDE_LIST_WINDOW = 5
local ticker
-- lang → true while a member list is wanted (sent on the next key press or
-- click, see Peers.OnHardwareEvent)
local wanted = {}
-- Client build the protected call was blocked on (also saved, see
-- RosterBlocked); nil = not blocked.
local blockedBuild

for _, lang in ipairs(C.LANGUAGES) do
	peers[lang] = {}
end

local function IsMe(name)
	return name == ns:GetPlayerFullName()
end

-- name: as the client reports it ("Name", "First Surname", "Name-Realm").
function Peers.Add(lang, name, quiet)
	local list = peers[lang]
	name = Util.FullName(name)
	if not list or not Util.IsPlayerName(name) or IsMe(name) then
		return
	end
	local isNew = list[name] == nil
	list[name] = GetTime()
	if isNew and not quiet then
		ns:Fire("AA_PEERS_CHANGED", lang)
	end
	return isNew
end

function Peers.Remove(lang, name)
	local list = peers[lang]
	name = Util.FullName(name)
	if list and name and list[name] then
		list[name] = nil
		ns:Fire("AA_PEERS_CHANGED", lang)
	end
end

-- Removes a player from every language (offline).
function Peers.RemoveEverywhere(name)
	for _, lang in ipairs(C.LANGUAGES) do
		Peers.Remove(lang, name)
	end
end

function Peers.IsPeer(name)
	name = Util.FullName(name)
	for _, lang in ipairs(C.LANGUAGES) do
		if name and peers[lang][name] then
			return true
		end
	end
	return false
end

function Peers.Count(lang)
	local count = 0
	for _ in pairs(peers[lang] or {}) do
		count = count + 1
	end
	return count
end

-- Up to count random peers of lang; exclude: set of full names to skip.
function Peers.Pick(lang, count, exclude)
	local list = {}
	for name in pairs(peers[lang] or {}) do
		if not (exclude and exclude[name]) then
			list[#list + 1] = name
		end
	end
	for i = #list, 2, -1 do
		local j = math.random(i)
		list[i], list[j] = list[j], list[i]
	end
	for i = #list, count + 1, -1 do
		list[i] = nil
	end
	return list
end

-- Only where member lists keep coming; otherwise peers known from join
-- notices would run out.
local function Prune()
	local limit = GetTime() - C.PEERS_EXPIRE
	for lang, list in pairs(peers) do
		local changed = false
		if (lastList[lang] or -math.huge) < limit then
			list = {}
		end
		for name, seen in pairs(list) do
			if seen < limit then
				list[name] = nil
				changed = true
			end
		end
		if changed then
			ns:Fire("AA_PEERS_CHANGED", lang)
		end
	end
end

local function ClientBuild()
	local version, build = GetBuildInfo()
	return tostring(version) .. "." .. tostring(build)
end

-- True while ListChannelByName was blocked on this client build.
local function RosterBlocked()
	local build = blockedBuild or ns.db and ns.db.rosterBlockedBuild
	return build ~= nil and build == ClientBuild()
end

-- Marks lang's member list as wanted; it is requested on the next key press
-- or click (ListChannelByName is protected).
function Peers.RequestRoster(lang)
	if ListChannelByName and ns.Channel.GetNumber(lang) and not RosterBlocked() then
		wanted[lang] = true
	end
end

-- Called while a key press or click is being handled: sends one wanted
-- member list request (one per event, the others follow on later ones).
function Peers.OnHardwareEvent()
	if not next(wanted) or not ListChannelByName or RosterBlocked() or InCombatLockdown() then
		return
	end
	for _, lang in ipairs(C.LANGUAGES) do
		if wanted[lang] then
			wanted[lang] = nil
			if ns.Channel.GetNumber(lang) then
				lastRoster[lang] = GetTime()
				hideListUntil = GetTime() + HIDE_LIST_WINDOW
				ListChannelByName(C.GetChannelName(lang))
				return
			end
		end
	end
end

if WorldFrame then
	WorldFrame:HookScript("OnMouseDown", Peers.OnHardwareEvent)
end

-- The client still refused the call: stop asking until the next game build.
local function OnActionBlocked(_, addon, func)
	if addon == ns.name and type(func) == "string" and func:find("ListChannelByName", 1, true) then
		blockedBuild = ClientBuild()
		wipe(wanted)
		if ns.db then
			ns.db.rosterBlockedBuild = blockedBuild
		end
	end
end
ns:RegisterEvent("ADDON_ACTION_BLOCKED", OnActionBlocked)
ns:RegisterEvent("ADDON_ACTION_FORBIDDEN", OnActionBlocked)

local function RefreshAll()
	Prune()
	if not ns.Comm.IsWhisperMode() then
		return
	end
	for _, lang in ipairs(ns.Channel.GetReadyLanguages()) do
		Peers.RequestRoster(lang)
	end
end

local function Start()
	if ticker or not ns.Comm.IsWhisperMode() then
		return
	end
	ticker = C_Timer.NewTicker(C.PEERS_ROSTER_INTERVAL, RefreshAll)
	-- Channels that are ready already (mode switched after joining).
	C_Timer.After(1, RefreshAll)
end

--------------------------------------------------------------------------------
-- Channel events
--------------------------------------------------------------------------------

-- Language of a channel event: the base name (arg 9), or the "5. Name"
-- display name (arg 4) as a fallback.
local function EventLanguage(displayName, baseName)
	local lang = ns.Channel.GetLanguage(baseName)
	if not lang and type(displayName) == "string" then
		lang = ns.Channel.GetLanguage(displayName:match("^%d+%.%s*(.+)$") or displayName)
	end
	return lang
end

-- One entry of the member list: may carry an owner/moderator mark, a color
-- or a player link.
local function CleanMember(text)
	text = text:gsub("|c%x%x%x%x%x%x%x%x", ""):gsub("|r", "")
	text = text:gsub("|H.-|h%[?(.-)%]?|h", "%1")
	text = strtrim(text):gsub("^[%*@%+]+", "")
	if text ~= "" then
		return text
	end
end

local function Safe(...)
	if issecretvalue then
		for i = 1, select("#", ...) do
			if issecretvalue((select(i, ...))) then
				return false
			end
		end
	end
	return true
end

ns:RegisterEvent("CHAT_MSG_CHANNEL_LIST", function(_, text, _, _, displayName, _, _, _, _, baseName)
	if not Safe(text, displayName, baseName) or type(text) ~= "string" then
		return
	end
	local lang = EventLanguage(displayName, baseName)
	if not lang then
		return
	end
	lastList[lang] = GetTime()
	local added = false
	for entry in text:gmatch("[^,]+") do
		local name = CleanMember(entry)
		if name and Peers.Add(lang, name, true) then
			added = true
		end
	end
	if added then
		ns:Fire("AA_PEERS_CHANGED", lang)
	end
end)

if AddFilter then
	AddFilter("CHAT_MSG_CHANNEL_LIST", function(_, _, _, _, _, displayName, _, _, _, _, baseName)
		return GetTime() < hideListUntil and Safe(displayName, baseName) and EventLanguage(displayName, baseName) ~= nil
	end)
end

-- A newcomer doesn't know the members yet. Each member greets it with
-- probability C.PEERS_HELLO_TARGET / members after a random delay, so about
-- that many hellos arrive however big the channel is.
local function Greet(lang, name)
	if not ns.Comm.IsWhisperMode() or not ns.Channel.IsSelected(lang) then
		return
	end
	if math.random() * (Peers.Count(lang) + 1) >= C.PEERS_HELLO_TARGET then
		return
	end
	local delay = C.PEERS_HELLO_DELAY_MIN + math.random() * (C.PEERS_HELLO_DELAY_MAX - C.PEERS_HELLO_DELAY_MIN)
	C_Timer.After(delay, function()
		if peers[lang] and peers[lang][name] then
			ns.Net.SendRaw("H", lang, ns.Protocol.EncodeHello(), { name })
		end
	end)
end

ns:RegisterEvent("CHAT_MSG_CHANNEL_JOIN", function(_, _, playerName, _, displayName, _, _, _, _, baseName)
	if Safe(playerName, displayName, baseName) then
		local lang = EventLanguage(displayName, baseName)
		if lang then
			Peers.Add(lang, playerName)
			-- Also a peer we knew already: it may have relogged.
			local name = Util.FullName(playerName)
			if name then
				Greet(lang, name)
			end
		end
	end
end)

ns:RegisterEvent("CHAT_MSG_CHANNEL_LEAVE", function(_, _, playerName, _, displayName, _, _, _, _, baseName)
	if Safe(playerName, displayName, baseName) then
		local lang = EventLanguage(displayName, baseName)
		if lang then
			Peers.Remove(lang, playerName)
		end
	end
end)

--------------------------------------------------------------------------------
-- Offline peers
--------------------------------------------------------------------------------
-- A whisper to a player who went offline comes back as "No player named …
-- is currently playing." Such a peer is dropped and the line is hidden.

local notFoundPattern
if type(ERR_CHAT_PLAYER_NOT_FOUND_S) == "string" then
	notFoundPattern = "^" .. ERR_CHAT_PLAYER_NOT_FOUND_S:gsub("([%(%)%.%%%+%-%*%?%[%]%^%$])", "%%%1"):gsub("%%%%s", "(.+)") .. "$"
end

local function OfflineName(text)
	if notFoundPattern and type(text) == "string" and not (issecretvalue and issecretvalue(text)) then
		return text:match(notFoundPattern)
	end
end

if AddFilter and notFoundPattern then
	AddFilter("CHAT_MSG_SYSTEM", function(_, _, text)
		local name = OfflineName(text)
		return name ~= nil and Peers.IsPeer(name)
	end)
end

ns:RegisterEvent("CHAT_MSG_SYSTEM", function(_, text)
	local name = OfflineName(text)
	if name and Peers.IsPeer(name) then
		Peers.RemoveEverywhere(name)
	end
end)

--------------------------------------------------------------------------------
-- Lifecycle
--------------------------------------------------------------------------------

ns.RegisterCallback(Peers, "AA_CHANNEL_READY", function(_, lang)
	if ns.Comm.IsWhisperMode() then
		Start()
		if (lastRoster[lang] or -math.huge) < GetTime() - 5 then
			Peers.RequestRoster(lang)
		end
	end
end)

ns.RegisterCallback(Peers, "AA_COMM_MODE", Start)

ns.RegisterCallback(Peers, "AA_CHANNEL_LEFT", function(_, lang)
	wanted[lang] = nil
	if next(peers[lang]) then
		wipe(peers[lang])
		ns:Fire("AA_PEERS_CHANGED", lang)
	end
end)
