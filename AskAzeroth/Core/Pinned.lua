local _, ns = ...

-- Pinned answers (PLAN.md, section 5): a copy of the answer and its
-- question at the time of pinning, keyed by answer id. Local only, never
-- sent, never expires. Expiry, withdrawals, the My questions cleanup and
-- ignoring a player leave pins alone; only Unpin removes one.
--
-- Message: AA_PINNED_CHANGED (answerId, pinned)
local Pinned = {}
ns.Pinned = Pinned

local C = ns.C
local Util = ns.Util

ns.dbDefaults.pinned = {}

local function Entries()
	return ns.db and ns.db.pinned or {}
end

function Pinned.IsPinned(answerId)
	return answerId ~= nil and Entries()[answerId] ~= nil
end

function Pinned.Get(answerId)
	return answerId and Entries()[answerId]
end

function Pinned.Count()
	return Util.Count(Entries())
end

-- q: question (store or My questions), a: one of its answers. Returns the
-- entry, or nil, reason ("pin-full" at C.MAX_PINNED, nothing is replaced).
function Pinned.Pin(q, a)
	local entries = Entries()
	if entries[a.id] then
		return entries[a.id]
	end
	if Pinned.Count() >= C.MAX_PINNED then
		return nil, "pin-full"
	end
	local entry = {
		pinnedAt = Util.Now(),
		question = { id = q.id, author = q.author, lang = q.lang, cat = q.cat, title = q.title, body = q.body, created = q.created },
		answer = { id = a.id, author = a.author, text = a.text, faq = a.faq, created = a.created },
	}
	entries[a.id] = entry
	ns:Fire("AA_PINNED_CHANGED", a.id, true)
	return entry
end

function Pinned.Unpin(answerId)
	local entries = Entries()
	if not entries[answerId] then
		return false
	end
	entries[answerId] = nil
	ns:Fire("AA_PINNED_CHANGED", answerId, false)
	return true
end

-- Pin on/off; returns the new state, or nil, reason.
function Pinned.Toggle(q, a)
	if Pinned.IsPinned(a.id) then
		Pinned.Unpin(a.id)
		return false
	end
	local entry, reason = Pinned.Pin(q, a)
	if not entry then
		return nil, reason
	end
	return true
end

-- Entries matching search (lower case, in question title, body and answer)
-- and cats (key → true, empty = all), newest pin first.
function Pinned.List(search, cats)
	local list = {}
	for _, entry in pairs(Entries()) do
		local q, a = entry.question, entry.answer
		local ok = not cats or next(cats) == nil or cats[q.cat]
		if ok and search and search ~= "" then
			local haystack = (q.title .. "\n" .. (q.body or "") .. "\n" .. a.text):lower()
			ok = haystack:find(search, 1, true) ~= nil
		end
		if ok then
			list[#list + 1] = entry
		end
	end
	table.sort(list, function(x, y)
		if x.pinnedAt ~= y.pinnedAt then
			return x.pinnedAt > y.pinnedAt
		end
		return x.answer.id < y.answer.id
	end)
	return list
end
