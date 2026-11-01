local _, ns = ...

-- Public questions and their answers, in memory only (PLAN.md, sections 5
-- and 7). Every client works out the status and the expiry itself from the
-- timestamps; nothing is deleted over the network except a withdrawal by
-- the author.
--
-- Messages from Protocol.Decode go to Store.Receive. Own questions and
-- answers go through Store.Ask/Answer/Solve/Withdraw, which apply the same
-- rules and return the message to send.
--
-- Messages (CallbackHandler):
--   AA_QUESTION_ADDED (question)      AA_ANSWER_ADDED (question, answer)
--   AA_QUESTION_SOLVED (question)     AA_QUESTION_REMOVED (question, reason)
--   AA_STORE_CHANGED ()               AA_MESSAGE_DROPPED (reason, sender, type)
local Store = {}
ns.Store = Store

local C = ns.C
local Util = ns.Util
local Protocol = ns.Protocol

-- id → question
local questions = {}
-- sender → { questions = { times }, answers = { times } }
local rates = {}

Store.stats = { accepted = 0, dropped = 0 }

--------------------------------------------------------------------------------
-- Status and expiry
--------------------------------------------------------------------------------

function Store.GetStatus(q)
	if q.solved then
		return "solved"
	elseif q.answerCount > 0 then
		return "answered"
	end
	return "open"
end

-- When the question disappears from the public list.
function Store.ExpiresAt(q)
	if q.solved then
		return q.solved + C.EXPIRE_SOLVED
	elseif q.lastAnswer then
		return q.lastAnswer + C.EXPIRE_ANSWERED
	end
	return q.created + C.EXPIRE_OPEN
end

function Store.IsExpired(q, now)
	return Store.ExpiresAt(q) <= (now or Util.Now())
end

--------------------------------------------------------------------------------
-- Queries
--------------------------------------------------------------------------------

function Store.Get(id)
	return questions[id]
end

function Store.Count()
	return Util.Count(questions)
end

-- Last activity: the newest of created, last answer and solved.
function Store.LastActivity(q)
	return math.max(q.created, q.lastAnswer or 0, q.solved or 0)
end

-- Questions matching filter(q) (or all), most recent activity first.
function Store.List(filter)
	local list = {}
	for _, q in pairs(questions) do
		if not filter or filter(q) then
			list[#list + 1] = q
		end
	end
	table.sort(list, function(a, b)
		local la, lb = Store.LastActivity(a), Store.LastActivity(b)
		if la ~= lb then
			return la > lb
		end
		return a.id < b.id
	end)
	return list
end

-- Answers of a question, oldest first.
function Store.GetAnswers(q)
	local list = {}
	for _, a in pairs(q.answers) do
		list[#list + 1] = a
	end
	table.sort(list, function(a, b)
		if a.created ~= b.created then
			return a.created < b.created
		end
		return a.id < b.id
	end)
	return list
end

-- Open (not solved) questions of an author in memory.
function Store.CountOpen(author)
	local count = 0
	for _, q in pairs(questions) do
		if q.author == author and not q.solved then
			count = count + 1
		end
	end
	return count
end

-- Questions of lang for a sync answer: not in known, newest first, at most
-- C.SYNC_MAX_QUESTIONS.
function Store.GetForSync(lang, known)
	local list = Store.List(function(q)
		return q.lang == lang and not known[q.id]
	end)
	for i = #list, C.SYNC_MAX_QUESTIONS + 1, -1 do
		list[i] = nil
	end
	return list
end

-- Ids of lang for a sync request.
function Store.GetKnownIds(lang)
	local ids = {}
	for _, q in ipairs(Store.List(function(q)
		return q.lang == lang
	end)) do
		if #ids >= C.SYNC_MAX_KNOWN then
			break
		end
		ids[#ids + 1] = q.id
	end
	return ids
end

--------------------------------------------------------------------------------
-- Rate limits
--------------------------------------------------------------------------------

-- Sliding window: true and the time recorded if fewer than limit entries in
-- the last window seconds.
local function Allow(sender, kind, limit, window, now)
	local rate = rates[sender]
	if not rate then
		rate = { questions = {}, answers = {} }
		rates[sender] = rate
	end
	local times = rate[kind]
	for i = #times, 1, -1 do
		if times[i] <= now - window then
			table.remove(times, i)
		end
	end
	if #times >= limit then
		return false
	end
	times[#times + 1] = now
	return true
end

--------------------------------------------------------------------------------
-- Changes
--------------------------------------------------------------------------------

local function Drop(reason, sender, kind)
	Store.stats.dropped = Store.stats.dropped + 1
	ns:Fire("AA_MESSAGE_DROPPED", reason, sender, kind)
	return false, reason
end

local function Accept()
	Store.stats.accepted = Store.stats.accepted + 1
	return true
end

local function Remove(q, reason)
	questions[q.id] = nil
	ns:Fire("AA_QUESTION_REMOVED", q, reason)
end

-- Keeps at most C.MAX_QUESTIONS; the least recently active go first.
local function EnforceCap()
	local count = Store.Count()
	if count <= C.MAX_QUESTIONS then
		return
	end
	local list = Store.List()
	for i = #list, C.MAX_QUESTIONS + 1, -1 do
		Remove(list[i], "cap")
	end
end

-- Adds an answer to q; false, reason if it is a duplicate or q is full.
local function AddAnswer(q, a)
	local existing = q.answers[a.id]
	if existing then
		return false, existing.author == a.author and "duplicate" or "collision"
	end
	if q.answerCount >= C.MAX_ANSWERS then
		return false, "answers-full"
	end
	if a.created < q.created then
		return false, "time"
	end
	q.answers[a.id] = a
	q.answerCount = q.answerCount + 1
	if not q.lastAnswer or a.created > q.lastAnswer then
		q.lastAnswer = a.created
	end
	return true
end

local handlers = {}

function handlers.Q(m, now, direct)
	local q = m.question
	local existing = questions[q.id]
	if existing then
		return Drop(existing.author == q.author and "duplicate" or "collision", m.sender, "Q")
	end
	if Store.IsExpired(q, now) then
		return Drop("expired", m.sender, "Q")
	end
	if direct then
		if Store.CountOpen(q.author) >= C.MAX_OPEN_PER_AUTHOR then
			return Drop("open-limit", m.sender, "Q")
		end
		if not Allow(m.sender, "questions", C.RATE_QUESTIONS, C.RATE_QUESTION_WINDOW, now) then
			return Drop("rate", m.sender, "Q")
		end
	end
	questions[q.id] = q
	ns:Fire("AA_QUESTION_ADDED", q)
	EnforceCap()
	ns:Fire("AA_STORE_CHANGED")
	return Accept()
end

function handlers.A(m, now)
	local a = m.answer
	local q = questions[a.qid]
	if not q then
		return Drop("unknown", m.sender, "A")
	end
	if m.lang and m.lang ~= q.lang then
		return Drop("lang", m.sender, "A")
	end
	if q.answers[a.id] then
		return Drop(q.answers[a.id].author == a.author and "duplicate" or "collision", m.sender, "A")
	end
	if not Allow(m.sender, "answers", C.RATE_ANSWERS, C.RATE_ANSWER_WINDOW, now) then
		return Drop("rate", m.sender, "A")
	end
	local ok, reason = AddAnswer(q, a)
	if not ok then
		return Drop(reason, m.sender, "A")
	end
	ns:Fire("AA_ANSWER_ADDED", q, a)
	ns:Fire("AA_STORE_CHANGED")
	return Accept()
end

-- Only the author may mark a question as solved.
function handlers.S(m)
	local q = questions[m.qid]
	if not q then
		return Drop("unknown", m.sender, "S")
	end
	if m.lang and m.lang ~= q.lang then
		return Drop("lang", m.sender, "S")
	end
	if q.author ~= m.sender then
		return Drop("not-author", m.sender, "S")
	end
	if q.solved then
		return Drop("duplicate", m.sender, "S")
	end
	if m.time < q.created then
		return Drop("time", m.sender, "S")
	end
	q.solved = m.time
	ns:Fire("AA_QUESTION_SOLVED", q)
	ns:Fire("AA_STORE_CHANGED")
	return Accept()
end

-- Only the author may withdraw a question.
function handlers.D(m)
	local q = questions[m.qid]
	if not q then
		return Drop("unknown", m.sender, "D")
	end
	if m.lang and m.lang ~= q.lang then
		return Drop("lang", m.sender, "D")
	end
	if q.author ~= m.sender then
		return Drop("not-author", m.sender, "D")
	end
	Remove(q, "withdrawn")
	ns:Fire("AA_STORE_CHANGED")
	return Accept()
end

-- Sync answers only add what is missing: unknown questions and unknown
-- answers. They never change or remove anything, and a solved state only
-- counts from the author (S), so a forged sync answer can't close or alter
-- questions. Rate limits don't apply; the sender relays others' messages.
function handlers.SP(m, now)
	local added = 0
	for _, incoming in ipairs(m.questions) do
		local answers = incoming.syncAnswers
		incoming.syncAnswers = nil
		local q = questions[incoming.id]
		local isNew = false
		if not q then
			-- Expiry depends on the answers, so add them before checking.
			for _, a in ipairs(answers) do
				AddAnswer(incoming, a)
			end
			if not Store.IsExpired(incoming, now) then
				-- Came in late via sync: no notification for it.
				incoming.viaSync = true
				questions[incoming.id] = incoming
				q = incoming
				isNew = true
				added = added + 1
				ns:Fire("AA_QUESTION_ADDED", q)
			end
		elseif q.author == incoming.author then
			for _, a in ipairs(answers) do
				if AddAnswer(q, a) then
					added = added + 1
					ns:Fire("AA_ANSWER_ADDED", q, a)
				end
			end
		end
		if isNew then
			for _, a in pairs(q.answers) do
				ns:Fire("AA_ANSWER_ADDED", q, a)
			end
		end
	end
	if added == 0 then
		return Drop("nothing-new", m.sender, "SP")
	end
	EnforceCap()
	ns:Fire("AA_STORE_CHANGED")
	return Accept()
end

-- A decoded message (Protocol.Decode). direct: received first-hand, so the
-- per-sender rate limits apply. Returns true or false, reason. SR is not
-- handled here (Sync answers it from Store.GetForSync).
function Store.Receive(m, now)
	local handler = handlers[m.type]
	if not handler then
		return false, "type"
	end
	return handler(m, now or Util.Now(), true)
end

-- Puts an own question back after a reload or login (from My questions),
-- so its thread and actions work before anyone syncs it. q is a fresh copy
-- with its answers. No rate limits; returns true if it was added.
function Store.Restore(q, now)
	if questions[q.id] or Store.IsExpired(q, now or Util.Now()) then
		return false
	end
	questions[q.id] = q
	ns:Fire("AA_QUESTION_ADDED", q)
	EnforceCap()
	ns:Fire("AA_STORE_CHANGED")
	return true
end

--------------------------------------------------------------------------------
-- Own actions
--------------------------------------------------------------------------------
-- Each returns the encoded message to send (from M3 on), or nil, reason.

-- ctx: { lvl, race, class, faction, zone } of the player, optional.
function Store.Ask(lang, cat, title, body, ctx)
	local me = ns:GetPlayerFullName()
	if not me then
		return nil, "sender"
	end
	local now = Util.Now()
	local wire = Protocol.EncodeQuestion({ id = Util.NewId(me, now), cat = cat, title = title, body = body, ctx = ctx, created = now })
	-- Run the own message through the same checks as a received one.
	local m, reason = Protocol.Decode(wire, me, lang, now)
	if not m then
		return nil, reason
	end
	local ok
	ok, reason = Store.Receive(m, now)
	if not ok then
		return nil, reason
	end
	return wire, m.question
end

function Store.Answer(qid, text)
	local me = ns:GetPlayerFullName()
	if not me then
		return nil, "sender"
	end
	local now = Util.Now()
	local q = questions[qid]
	local wire = Protocol.EncodeAnswer({ id = Util.NewId(me, now), qid = qid, text = text, created = now })
	local m, reason = Protocol.Decode(wire, me, q and q.lang, now)
	if not m then
		return nil, reason
	end
	local ok
	ok, reason = Store.Receive(m, now)
	if not ok then
		return nil, reason
	end
	return wire, m.answer
end

function Store.Solve(qid)
	local me = ns:GetPlayerFullName()
	local now = Util.Now()
	local ok, reason = Store.Receive({ type = "S", sender = me, qid = qid, time = now }, now)
	if not ok then
		return nil, reason
	end
	return Protocol.EncodeSolved(qid, now)
end

function Store.Withdraw(qid)
	local me = ns:GetPlayerFullName()
	local ok, reason = Store.Receive({ type = "D", sender = me, qid = qid })
	if not ok then
		return nil, reason
	end
	return Protocol.EncodeWithdraw(qid)
end

--------------------------------------------------------------------------------
-- Expiry
--------------------------------------------------------------------------------

function Store.Sweep(now)
	now = now or Util.Now()
	local removed = 0
	for _, q in pairs(Store.List()) do
		if Store.IsExpired(q, now) then
			Remove(q, "expired")
			removed = removed + 1
		end
	end
	-- Forget rate entries of senders that went quiet.
	local window = math.max(C.RATE_QUESTION_WINDOW, C.RATE_ANSWER_WINDOW)
	for sender, rate in pairs(rates) do
		local last = math.max(rate.questions[#rate.questions] or 0, rate.answers[#rate.answers] or 0)
		if last <= now - window then
			rates[sender] = nil
		end
	end
	if removed > 0 then
		ns:Fire("AA_STORE_CHANGED")
	end
	return removed
end

-- Clears everything (debugging).
function Store.Reset()
	wipe(questions)
	wipe(rates)
	Store.stats.accepted, Store.stats.dropped = 0, 0
	ns:Fire("AA_STORE_CHANGED")
end

ns:RegisterEvent("PLAYER_LOGIN", function()
	C_Timer.NewTicker(C.SWEEP_INTERVAL, function()
		Store.Sweep()
	end)
end)
