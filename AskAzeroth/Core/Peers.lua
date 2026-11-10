-- luacheck: read globals ChatFrameUtil ChatFrame_AddMessageEventFilter ERR_CHAT_PLAYER_NOT_FOUND_S
local _, ns = ...

-- Other AskAzeroth users per language, for the whisper transport (Forever
-- drops addon messages in chat channels, see Comm.lua). The language
-- channels are still joined, only to find each other. Peers come from:
--   * join/leave notices of the channel; a member who sees someone join
--     greets them (Welcome below), so the newcomer learns about them,
--   * senders of addon whispers on the language's prefix,
--   * peers remembered from earlier sessions (AskAzerothDB.knownPeers),
--   * member lists the player requests with /chatlist. The addon can't
--     request them itself: ListChannelByName is protected.
-- Offline peers drop out on the server's "No player named …" answer to a
-- whisper; that line is hidden.
--
-- Messages: AA_PEERS_CHANGED (lang); AA_PEER_SEEN (lang, name) whenever a
-- player shows up first-hand (join, member list, whisper), AA_PEER_GONE
-- (lang, name) when one leaves or turns out to be offline.
local Peers = {}
ns.Peers = Peers

local C = ns.C
local Util = ns.Util

local AddFilter = ChatFrameUtil and ChatFrameUtil.AddMessageEventFilter or ChatFrame_AddMessageEventFilter

-- lang → { [fullName] = last seen (GetTime) }
local peers = {}

-- lang → { [fullName] = GetServerTime() last seen }, kept across sessions.
ns.dbDefaults.knownPeers = {}

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
	Peers.Remember(lang, name)
	ns:Fire("AA_PEER_SEEN", lang, name)
	if isNew and not quiet then
		ns:Fire("AA_PEERS_CHANGED", lang)
	end
	return isNew
end

function Peers.Remove(lang, name)
	local list = peers[lang]
	name = Util.FullName(name)
	if name and not IsMe(name) then
		ns:Fire("AA_PEER_GONE", lang, name)
	end
	if list and name and list[name] then
		list[name] = nil
		ns:Fire("AA_PEERS_CHANGED", lang)
	end
	local known = ns.db and ns.db.knownPeers[lang]
	if known and name then
		known[name] = nil
	end
end

--------------------------------------------------------------------------------
-- Remembered peers
--------------------------------------------------------------------------------

local function Known(lang)
	local all = ns.db and ns.db.knownPeers
	if not all then
		return nil
	end
	if type(all[lang]) ~= "table" then
		all[lang] = {}
	end
	return all[lang]
end

-- Keeps the newest C.PEERS_REMEMBER_MAX, none older than
-- C.PEERS_REMEMBER_DAYS.
local function TrimKnown(known)
	local limit = GetServerTime() - C.PEERS_REMEMBER_DAYS * 86400
	local list = {}
	for name, seen in pairs(known) do
		if type(seen) ~= "number" or seen < limit or not Util.IsPlayerName(name) then
			known[name] = nil
		else
			list[#list + 1] = name
		end
	end
	if #list > C.PEERS_REMEMBER_MAX then
		table.sort(list, function(a, b)
			return known[a] > known[b]
		end)
		for i = C.PEERS_REMEMBER_MAX + 1, #list do
			known[list[i]] = nil
		end
	end
end

function Peers.Remember(lang, name)
	local known = Known(lang)
	if known then
		local isNew = known[name] == nil
		known[name] = GetServerTime()
		if isNew then
			TrimKnown(known)
		end
	end
end

-- Puts the remembered peers of lang into the set; whispers to those who
-- are offline bounce and remove them again.
local function LoadKnown(lang)
	local known = Known(lang)
	if not known then
		return
	end
	TrimKnown(known)
	-- The saved data is per account; only peers of the own realm (on
	-- Forever: the own ruleset's realm) can be whispered.
	local realm = ns:GetOwnRealm()
	if not realm then
		return
	end
	local suffix = "-" .. realm
	local list = peers[lang]
	local added = false
	for name in pairs(known) do
		if not list[name] and not IsMe(name) and name:sub(-#suffix) == suffix then
			list[name] = GetTime()
			added = true
		end
	end
	if added then
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

-- Someone joined: a few of the members greet them with a sync request by
-- whisper (each with probability C.WELCOME_PEERS / known peers, after a
-- random delay), so the newcomer learns about them and gets peers to sync
-- with. The newcomer answers the request only if it has something new.
local function Welcome(lang, name)
	if not ns.Comm.IsWhisperMode() or not ns.Channel.IsReady(lang) then
		return
	end
	local chance = C.WELCOME_PEERS / math.max(1, Peers.Count(lang))
	if math.random() > chance then
		return
	end
	C_Timer.After(C.WELCOME_DELAY_MIN + math.random() * (C.WELCOME_DELAY_MAX - C.WELCOME_DELAY_MIN), function()
		if peers[lang][name] and ns.Sync then
			ns.Sync.Request(lang, { name })
		end
	end)
end

ns:RegisterEvent("CHAT_MSG_CHANNEL_JOIN", function(_, _, playerName, _, displayName, _, _, _, _, baseName)
	if Safe(playerName, displayName, baseName) then
		local lang = EventLanguage(displayName, baseName)
		if lang then
			Peers.Add(lang, playerName)
			Welcome(lang, Util.FullName(playerName))
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
		LoadKnown(lang)
	end
end)

ns.RegisterCallback(Peers, "AA_COMM_MODE", function()
	for _, lang in ipairs(ns.Channel.GetReadyLanguages()) do
		LoadKnown(lang)
	end
end)

ns.RegisterCallback(Peers, "AA_CHANNEL_LEFT", function(_, lang)
	if next(peers[lang]) then
		wipe(peers[lang])
		ns:Fire("AA_PEERS_CHANGED", lang)
	end
end)
