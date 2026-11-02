-- luacheck: read globals debugprofilestop
local _, ns = ...

-- Development tools for the store and protocol (M2), not packaged:
--   /aa simulate [n]       n test questions from made-up players, with answers
--   /aa simulate check     runs the receive rules against crafted messages
--   /aa simulate sweep     removes expired questions now
--   /aa simulate reset     clears the store
--   /aa simulate perf      fills the store to the limit with full-length
--                          questions and answers and prints timings
--   /aa store [id]         lists the store or shows one question
--   /aa debug [on|off]     prints every store change, dropped, sent and received message
--   /aa ask <category> <title> [|| <details>]   asks in the language of new questions
--   /aa answer <id> <text>, /aa solve <id>, /aa withdraw <id>
-- ask/answer/solve/withdraw send for real (M3); the rest sends nothing.
-- Simulated messages go through Protocol.Encode → Decode → Store.Receive,
-- the same path received messages take.
local L = ns.L
local C = ns.C
local Util = ns.Util
local Protocol = ns.Protocol
local Serializer = ns.Serializer
local Store = ns.Store

local Simulate = {}
local SIM_REALM = "Simulation"

local TITLES = {
	"How do I get back to the capital?",
	"Where is the trainer for my class?",
	"Which stats matter for me at level 20?",
	"Where can I learn first aid?",
	"Is fishing worth it early on?",
	"How do I find a group for a dungeon?",
	"Where do I sell items I don't need?",
	"How do I change the action bars?",
	"What do the quest colours mean?",
	"Where is the flight master here?",
}
local ANSWERS = {
	"Use your hearthstone, then take the boat at the docks.",
	"Ask a guard, they mark it on your map.",
	"At level 10 you get your first talent points, check the trainer.",
	"Any trade district has one, look for the sign above the door.",
	"Yes, it gives food and some gold. Not required though.",
}
local RACES = { "Human", "Dwarf", "NightElf", "Gnome", "Orc", "Scourge", "Tauren", "Troll" }
local CLASSES = { "WARRIOR", "PALADIN", "HUNTER", "ROGUE", "PRIEST", "SHAMAN", "MAGE", "WARLOCK", "DRUID" }

local counter = 0
local function SimName(kind)
	counter = counter + 1
	return kind .. counter .. "-" .. SIM_REALM
end

local function Pick(list)
	return list[math.random(#list)]
end

-- Encodes, decodes and stores like a received message.
local function Feed(wire, sender, lang, now)
	local m, reason = Protocol.Decode(wire, sender, lang, now)
	if not m then
		return false, reason
	end
	return Store.Receive(m, now)
end

local function SimulateQuestions(count)
	local now = Util.Now()
	local lang = ns.Channel.GetAskLanguage()
	local made, answered, solved, failed = 0, 0, 0, 0
	for _ = 1, count do
		local author = SimName("Asker")
		-- Spread over the whole lifetime, so some expire within the next
		-- minutes.
		local created = now - math.random(0, C.EXPIRE_OPEN - 10 * 60)
		local q = {
			id = Util.NewId(author, created),
			cat = Pick(C.CATEGORIES).key,
			title = Pick(TITLES),
			body = math.random() < 0.5 and "I'm new and couldn't find it on the map." or nil,
			ctx = { lvl = math.random(1, 30), race = Pick(RACES), class = Pick(CLASSES), faction = math.random() < 0.5 and "Alliance" or "Horde", zone = "Elwynn Forest" },
			created = created,
		}
		if Feed(Protocol.EncodeQuestion(q), author, lang, now) then
			made = made + 1
			local age = now - created
			for _ = 1, math.random(0, 3) do
				local helper = SimName("Helper")
				local at = now - math.random(0, math.min(age, 50 * 60))
				local a = { id = Util.NewId(helper, at), qid = q.id, text = Pick(ANSWERS), created = at }
				if Feed(Protocol.EncodeAnswer(a), helper, lang, now) then
					answered = answered + 1
				end
			end
			if Store.Get(q.id) and Store.Get(q.id).answerCount > 0 and math.random() < 0.3 then
				if Feed(Protocol.EncodeSolved(q.id, now - math.random(0, 9 * 60)), author, lang, now) then
					solved = solved + 1
				end
			end
		else
			failed = failed + 1
		end
	end
	ns:Print(L.SIM_DONE, made, answered, solved, failed, Store.Count())
end

--------------------------------------------------------------------------------
-- Performance test
--------------------------------------------------------------------------------

-- ASCII filler text of exactly max bytes, made of the sample answers.
local function Filler(max)
	local parts, size = {}, 0
	while size < max do
		local text = Pick(ANSWERS)
		parts[#parts + 1] = text
		size = size + #text + 1
	end
	return table.concat(parts, " "):sub(1, max)
end

local PERF_ANSWERS = 10
local PERF_LIST_RUNS = 100

-- Worst case for memory and CPU: C.MAX_QUESTIONS questions with full title
-- and body, PERF_ANSWERS full-length answers each, all through the receive
-- path. Prints how long each part took (ms) and the sync answer size.
local function RunPerf()
	Store.Reset()
	local lang = ns.Channel.GetAskLanguage()
	local now = Util.Now()
	collectgarbage("collect")
	local memBefore = collectgarbage("count")
	local messages = 0
	local start = debugprofilestop()
	for i = 1, C.MAX_QUESTIONS do
		local author = SimName("Asker")
		local created = now - math.random(0, 30 * 60)
		local q = {
			id = Util.NewId(author, created),
			cat = Pick(C.CATEGORIES).key,
			title = Filler(C.TITLE_MAX),
			body = Filler(C.BODY_MAX),
			ctx = { lvl = math.random(1, 30), race = Pick(RACES), class = Pick(CLASSES), faction = "Alliance", zone = "Elwynn Forest" },
			created = created,
		}
		Feed(Protocol.EncodeQuestion(q), author, lang, now)
		messages = messages + 1
		for j = 1, PERF_ANSWERS do
			local helper = SimName("Helper")
			local at = math.min(now, created + j * 60)
			Feed(Protocol.EncodeAnswer({ id = Util.NewId(helper, at + i), qid = q.id, text = Filler(C.ANSWER_MAX), created = at }), helper, lang, now)
			messages = messages + 1
		end
	end
	local receiveTime = debugprofilestop() - start
	collectgarbage("collect")
	local memAfter = collectgarbage("count")

	start = debugprofilestop()
	for _ = 1, PERF_LIST_RUNS do
		Store.List()
	end
	local listTime = (debugprofilestop() - start) / PERF_LIST_RUNS

	start = debugprofilestop()
	local wire, count = Protocol.EncodeSyncAnswer(Store.GetForSync(lang, {}), C.SYNC_MAX_BYTES)
	local LibDeflate = LibStub("LibDeflate")
	local data = wire and LibDeflate:EncodeForWoWAddonChannel(LibDeflate:CompressDeflate(wire)) or ""
	local syncTime = debugprofilestop() - start

	local uiTime
	local page = ns.UI.GetFrame() and ns.UI.GetFrame():IsShown() and ns.UI.GetCurrentPage()
	if page then
		start = debugprofilestop()
		page:Refresh()
		uiTime = debugprofilestop() - start
	end

	start = debugprofilestop()
	Store.Sweep(now)
	local sweepTime = debugprofilestop() - start

	ns:Print(L.SIM_PERF_RECEIVE, messages, receiveTime, receiveTime / messages, Store.Count())
	ns:Print(L.SIM_PERF_MEMORY, memAfter - memBefore)
	ns:Print(L.SIM_PERF_LIST, listTime, PERF_LIST_RUNS)
	ns:Print(L.SIM_PERF_SYNC, count or 0, wire and #wire or 0, #data, syncTime)
	ns:Print(L.SIM_PERF_SWEEP, sweepTime)
	if uiTime then
		ns:Print(L.SIM_PERF_UI, uiTime)
	end
end

--------------------------------------------------------------------------------
-- Rule check
--------------------------------------------------------------------------------

local function RunChecks()
	Store.Reset()
	local now = Util.Now()
	local lang = "en"
	local passed, total = 0, 0
	local function Expect(label, expected, ok, reason)
		total = total + 1
		local got = ok and "ok" or tostring(reason)
		if got == expected then
			passed = passed + 1
		else
			ns:Print("|cffff4040%s|r %s: got %s, expected %s", L.SIM_FAIL, label, got, expected)
		end
	end
	local function Question(author, overrides, at)
		at = at or now
		local q = { id = Util.NewId(author, at), cat = "quest", title = "Test question", created = at }
		for k, v in pairs(overrides or {}) do
			q[k] = v
		end
		return q
	end

	local troll = "Troll-" .. SIM_REALM
	local asker = "Asker-" .. SIM_REALM
	local q1 = Question(asker)
	Expect("valid question", "ok", Feed(Protocol.EncodeQuestion(q1), asker, lang, now))
	Expect("second question within 60 s", "rate", Feed(Protocol.EncodeQuestion(Question(asker)), asker, lang, now))
	-- One question per minute up to the open limit, then one more.
	for i = 2, C.MAX_OPEN_PER_AUTHOR do
		Expect("open questions limit", "ok", Feed(Protocol.EncodeQuestion(Question(asker, nil, now)), asker, lang, now + 61 * (i - 1)))
	end
	Expect("one open question too many", "open-limit", Feed(Protocol.EncodeQuestion(Question(asker, nil, now)), asker, lang, now + 61 * C.MAX_OPEN_PER_AUTHOR))
	Expect("time in the future", "time", Feed(Protocol.EncodeQuestion(Question(troll, nil, now + C.FUTURE_TOLERANCE + 60)), troll, lang, now))
	Expect("title too long", "title", Feed(Protocol.EncodeQuestion(Question(troll, { title = ("x"):rep(C.TITLE_MAX + 1) })), troll, lang, now))
	Expect("control character", "title", Feed(Protocol.EncodeQuestion(Question(troll, { title = "a\1b" })), troll, lang, now))
	Expect("unknown category", "category", Feed(Protocol.EncodeQuestion(Question(troll, { cat = "gold" })), troll, lang, now))
	Expect("same id, other author", "collision", Feed(Protocol.EncodeQuestion(Question(troll, { id = q1.id })), troll, lang, now))
	Expect("unreadable message", "format", Feed("garbage", troll, lang, now))
	Expect("unknown type", "type", Feed(Serializer.Serialize({ t = "X" }), troll, lang, now))
	Expect("solved by someone else", "not-author", Feed(Protocol.EncodeSolved(q1.id, now), troll, lang, now))
	Expect("withdrawn by someone else", "not-author", Feed(Protocol.EncodeWithdraw(q1.id), troll, lang, now))
	Expect("answer to unknown question", "unknown", Feed(Protocol.EncodeAnswer({ id = "0000ABCD", qid = "FFFF0000", text = "hi", created = now }), troll, lang, now))
	local helper = "Helper-" .. SIM_REALM
	for i = 1, C.RATE_ANSWERS do
		Expect("answer " .. i, "ok", Feed(Protocol.EncodeAnswer({ id = Util.NewId(helper, now), qid = q1.id, text = "Answer " .. i, created = now }), helper, lang, now))
	end
	Expect("one answer too many within 60 s", "rate", Feed(Protocol.EncodeAnswer({ id = Util.NewId(helper, now), qid = q1.id, text = "Spam", created = now }), helper, lang, now))
	-- A forged sync answer: q1 under another author, plus solved state.
	local forged = Protocol.EncodeSyncAnswer({ { id = q1.id, author = troll, cat = "misc", title = "Changed", created = now, answers = {} } })
	Expect("sync answer can't take over a question", "nothing-new", Feed(forged, troll, lang, now))
	Expect("sync answer kept the title", "ok", Store.Get(q1.id).title == "Test question", "title changed")
	Expect("solved by the author", "ok", Feed(Protocol.EncodeSolved(q1.id, now), asker, lang, now))
	Expect("status after solving", "ok", Store.GetStatus(Store.Get(q1.id)) == "solved", "status")
	Expect("expiry after solving", "ok", Store.ExpiresAt(Store.Get(q1.id)) == now + C.EXPIRE_SOLVED, "expiry")
	Expect("withdrawn by the author", "ok", Feed(Protocol.EncodeWithdraw(q1.id), asker, lang, now))
	Expect("gone after withdrawing", "ok", Store.Get(q1.id) == nil, "still there")
	-- Sync adds a missing question with its answers.
	local synced = Question("Other-" .. SIM_REALM, nil, now - 600)
	synced.author = "Other-" .. SIM_REALM
	synced.answers = { X = { id = "00C0FFEE", author = helper, text = "Synced answer", created = now - 300 } }
	Expect("sync answer adds a missing question", "ok", Feed(Protocol.EncodeSyncAnswer({ synced }), troll, lang, now))
	Expect("with its answer", "ok", Store.Get(synced.id) and Store.Get(synced.id).answerCount == 1, "answers")
	Expect("expiry after the last answer", "ok", Store.Get(synced.id) and Store.ExpiresAt(Store.Get(synced.id)) == now - 300 + C.EXPIRE_ANSWERED, "expiry")
	Expect("sweep keeps it before then", "ok", Store.Sweep(now) == 0, "removed")
	Expect("sweep removes it after", "ok", Store.Sweep(now - 300 + C.EXPIRE_ANSWERED) >= 1 and Store.Get(synced.id) == nil, "kept")
	-- Cap: the least recently active go first.
	for i = 1, C.MAX_QUESTIONS + 5 do
		local author = SimName("Cap")
		Feed(Protocol.EncodeQuestion(Question(author, nil, now - i)), author, lang, now)
	end
	Expect("at most " .. C.MAX_QUESTIONS .. " questions", "ok", Store.Count() == C.MAX_QUESTIONS, "count " .. Store.Count())
	Store.Reset()
	ns:Print(L.SIM_CHECK_RESULT, passed, total)
end

--------------------------------------------------------------------------------
-- Output
--------------------------------------------------------------------------------

local function Minutes(seconds)
	return math.floor(math.max(0, seconds) / 60 + 0.5)
end

local function ShowStore(id)
	local now = Util.Now()
	if id ~= "" then
		local q = Store.Get(id:upper())
		if not q then
			ns:Print(L.SIM_UNKNOWN_ID, id)
			return
		end
		ns:Print("%s [%s/%s] %s – %s", q.id, q.lang, q.cat, Util.EscapeText(q.title), q.author)
		if q.body then
			DEFAULT_CHAT_FRAME:AddMessage("  " .. Util.EscapeText(q.body))
		end
		for _, a in ipairs(Store.GetAnswers(q)) do
			DEFAULT_CHAT_FRAME:AddMessage(("  |cff88ccff%s|r (%d min): %s"):format(a.author, Minutes(now - a.created), Util.EscapeText(a.text)))
		end
		DEFAULT_CHAT_FRAME:AddMessage("  " .. L.SIM_STATUS_LINE:format(Store.GetStatus(q), Minutes(Store.ExpiresAt(q) - now)))
		return
	end
	local list = Store.List()
	ns:Print(L.SIM_STORE_HEADER, #list, Store.stats.accepted, Store.stats.dropped)
	for i = 1, math.min(#list, 15) do
		local q = list[i]
		DEFAULT_CHAT_FRAME:AddMessage(("  %s %-8s %s/%s %d× %d min – %s"):format(q.id, Store.GetStatus(q), q.lang, q.cat, q.answerCount, Minutes(Store.ExpiresAt(q) - now), Util.EscapeText(q.title)))
	end
end

local debugOn = false

ns.RegisterCallback(Simulate, "AA_QUESTION_ADDED", function(_, q)
	if debugOn then
		ns:Print("+Q %s %s/%s %s", q.id, q.lang, q.cat, q.author)
	end
end)
ns.RegisterCallback(Simulate, "AA_ANSWER_ADDED", function(_, q, a)
	if debugOn then
		ns:Print("+A %s > %s %s", a.id, q.id, a.author)
	end
end)
ns.RegisterCallback(Simulate, "AA_QUESTION_SOLVED", function(_, q)
	if debugOn then
		ns:Print("S %s", q.id)
	end
end)
ns.RegisterCallback(Simulate, "AA_QUESTION_REMOVED", function(_, q, reason)
	if debugOn then
		ns:Print("-Q %s (%s)", q.id, reason)
	end
end)
ns.RegisterCallback(Simulate, "AA_MESSAGE_DROPPED", function(_, reason, sender, kind)
	if debugOn then
		ns:Print("|cffff8040%s|r %s %s: %s", L.SIM_DROPPED, kind or "?", sender or "?", reason)
	end
end)

ns.RegisterCallback(Simulate, "AA_NET_SENT", function(_, kind, lang, bytes, held)
	if debugOn then
		ns:Print("|cff80ff80>>|r %s %s %d B%s", kind, lang, bytes, held and " (held)" or "")
	end
end)
ns.RegisterCallback(Simulate, "AA_NET_RECEIVED", function(_, kind, sender, lang, bytes)
	if debugOn then
		ns:Print("|cff80c0ff<<|r %s %s %s %d B", kind, lang, sender, bytes)
	end
end)

--------------------------------------------------------------------------------
-- Real actions (until the UI has them)
--------------------------------------------------------------------------------

local function Report(result, reason, okText, ...)
	if result then
		ns:Print(okText, ...)
	else
		ns:Print(L.SIM_ACTION_FAILED, tostring(reason))
	end
end

ns:RegisterCommand("ask", function(args)
	local cat, rest = args:match("^(%S+)%s+(.+)$")
	if not cat then
		ns:Print("/aa ask <%s> <title> [|| <details>]", table.concat((function()
			local keys = {}
			for _, c in ipairs(C.CATEGORIES) do
				keys[#keys + 1] = c.key
			end
			return keys
		end)(), "|"))
		return
	end
	local title, body = rest:match("^(.-)%s*||%s*(.*)$")
	title = title or rest
	local q, reason = ns.Net.Ask(ns.Channel.GetAskLanguage(), cat:lower(), title, body)
	Report(q, reason, L.SIM_ASKED, q and q.id, q and q.lang)
end, "ask <category> <title>", L.SIM_HELP_ASK)

ns:RegisterCommand("answer", function(args)
	local id, text = args:match("^(%x+)%s+(.+)$")
	if not id then
		ns:Print("/aa answer <id> <text>")
		return
	end
	local a, reason = ns.Net.Answer(id:upper(), text)
	Report(a, reason, L.SIM_ANSWERED, id:upper())
end, "answer <id> <text>", L.SIM_HELP_ANSWER)

ns:RegisterCommand("solve", function(id)
	local ok, reason = ns.Net.Solve(id:upper())
	Report(ok, reason, L.SIM_SOLVED, id:upper())
end, "solve <id>", L.SIM_HELP_SOLVE)

ns:RegisterCommand("withdraw", function(id)
	local ok, reason = ns.Net.Withdraw(id:upper())
	Report(ok, reason, L.SIM_WITHDRAWN, id:upper())
end, "withdraw <id>", L.SIM_HELP_WITHDRAW)

ns:RegisterCommand("simulate", function(args)
	local arg = args:lower()
	if arg == "check" then
		RunChecks()
	elseif arg == "sweep" then
		ns:Print(L.SIM_SWEPT, Store.Sweep(), Store.Count())
	elseif arg == "perf" then
		RunPerf()
	elseif arg == "reset" then
		Store.Reset()
		ns:Print(L.SIM_RESET)
	else
		local count = math.min(tonumber(arg) or 10, C.MAX_QUESTIONS)
		SimulateQuestions(math.max(1, count))
	end
end, "simulate [n|check|sweep|perf|reset]", L.SIM_HELP)

ns:RegisterCommand("store", ShowStore, "store [id]", L.SIM_HELP_STORE)

ns:RegisterCommand("debug", function(arg)
	if arg == "on" then
		debugOn = true
	elseif arg == "off" then
		debugOn = false
	else
		debugOn = not debugOn
	end
	ns:Print(debugOn and L.SIM_DEBUG_ON or L.SIM_DEBUG_OFF)
	if debugOn then
		local stats = ns.Net.stats
		ns:Print(L.SIM_NET_STATS, stats.sent, stats.received, stats.invalid, ns.Comm.GetQueueLength())
		local sync = ns.Sync.stats
		ns:Print(L.SIM_SYNC_STATS, sync.requests, sync.answers, sync.skipped)
	end
end, "debug [on|off]", L.SIM_HELP_DEBUG)
