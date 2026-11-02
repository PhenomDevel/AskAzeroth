-- luacheck: read globals geterrorhandler
local _, ns = ...

-- Built-in FAQ. Every topic (Core/Data/FaqTopics.lua) has its own data
-- file in Core/Data/Faq/ that calls Faq.Add once:
--
--   ns.Faq.Add("hunter", {
--     {
--       id = "hunter-tame",   -- stable, lower case, digits and "-"; answers refer to it
--       de = { q = "…", a = "…" },
--       en = { q = "…", a = "…" },
--     },
--   })
--
-- Texts are plain text: no "|" escape sequences. Every entry has all FAQ
-- languages (C.FAQ_LANGUAGES). Never change or reuse an id once released:
-- answers that refer to it travel between players and are kept in
-- "My questions" and "Pinned".
local Faq = {}
ns.Faq = Faq

local C = ns.C

C.FAQ_LANGUAGES = { "en", "de" }

local byId = {}
local byTopic = {}

local function IsText(value)
	return type(value) == "string" and value ~= "" and not value:find("|", 1, true)
end

function Faq.IsId(value)
	return type(value) == "string" and #value <= C.FAQ_ID_MAX and value:find("^%l[%l%d%-]*$") ~= nil
end

-- Broken entries are a bug in the data files: report and skip them, so
-- one typo does not take the whole FAQ down.
local function Check(topic, entry)
	if type(entry) ~= "table" or not Faq.IsId(entry.id) then
		return "id"
	end
	if byId[entry.id] then
		return "duplicate"
	end
	for _, lang in ipairs(C.FAQ_LANGUAGES) do
		local text = entry[lang]
		if type(text) ~= "table" or not IsText(text.q) or not IsText(text.a) then
			return lang
		end
	end
	if not C.GetFaqTopic(topic) then
		return "topic"
	end
end

function Faq.Add(topic, entries)
	byTopic[topic] = byTopic[topic] or {}
	local list = byTopic[topic]
	for i, entry in ipairs(entries) do
		local problem = Check(topic, entry)
		if problem then
			geterrorhandler()(("AskAzeroth: FAQ %s #%d (%s): %s"):format(topic, i, tostring(type(entry) == "table" and entry.id), problem))
		else
			entry.topic = topic
			byId[entry.id] = entry
			list[#list + 1] = entry
		end
	end
end

function Faq.Get(id)
	return byId[id]
end

-- Entries of a topic in file order (empty table for unknown topics).
function Faq.GetTopic(topic)
	return byTopic[topic] or {}
end

-- Number of entries of a topic.
function Faq.Count(topic)
	return #(byTopic[topic] or {})
end

-- All entries in topic order.
function Faq.GetAll()
	local list = {}
	for _, topic in ipairs(C.FAQ_TOPICS) do
		for _, entry in ipairs(Faq.GetTopic(topic.key)) do
			list[#list + 1] = entry
		end
	end
	return list
end

-- Question and answer of an entry in lang, English when lang has no FAQ.
function Faq.GetText(entry, lang)
	local text = entry[lang] or entry.en
	return text.q, text.a
end

function Faq.HasLanguage(lang)
	for _, faqLang in ipairs(C.FAQ_LANGUAGES) do
		if faqLang == lang then
			return true
		end
	end
	return false
end

-- Cleans a received list of FAQ references: valid ids only, no
-- duplicates, at most C.FAQ_REFS_MAX. Unknown ids are kept (the sender may
-- have a newer FAQ). Returns nil when nothing is left.
function Faq.CleanRefs(value)
	if type(value) ~= "table" then
		return nil
	end
	local list, seen = {}, {}
	for i = 1, math.min(#value, C.FAQ_REFS_MAX) do
		local id = value[i]
		if Faq.IsId(id) and not seen[id] then
			seen[id] = true
			list[#list + 1] = id
		end
	end
	return #list > 0 and list or nil
end
