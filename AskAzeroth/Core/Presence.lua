-- luacheck: read globals IsInGroup IsInRaid IsInGuild GetNumGroupMembers LE_PARTY_CATEGORY_INSTANCE
local _, ns = ...

-- How many AskAzeroth users are online, split into players and mentors, per
-- language. There is no server and the addon can't read the channels'
-- member lists itself (ListChannelByName is protected), so every client
-- keeps its own picture and the clients share it (docs/PROTOCOL.md,
-- "Presence"):
--   * Every client sends a P with its role to a few random peers every
--     C.PRESENCE_INTERVAL s (in channel mode to the channel, where everyone
--     hears it).
--   * In whisper mode the P also carries the players the sender knows to
--     be online, with how long ago each was seen and its role. Lists are
--     merged, the newer sighting wins, so the picture spreads like gossip.
--   * After joining a channel a client asks a few peers for their lists
--     (r = true), so the count is there within seconds of logging in.
--   * Players are also seen first-hand through Peers.lua (join notices,
--     member lists, whispers). Leave notices and bounced whispers remove
--     them; a later sighting from an older list doesn't bring them back.
--   * Players not seen for C.PRESENCE_TTL s no longer count.
--   * Whisper mode: players in a received list seen within
--     C.PEER_REPORTED_MAX_AGE s also become peers (Peers.AddReported), so
--     one known peer is enough to reach the others.
--   * Group and guild greeting (whisper mode): after joining a channel, and
--     when the group grows, a P with r = true goes to the group and the
--     guild (Comm.SendGroup). Everyone there who uses AskAzeroth in that
--     language answers by whisper, and both sides know each other as
--     peers, without the channel's join notices.
-- The result is an estimate: forged lists could add names, and players of
-- older versions count as players because they don't send their role.
--
-- Messages: AA_PRESENCE_CHANGED (); for the debug output AA_PRESENCE_SENT
-- (lang, targets, distribution, reply) and AA_PRESENCE_RECEIVED (lang,
-- sender, mentor, onlineCount, reply).
local Presence = {}
ns.Presence = Presence

local C = ns.C
local Util = ns.Util
local Protocol = ns.Protocol

local ROLE_UNKNOWN, ROLE_PLAYER, ROLE_MENTOR = 0, 1, 2

-- lang → { [fullName] = { seen = server time, role = ROLE_*, roleSeen = server time } }
local roster = {}
-- lang → { [fullName] = server time the player left }
local gone = {}
-- lang → timer of the first request after joining
local askTimers = {}
-- lang .. "|" .. name → GetTime() of the last answer to that player
local lastReply = {}

for _, lang in ipairs(C.LANGUAGES) do
	roster[lang] = {}
	gone[lang] = {}
end

local function IsMe(name)
	return name == ns:GetPlayerFullName()
end

local function IsMentor()
	return ns.db ~= nil and ns.db.settings.mentor == true
end

local function TTL()
	return ns.Comm.IsWhisperMode() and C.PRESENCE_TTL or C.PRESENCE_TTL_CHANNEL
end

-- Coalesces many changes (a merged list) into one message per frame.
local changePending = false
local function Changed()
	if changePending then
		return
	end
	changePending = true
	C_Timer.After(0, function()
		changePending = false
		ns:Fire("AA_PRESENCE_CHANGED")
	end)
end

-- A sighting of name in lang at server time seen; role is ROLE_* (unknown
-- leaves the known role as it is).
local function See(lang, name, seen, role)
	local list = roster[lang]
	if not list or not name or IsMe(name) then
		return
	end
	local left = gone[lang][name]
	if left then
		if seen <= left then
			return
		end
		gone[lang][name] = nil
	end
	local entry = list[name]
	if not entry then
		entry = { seen = seen, role = ROLE_UNKNOWN, roleSeen = 0 }
		list[name] = entry
		Changed()
	elseif seen > entry.seen then
		entry.seen = seen
	end
	if role ~= ROLE_UNKNOWN and seen >= entry.roleSeen then
		if entry.role ~= role then
			Changed()
		end
		entry.role = role
		entry.roleSeen = seen
	end
end

local function Remove(lang, name)
	if not roster[lang] then
		return
	end
	gone[lang][name] = Util.Now()
	if roster[lang][name] then
		roster[lang][name] = nil
		Changed()
	end
end

-- Drops players not seen for too long, and old leave marks.
local function Sweep()
	local limit = Util.Now() - TTL()
	local removed = false
	for _, lang in ipairs(C.LANGUAGES) do
		for name, entry in pairs(roster[lang]) do
			if entry.seen < limit then
				roster[lang][name] = nil
				removed = true
			end
		end
		for name, left in pairs(gone[lang]) do
			if left < limit then
				gone[lang][name] = nil
			end
		end
	end
	if removed then
		Changed()
	end
end

--------------------------------------------------------------------------------
-- Counting
--------------------------------------------------------------------------------

-- Players and mentors online in lang, the own character included while the
-- channel is joined. Returns players (without mentors), mentors.
function Presence.Count(lang)
	if not ns.Channel.IsReady(lang) then
		return 0, 0
	end
	local limit = Util.Now() - TTL()
	local players, mentors = 0, 0
	for _, entry in pairs(roster[lang] or {}) do
		if entry.seen >= limit then
			if entry.role == ROLE_MENTOR then
				mentors = mentors + 1
			else
				players = players + 1
			end
		end
	end
	if IsMentor() then
		mentors = mentors + 1
	else
		players = players + 1
	end
	return players, mentors
end

-- The same over all joined languages; someone in several languages counts
-- once, as a mentor if any language says so. Returns players, mentors and
-- whether any language channel is joined.
function Presence.CountAll()
	local limit = Util.Now() - TTL()
	local roles = {}
	local any = false
	for _, lang in ipairs(ns.Channel.GetReadyLanguages()) do
		any = true
		for name, entry in pairs(roster[lang]) do
			if entry.seen >= limit then
				roles[name] = roles[name] == ROLE_MENTOR and ROLE_MENTOR or entry.role
			end
		end
	end
	if not any then
		return 0, 0, false
	end
	local players, mentors = 0, 0
	for _, role in pairs(roles) do
		if role == ROLE_MENTOR then
			mentors = mentors + 1
		else
			players = players + 1
		end
	end
	if IsMentor() then
		mentors = mentors + 1
	else
		players = players + 1
	end
	return players, mentors, true
end

--------------------------------------------------------------------------------
-- Sending
--------------------------------------------------------------------------------

-- The newest C.PRESENCE_LIST_MAX players known online in lang, as
-- { name, age, role } for Protocol.EncodePresence; exclude: name to leave out.
local function OnlineList(lang, exclude)
	local now = Util.Now()
	local limit = now - TTL()
	local list = {}
	for name, entry in pairs(roster[lang]) do
		if entry.seen >= limit and name ~= exclude then
			list[#list + 1] = { name = name, age = now - entry.seen, role = entry.role }
		end
	end
	table.sort(list, function(a, b)
		if a.age ~= b.age then
			return a.age < b.age
		end
		return a.name < b.name
	end)
	for i = #list, C.PRESENCE_LIST_MAX + 1, -1 do
		list[i] = nil
	end
	return list
end

-- Sends the own presence in lang. Whisper mode: to targets (default:
-- C.PRESENCE_GOSSIP_PEERS random peers), with the own list. Returns false
-- if there is no one to send to yet.
local function Send(lang, targets, reply)
	if not ns.Channel.IsReady(lang) then
		return false
	end
	if not ns.Comm.IsWhisperMode() then
		ns.Net.SendRaw("P", lang, Protocol.EncodePresence(IsMentor()))
		ns:Fire("AA_PRESENCE_SENT", lang, nil, nil, false)
		return true
	end
	targets = targets or ns.Peers.Pick(lang, C.PRESENCE_GOSSIP_PEERS)
	if #targets == 0 then
		return false
	end
	local exclude = #targets == 1 and targets[1] or nil
	ns.Net.SendRaw("P", lang, Protocol.EncodePresence(IsMentor(), OnlineList(lang, exclude), reply), targets)
	ns:Fire("AA_PRESENCE_SENT", lang, targets, nil, reply and true or false)
	return true
end

--------------------------------------------------------------------------------
-- Group and guild greeting (whisper mode)
--------------------------------------------------------------------------------

-- distribution → GetTime() of the last greeting, so roster updates in a
-- row don't send it over and over.
local lastGreeting = {}
local lastGroupSize = 0

local function GroupDistribution()
	if IsInGroup(LE_PARTY_CATEGORY_INSTANCE) then
		return "INSTANCE_CHAT"
	elseif IsInRaid() then
		return "RAID"
	elseif IsInGroup() then
		return "PARTY"
	end
end

-- Asks every AskAzeroth user of the group or guild to answer by whisper;
-- distribution: PARTY, RAID, INSTANCE_CHAT or GUILD.
local function Greet(distribution, force)
	if not distribution or not ns.Comm.IsWhisperMode() then
		return
	end
	local now = GetTime()
	local langs = ns.Channel.GetReadyLanguages()
	if #langs == 0 or not force and now - (lastGreeting[distribution] or -math.huge) < C.GREETING_INTERVAL then
		return
	end
	lastGreeting[distribution] = now
	local text = Protocol.EncodePresence(IsMentor(), nil, true)
	for _, lang in ipairs(langs) do
		ns.Net.SendGroup("P", lang, text, distribution)
		ns:Fire("AA_PRESENCE_SENT", lang, nil, distribution, true)
	end
end

local function GreetAll()
	Greet(GroupDistribution())
	if IsInGuild() then
		Greet("GUILD")
	end
end

-- The group grew: greet it again (debounced, roster updates come in bursts).
local greetTimer
ns:RegisterEvent("GROUP_ROSTER_UPDATE", function()
	local size = GetNumGroupMembers() or 0
	local grew = size > lastGroupSize
	lastGroupSize = size
	if not grew or size < 2 or greetTimer then
		return
	end
	greetTimer = C_Timer.NewTimer(C.GREETING_DELAY, function()
		greetTimer = nil
		Greet(GroupDistribution(), true)
	end)
end)

-- After joining: ask a few peers for their lists, retried while none are
-- known yet.
local function ScheduleAsk(lang, retries)
	if askTimers[lang] then
		askTimers[lang]:Cancel()
	end
	retries = retries or C.PRESENCE_RETRIES
	local delay = retries < C.PRESENCE_RETRIES and C.PRESENCE_RETRY
		or C.PRESENCE_DELAY_MIN + math.random() * (C.PRESENCE_DELAY_MAX - C.PRESENCE_DELAY_MIN)
	askTimers[lang] = C_Timer.NewTimer(delay, function()
		askTimers[lang] = nil
		local whisper = ns.Comm.IsWhisperMode()
		local targets = whisper and ns.Peers.Pick(lang, C.PRESENCE_ASK_PEERS) or nil
		if not Send(lang, targets, whisper) and retries > 0 then
			ScheduleAsk(lang, retries - 1)
		end
	end)
end

-- Heartbeat: every C.PRESENCE_INTERVAL s (with jitter, so not everyone
-- sends at once) to a few peers in each joined language.
local function Heartbeat()
	C_Timer.After(C.PRESENCE_INTERVAL + (math.random() * 2 - 1) * C.PRESENCE_JITTER, Heartbeat)
	Sweep()
	for _, lang in ipairs(ns.Channel.GetReadyLanguages()) do
		Send(lang)
	end
end

--------------------------------------------------------------------------------
-- Receiving
--------------------------------------------------------------------------------

-- m: decoded P (sender, lang, mentor, reply, online).
function Presence.OnPresence(m)
	local lang = m.lang
	if not lang or not roster[lang] or not ns.Channel.IsSelected(lang) then
		return
	end
	local now = Util.Now()
	ns:Fire("AA_PRESENCE_RECEIVED", lang, m.sender, m.mentor, m.online and #m.online or 0, m.reply)
	See(lang, m.sender, now, m.mentor and ROLE_MENTOR or ROLE_PLAYER)
	if m.online then
		local whisper = ns.Comm.IsWhisperMode()
		for _, entry in ipairs(m.online) do
			See(lang, entry.name, now - entry.age, entry.role)
			if whisper and entry.age <= C.PEER_REPORTED_MAX_AGE then
				ns.Peers.AddReported(lang, entry.name)
			end
		end
	end
	if m.reply and ns.Comm.IsWhisperMode() then
		local key = lang .. "|" .. m.sender
		local last = lastReply[key]
		if not last or GetTime() - last >= C.PRESENCE_INTERVAL then
			lastReply[key] = GetTime()
			Send(lang, { m.sender })
		end
	end
end

--------------------------------------------------------------------------------
-- Lifecycle
--------------------------------------------------------------------------------

ns.RegisterCallback(Presence, "AA_PRESENCE", function(_, m)
	Presence.OnPresence(m)
end)

ns.RegisterCallback(Presence, "AA_PEER_SEEN", function(_, lang, name)
	See(lang, name, Util.Now(), ROLE_UNKNOWN)
end)

ns.RegisterCallback(Presence, "AA_PEER_GONE", function(_, lang, name)
	Remove(lang, name)
end)

ns.RegisterCallback(Presence, "AA_CHANNEL_READY", function(_, lang)
	ScheduleAsk(lang)
	-- Once the other selected channels had a moment to get ready too.
	C_Timer.After(C.GREETING_DELAY, GreetAll)
	Changed()
end)

-- Switched to whisper mode: the presence on the channel went nowhere.
ns.RegisterCallback(Presence, "AA_COMM_MODE", function()
	for _, lang in ipairs(ns.Channel.GetReadyLanguages()) do
		ScheduleAsk(lang)
	end
	GreetAll()
	Changed()
end)

ns.RegisterCallback(Presence, "AA_CHANNEL_LEFT", function(_, lang)
	if askTimers[lang] then
		askTimers[lang]:Cancel()
		askTimers[lang] = nil
	end
	wipe(roster[lang])
	wipe(gone[lang])
	Changed()
end)

-- The player switched between newcomer and mentor: tell a few peers now.
ns.RegisterCallback(Presence, "AA_ROLE_CHANGED", function()
	for _, lang in ipairs(ns.Channel.GetReadyLanguages()) do
		Send(lang)
	end
	Changed()
end)

-- Recount once a minute, so players who timed out drop out of the display.
C_Timer.NewTicker(60, Sweep)
C_Timer.After(C.PRESENCE_INTERVAL + (math.random() * 2 - 1) * C.PRESENCE_JITTER, Heartbeat)
