-- luacheck: read globals UnitName UnitLevel UnitRace UnitClass UnitFactionGroup GetNormalizedRealmName GetRealZoneText GetSubZoneText IsInInstance InCombatLockdown IsEncounterInProgress C_Map
local _, ns = ...

-- M0 spike (/aa probe): checks the language channels, raw and AceComm
-- messaging over CHANNEL, reach, throttling, the lockdown and which player
-- values are secret, in-game. Raw tests call SendAddonMessage directly to see
-- the bare result codes; everything else goes through ns.Comm like the real
-- addon will. With loopback on (default), own messages are handled like those
-- of another player, so most tests run on a single account.
-- Test guide and results: docs/SPIKE.md.

local Probe = {}
ns.Probe = Probe

local C = ns.C
local L = ns.L
local LibDeflate = LibStub("LibDeflate")

local PREFIX = "AAProbe"
local SEP = "\t"
local LOG_SIZE = 300
-- Seconds without a further burst message before a burst is evaluated.
local BURST_QUIET = 5
local MAX_REPLY_DELAY = 3
local MAX_MESSAGE = 255
local ECHO_TIMEOUT = 5

ns.dbDefaults.probe = {
	loginCount = 0,
	loopback = true,
	log = {},
}
ns.charDbDefaults.probe = {
	loginCount = 0,
}

local db, charDb

--------------------------------------------------------------------------------
-- Helpers
--------------------------------------------------------------------------------

local function IsSecret(value)
	return issecretvalue ~= nil and issecretvalue(value) and true or false
end

local function SafeString(value)
	if IsSecret(value) then
		return "<secret>"
	end
	return tostring(value)
end

-- Every probe event is printed and kept in the saved log, so the results of
-- all accounts can be compared afterwards (WTF\…\SavedVariables).
-- Missing fields of malformed messages are logged as "?".
local function Log(text, ...)
	local count = select("#", ...)
	if count > 0 then
		local args = { ... }
		for i = 1, count do
			if args[i] == nil then
				args[i] = "?"
			end
		end
		text = text:format(unpack(args, 1, count))
	end
	if db then
		local log = db.log
		log[#log + 1] = date("%m-%d %H:%M:%S ") .. text
		while #log > LOG_SIZE do
			table.remove(log, 1)
		end
	end
	ns:Print(text)
end

local function ReverseLookup(enum, value)
	for name, enumValue in pairs(enum or {}) do
		if enumValue == value then
			return name
		end
	end
	return tostring(value)
end

-- Older clients returned a boolean, current ones Enum.SendAddonMessageResult.
local function ResultName(result)
	if result == true then
		return "Success"
	elseif result == false or result == nil then
		return tostring(result)
	end
	return ReverseLookup(Enum.SendAddonMessageResult, result)
end

local IsSelf = ns.Comm.IsSelf

local function GetRealm()
	return GetNormalizedRealmName() or "?"
end

local function GetFaction()
	return UnitFactionGroup("player") or "?"
end

local function YesNo(value)
	return value and L.YES or L.NO
end

-- Language argument of a command: a known code, otherwise the client
-- language if joined, otherwise the first joined channel.
local function ResolveLanguage(arg)
	arg = arg and arg:lower() or ""
	if C.IsLanguage(arg) then
		return arg
	end
	local clientLang = C.GetClientLanguage()
	if ns.Channel.IsReady(clientLang) then
		return clientLang
	end
	return ns.Channel.GetReadyLanguages()[1] or clientLang
end

-- "de", "all" or "" (= selected languages) → list of languages.
local function ResolveLanguages(arg)
	arg = arg and arg:lower() or ""
	if arg == "all" then
		return C.LANGUAGES
	elseif C.IsLanguage(arg) then
		return { arg }
	end
	return ns.Channel.GetSelectedLanguages()
end

local function SendRaw(lang, ...)
	local number = ns.Channel.GetNumber(lang)
	if not number then
		return "NoChannel"
	end
	local ok, result = pcall(C_ChatInfo.SendAddonMessage, PREFIX, table.concat({ ... }, SEP), "CHANNEL", number)
	if not ok then
		return "Error: " .. tostring(result)
	end
	return ResultName(result)
end

local function LockdownSuffix()
	return ns.Comm.InLockdown() and L.PROBE_IN_LOCKDOWN or ""
end

-- Deterministic question-like text that compresses about as well as real
-- questions and answers.
local WORDS = {
	"where", "quest", "trainer", "how", "find", "level", "dungeon", "talent",
	"druid", "hunter", "boat", "flight", "master", "skinning", "mining",
	"ironforge", "darnassus", "orgrimmar", "thanks", "help",
}

local function MakeSampleText(length, seed)
	seed = seed or 1
	local parts, size = {}, 0
	while size < length do
		seed = (seed * 16807) % 2147483647
		local word = WORDS[seed % #WORDS + 1]
		if seed % 7 == 0 then
			word = word .. (seed % 1000)
		end
		parts[#parts + 1] = word
		size = size + #word + 1
	end
	return table.concat(parts, " "):sub(1, length)
end

local prefixResult = C_ChatInfo.RegisterAddonMessagePrefix(PREFIX)
prefixResult = type(prefixResult) == "number" and ReverseLookup(Enum.RegisterAddonMessagePrefixResult, prefixResult) or tostring(prefixResult)

--------------------------------------------------------------------------------
-- Player context (which values are secret where)
--------------------------------------------------------------------------------

local function LogContext(reason)
	local _, raceFile = UnitRace("player")
	local _, classFile = UnitClass("player")
	local inInstance, instanceType = IsInInstance()
	local mapID = C_Map and C_Map.GetBestMapForUnit and C_Map.GetBestMapForUnit("player")
	local values = {
		{ "name", UnitName("player") },
		{ "level", UnitLevel("player") },
		{ "race", raceFile },
		{ "class", classFile },
		{ "faction", UnitFactionGroup("player") },
		{ "zone", GetRealZoneText() },
		{ "subzone", GetSubZoneText() },
		{ "map", mapID },
	}
	local parts, secret = {}, {}
	for _, entry in ipairs(values) do
		parts[#parts + 1] = ("%s=%s"):format(entry[1], SafeString(entry[2]))
		if IsSecret(entry[2]) then
			secret[#secret + 1] = entry[1]
		end
	end
	Log(L.PROBE_CONTEXT, reason, table.concat(parts, ", "), SafeString(inInstance) .. "/" .. SafeString(instanceType), YesNo(InCombatLockdown()), #secret > 0 and table.concat(secret, ", ") or "-")
end

--------------------------------------------------------------------------------
-- Received raw messages
--------------------------------------------------------------------------------

local rawHandlers = {}
local bursts = {}
local awaitingEcho = {}

-- PING id lang sentTime realm faction level
function rawHandlers.PING(sender, isSelf, id, lang, sentTime, realm, faction, level)
	if IsSelf(sender) then
		awaitingEcho[tostring(id)] = nil
		Log(L.PROBE_ECHO, id, lang)
		if isSelf then
			return
		end
	end
	local delay = GetServerTime() - (tonumber(sentTime) or 0)
	Log(L.PROBE_PING_RECEIVED, sender, lang, realm, faction, level, delay)
	C_Timer.After(math.random() * MAX_REPLY_DELAY, function()
		local result = SendRaw(lang, "PONG", id, lang, sender, GetRealm(), GetFaction())
		if result ~= "Success" then
			Log(L.PROBE_PONG_FAILED, sender, result)
		end
	end)
end

-- PONG id lang target realm faction
function rawHandlers.PONG(sender, isSelf, id, lang, target, realm, faction)
	if not isSelf and IsSelf(target) then
		Log(L.PROBE_PONG_RECEIVED, sender, lang, realm, faction, id)
	end
end

local function EvaluateBurst(key, sender, id, lang)
	local burst = bursts[key]
	bursts[key] = nil
	Log(L.PROBE_BURST_RECEIVED, sender, id, burst.received, burst.count, burst.last - burst.first)
	SendRaw(lang, "BURSTACK", id, sender, burst.received, burst.count)
end

-- BURST id lang seq count padding
function rawHandlers.BURST(sender, isSelf, id, lang, seq, count)
	if isSelf then
		return
	end
	local key = sender .. ":" .. tostring(id)
	local burst = bursts[key]
	if not burst then
		burst = { count = tonumber(count) or 0, received = 0, seen = {}, first = GetTime() }
		bursts[key] = burst
	end
	if not burst.seen[seq] then
		burst.seen[seq] = true
		burst.received = burst.received + 1
	end
	burst.last = GetTime()
	if burst.timer then
		burst.timer:Cancel()
	end
	burst.timer = C_Timer.NewTimer(BURST_QUIET, function()
		EvaluateBurst(key, sender, id, lang)
	end)
end

-- BURSTACK id target received count
function rawHandlers.BURSTACK(sender, isSelf, id, target, received, count)
	if not isSelf and IsSelf(target) then
		Log(L.PROBE_BURST_ACK, sender, received, count, id)
	end
end

-- BIGACK id target ok
function rawHandlers.BIGACK(sender, isSelf, id, target, ok)
	if not isSelf and IsSelf(target) then
		Log(L.PROBE_BIG_ACK, sender, id, ok == "1" and L.PROBE_INTACT or L.PROBE_DAMAGED)
	end
end

local secretSeen = false

ns:RegisterEvent("CHAT_MSG_ADDON", function(_, prefix, text, channel, sender)
	if IsSecret(prefix) or IsSecret(text) or IsSecret(sender) or IsSecret(channel) then
		if not secretSeen then
			secretSeen = true
			Log(L.PROBE_SECRET_MESSAGE)
		end
		return
	end
	if prefix ~= PREFIX or channel ~= "CHANNEL" or type(text) ~= "string" then
		return
	end
	local fields = { strsplit(SEP, text) }
	local handler = rawHandlers[fields[1]]
	if handler then
		-- isSelf: own message to be ignored (false for own ones in loopback).
		handler(sender, IsSelf(sender) and not ns.Comm.loopback, unpack(fields, 2))
	end
end)

--------------------------------------------------------------------------------
-- Received AceComm messages (via ns.Comm)
--------------------------------------------------------------------------------

ns.Comm.RegisterHandler(function(text, sender, lang)
	local header, body = text:match("^([^\n]*)\n(.*)$")
	if not header then
		return
	end
	local kind, id, a, b, c = strsplit(SEP, header)
	if kind == "BIG" then
		-- BIG id length adler32 sentTime \n data
		local ok = #body == tonumber(a) and LibDeflate:Adler32(body) == tonumber(b)
		Log(L.PROBE_BIG_RECEIVED, sender, id, lang, #body, ok and L.PROBE_INTACT or L.PROBE_DAMAGED, GetServerTime() - (tonumber(c) or 0))
		SendRaw(lang, "BIGACK", id, sender, ok and "1" or "0")
	elseif kind == "Q" then
		-- Q id createdTime \n
		Log(L.PROBE_QUEUED_RECEIVED, sender, id, lang, GetServerTime() - (tonumber(a) or 0))
	end
end)

ns.RegisterCallback(Probe, "AA_COMM_INVALID", function(_, sender, lang)
	Log(L.PROBE_COMM_INVALID, sender, lang)
end)

--------------------------------------------------------------------------------
-- Commands
--------------------------------------------------------------------------------

local commands = {}
local order = {}
local nextId = 0

local function AddCommand(name, usage, description, handler)
	order[#order + 1] = name
	commands[name] = { usage = usage, description = description, handler = handler }
end

local function NextId()
	nextId = nextId + 1
	return nextId
end

local function StatusLine(label, value, ...)
	if select("#", ...) > 0 then
		value = value:format(...)
	end
	DEFAULT_CHAT_FRAME:AddMessage(("  |cffffd100%s:|r %s"):format(label, tostring(value)))
end

local function LibVersion(name)
	local _, minor = LibStub(name, true)
	return ("%s %s"):format(name, minor and tostring(minor) or L.PROBE_MISSING)
end

local function ChannelSummary()
	local parts = {}
	for _, lang in ipairs(C.LANGUAGES) do
		local number = ns.Channel.GetNumber(lang)
		if number then
			parts[#parts + 1] = ("%s #%d"):format(lang, number)
		end
	end
	return #parts > 0 and table.concat(parts, ", ") or L.PROBE_NOT_JOINED
end

AddCommand("status", "status", L.PROBE_HELP_STATUS, function()
	local _, build, _, interface = GetBuildInfo()
	ns:Print(L.PROBE_STATUS_HEADER)
	StatusLine(L.PROBE_STATUS_VERSION, "%s, interface %s, build %s", ns.version, tostring(interface), tostring(build))
	StatusLine(L.PROBE_STATUS_PLAYER, "%s, %s, %s %s", ns:GetPlayerFullName() or "?", GetFaction(), L.PROBE_LEVEL, SafeString(UnitLevel("player")))
	StatusLine(L.PROBE_STATUS_SERVER_TIME, "%d (%s)", GetServerTime(), date("%Y-%m-%d %H:%M:%S", GetServerTime()))
	StatusLine(L.PROBE_STATUS_CHANNELS, "%s (%s, %s)", ChannelSummary(), ns.Channel.hidden and L.PROBE_HIDDEN or L.PROBE_VISIBLE, L.PROBE_CHANNELS_TOTAL:format(ns.Channel.CountJoined()))
	StatusLine(L.PROBE_STATUS_LOCKDOWN, "%s (%s: %s, %s: %s)", YesNo(ns.Comm.InLockdown()), "API", YesNo(C_ChatInfo.InChatMessagingLockdown), L.PROBE_ENCOUNTER, YesNo(IsEncounterInProgress and IsEncounterInProgress()))
	StatusLine(L.PROBE_STATUS_QUEUE, ns.Comm.GetQueueLength())
	StatusLine(L.PROBE_STATUS_LOOPBACK, YesNo(ns.Comm.loopback))
	StatusLine("API", "prefix %s, chat frame %s, chat filter %s", tostring(prefixResult), ns.Channel.GetChatFrameApi(), YesNo(ns.Channel.hasChatFilter))
	StatusLine(L.PROBE_STATUS_LIBS, "%s, %s, %s, %s", LibVersion("CallbackHandler-1.0"), LibVersion("AceComm-3.0"), LibVersion("LibDeflate"), _G.ChatThrottleLib and ("ChatThrottleLib " .. tostring(_G.ChatThrottleLib.version)) or ("ChatThrottleLib " .. L.PROBE_MISSING))
	StatusLine(L.PROBE_STATUS_SAVED, L.PROBE_SAVED_SUMMARY, db.loginCount, charDb.loginCount, #db.log)
end)

AddCommand("context", "context", L.PROBE_HELP_CONTEXT, function()
	LogContext("/aa probe context")
end)

AddCommand("join", "join [lang|all]", L.PROBE_HELP_JOIN, function(args)
	for _, lang in ipairs(ResolveLanguages(args)) do
		ns.Channel.Join(lang)
	end
end)

AddCommand("leave", "leave [lang|all]", L.PROBE_HELP_LEAVE, function(args)
	for _, lang in ipairs(ResolveLanguages(args)) do
		ns.Channel.Leave(lang)
	end
end)

AddCommand("ping", "ping [lang]", L.PROBE_HELP_PING, function(args)
	local lang = ResolveLanguage(args)
	local id = NextId()
	local result = SendRaw(lang, "PING", id, lang, GetServerTime(), GetRealm(), GetFaction(), SafeString(UnitLevel("player")))
	Log(L.PROBE_PING_SENT, id, lang, result, LockdownSuffix())
	if result == "Success" then
		local key = tostring(id)
		awaitingEcho[key] = true
		C_Timer.After(ECHO_TIMEOUT, function()
			if awaitingEcho[key] then
				awaitingEcho[key] = nil
				Log(L.PROBE_NO_ECHO, id, ECHO_TIMEOUT)
			end
		end)
	end
end)

AddCommand("burst", "burst [count] [bytes] [lang]", L.PROBE_HELP_BURST, function(args)
	local count, size, langArg = args:match("^(%d*)%s*(%d*)%s*(%a*)$")
	count = math.min(tonumber(count) or 20, 200)
	size = math.min(tonumber(size) or 200, MAX_MESSAGE)
	local lang = ResolveLanguage(langArg)
	local id = NextId()
	local results, resultOrder = {}, {}
	for seq = 1, count do
		local header = table.concat({ "BURST", id, lang, seq, count, "" }, SEP)
		local result = SendRaw(lang, "BURST", id, lang, seq, count, ("x"):rep(math.max(size - #header, 0)))
		if not results[result] then
			results[result] = 0
			resultOrder[#resultOrder + 1] = result
		end
		results[result] = results[result] + 1
	end
	local summary = {}
	for _, result in ipairs(resultOrder) do
		summary[#summary + 1] = ("%s=%d"):format(result, results[result])
	end
	Log(L.PROBE_BURST_SENT, id, lang, count, size, table.concat(summary, ", "))
end)

local function SendBig(kb, lang)
	local id = NextId()
	local data = MakeSampleText(kb * 1024, id)
	local text = table.concat({ "BIG", id, #data, LibDeflate:Adler32(data), GetServerTime() }, SEP) .. "\n" .. data
	-- Includes the time the message was held, if it was.
	local started = GetTime()
	local failed = false
	local size, held = ns.Comm.Send(lang, text, "BULK", function(sent, total, didSend)
		if not failed and not didSend then
			failed = true
			Log(L.PROBE_BIG_CHUNK_FAILED, id, sent, total)
		end
		if sent >= total then
			Log(L.PROBE_BIG_DONE, id, total, GetTime() - started)
		end
	end)
	Log(L.PROBE_BIG_SENT, id, lang, #data, size, math.ceil(size / (MAX_MESSAGE - 1)), held and L.PROBE_HELD or "")
end

AddCommand("big", "big [KB] [lang]", L.PROBE_HELP_BIG, function(args)
	local kb, langArg = args:match("^(%d*)%s*(%a*)$")
	SendBig(math.min(math.max(tonumber(kb) or 4, 1), 24), ResolveLanguage(langArg))
end)

AddCommand("parallel", "parallel [KB]", L.PROBE_HELP_PARALLEL, function(args)
	local kb = math.min(math.max(tonumber(args) or 4, 1), 24)
	local langs = ns.Channel.GetReadyLanguages()
	if #langs < 2 then
		Log(L.PROBE_PARALLEL_NEEDS_TWO)
		return
	end
	for _, lang in ipairs(langs) do
		SendBig(kb, lang)
	end
end)

local function SendQueued(lang)
	local id = NextId()
	local _, held = ns.Comm.Send(lang, table.concat({ "Q", id, GetServerTime() }, SEP) .. "\n")
	Log(L.PROBE_QUEUED_SENT, id, lang, held and L.PROBE_HELD or "")
end

AddCommand("queue", "queue [lang]", L.PROBE_HELP_QUEUE, function(args)
	SendQueued(ResolveLanguage(args))
end)

local autoTicker

AddCommand("auto", "auto [seconds|off]", L.PROBE_HELP_AUTO, function(args)
	if autoTicker then
		autoTicker:Cancel()
		autoTicker = nil
	end
	if args == "off" then
		Log(L.PROBE_AUTO_OFF)
		return
	end
	local interval = math.max(tonumber(args) or 20, 5)
	autoTicker = C_Timer.NewTicker(interval, function()
		commands.ping.handler("")
		SendQueued(ResolveLanguage())
	end)
	Log(L.PROBE_AUTO_ON, interval)
end)

AddCommand("loopback", "loopback [on|off]", L.PROBE_HELP_LOOPBACK, function(args)
	local enabled
	if args == "on" then
		enabled = true
	elseif args == "off" then
		enabled = false
	else
		enabled = not ns.Comm.loopback
	end
	db.loopback = enabled
	ns.Comm.loopback = enabled
	Log(enabled and L.PROBE_LOOPBACK_ON or L.PROBE_LOOPBACK_OFF)
end)

AddCommand("show", "show | hide", L.PROBE_HELP_SHOW, function()
	ns.Channel.SetHidden(false)
	Log(L.PROBE_CHANNEL_SHOWN)
end)

commands.hide = {
	handler = function()
		ns.Channel.SetHidden(true)
		Log(L.PROBE_CHANNEL_HIDDEN)
	end,
}

AddCommand("log", "log [lines]", L.PROBE_HELP_LOG, function(args)
	local log = db.log
	local count = math.min(tonumber(args) or 20, #log)
	for i = #log - count + 1, #log do
		DEFAULT_CHAT_FRAME:AddMessage("  " .. log[i])
	end
end)

AddCommand("clear", "clear", L.PROBE_HELP_CLEAR, function()
	wipe(db.log)
	ns:Print(L.PROBE_LOG_CLEARED)
end)

ns:RegisterCommand("probe", function(args)
	local name, rest = args:match("^(%S*)%s*(.-)$")
	local command = commands[name:lower()]
	if command then
		command.handler(rest)
		return
	end
	ns:Print(L.PROBE_HELP_HEADER)
	for _, commandName in ipairs(order) do
		local entry = commands[commandName]
		DEFAULT_CHAT_FRAME:AddMessage(("  |cffffd100/aa probe %s|r – %s"):format(entry.usage, entry.description))
	end
end, "probe <command>", L.PROBE_HELP)

--------------------------------------------------------------------------------
-- Observers
--------------------------------------------------------------------------------

ns.RegisterCallback(Probe, "AA_CHANNEL_READY", function(_, lang, number)
	Log(L.PROBE_CHANNEL_READY, C.GetChannelName(lang), tostring(number), ns.Channel.CountJoined())
end)

ns.RegisterCallback(Probe, "AA_CHANNEL_FAILED", function(_, lang)
	Log(L.PROBE_CHANNEL_FAILED, C.GetChannelName(lang), ns.Channel.CountJoined())
end)

ns.RegisterCallback(Probe, "AA_CHANNEL_NOTICE", function(_, lang, notice)
	Log(L.PROBE_CHANNEL_NOTICE, C.GetChannelName(lang), SafeString(notice))
end)

ns.RegisterCallback(Probe, "AA_CHANNEL_NOTICE_USER", function(_, lang, notice, playerName)
	Log(L.PROBE_CHANNEL_NOTICE_USER, C.GetChannelName(lang), SafeString(notice), SafeString(playerName))
end)

ns.RegisterCallback(Probe, "AA_COMM_HELD", function(_, length)
	Log(L.PROBE_COMM_HELD, length)
end)

ns.RegisterCallback(Probe, "AA_COMM_FLUSHED", function()
	Log(L.PROBE_COMM_FLUSHED)
end)

ns:RegisterEvent("ENCOUNTER_START", function(_, _, encounterName)
	Log(L.PROBE_ENCOUNTER_START, SafeString(encounterName), YesNo(ns.Comm.InLockdown()))
	LogContext("ENCOUNTER_START")
end)

ns:RegisterEvent("ENCOUNTER_END", function(_, _, encounterName)
	Log(L.PROBE_ENCOUNTER_END, SafeString(encounterName), YesNo(ns.Comm.InLockdown()))
end)

-- Context once per instance entered, to see what is secret inside.
ns:RegisterEvent("PLAYER_ENTERING_WORLD", function()
	if IsInInstance() then
		C_Timer.After(2, function()
			LogContext("PLAYER_ENTERING_WORLD")
		end)
	end
end)

-- Lockdown has no event we rely on; poll and log transitions.
local wasLockdown = false
C_Timer.NewTicker(1, function()
	local lockdown = ns.Comm.InLockdown()
	if lockdown ~= wasLockdown then
		wasLockdown = lockdown
		Log(lockdown and L.PROBE_LOCKDOWN_START or L.PROBE_LOCKDOWN_END)
	end
end)

--------------------------------------------------------------------------------
-- Saved data check
--------------------------------------------------------------------------------

ns:RegisterEvent("PLAYER_LOGIN", function()
	db = ns.db.probe
	charDb = ns.charDb.probe
	ns.Comm.loopback = db.loopback
	db.loginCount = db.loginCount + 1
	charDb.loginCount = charDb.loginCount + 1
	local lastLogout = db.lastLogout and date("%Y-%m-%d %H:%M:%S", db.lastLogout) or L.PROBE_NEVER
	Log(L.PROBE_SAVED_LOGIN, db.loginCount, charDb.loginCount, lastLogout)
	if ns.dbLoaded ~= ns.charDbLoaded then
		Log(L.PROBE_SAVED_MISMATCH, YesNo(ns.dbLoaded), YesNo(ns.charDbLoaded))
	elseif not ns.dbLoaded then
		Log(L.PROBE_SAVED_NONE)
	end
end)

ns:RegisterEvent("PLAYER_LOGOUT", function()
	if db then
		db.lastLogout = time()
		charDb.lastLogout = time()
	end
end)
