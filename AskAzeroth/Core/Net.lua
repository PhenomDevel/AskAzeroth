-- luacheck: read globals UnitLevel UnitRace UnitClass UnitFactionGroup GetRealZoneText
local _, ns = ...

-- Connects the store to the language channels: received messages are
-- decoded and handed to the store, own actions are stored and sent.
--
-- Everything goes out with one ChatThrottleLib priority. AceComm puts split
-- messages together per prefix + distribution + sender, and ChatThrottleLib
-- takes turns between priorities, so two priorities on one prefix could mix
-- the parts of two long messages.
--
-- In whisper mode (Forever, see Comm.lua) a message only reaches some
-- peers, so whoever learns something new first-hand or through a relay
-- passes it on (Relay below).
--
-- Messages: AA_NET_SENT (type, lang, bytes, held, distribution?, targets?),
-- AA_NET_RECEIVED (type, sender, lang, bytes, distribution), AA_SYNC_REQUEST (message) for the sync (M7),
-- AA_PRESENCE (message) for Presence.lua.
local Net = {}
ns.Net = Net

local Util = ns.Util
local Protocol = ns.Protocol
local Store = ns.Store
local Comm = ns.Comm
local C = ns.C

local PRIORITY = "NORMAL"

Net.stats = { sent = 0, received = 0, invalid = 0 }

local function Safe(value)
	if value == nil or (issecretvalue and issecretvalue(value)) then
		return nil
	end
	return value
end

-- The asker's context; values that are secret or missing are left out.
function Net.GetPlayerContext()
	local _, raceFile = UnitRace("player")
	local _, classFile = UnitClass("player")
	return {
		lvl = Safe(UnitLevel("player")),
		race = Safe(raceFile),
		class = Safe(classFile),
		faction = Safe(UnitFactionGroup("player")),
		zone = Safe(GetRealZoneText()),
	}
end

-- targets: list of full names, whisper mode only (see Comm.Send).
local function Send(kind, lang, wire, targets)
	local bytes, held = Comm.Send(lang, wire, PRIORITY, nil, targets)
	Net.stats.sent = Net.stats.sent + 1
	ns:Fire("AA_NET_SENT", kind, lang, bytes, held, nil, targets)
end

-- Each action returns the stored question/answer (or true), or nil, reason.
-- Questions can only be asked in a selected language.
function Net.Ask(lang, cat, title, body)
	if not ns.Channel.IsSelected(lang) then
		return nil, "lang"
	end
	local wire, q = Store.Ask(lang, cat, title, body, Net.GetPlayerContext())
	if not wire then
		return nil, q
	end
	Send("Q", lang, wire)
	return q
end

function Net.Answer(qid, text, faq)
	local own = Net.GetPlayerContext()
	local wire, a = Store.Answer(qid, text, faq, { lvl = own.lvl, race = own.race, class = own.class })
	if not wire then
		return nil, a
	end
	Send("A", Store.Get(qid).lang, wire)
	return a
end

function Net.Solve(qid)
	local q = Store.Get(qid)
	local wire, reason = Store.Solve(qid)
	if not wire then
		return nil, reason
	end
	Send("S", q.lang, wire)
	return true
end

function Net.Withdraw(qid)
	local q = Store.Get(qid)
	local wire, reason = Store.Withdraw(qid)
	if not wire then
		return nil, reason
	end
	Send("D", q.lang, wire)
	return true
end

-- Sync messages (M7) use the same path.
function Net.SendRaw(kind, lang, wire, targets)
	Send(kind, lang, wire, targets)
end

-- To the own group or guild (see Comm.SendGroup).
function Net.SendGroup(kind, lang, wire, distribution)
	local bytes, held = Comm.SendGroup(lang, wire, distribution, PRIORITY)
	Net.stats.sent = Net.stats.sent + 1
	ns:Fire("AA_NET_SENT", kind, lang, bytes, held, distribution)
end

--------------------------------------------------------------------------------
-- Relay (whisper mode)
--------------------------------------------------------------------------------
-- A question that gained something recent (itself or an answer, created
-- within C.RELAY_MAX_AGE) is passed on as an SP with that question to
-- C.RELAY_FANOUT random peers, leaving out the sender and the author. SP only
-- adds what is missing, so a client relays each novelty at most once and
-- the spread stops by itself. Old content from a login sync isn't relayed.
-- S and D are not relayed: only the author's own message counts.

-- qid → true while Store.Receive runs
local changed

ns.RegisterCallback(Net, "AA_QUESTION_ADDED", function(_, q)
	if changed and Util.Now() - q.created <= C.RELAY_MAX_AGE then
		changed[q.id] = true
	end
end)

ns.RegisterCallback(Net, "AA_ANSWER_ADDED", function(_, q, a)
	if changed and Util.Now() - a.created <= C.RELAY_MAX_AGE then
		changed[q.id] = true
	end
end)

local function Relay(ids, sender, lang)
	local list = {}
	for qid in pairs(ids) do
		local q = Store.Get(qid)
		if q and q.lang == lang then
			list[#list + 1] = q
		end
	end
	if #list == 0 then
		return
	end
	local exclude = { [sender] = true }
	for _, q in ipairs(list) do
		exclude[q.author] = true
	end
	local targets = ns.Peers.Pick(lang, C.RELAY_FANOUT, exclude)
	local wire = Protocol.EncodeSyncAnswer(list, C.RELAY_MAX_BYTES)
	if wire and #targets > 0 then
		Send("SP", lang, wire, targets)
	end
end

Comm.RegisterHandler(function(text, sender, lang, distribution)
	Net.stats.received = Net.stats.received + 1
	local m, reason = Protocol.Decode(text, sender, lang)
	ns:Fire("AA_NET_RECEIVED", m and m.type or "?", sender, lang, #text, distribution)
	if not m then
		Net.stats.invalid = Net.stats.invalid + 1
		ns:Fire("AA_MESSAGE_DROPPED", reason, Util.FullName(sender), "?")
		return
	end
	if m.type == "SR" then
		ns:Fire("AA_SYNC_REQUEST", m)
		return
	end
	if m.type == "P" then
		ns:Fire("AA_PRESENCE", m)
		return
	end
	if not Comm.IsWhisperMode() then
		Store.Receive(m)
		return
	end
	changed = {}
	Store.Receive(m)
	local ids = changed
	changed = nil
	if next(ids) then
		Relay(ids, m.sender, lang)
	end
end)

ns.RegisterCallback(Net, "AA_COMM_INVALID", function(_, sender)
	Net.stats.invalid = Net.stats.invalid + 1
	ns:Fire("AA_MESSAGE_DROPPED", "format", Util.FullName(sender), "?")
end)
