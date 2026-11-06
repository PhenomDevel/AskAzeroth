local _, ns = ...

-- Login sync (PLAN.md, section 8). Public questions live in memory only, so
-- after joining a language channel a client asks the others for what it
-- missed:
--   * C.SYNC_REQUEST_DELAY_MIN..MAX s after the channel is ready: SR with
--     the ids already known.
--   * On an SR: wait C.SYNC_ANSWER_DELAY_MIN..MAX s. If someone else sent an
--     SP on that channel meanwhile, do nothing. Otherwise send an SP with the
--     questions the asker doesn't know (at most C.SYNC_MAX_QUESTIONS and
--     C.SYNC_MAX_BYTES).
--   * Each channel answers at most once per C.SYNC_ANSWER_INTERVAL, so many
--     logins at once don't set off a flood.
-- The store only adds what is missing from an SP (Store.lua, handlers.SP).
--
-- Whisper mode (Forever, see Comm.lua): the SR goes to C.SYNC_WHISPER_PEERS
-- random peers (retried while none are known yet), each of them answers
-- the requester directly. The answer interval then counts per requester,
-- plus C.SYNC_WHISPER_ANSWER_GAP between any two answers.
local Sync = {}
ns.Sync = Sync

local C = ns.C
local Store = ns.Store
local Protocol = ns.Protocol

-- lang → timer of the own pending request
local requestTimers = {}
-- key → { timer, known, since, lang, target } of a pending answer; key is
-- the language, in whisper mode language + requester
local pending = {}
-- key → time of the last own answer
local lastAnswer = {}
-- lang → time of the last own answer to anyone (whisper mode)
local lastAnyAnswer = {}
-- lang → time the last SP from someone else arrived
local lastSeenAnswer = {}

Sync.stats = { requests = 0, answers = 0, skipped = 0 }

local function RandomDelay(min, max)
	return min + math.random() * (max - min)
end

-- Returns false if there is no one to ask yet (whisper mode). targets:
-- whom to ask in whisper mode (default: C.SYNC_WHISPER_PEERS random peers).
function Sync.Request(lang, targets)
	if ns.Comm.IsWhisperMode() then
		targets = targets or ns.Peers.Pick(lang, C.SYNC_WHISPER_PEERS)
		if #targets == 0 then
			return false
		end
	end
	local known = Store.GetKnownIds(lang)
	ns.Net.SendRaw("SR", lang, Protocol.EncodeSyncRequest(known), targets)
	Sync.stats.requests = Sync.stats.requests + 1
	return true
end

local function ScheduleRequest(lang, retries)
	if requestTimers[lang] then
		requestTimers[lang]:Cancel()
	end
	retries = retries or C.SYNC_REQUEST_RETRIES
	local delay = retries < C.SYNC_REQUEST_RETRIES and C.SYNC_REQUEST_DELAY_MAX or RandomDelay(C.SYNC_REQUEST_DELAY_MIN, C.SYNC_REQUEST_DELAY_MAX)
	requestTimers[lang] = C_Timer.NewTimer(delay, function()
		requestTimers[lang] = nil
		if not ns.Channel.IsReady(lang) then
			return
		end
		local sentAt = GetTime()
		if not Sync.Request(lang) then
			if retries > 0 then
				ScheduleRequest(lang, retries - 1)
			end
			return
		end
		-- Whisper mode: the peers asked may have gone offline (remembered
		-- ones especially); ask others if no answer came.
		if ns.Comm.IsWhisperMode() and retries > 0 then
			requestTimers[lang] = C_Timer.NewTimer(C.SYNC_WHISPER_TIMEOUT, function()
				requestTimers[lang] = nil
				if (lastSeenAnswer[lang] or -math.huge) < sentAt then
					ScheduleRequest(lang, retries - 1)
				end
			end)
		end
	end)
end

local function Answer(key)
	local entry = pending[key]
	pending[key] = nil
	local lang = entry.lang
	local now = GetTime()
	-- Someone else was faster (on the channel only; whispers aren't seen).
	if not entry.target and (lastSeenAnswer[lang] or -math.huge) >= entry.since then
		Sync.stats.skipped = Sync.stats.skipped + 1
		return
	end
	if not ns.Channel.IsReady(lang) then
		return
	end
	local list = Store.GetForSync(lang, entry.known)
	if #list == 0 then
		return
	end
	local wire = Protocol.EncodeSyncAnswer(list, C.SYNC_MAX_BYTES)
	if not wire then
		return
	end
	lastAnswer[key] = now
	lastAnyAnswer[lang] = now
	ns.Net.SendRaw("SP", lang, wire, entry.target and { entry.target } or nil)
	Sync.stats.answers = Sync.stats.answers + 1
end

-- m: decoded SR (sender, lang, known).
function Sync.OnRequest(m)
	local lang = m.lang
	if not lang or not ns.Channel.IsSelected(lang) then
		return
	end
	local now = GetTime()
	local whisper = ns.Comm.IsWhisperMode()
	local key = whisper and (lang .. "|" .. m.sender) or lang
	if pending[key] or now - (lastAnswer[key] or -math.huge) < C.SYNC_ANSWER_INTERVAL
		or whisper and now - (lastAnyAnswer[lang] or -math.huge) < C.SYNC_WHISPER_ANSWER_GAP then
		Sync.stats.skipped = Sync.stats.skipped + 1
		return
	end
	pending[key] = {
		lang = lang,
		target = whisper and m.sender or nil,
		known = m.known,
		since = now,
		timer = C_Timer.NewTimer(RandomDelay(C.SYNC_ANSWER_DELAY_MIN, C.SYNC_ANSWER_DELAY_MAX), function()
			Answer(key)
		end),
	}
end

ns.RegisterCallback(Sync, "AA_SYNC_REQUEST", function(_, m)
	Sync.OnRequest(m)
end)

ns.RegisterCallback(Sync, "AA_NET_RECEIVED", function(_, kind, _, lang)
	if kind == "SP" and lang then
		lastSeenAnswer[lang] = GetTime()
	end
end)

ns.RegisterCallback(Sync, "AA_CHANNEL_READY", function(_, lang)
	ScheduleRequest(lang)
end)

-- A left channel needs a new sync when joined again.
ns.RegisterCallback(Sync, "AA_CHANNEL_LEFT", function(_, lang)
	if requestTimers[lang] then
		requestTimers[lang]:Cancel()
		requestTimers[lang] = nil
	end
	for key, entry in pairs(pending) do
		if entry.lang == lang then
			entry.timer:Cancel()
			pending[key] = nil
		end
	end
end)

-- Switched to whisper mode: the sync request on the channel went nowhere.
ns.RegisterCallback(Sync, "AA_COMM_MODE", function()
	for _, lang in ipairs(ns.Channel.GetReadyLanguages()) do
		ScheduleRequest(lang)
	end
end)
