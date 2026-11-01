-- luacheck: read globals GetNormalizedRealmName
local _, ns = ...

-- Small helpers shared by the core files: time, ids, names and text checks.
local Util = {}
ns.Util = Util

function Util.Now()
	return GetServerTime()
end

--------------------------------------------------------------------------------
-- Hashing and ids
--------------------------------------------------------------------------------
-- 32-bit polynomial string hash without the bit library (doubles stay exact
-- below 2^53). Not for security.

local MOD = 4294967296

function Util.Hash(text, seed)
	local hash = seed or 5381
	for i = 1, #text do
		hash = (hash * 33 + text:byte(i)) % MOD
	end
	return hash
end

local idCounter = 0

-- 8 upper-case hex characters from author, time and a running counter.
function Util.NewId(author, created)
	idCounter = idCounter + 1
	return ("%08X"):format(Util.Hash(author .. ":" .. created .. ":" .. idCounter .. ":" .. GetTime()))
end

function Util.IsId(value)
	return type(value) == "string" and #value == 8 and value:find("^%x+$") ~= nil
end

--------------------------------------------------------------------------------
-- Player names
--------------------------------------------------------------------------------

-- "Name-Realm" for a sender; same-realm senders can arrive without a realm.
function Util.FullName(name)
	if type(name) ~= "string" or name == "" then
		return nil
	end
	if name:find("-", 1, true) then
		return name
	end
	local realm = GetNormalizedRealmName and GetNormalizedRealmName()
	if realm and realm ~= "" then
		return name .. "-" .. realm
	end
	return name
end

-- "Name" without the realm, for display.
function Util.ShortName(fullName)
	return (fullName:match("^([^%-]+)")) or fullName
end

-- A plausible "Name-Realm": no spaces or control characters, short.
function Util.IsPlayerName(value)
	return type(value) == "string" and #value >= 2 and #value <= 64
		and value:find("^[^%-%s%c]+%-[^%s%c]+$") ~= nil
end

--------------------------------------------------------------------------------
-- Text
--------------------------------------------------------------------------------

-- Text from other players: a string of 1..maxBytes bytes after trimming,
-- without control characters (newlines only where allowed). Returns the
-- trimmed text or nil.
function Util.CleanText(value, maxBytes, allowNewlines)
	if type(value) ~= "string" then
		return nil
	end
	value = strtrim(value)
	if value == "" or #value > maxBytes then
		return nil
	end
	local pattern = allowNewlines and "[%z\1-\9\11-\31\127]" or "[%z\1-\31\127]"
	if value:find(pattern) then
		return nil
	end
	return value
end

-- Escapes "|" so received text shows literally instead of as colour codes,
-- links or textures. Use for every received text before it is displayed.
function Util.EscapeText(text)
	return (text:gsub("|", "||"))
end

function Util.Count(t)
	local n = 0
	for _ in pairs(t) do
		n = n + 1
	end
	return n
end
