local _, ns = ...

-- Message types, their wire format and the checks on receipt (PLAN.md,
-- section 6; details and examples in docs/PROTOCOL.md). Messages are
-- serialized tables with short keys; t is the type.
--
--   Q   { t, i = id, c = category, ti = title, b = body?, x = context?, ts = created }
--   A   { t, i = id, q = question id, tx = text, f = FAQ ids?, ts = created }
--   S   { t, q = question id, ts = solved at }
--   D   { t, q = question id }
--   SR  { t, k = { known question ids } }
--   SP  { t, qs = { { i, a = author, c, ti, b?, x?, ts, an = { { i, a, tx, f?, ts } } } } }
--
-- Decode returns a normalized message or nil plus a reason. It checks types,
-- lengths, lists and times; who may send what is checked by the store, which
-- knows the questions.
local Protocol = {}
ns.Protocol = Protocol

local C = ns.C
local Util = ns.Util
local Serializer = ns.Serializer

--------------------------------------------------------------------------------
-- Field checks
--------------------------------------------------------------------------------

local function IsTime(value, now)
	return type(value) == "number" and value == math.floor(value) and value > 0
		and value <= now + C.FUTURE_TOLERANCE
end

local function IsWord(value)
	return type(value) == "string" and #value <= C.CTX_TEXT_MAX and value:find("^[%w_]+$") ~= nil
end

-- Context of the asker; invalid fields are left out, not fatal.
local function CleanContext(x)
	if type(x) ~= "table" then
		return nil
	end
	local ctx = {}
	if type(x.l) == "number" and x.l == math.floor(x.l) and x.l >= 1 and x.l <= C.LEVEL_MAX then
		ctx.lvl = x.l
	end
	if IsWord(x.r) then
		ctx.race = x.r
	end
	if IsWord(x.k) then
		ctx.class = x.k
	end
	if x.f == "Alliance" or x.f == "Horde" then
		ctx.faction = x.f
	end
	ctx.zone = Util.CleanText(x.z, C.ZONE_MAX)
	if next(ctx) == nil then
		return nil
	end
	return ctx
end

local function WireContext(ctx)
	if not ctx then
		return nil
	end
	return { l = ctx.lvl, r = ctx.race, k = ctx.class, f = ctx.faction, z = ctx.zone }
end

-- Question fields shared by Q and SP. Returns the question or nil, reason.
local function ReadQuestion(m, author, lang, now)
	if not Util.IsId(m.i) then
		return nil, "id"
	end
	if not C.IsCategory(m.c) then
		return nil, "category"
	end
	local title = Util.CleanText(m.ti, C.TITLE_MAX)
	if not title then
		return nil, "title"
	end
	local body
	if m.b ~= nil and m.b ~= "" then
		body = Util.CleanText(m.b, C.BODY_MAX, true)
		if not body then
			return nil, "body"
		end
	end
	if not IsTime(m.ts, now) then
		return nil, "time"
	end
	return {
		id = m.i,
		author = author,
		lang = lang,
		cat = m.c,
		title = title,
		body = body,
		ctx = CleanContext(m.x),
		created = m.ts,
		answers = {},
		answerCount = 0,
	}
end

local function ReadAnswer(m, qid, author, now)
	if not Util.IsId(m.i) then
		return nil, "id"
	end
	local text = Util.CleanText(m.tx, C.ANSWER_MAX, true)
	if not text then
		return nil, "text"
	end
	if not IsTime(m.ts, now) then
		return nil, "time"
	end
	-- FAQ references are optional extras: invalid ones are dropped, the
	-- answer stays.
	return { id = m.i, qid = qid, author = author, text = text, faq = ns.Faq.CleanRefs(m.f), created = m.ts }
end

--------------------------------------------------------------------------------
-- Decode
--------------------------------------------------------------------------------

local readers = {}

function readers.Q(m, sender, lang, now)
	local question, reason = ReadQuestion(m, sender, lang, now)
	if not question then
		return nil, reason
	end
	return { type = "Q", sender = sender, question = question }
end

function readers.A(m, sender, _, now)
	if not Util.IsId(m.q) then
		return nil, "qid"
	end
	local answer, reason = ReadAnswer(m, m.q, sender, now)
	if not answer then
		return nil, reason
	end
	return { type = "A", sender = sender, answer = answer }
end

function readers.S(m, sender, _, now)
	if not Util.IsId(m.q) then
		return nil, "qid"
	end
	if not IsTime(m.ts, now) then
		return nil, "time"
	end
	return { type = "S", sender = sender, qid = m.q, time = m.ts }
end

function readers.D(m, sender)
	if not Util.IsId(m.q) then
		return nil, "qid"
	end
	return { type = "D", sender = sender, qid = m.q }
end

function readers.SR(m, sender)
	if type(m.k) ~= "table" or #m.k > C.SYNC_MAX_KNOWN then
		return nil, "known"
	end
	local known = {}
	for i = 1, #m.k do
		if not Util.IsId(m.k[i]) then
			return nil, "known"
		end
		known[m.k[i]] = true
	end
	return { type = "SR", sender = sender, known = known }
end

-- Sync answers carry other players' questions. Invalid entries are skipped
-- one by one, so one bad entry doesn't cost the rest.
function readers.SP(m, sender, lang, now)
	if type(m.qs) ~= "table" or #m.qs == 0 or #m.qs > C.SYNC_MAX_QUESTIONS then
		return nil, "questions"
	end
	local questions = {}
	for i = 1, #m.qs do
		local entry = m.qs[i]
		if type(entry) == "table" and Util.IsPlayerName(entry.a) then
			local question = ReadQuestion(entry, entry.a, lang, now)
			if question then
				local answers = {}
				if type(entry.an) == "table" then
					for j = 1, math.min(#entry.an, C.MAX_ANSWERS) do
						local a = entry.an[j]
						if type(a) == "table" and Util.IsPlayerName(a.a) then
							local answer = ReadAnswer(a, question.id, a.a, now)
							if answer then
								answers[#answers + 1] = answer
							end
						end
					end
				end
				question.syncAnswers = answers
				questions[#questions + 1] = question
			end
		end
	end
	if #questions == 0 then
		return nil, "questions"
	end
	return { type = "SP", sender = sender, questions = questions }
end

-- text: the decompressed payload; sender: "Name-Realm"; lang: the channel's
-- language. Returns the message or nil, reason.
function Protocol.Decode(text, sender, lang, now)
	sender = Util.FullName(sender)
	if not sender then
		return nil, "sender"
	end
	local m = Serializer.Deserialize(text)
	if type(m) ~= "table" then
		return nil, "format"
	end
	local reader = readers[m.t]
	if not reader then
		return nil, "type"
	end
	local message, reason = reader(m, sender, lang, now or Util.Now())
	if message then
		message.lang = lang
	end
	return message, reason
end

--------------------------------------------------------------------------------
-- Encode
--------------------------------------------------------------------------------

function Protocol.EncodeQuestion(q)
	return Serializer.Serialize({ t = "Q", i = q.id, c = q.cat, ti = q.title, b = q.body, x = WireContext(q.ctx), ts = q.created })
end

function Protocol.EncodeAnswer(a)
	return Serializer.Serialize({ t = "A", i = a.id, q = a.qid, tx = a.text, f = a.faq, ts = a.created })
end

function Protocol.EncodeSolved(qid, time)
	return Serializer.Serialize({ t = "S", q = qid, ts = time })
end

function Protocol.EncodeWithdraw(qid)
	return Serializer.Serialize({ t = "D", q = qid })
end

function Protocol.EncodeSyncRequest(knownIds)
	return Serializer.Serialize({ t = "SR", k = knownIds })
end

local function SyncEntry(q, answers, count)
	local list = {}
	for i = 1, count do
		local a = answers[i]
		list[i] = { i = a.id, a = a.author, tx = a.text, f = a.faq, ts = a.created }
	end
	return { i = q.id, a = q.author, c = q.cat, ti = q.title, b = q.body, x = WireContext(q.ctx), ts = q.created, an = list }
end

-- questions: store entries (with their answers), at most C.SYNC_MAX_QUESTIONS,
-- most important first. maxBytes (optional) limits the serialized size:
-- the oldest answers of a question are left out first, and questions that
-- don't fit any more are left out. Returns the message (or nil if nothing
-- fits) and how many questions it holds.
function Protocol.EncodeSyncAnswer(questions, maxBytes)
	local list = {}
	local used = 0
	for i = 1, math.min(#questions, C.SYNC_MAX_QUESTIONS) do
		local q = questions[i]
		-- Newest answers first, so the last answer (and with it the expiry)
		-- stays the same when old ones are left out.
		local answers = {}
		for _, a in pairs(q.answers) do
			answers[#answers + 1] = a
		end
		table.sort(answers, function(x, y)
			if x.created ~= y.created then
				return x.created > y.created
			end
			return x.id < y.id
		end)
		local count = #answers
		local entry = SyncEntry(q, answers, count)
		if maxBytes then
			local size = #Serializer.Serialize(entry)
			while used + size > maxBytes and count > 0 do
				-- Drop roughly what is too much, at least one answer.
				local over = used + size - maxBytes
				local drop = math.max(1, math.floor(count * over / size))
				count = math.max(0, count - drop)
				entry = SyncEntry(q, answers, count)
				size = #Serializer.Serialize(entry)
			end
			if used + size > maxBytes then
				break
			end
			used = used + size
		end
		list[#list + 1] = entry
	end
	if #list == 0 then
		return nil, 0
	end
	return Serializer.Serialize({ t = "SP", qs = list }), #list
end
