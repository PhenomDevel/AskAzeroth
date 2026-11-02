local _, ns = ...

-- The player's own list of other players (PLAN.md, section 3): favourites,
-- ignored players, a note and a "helped me" counter. Kept in AskAzerothDB
-- only, never sent. Recently seen players are kept in memory for the
-- Players page.
--
-- Message: AA_PLAYERS_CHANGED (name)
local Players = {}
ns.Players = Players

local Util = ns.Util

local NOTE_MAX = 200
local RECENT_MAX = 50
Players.NOTE_MAX = NOTE_MAX

ns.dbDefaults.players = {}
-- Answer ids already counted as "helped me", so each counts once.
ns.dbDefaults.helpedAnswers = {}

-- name → { name, class, time }
local recent = {}

local function Entries()
	return ns.db and ns.db.players or {}
end

function Players.Get(name)
	return name and Entries()[name]
end

function Players.IsFavorite(name)
	local entry = Players.Get(name)
	return entry ~= nil and entry.fav == true
end

function Players.IsIgnored(name)
	local entry = Players.Get(name)
	return entry ~= nil and entry.ignored == true
end

function Players.GetNote(name)
	local entry = Players.Get(name)
	return entry and entry.note
end

function Players.GetHelped(name)
	local entry = Players.Get(name)
	return entry and entry.helped or 0
end

-- Removes entries that hold nothing any more.
local function Tidy(name)
	local entry = Entries()[name]
	if entry and not entry.fav and not entry.ignored and not entry.note and (entry.helped or 0) == 0 then
		Entries()[name] = nil
	end
end

local function Edit(name, class)
	local entries = Entries()
	local entry = entries[name]
	if not entry then
		entry = {}
		entries[name] = entry
	end
	if class then
		entry.class = class
	end
	return entry
end

local function Changed(name)
	Tidy(name)
	ns:Fire("AA_PLAYERS_CHANGED", name)
end

-- A favourite can't be ignored at the same time and the other way round.
function Players.SetFavorite(name, favorite, class)
	local entry = Edit(name, class or (recent[name] and recent[name].class))
	entry.fav = favorite or nil
	if favorite then
		entry.ignored = nil
	end
	Changed(name)
end

function Players.SetIgnored(name, ignored, class)
	local entry = Edit(name, class or (recent[name] and recent[name].class))
	entry.ignored = ignored or nil
	if ignored then
		entry.fav = nil
	end
	Changed(name)
end

-- Empty text removes the note. Returns false if the note is too long.
function Players.SetNote(name, text)
	text = text and strtrim(text) or ""
	if #text > NOTE_MAX then
		return false
	end
	local entry = Edit(name, recent[name] and recent[name].class)
	entry.note = text ~= "" and text:gsub("[%c]", " ") or nil
	Changed(name)
	return true
end

function Players.HasHelped(answerId)
	return ns.db ~= nil and ns.db.helpedAnswers[answerId] == true
end

-- Counts an answer as helpful once.
function Players.MarkHelped(name, answerId)
	if Players.HasHelped(answerId) then
		return false
	end
	ns.db.helpedAnswers[answerId] = true
	local entry = Edit(name, recent[name] and recent[name].class)
	entry.helped = (entry.helped or 0) + 1
	Changed(name)
	return true
end

-- Names with a stored entry matching filter(entry, name), sorted by name.
function Players.List(filter)
	local list = {}
	for name, entry in pairs(Entries()) do
		if not filter or filter(entry, name) then
			list[#list + 1] = name
		end
	end
	table.sort(list)
	return list
end

-- Recently seen players (asked or answered), newest first.
function Players.ListRecent()
	local list = {}
	for name in pairs(recent) do
		list[#list + 1] = name
	end
	table.sort(list, function(a, b)
		return recent[a].time > recent[b].time
	end)
	return list
end

function Players.GetClass(name)
	local entry = Players.Get(name)
	return (entry and entry.class) or (recent[name] and recent[name].class)
end

local function Seen(name, class)
	if not name or name == ns:GetPlayerFullName() then
		return
	end
	local entry = recent[name]
	if not entry then
		entry = {}
		recent[name] = entry
	end
	entry.time = Util.Now()
	entry.class = class or entry.class
	if class and Entries()[name] then
		Entries()[name].class = class
	end
	-- Keep the newest RECENT_MAX.
	local list = Players.ListRecent()
	for i = RECENT_MAX + 1, #list do
		recent[list[i]] = nil
	end
end

ns.RegisterCallback(Players, "AA_QUESTION_ADDED", function(_, q)
	Seen(q.author, q.ctx and q.ctx.class)
end)
ns.RegisterCallback(Players, "AA_ANSWER_ADDED", function(_, _, a)
	Seen(a.author, a.ctx and a.ctx.class)
end)
