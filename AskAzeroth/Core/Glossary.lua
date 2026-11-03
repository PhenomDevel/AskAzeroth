-- luacheck: read globals geterrorhandler
local _, ns = ...

-- Glossary of game terms and chat abbreviations (Aggro, DoT, BoP, …). The
-- entries live in Core/Data/Glossary.lua, which calls Glossary.Add once:
--
--   ns.Glossary.Add({
--     {
--       id = "bop",              -- stable, like FAQ ids; never change it
--       chat = { "BoP" },        -- optional: short forms players write in
--                                --   chat in every language; marked as
--                                --   written in chat lines
--                                --   (UI/ChatGlossary.lua)
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
-- English and German are required (C.FAQ_REQUIRED); all entries are also
-- in the other addon languages (fr, es, it, ru, pt), and a missing language
-- falls back to English like the FAQ. Texts are plain text without "|".
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

-- text with the plural ending of each word removed ("hots" -> "hot"), or
-- nil when no word has one.
local function Singulars(text)
	local changed = false
	local singular = text:gsub("[^%s]+", function(word)
		local found = ns.Util.Singular(word, 2)
		if found then
			changed = true
			return found
		end
	end)
	return changed and singular or nil
end

-- Folded texts per language and entry (FaqSearch.Normalize: also
-- Cyrillic lower case, no accents): names = term and other names, all =
-- names and definition.
local haystacks = {}

local function Haystack(entry, lang, namesOnly)
	local byEntry = haystacks[lang]
	if not byEntry then
		byEntry = {}
		haystacks[lang] = byEntry
	end
	local folded = byEntry[entry]
	if not folded then
		local term, alt, def = Glossary.GetText(entry, lang)
		local names = " " .. ns.FaqSearch.Normalize(term .. " " .. table.concat(alt, " ")) .. " "
		folded = { names = names, all = names .. ns.FaqSearch.Normalize(def) .. " " }
		byEntry[entry] = folded
	end
	return namesOnly and folded.names or folded.all
end

-- True when text appears in term, other names or definition of entry in
-- lang (namesOnly: in term or other names only), in any case and also in
-- the singular ("hots" finds HoT, "доты" finds ДоТ).
function Glossary.Contains(entry, text, lang, namesOnly)
	local haystack = Haystack(entry, lang, namesOnly)
	text = ns.FaqSearch.Normalize(text):match("^%s*(.-)%s*$")
	if text == "" or haystack:find(text, 1, true) then
		return true
	end
	local singular = Singulars(text)
	return singular ~= nil and haystack:find(singular, 1, true) ~= nil
end

-- Words that mark an entry inside a text in lang: term and other names
-- (the chat forms are for chat only), each also with its first letter in
-- upper and lower case and all in lower and upper case, since players
-- write "dot", "aoe" or "DOT" (whole words in lower and upper case only for
-- ASCII; the first letter also for é or я, see CaseFirst). Entries with lower = false
-- only as written. withChat adds the chat forms (field chat, as written).
-- withEnglish adds the English forms (players write
-- "threat" or "healer" in every language); the forms of lang come first.
-- Longest first, so "Blessing of Protection" wins over a shorter form
-- inside it. Built once per language.
local forms = {}

-- form with its first letter in upper (upper = true) or lower case. Besides
-- ASCII it knows the two-byte UTF-8 letters of the addon's languages:
-- Latin-1 (É/é, À/à, …) and Cyrillic (А/а … Я/я, Ё/ё), since string.upper
-- and string.lower only change ASCII letters.
local function CaseFirst(form, upper)
	local b1, b2 = form:byte(1, 2)
	if not b1 or b1 < 128 then
		local first = form:sub(1, 1)
		return (upper and first:upper() or first:lower()) .. form:sub(2)
	end
	if not b2 then
		return form
	end
	if b1 == 0xC3 then
		if upper and b2 >= 0xA0 and b2 <= 0xBE and b2 ~= 0xB7 then
			b2 = b2 - 0x20
		elseif not upper and b2 >= 0x80 and b2 <= 0x9E and b2 ~= 0x97 then
			b2 = b2 + 0x20
		end
	elseif b1 == 0xD0 then
		if upper and b2 >= 0xB0 and b2 <= 0xBF then
			b2 = b2 - 0x20 -- а-п
		elseif not upper and b2 >= 0x90 and b2 <= 0x9F then
			b2 = b2 + 0x20 -- А-П
		elseif not upper and b2 >= 0xA0 and b2 <= 0xAF then
			b1, b2 = 0xD1, b2 - 0x20 -- Р-Я
		elseif not upper and b2 == 0x81 then
			b1, b2 = 0xD1, 0x91 -- Ё
		end
	elseif b1 == 0xD1 and upper then
		if b2 >= 0x80 and b2 <= 0x8F then
			b1, b2 = 0xD0, b2 + 0x20 -- р-я
		elseif b2 == 0x91 then
			b1, b2 = 0xD0, 0x81 -- ё
		end
	end
	return string.char(b1, b2) .. form:sub(3)
end

local function Forms(lang, withEnglish, withChat)
	local langKey = withEnglish and lang ~= "en" and lang .. "+en" or lang
	local key = withChat and langKey .. "+chat" or langKey
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
			Add(entry, CaseFirst(form, true))
			Add(entry, CaseFirst(form, false))
			Add(entry, form:lower())
			Add(entry, form:upper())
		end
	end
	local langs = langKey == lang and { lang } or { lang, "en" }
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
	-- Chat forms as written, also of entries never marked in texts: in chat
	-- "pull" or "need" mean the game term.
	if withChat then
		for _, entry in ipairs(all) do
			for _, form in ipairs(entry.chat or {}) do
				Add(entry, form)
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

-- A form may carry a plural ending when it is marked ("DoTs", "HoTs",
-- "Tanks", "bosses", "ДоТы", see Util.PluralEndings), so no entry needs
-- its plurals listed.
-- Last byte of the plural ending that follows form at last in text, or
-- last when none does.
local function PluralEnd(text, form, last)
	local endings, cyrillic = ns.Util.PluralEndings(form)
	for _, ending in ipairs(endings) do
		local stop = last + #ending
		local written = text:sub(last + 1, stop)
		if (cyrillic and written or written:lower()) == ending and not IsWordByte(text:byte(stop + 1)) then
			return stop
		end
	end
	return last
end

-- Places of glossary terms in text (plain text, no escape sequences), each
-- entry at most once (its first place), non-overlapping, in text order:
-- a list of { first, last, entry }; a plural ending is part of the place
-- (see PluralEnd). withEnglish: also the English terms (for texts players
-- write); withChat: also the chat forms (chat lines).
function Glossary.Find(text, lang, withEnglish, withChat)
	local found, used, taken = {}, {}, {}
	for _, form in ipairs(Forms(lang, withEnglish, withChat)) do
		if not used[form.entry] then
			local init = 1
			while true do
				local first, last = text:find(form.text, init, true)
				if not first then
					break
				end
				if IsWordByte(text:byte(last + 1)) then
					last = PluralEnd(text, form.text, last)
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
