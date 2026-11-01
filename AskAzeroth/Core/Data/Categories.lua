local _, ns = ...

-- Question categories in display order. key goes over the wire; label is
-- the localized name.
local L = ns.L
local C = ns.C

C.CATEGORIES = {
	{ key = "quest", label = L.CAT_QUEST },
	{ key = "class", label = L.CAT_CLASS },
	{ key = "dungeon", label = L.CAT_DUNGEON },
	{ key = "prof", label = L.CAT_PROF },
	{ key = "ui", label = L.CAT_UI },
	{ key = "misc", label = L.CAT_MISC },
}

local byKey = {}
for _, category in ipairs(C.CATEGORIES) do
	byKey[category.key] = category
end

function C.GetCategory(key)
	return byKey[key]
end

function C.IsCategory(key)
	return byKey[key] ~= nil
end
