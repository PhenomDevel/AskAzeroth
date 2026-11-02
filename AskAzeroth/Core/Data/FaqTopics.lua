local _, ns = ...

-- FAQ topics in display order. Separate from the question categories
-- (Categories.lua) because the FAQ needs a finer split for beginners;
-- cat is the question category that "Ask a question" preselects for an
-- entry of this topic. Class topics have class (class file name) instead
-- of a label and show the game's class name. Keys never go over the wire;
-- the entries live in Core/Data/Faq/ (one file per topic).
local L = ns.L
local C = ns.C

C.FAQ_TOPICS = {
	{ key = "addon", label = L.FAQ_TOPIC_ADDON, cat = "misc" },
	{ key = "start", label = L.FAQ_TOPIC_START, cat = "misc" },
	{ key = "quest", label = L.FAQ_TOPIC_QUEST, cat = "quest" },
	{ key = "class", label = L.FAQ_TOPIC_CLASS, cat = "class" },
	{ key = "warrior", class = "WARRIOR", cat = "class" },
	{ key = "paladin", class = "PALADIN", cat = "class" },
	{ key = "hunter", class = "HUNTER", cat = "class" },
	{ key = "rogue", class = "ROGUE", cat = "class" },
	{ key = "priest", class = "PRIEST", cat = "class" },
	{ key = "shaman", class = "SHAMAN", cat = "class" },
	{ key = "mage", class = "MAGE", cat = "class" },
	{ key = "warlock", class = "WARLOCK", cat = "class" },
	{ key = "druid", class = "DRUID", cat = "class" },
	{ key = "combat", label = L.FAQ_TOPIC_COMBAT, cat = "class" },
	{ key = "travel", label = L.FAQ_TOPIC_TRAVEL, cat = "misc" },
	{ key = "gold", label = L.FAQ_TOPIC_GOLD, cat = "misc" },
	{ key = "prof", label = L.FAQ_TOPIC_PROF, cat = "prof" },
	{ key = "group", label = L.FAQ_TOPIC_GROUP, cat = "dungeon" },
	{ key = "social", label = L.FAQ_TOPIC_SOCIAL, cat = "misc" },
	{ key = "ui", label = L.FAQ_TOPIC_UI, cat = "ui" },
}

local byKey = {}
for index, topic in ipairs(C.FAQ_TOPICS) do
	topic.order = index
	byKey[topic.key] = topic
end

function C.GetFaqTopic(key)
	return byKey[key]
end
