local _, ns = ...

-- Word search over the built-in FAQ, used for the suggestions in the "Ask
-- a question" dialog, the search on the FAQ page and the FAQ picker of
-- mentors. Everything stays local.
--
-- Texts are folded to a plain form (lower case, accents removed, Cyrillic
-- lower case, punctuation as spaces) and split into words. Words shorter
-- than C.FAQ_SEARCH_MIN_CHARS and stop words (Core/Data/FaqStopwords.lua)
-- are dropped; the rest is cut to its first C.FAQ_SEARCH_STEM characters,
-- a rough stem ("Berufe", "Berufslehrer" → "beruf"). A search word matches
-- every indexed stem that starts with it. A hit in the question or the
-- keywords (field kw) counts 3, in the answer 1.
local FaqSearch = {}
ns.FaqSearch = FaqSearch

local C = ns.C
local Faq = ns.Faq

local WEIGHT_QUESTION = 3
local WEIGHT_KEYWORDS = 3
local WEIGHT_ANSWER = 1

local UTF8_CHAR = "[%z\1-\127\192-\255][\128-\191]*"

-- Two-byte UTF-8 sequence of a code point below 0x800.
local function Encode(codePoint)
	return string.char(0xC0 + math.floor(codePoint / 64), 0x80 + codePoint % 64)
end

-- Characters replaced while folding.
local FOLD = {}
local LATIN = {
	a = "àáâãäåÀÁÂÃÄÅ",
	c = "çÇ",
	e = "èéêëÈÉÊË",
	i = "ìíîïÌÍÎÏ",
	n = "ñÑ",
	o = "òóôõöøÒÓÔÕÖØ",
	u = "ùúûüÙÚÛÜ",
	y = "ýÿÝ",
	ss = "ß",
	ae = "æÆ",
	oe = "œŒ",
}
for base, chars in pairs(LATIN) do
	for char in chars:gmatch(UTF8_CHAR) do
		FOLD[char] = base
	end
end
-- Cyrillic: А–Я to а–я, Ё and ё to е.
for codePoint = 0x410, 0x42F do
	FOLD[Encode(codePoint)] = Encode(codePoint + 0x20)
end
FOLD[Encode(0x401)] = Encode(0x435)
FOLD[Encode(0x451)] = Encode(0x435)

local function FoldChar(char)
	local folded = FOLD[char]
	if folded then
		return folded
	end
	local b1, b2, b3 = char:byte(1, 3)
	if #char == 2 then
		-- U+0080–U+00BF: no-break space, « », ¿, ¡ and other signs.
		if (b1 - 192) * 64 + (b2 - 128) < 0xC0 then
			return " "
		end
	elseif #char == 3 then
		-- U+2000–U+206F: general punctuation (dashes, quotes, …).
		local codePoint = (b1 - 224) * 4096 + (b2 - 128) * 64 + (b3 - 128)
		if codePoint >= 0x2000 and codePoint <= 0x206F then
			return " "
		end
	end
	return char
end

-- Plain form of a text: lower case, no accents, words separated by single
-- spaces.
function FaqSearch.Normalize(text)
	text = text:lower():gsub("[\192-\255][\128-\191]*", FoldChar)
	return (text:gsub("[^%w\128-\255]+", " "))
end

local function CharCount(word)
	return #word:gsub("[\128-\191]", "")
end

local function Stem(word)
	local stem = word:match("^" .. UTF8_CHAR:rep(C.FAQ_SEARCH_STEM))
	return stem or word
end

local stopwordSets = {}

-- Stop words of lang, folded like the texts.
local function Stopwords(lang)
	local set = stopwordSets[lang]
	if not set then
		set = {}
		for word in FaqSearch.Normalize(ns.FAQ_STOPWORDS[lang] or ""):gmatch("%S+") do
			set[word] = true
		end
		stopwordSets[lang] = set
	end
	return set
end

-- Stems of text without the stop words of the languages in langs, in
-- order of appearance, each once. The second list holds, for each stem,
-- the stem of the word without its plural ending (false when it has none),
-- so a search for "hots" or "bosses" also finds "HoT" and "Boss".
local function Stems(text, langs)
	local sets = {}
	for _, lang in ipairs(langs) do
		sets[#sets + 1] = Stopwords(lang)
	end
	local list, singulars, seen = {}, {}, {}
	for word in FaqSearch.Normalize(text):gmatch("%S+") do
		local skip = CharCount(word) < C.FAQ_SEARCH_MIN_CHARS and not word:find("^%d%d+$")
		for _, set in ipairs(sets) do
			skip = skip or set[word]
		end
		if not skip then
			local stem = Stem(word)
			if not seen[stem] then
				seen[stem] = true
				list[#list + 1] = stem
				local singular = ns.Util.Singular(word, C.FAQ_SEARCH_MIN_CHARS)
				singulars[#list] = singular and Stem(singular) or false
			end
		end
	end
	return list, singulars
end

-- Per language: stem → { [entry] = weight }, plus the position of every
-- entry in Faq.GetAll() for a stable order. Built on first use.
local indexes = {}

local function Index(lang)
	local index = indexes[lang]
	if index then
		return index
	end
	index = { stems = {}, order = {} }
	local langs = { lang }
	local function Add(entry, text, weight)
		if not text then
			return
		end
		for _, stem in ipairs(Stems(text, langs)) do
			local entries = index.stems[stem]
			if not entries then
				entries = {}
				index.stems[stem] = entries
			end
			if (entries[entry] or 0) < weight then
				entries[entry] = weight
			end
		end
	end
	for position, entry in ipairs(Faq.GetAll()) do
		index.order[entry] = position
		-- Entries not translated into lang are shown in English.
		local text = entry[lang] or entry.en
		Add(entry, text.q, WEIGHT_QUESTION)
		Add(entry, text.kw, WEIGHT_KEYWORDS)
		Add(entry, text.a, WEIGHT_ANSWER)
	end
	indexes[lang] = index
	return index
end

-- langs without duplicates and without languages that have no FAQ.
local function FaqLanguages(langs)
	local list, seen = {}, {}
	for _, lang in ipairs(langs) do
		if lang and not seen[lang] and Faq.HasLanguage(lang) then
			seen[lang] = true
			list[#list + 1] = lang
		end
	end
	return list
end

-- Searches text in the FAQ texts of langs (a list of language codes).
-- Returns the matching entries as { entry, score, hits } (hits = number of
-- search words found), best first, and the number of search words.
function FaqSearch.Search(text, langs)
	langs = FaqLanguages(langs)
	local terms, singulars = Stems(text or "", langs)
	if #terms == 0 then
		return {}, 0
	end
	local results, byEntry = {}, {}
	local order
	for i, term in ipairs(terms) do
		local singular = singulars[i]
		-- Best weight of every entry for this word, over all languages.
		local best = {}
		for _, lang in ipairs(langs) do
			local index = Index(lang)
			order = order or index.order
			for stem, entries in pairs(index.stems) do
				if stem:sub(1, #term) == term or (singular and stem:sub(1, #singular) == singular) then
					for entry, weight in pairs(entries) do
						if (best[entry] or 0) < weight then
							best[entry] = weight
						end
					end
				end
			end
		end
		for entry, weight in pairs(best) do
			local result = byEntry[entry]
			if not result then
				result = { entry = entry, score = 0, hits = 0 }
				byEntry[entry] = result
				results[#results + 1] = result
			end
			result.score = result.score + weight
			result.hits = result.hits + 1
		end
	end
	table.sort(results, function(a, b)
		if a.score ~= b.score then
			return a.score > b.score
		end
		return order[a.entry] < order[b.entry]
	end)
	return results, #terms
end

-- Entries that likely answer a question while it is typed: each result
-- has at least C.FAQ_SUGGEST_MIN_HITS of the search words (all of them
-- when there are fewer) and a score of C.FAQ_SUGGEST_MIN_SCORE. At most
-- max entries.
function FaqSearch.Suggest(text, langs, max)
	local results, termCount = FaqSearch.Search(text, langs)
	local minHits = math.min(termCount, C.FAQ_SUGGEST_MIN_HITS)
	local list = {}
	for _, result in ipairs(results) do
		if #list >= max then
			break
		end
		if result.hits >= minHits and result.score >= C.FAQ_SUGGEST_MIN_SCORE then
			list[#list + 1] = result.entry
		end
	end
	return list
end

-- Filters source (a list of entries) by a search text: entries that
-- contain every search word, best first; when no entry has all of them,
-- the entries with the most words found. Returns nil when the text has no
-- usable search word (too short or only stop words), so the caller can
-- fall back to a plain text search.
function FaqSearch.Filter(source, text, langs)
	local results, termCount = FaqSearch.Search(text, langs)
	if termCount == 0 then
		return nil
	end
	local inSource = {}
	for _, entry in ipairs(source) do
		inSource[entry] = true
	end
	local needed = 0
	for _, result in ipairs(results) do
		if inSource[result.entry] and result.hits > needed then
			needed = result.hits
		end
	end
	local rank = {}
	for position, result in ipairs(results) do
		if result.hits == needed then
			rank[result.entry] = position
		end
	end
	local list = {}
	for _, entry in ipairs(source) do
		if rank[entry] then
			list[#list + 1] = entry
		end
	end
	table.sort(list, function(a, b)
		return rank[a] < rank[b]
	end)
	return list
end

-- Plain substring search over question and answer in lang (the search
-- before this module; still used for very short search texts).
function FaqSearch.Contains(entry, text, lang)
	local q, a = Faq.GetText(entry, lang)
	return (q .. "\n" .. ns.FaqMarkup.Strip(a)):lower():find(text:lower(), 1, true) ~= nil
end
