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
-- Messages: AA_NET_SENT (type, lang, bytes, held), AA_NET_RECEIVED (type,
-- sender, lang, bytes), AA_SYNC_REQUEST (message) for the sync (M7).
local Net = {}
ns.Net = Net

local Util = ns.Util
local Protocol = ns.Protocol
local Store = ns.Store
local Comm = ns.Comm

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

local function Send(kind, lang, wire)
	local bytes, held = Comm.Send(lang, wire, PRIORITY)
	Net.stats.sent = Net.stats.sent + 1
	ns:Fire("AA_NET_SENT", kind, lang, bytes, held)
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
function Net.SendRaw(kind, lang, wire)
	Send(kind, lang, wire)
end

Comm.RegisterHandler(function(text, sender, lang)
	Net.stats.received = Net.stats.received + 1
	local m, reason = Protocol.Decode(text, sender, lang)
	ns:Fire("AA_NET_RECEIVED", m and m.type or "?", sender, lang, #text)
	if not m then
		Net.stats.invalid = Net.stats.invalid + 1
		ns:Fire("AA_MESSAGE_DROPPED", reason, Util.FullName(sender), "?")
		return
	end
	if m.type == "SR" then
		ns:Fire("AA_SYNC_REQUEST", m)
		return
	end
	Store.Receive(m)
end)

ns.RegisterCallback(Net, "AA_COMM_INVALID", function(_, sender)
	Net.stats.invalid = Net.stats.invalid + 1
	ns:Fire("AA_MESSAGE_DROPPED", "format", Util.FullName(sender), "?")
end)
