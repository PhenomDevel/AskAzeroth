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
local Sync = {}
ns.Sync = Sync

local C = ns.C
local Store = ns.Store
local Protocol = ns.Protocol

-- lang → timer of the own pending request
local requestTimers = {}
-- lang → { timer, known, since } of a pending answer
local pending = {}
-- lang → time of the last own answer
local lastAnswer = {}
-- lang → time the last SP from someone else arrived
local lastSeenAnswer = {}

Sync.stats = { requests = 0, answers = 0, skipped = 0 }

local function RandomDelay(min, max)
	return min + math.random() * (max - min)
end

function Sync.Request(lang)
	local known = Store.GetKnownIds(lang)
	ns.Net.SendRaw("SR", lang, Protocol.EncodeSyncRequest(known))
	Sync.stats.requests = Sync.stats.requests + 1
end

local function ScheduleRequest(lang)
	if requestTimers[lang] then
		requestTimers[lang]:Cancel()
	end
	requestTimers[lang] = C_Timer.NewTimer(RandomDelay(C.SYNC_REQUEST_DELAY_MIN, C.SYNC_REQUEST_DELAY_MAX), function()
		requestTimers[lang] = nil
		if ns.Channel.IsReady(lang) then
			Sync.Request(lang)
		end
	end)
end

local function Answer(lang)
	local entry = pending[lang]
	pending[lang] = nil
	local now = GetTime()
	-- Someone else was faster.
	if (lastSeenAnswer[lang] or -math.huge) >= entry.since then
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
	lastAnswer[lang] = now
	ns.Net.SendRaw("SP", lang, wire)
	Sync.stats.answers = Sync.stats.answers + 1
end

-- m: decoded SR (sender, lang, known).
function Sync.OnRequest(m)
	local lang = m.lang
	if not lang or not ns.Channel.IsSelected(lang) then
		return
	end
	local now = GetTime()
	if pending[lang] or now - (lastAnswer[lang] or -math.huge) < C.SYNC_ANSWER_INTERVAL then
		Sync.stats.skipped = Sync.stats.skipped + 1
		return
	end
	pending[lang] = {
		known = m.known,
		since = now,
		timer = C_Timer.NewTimer(RandomDelay(C.SYNC_ANSWER_DELAY_MIN, C.SYNC_ANSWER_DELAY_MAX), function()
			Answer(lang)
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
	if pending[lang] then
		pending[lang].timer:Cancel()
		pending[lang] = nil
	end
end)
