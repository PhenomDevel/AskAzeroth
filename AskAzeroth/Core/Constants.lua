local _, ns = ...

-- Values shared by several files. Limits and times of the protocol and the
-- store follow in later milestones (PLAN.md, sections 6 and 7).
local C = {}
ns.C = C

-- Question languages, one hidden channel each. Codes are ISO 639-1.
C.LANGUAGES = { "en", "de", "fr", "es", "it", "ru", "pt" }

C.LANGUAGE_BY_LOCALE = {
	deDE = "de",
	frFR = "fr",
	esES = "es",
	esMX = "es",
	itIT = "it",
	ruRU = "ru",
	ptBR = "pt",
}

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
