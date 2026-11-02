local _, ns = ...

-- Question categories in display order. key goes over the wire; label is
-- the localized name; icon is a game texture shown before the name (icons
-- from Interface\\Icons get their border trimmed).
local L = ns.L
local C = ns.C

C.CATEGORIES = {
	{ key = "quest", label = L.CAT_QUEST, icon = "Interface\\GossipFrame\\AvailableQuestIcon" },
	{ key = "class", label = L.CAT_CLASS, icon = "Interface\\Icons\\INV_Misc_Book_09" },
	{ key = "dungeon", label = L.CAT_DUNGEON, icon = "Interface\\Icons\\INV_Misc_Head_Dragon_01" },
	{ key = "prof", label = L.CAT_PROF, icon = "Interface\\Icons\\Trade_BlackSmithing" },
	{ key = "ui", label = L.CAT_UI, icon = "Interface\\Icons\\INV_Misc_Gear_01" },
	{ key = "misc", label = L.CAT_MISC, icon = "Interface\\Icons\\INV_Misc_QuestionMark" },
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
