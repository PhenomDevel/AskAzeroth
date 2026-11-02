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
	settings = {
		-- Mentor mode: get notified about new questions (from M6 on).
		mentor = false,
		-- Language of new questions; nil = the first selected language.
		askLanguage = nil,
		-- Days own questions are kept under "My questions"; 0 = forever.
		retentionDays = 0,
		minimapHidden = false,
		minimapAngle = 210,
		-- Page the main window opens with.
		page = 1,
		-- Version of the first-run setup the player finished or closed;
		-- 0 = never (UI/Setup.lua opens it after login).
		setupVersion = 0,
		-- Questions page: hide solved questions.
		hideSolved = false,
	},
	-- FAQ entry id → how often its suggestion in the ask dialog was marked
	-- "That helped" (/aa faqstats). Stays on this computer.
	faqHelped = {},
}

ns.charDbDefaults = {
	version = DB_VERSION,
	-- Main window position (point, relativePoint, x, y).
	window = {},
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
