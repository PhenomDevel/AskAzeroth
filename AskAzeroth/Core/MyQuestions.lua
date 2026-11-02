local _, ns = ...

-- Own questions under "My questions" (PLAN.md, sections 5 and 7): a copy of
-- every question asked on this account, with all answers that arrived,
-- kept in AskAzerothDB after the public question has expired. The copy
-- follows the store while the question is public.
--
-- Status: the store's status while the question is public, "withdrawn" after
-- a withdrawal, "closed" once it has expired.
-- Kept for settings.retentionDays (0 = forever); closed questions older
-- than that are removed at login and with Cleanup().
--
-- Message: AA_MY_QUESTIONS_CHANGED ()
local MyQuestions = {}
ns.MyQuestions = MyQuestions

local Util = ns.Util
local Store = ns.Store

local DAY = 24 * 60 * 60

ns.dbDefaults.myQuestions = {}

local function Entries()
	return ns.db and ns.db.myQuestions or {}
end

local function Changed()
	ns:Fire("AA_MY_QUESTIONS_CHANGED")
end

local function CopyContext(ctx)
	if not ctx then
		return nil
	end
	return { lvl = ctx.lvl, race = ctx.race, class = ctx.class, faction = ctx.faction, zone = ctx.zone }
end

local function CopyAnswer(a)
	return { id = a.id, qid = a.qid, author = a.author, text = a.text, faq = a.faq, ctx = CopyContext(a.ctx), created = a.created }
end

-- A copy of q in the store's shape, so Store.GetStatus/ExpiresAt/GetAnswers
-- work on it.
local function Copy(q)
	local copy = {
		id = q.id,
		author = q.author,
		lang = q.lang,
		cat = q.cat,
		title = q.title,
		body = q.body,
		ctx = CopyContext(q.ctx),
		created = q.created,
		lastAnswer = q.lastAnswer,
		solved = q.solved,
		answers = {},
		answerCount = 0,
	}
	for id, a in pairs(q.answers) do
		copy.answers[id] = CopyAnswer(a)
		copy.answerCount = copy.answerCount + 1
	end
	return copy
end

local function AddAnswer(entry, a)
	if entry.answers[a.id] then
		return false
	end
	entry.answers[a.id] = CopyAnswer(a)
	entry.answerCount = (entry.answerCount or 0) + 1
	if not entry.lastAnswer or a.created > entry.lastAnswer then
		entry.lastAnswer = a.created
	end
	return true
end

function MyQuestions.Get(id)
	return id and Entries()[id]
end

-- The public question while there is one, otherwise the saved copy.
function MyQuestions.GetThread(id)
	return Store.Get(id) or MyQuestions.Get(id)
end

function MyQuestions.IsLive(id)
	return Store.Get(id) ~= nil
end

function MyQuestions.GetStatus(entry, now)
	if entry.withdrawn then
		return "withdrawn"
	end
	local live = Store.Get(entry.id)
	if live then
		return Store.GetStatus(live)
	end
	if Store.IsExpired(entry, now) then
		return "closed"
	end
	-- Still public elsewhere, not known here yet (another character's
	-- question, or before the sync).
	return Store.GetStatus(entry)
end

function MyQuestions.Count()
	return Util.Count(Entries())
end

-- Newest first; filter(entry) optional.
function MyQuestions.List(filter)
	local list = {}
	for _, entry in pairs(Entries()) do
		if not filter or filter(entry) then
			list[#list + 1] = entry
		end
	end
	table.sort(list, function(a, b)
		if a.created ~= b.created then
			return a.created > b.created
		end
		return a.id < b.id
	end)
	return list
end

-- Removes closed and withdrawn questions older than the retention setting.
-- Returns how many were removed.
function MyQuestions.Cleanup(now)
	local days = ns.db.settings.retentionDays or 0
	if days <= 0 then
		return 0
	end
	now = now or Util.Now()
	local limit = now - days * DAY
	local removed = 0
	local entries = Entries()
	for id, entry in pairs(entries) do
		local status = MyQuestions.GetStatus(entry, now)
		if (status == "closed" or status == "withdrawn") and entry.created < limit then
			entries[id] = nil
			removed = removed + 1
		end
	end
	if removed > 0 then
		Changed()
	end
	return removed
end

-- Removes one question from the list (any status but public).
function MyQuestions.Remove(id)
	if not Entries()[id] or Store.Get(id) then
		return false
	end
	Entries()[id] = nil
	Changed()
	return true
end

--------------------------------------------------------------------------------
-- Following the store
--------------------------------------------------------------------------------

local function IsMine(q)
	return q.author == ns:GetPlayerFullName()
end

ns.RegisterCallback(MyQuestions, "AA_QUESTION_ADDED", function(_, q)
	local entries = Entries()
	local entry = entries[q.id]
	if not entry then
		if not IsMine(q) then
			return
		end
		entries[q.id] = Copy(q)
		Changed()
		return
	end
	if entry.author ~= q.author then
		return
	end
	-- Came back via sync: take over what arrived meanwhile.
	local changed = false
	for _, a in pairs(q.answers) do
		changed = AddAnswer(entry, a) or changed
	end
	if q.solved and not entry.solved then
		entry.solved = q.solved
		changed = true
	end
	if changed then
		Changed()
	end
end)

ns.RegisterCallback(MyQuestions, "AA_ANSWER_ADDED", function(_, q, a)
	local entry = Entries()[q.id]
	if entry and entry.author == q.author and AddAnswer(entry, a) then
		Changed()
	end
end)

ns.RegisterCallback(MyQuestions, "AA_QUESTION_SOLVED", function(_, q)
	local entry = Entries()[q.id]
	if entry and entry.author == q.author then
		entry.solved = q.solved
		Changed()
	end
end)

ns.RegisterCallback(MyQuestions, "AA_QUESTION_REMOVED", function(_, q, reason)
	local entry = Entries()[q.id]
	if entry and entry.author == q.author then
		if reason == "withdrawn" then
			entry.withdrawn = Util.Now()
		end
		Changed()
	end
end)

-- At login: clean up, then put this character's still public questions
-- back into the store.
ns:RegisterEvent("PLAYER_LOGIN", function()
	local now = Util.Now()
	MyQuestions.Cleanup(now)
	local me = ns:GetPlayerFullName()
	for _, entry in pairs(Entries()) do
		if entry.author == me and not entry.withdrawn then
			Store.Restore(Copy(entry), now)
		end
	end
end)
