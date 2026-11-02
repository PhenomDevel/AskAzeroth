local _, ns = ...

-- FAQ topics in display order. Separate from the question categories
-- (Categories.lua) because the FAQ needs a finer split for beginners;
-- cat is the question category that "Ask a question" preselects for an
-- entry of this topic. Keys never go over the wire.
local L = ns.L
local C = ns.C

C.FAQ_TOPICS = {
	{ key = "addon", label = L.FAQ_TOPIC_ADDON, cat = "misc" },
	{ key = "start", label = L.FAQ_TOPIC_START, cat = "misc" },
	{ key = "quest", label = L.FAQ_TOPIC_QUEST, cat = "quest" },
	{ key = "class", label = L.FAQ_TOPIC_CLASS, cat = "class" },
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
