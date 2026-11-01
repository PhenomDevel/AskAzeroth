local addonName, ns = ...

-- AskAzerothDB (account) holds settings, players and own questions,
-- AskAzerothCharDB (character) the character's own state. Public questions
-- are kept in memory only. ns.dbLoaded / ns.charDbLoaded tell whether the
-- client handed over saved data at all.

local DB_VERSION = 1

local function ApplyDefaults(target, defaults)
	for key, value in pairs(defaults) do
		if target[key] == nil then
			if type(value) == "table" then
				target[key] = {}
				ApplyDefaults(target[key], value)
			else
				target[key] = value
			end
		elseif type(value) == "table" and type(target[key]) == "table" then
			ApplyDefaults(target[key], value)
		end
	end
end

ns.dbDefaults = {
	version = DB_VERSION,
}

ns.charDbDefaults = {
	version = DB_VERSION,
}

local function OnAddonLoaded(event, name)
	if name ~= addonName then
		return
	end
	ns:UnregisterEvent(event, OnAddonLoaded)

	ns.dbLoaded = AskAzerothDB ~= nil
	ns.charDbLoaded = AskAzerothCharDB ~= nil
	AskAzerothDB = AskAzerothDB or {}
	AskAzerothCharDB = AskAzerothCharDB or {}
	ApplyDefaults(AskAzerothDB, ns.dbDefaults)
	ApplyDefaults(AskAzerothCharDB, ns.charDbDefaults)
	ns.db = AskAzerothDB
	ns.charDb = AskAzerothCharDB

	ns:Fire("AA_DB_READY")
end

ns:RegisterEvent("ADDON_LOADED", OnAddonLoaded)
