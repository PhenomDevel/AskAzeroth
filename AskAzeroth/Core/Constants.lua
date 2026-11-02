local _, ns = ...

-- Values shared by several files. Limits and times of the protocol and the
-- store follow in later milestones (PLAN.md, sections 6 and 7).
local C = {}
ns.C = C

-- Question languages, one hidden channel each. Codes are ISO 639-1.
C.LANGUAGES = { "en", "de", "fr", "es", "it", "ru", "pt" }

-- Language names as their speakers write them (not translated, so everyone
-- finds their own language in the list).
C.LANGUAGE_NAMES = {
	en = "English",
	de = "Deutsch",
	fr = "Français",
	es = "Español",
	it = "Italiano",
	ru = "Русский",
	pt = "Português",
}

C.LANGUAGE_BY_LOCALE = {
	deDE = "de",
	frFR = "fr",
	esES = "es",
	esMX = "es",
	itIT = "it",
	ruRU = "ru",
	ptBR = "pt",
}

-- Shown on the FAQ page as the place to look things up.
C.WOWHEAD_URL = "https://www.wowhead.com"

local known = {}
for _, lang in ipairs(C.LANGUAGES) do
	known[lang] = true
end

function C.IsLanguage(lang)
	return known[lang] == true
end

-- Language matching the client locale; English for all others.
function C.GetClientLanguage()
	return C.LANGUAGE_BY_LOCALE[GetLocale()] or "en"
end

-- "AskAzerothDE". Channel names are case-insensitive.
C.CHANNEL_PREFIX = "AskAzeroth"

function C.GetChannelName(lang)
	return C.CHANNEL_PREFIX .. lang:upper()
end

-- Addon message prefix per language ("AA1de"): AceComm reassembles split
-- messages per prefix + distribution + sender and does not see the channel,
-- so parallel messages on two channels with one prefix would mix.
C.COMM_PREFIX = "AA1"

function C.GetCommPrefix(lang)
	return C.COMM_PREFIX .. lang
end

-- How long own questions are kept under "My questions", in days; 0 = forever.
C.RETENTION_DAYS = { 0, 7, 30, 90 }

--------------------------------------------------------------------------------
-- Questions and answers (PLAN.md, sections 5 to 7)
--------------------------------------------------------------------------------

-- Lengths in bytes (UTF-8), as the client counts them.
C.TITLE_MAX = 120
C.BODY_MAX = 500
C.ANSWER_MAX = 500
-- FAQ entries an answer can refer to, and the longest FAQ id.
C.FAQ_REFS_MAX = 3
C.FAQ_ID_MAX = 32
-- FAQ search (Core/FaqSearch.lua): words need this many characters (numbers
-- like "60" always count) and are cut to C.FAQ_SEARCH_STEM characters.
C.FAQ_SEARCH_MIN_CHARS = 3
C.FAQ_SEARCH_STEM = 5
-- FAQ suggestions while a question is typed: at most this many entries,
-- shown this many seconds after the last key, only for entries with at
-- least FAQ_SUGGEST_MIN_HITS of the search words (all when there are
-- fewer) and this score (a word in the question counts 3, in the answer 1).
-- Suggestions start once the summary has FAQ_SUGGEST_MIN_LENGTH characters.
C.FAQ_SUGGEST_MAX = 3
C.FAQ_SUGGEST_MIN_LENGTH = 8
C.FAQ_SUGGEST_DELAY = 0.3
C.FAQ_SUGGEST_MIN_HITS = 2
C.FAQ_SUGGEST_MIN_SCORE = 3
-- Longest glossary definition in bytes (Cyrillic needs two per letter);
-- it is shown in a tooltip.
C.GLOSSARY_DEF_MAX = 400
C.ZONE_MAX = 64
C.CTX_TEXT_MAX = 24
C.LEVEL_MAX = 100

-- A question disappears from the public list (seconds):
C.EXPIRE_OPEN = 3 * 24 * 60 * 60 -- without answers, after created
C.EXPIRE_ANSWERED = 3 * 24 * 60 * 60 -- with answers, after the last one
C.EXPIRE_SOLVED = 24 * 60 * 60 -- after it was marked as solved
-- How often expired questions are removed.
C.SWEEP_INTERVAL = 60
-- Public questions kept in memory; the oldest go first.
C.MAX_QUESTIONS = 300
-- Answers per question in memory; more are dropped.
C.MAX_ANSWERS = 50

-- Timestamps further in the future are rejected (clock skew allowance).
C.FUTURE_TOLERANCE = 5 * 60

-- Rate limits per sender, for messages received directly (not via sync).
C.RATE_QUESTION_WINDOW = 60
C.RATE_QUESTIONS = 1
C.RATE_ANSWER_WINDOW = 60
C.RATE_ANSWERS = 6
-- Open (not yet expired or solved) questions per author. Questions stay
-- for days, so a player who forgets to mark them solved still has room.
C.MAX_OPEN_PER_AUTHOR = 5

-- Sync answer (SP): at most this many questions per message.
C.SYNC_MAX_QUESTIONS = 30
-- Sync request (SR): at most this many known ids.
C.SYNC_MAX_KNOWN = 200
-- Sync answer: at most this many bytes before compression, so one answer
-- doesn't hold up the channel for long; the oldest answers go first.
C.SYNC_MAX_BYTES = 16000
-- Seconds after joining a channel before the sync request (random).
C.SYNC_REQUEST_DELAY_MIN = 5
C.SYNC_REQUEST_DELAY_MAX = 15
-- Seconds before answering a request (random); someone else may be faster.
C.SYNC_ANSWER_DELAY_MIN = 2
C.SYNC_ANSWER_DELAY_MAX = 8
-- Answer requests at most this often per language channel.
C.SYNC_ANSWER_INTERVAL = 5 * 60

-- Pinned answers kept at most; beyond that pinning is refused.
C.MAX_PINNED = 500

--------------------------------------------------------------------------------
-- Notifications (PLAN.md, section 9)
--------------------------------------------------------------------------------

-- How long a toast stays.
C.TOAST_DURATION = 12
-- Choices for "only questions from players up to level".
C.ASKER_LEVELS = { 10, 20, 30, 40, 50, 60, 70, 80 }
