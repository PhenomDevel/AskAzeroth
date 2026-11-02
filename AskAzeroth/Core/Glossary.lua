-- luacheck: read globals geterrorhandler
local _, ns = ...

-- Glossary of game terms and chat abbreviations (Aggro, DoT, BoP, …). The
-- entries live in Core/Data/Glossary.lua, which calls Glossary.Add once:
--
--   ns.Glossary.Add({
--     {
--       id = "bop",              -- stable, like FAQ ids; never change it
--       chat = { "BoP" },        -- optional: short forms players write in
--                                --   chat in every language (Part 2)
--       faq = "paladin-bop",     -- optional: FAQ entry with more detail
--       mark = false,            -- optional: never mark it inside texts,
--                                --   for words of everyday language
--                                --   ("add", "pull")
--       lower = false,           -- optional: mark it only as written, not
--                                --   in lower or upper case, when that is
--                                --   an everyday word ("ah", "hot")
--       de = { term = "BoP", alt = { "Segen des Schutzes" }, def = "…" },
--       en = { term = "BoP", alt = { "Blessing of Protection" }, def = "…" },
--     },
--   })
--
-- English and German are required (C.FAQ_REQUIRED); the other languages
-- fall back to English like the FAQ. Texts are plain text without "|".
-- def stays short (C.GLOSSARY_DEF_MAX bytes): it is shown in a tooltip;
-- details belong in the FAQ.
local Glossary = {}
ns.Glossary = Glossary

local C = ns.C
local Faq = ns.Faq

local byId = {}
local all = {}

local function IsText(value)
	return type(value) == "string" and value ~= "" and not value:find("|", 1, true)
end

local function IsTextList(value)
	if value == nil then
		return true
	end
	if type(value) ~= "table" then
		return false
	end
	for _, text in ipairs(value) do
		if not IsText(text) then
			return false
		end
	end
	return true
end

local function Check(entry)
	if type(entry) ~= "table" or not Faq.IsId(entry.id) then
		return "id"
	end
	if byId[entry.id] then
		return "duplicate"
	end
	if not IsTextList(entry.chat) then
		return "chat"
	end
	if entry.faq ~= nil and not Faq.IsId(entry.faq) then
		return "faq"
	end
	if entry.mark ~= nil and entry.mark ~= false then
		return "mark"
	end
	if entry.lower ~= nil and entry.lower ~= false then
		return "lower"
	end
	for _, lang in ipairs(C.FAQ_REQUIRED) do
		if entry[lang] == nil then
			return lang
		end
	end
	for _, lang in ipairs(C.FAQ_LANGUAGES) do
		local text = entry[lang]
		if text ~= nil then
			if type(text) ~= "table" or not IsText(text.term) or not IsText(text.def) or not IsTextList(text.alt) then
				return lang
			end
			if #text.def > C.GLOSSARY_DEF_MAX then
				return lang .. " def too long"
			end
		end
	end
end

function Glossary.Add(entries)
	for i, entry in ipairs(entries) do
		local problem = Check(entry)
		if problem then
			geterrorhandler()(("AskAzeroth: glossary #%d (%s): %s"):format(i, tostring(type(entry) == "table" and entry.id), problem))
		else
			byId[entry.id] = entry
			all[#all + 1] = entry
		end
	end
end

function Glossary.Get(id)
	return byId[id]
end

function Glossary.Count()
	return #all
end

-- Term, other names and definition of an entry in lang (English when the
-- entry is not translated into lang).
function Glossary.GetText(entry, lang)
	local text = entry[lang] or entry.en
	return text.term, text.alt or {}, text.def
end

-- All entries sorted by their term in lang.
function Glossary.GetAll(lang)
	local list = {}
	for i, entry in ipairs(all) do
		list[i] = entry
	end
	local keys = {}
	for _, entry in ipairs(list) do
		keys[entry] = (Glossary.GetText(entry, lang)):lower()
	end
	table.sort(list, function(a, b)
		if keys[a] ~= keys[b] then
			return keys[a] < keys[b]
		end
		return a.id < b.id
	end)
	return list
end

-- True when text (plain, lower case) appears in term, other names or
-- definition of entry in lang.
function Glossary.Contains(entry, text, lang)
	local term, alt, def = Glossary.GetText(entry, lang)
	local haystack = (term .. "\n" .. table.concat(alt, "\n") .. "\n" .. def):lower()
	return haystack:find(text, 1, true) ~= nil
end

-- Words that mark an entry inside a text in lang: term and other names
-- (the chat forms are for chat only), each also with its first letter in
-- upper and lower case and all in lower and upper case, since players
-- write "dot", "aoe" or "DOT" (ASCII only). Entries with lower = false
-- only as written. withEnglish adds the English forms (players write
-- "threat" or "healer" in every language); the forms of lang come first.
-- Longest first, so "Blessing of Protection" wins over a shorter form
-- inside it. Built once per language.
local forms = {}

local function Forms(lang, withEnglish)
	local key = withEnglish and lang ~= "en" and lang .. "+en" or lang
	local list = forms[key]
	if list then
		return list
	end
	list = {}
	local seen = {}
	local function Add(entry, form)
		if not seen[form] then
			seen[form] = true
			list[#list + 1] = { text = form, entry = entry }
		end
	end
	local function AddCased(entry, form)
		Add(entry, form)
		if entry.lower ~= false then
			Add(entry, form:sub(1, 1):upper() .. form:sub(2))
			Add(entry, form:sub(1, 1):lower() .. form:sub(2))
			Add(entry, form:lower())
			Add(entry, form:upper())
		end
	end
	local langs = key == lang and { lang } or { lang, "en" }
	for _, formLang in ipairs(langs) do
		for _, entry in ipairs(all) do
			if entry.mark ~= false then
				local term, alt = Glossary.GetText(entry, formLang)
				AddCased(entry, term)
				for _, other in ipairs(alt) do
					AddCased(entry, other)
				end
			end
		end
	end
	table.sort(list, function(a, b)
		if #a.text ~= #b.text then
			return #a.text > #b.text
		end
		return a.text < b.text
	end)
	forms[key] = list
	return list
end

-- A letter or digit, also any byte of a multi-byte UTF-8 letter (ä, é, я).
local function IsWordByte(byte)
	return byte ~= nil and (byte >= 128 or string.char(byte):find("%w") ~= nil)
end

-- Places of glossary terms in text (plain text, no escape sequences), each
-- entry at most once (its first place), non-overlapping, in text order:
-- a list of { first, last, entry }. withEnglish: also the English terms
-- (for texts players write).
function Glossary.Find(text, lang, withEnglish)
	local found, used, taken = {}, {}, {}
	for _, form in ipairs(Forms(lang, withEnglish)) do
		if not used[form.entry] then
			local init = 1
			while true do
				local first, last = text:find(form.text, init, true)
				if not first then
					break
				end
				local free = not IsWordByte(text:byte(first - 1)) and not IsWordByte(text:byte(last + 1))
				for i = first, last do
					free = free and not taken[i]
				end
				if free then
					for i = first, last do
						taken[i] = true
					end
					used[form.entry] = true
					found[#found + 1] = { first, last, form.entry }
					break
				end
				init = last + 1
			end
		end
	end
	table.sort(found, function(a, b)
		return a[1] < b[1]
	end)
	return found
end
