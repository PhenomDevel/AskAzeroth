-- luacheck: read globals InCombatLockdown IsInInstance PlaySound SOUNDKIT
local _, ns = ...

-- Decides which events notify the player and how (PLAN.md, section 9):
--   * new questions, in mentor mode: per category off / badge / sound,
--     optional class filter and asker level limit;
--   * questions of favourites: always (badge + toast);
--   * answers to own questions: always.
-- Never a toast or sound in combat, optionally none in instances; the
-- badge still counts and held back toasts follow afterwards. At most one toast per C.TOAST_INTERVAL, the rest are summed up
-- as "+N more" in the next one.
--
-- Messages: AA_NOTIFY_TOAST (entry, more), AA_NOTIFY_CHANGED (unseen)
local Notify = {}
ns.Notify = Notify

local C = ns.C
local Players = ns.Players

Notify.MODES = { "off", "badge", "sound" }

ns.dbDefaults.settings.notify = {
	-- category key → "off" | "badge" | "sound"; missing = "badge"
	categories = {},
	-- class file → true; empty = every class
	classes = {},
	-- Only questions from players up to this level; nil = any level.
	maxLevel = nil,
	-- Hold toasts and sounds in instances (combat always holds them).
	pauseInstance = true,
}

local unseen = 0
local lastToast = -math.huge
-- Newest suppressed entry and how many were held back since the last toast.
local pending, pendingCount = nil, 0
local timer

local function Settings()
	return ns.db.settings.notify
end

function Notify.GetMode(cat)
	return Settings().categories[cat] or "badge"
end

function Notify.SetMode(cat, mode)
	Settings().categories[cat] = mode
end

function Notify.GetUnseen()
	return unseen
end

-- The Questions page was looked at.
function Notify.MarkSeen()
	if unseen ~= 0 then
		unseen = 0
		ns:Fire("AA_NOTIFY_CHANGED", unseen)
	end
end

function Notify.IsPaused()
	-- The player is in combat (regen disabled), with or without a target.
	if InCombatLockdown() then
		return true
	end
	if Settings().pauseInstance and IsInInstance() then
		return true
	end
	return false
end

local function PlayAlert()
	if SOUNDKIT and SOUNDKIT.TELL_MESSAGE then
		PlaySound(SOUNDKIT.TELL_MESSAGE)
	end
end

local function ShowToast(entry, more)
	lastToast = GetTime()
	ns:Fire("AA_NOTIFY_TOAST", entry, more)
end

-- After the interval, show what was held back.
local function FlushLater()
	if timer then
		return
	end
	local wait = math.max(1, lastToast + C.TOAST_INTERVAL - GetTime())
	timer = C_Timer.NewTimer(wait, function()
		timer = nil
		if not pending then
			return
		end
		if Notify.IsPaused() then
			FlushLater()
			return
		end
		local entry, more = pending, pendingCount - 1
		pending, pendingCount = nil, 0
		ShowToast(entry, more)
	end)
end

-- entry = { kind = "question" | "answer", question, answer?, sound }
local function Raise(entry)
	unseen = unseen + 1
	ns:Fire("AA_NOTIFY_CHANGED", unseen)
	if Notify.IsPaused() then
		pending, pendingCount = entry, pendingCount + 1
		FlushLater()
		return
	end
	if entry.sound then
		PlayAlert()
	end
	if GetTime() - lastToast >= C.TOAST_INTERVAL then
		ShowToast(entry, 0)
	else
		pending, pendingCount = entry, pendingCount + 1
		FlushLater()
	end
end

-- Settings "Test": a sample toast with sound, shown right away.
function Notify.Test()
	PlayAlert()
	ns:Fire("AA_NOTIFY_TOAST", { kind = "test" }, 0)
end

-- Held back toasts follow soon after combat instead of waiting for the
-- next retry.
ns:RegisterEvent("PLAYER_REGEN_ENABLED", function()
	if not pending or Notify.IsPaused() then
		return
	end
	if timer then
		timer:Cancel()
		timer = nil
	end
	FlushLater()
end)

-- Whether a new question passes the mentor filters.
function Notify.WantsQuestion(q)
	local settings = Settings()
	local ctx = q.ctx or {}
	if next(settings.classes) and not (ctx.class and settings.classes[ctx.class]) then
		return false
	end
	if settings.maxLevel and ctx.lvl and ctx.lvl > settings.maxLevel then
		return false
	end
	return Notify.GetMode(q.cat) ~= "off"
end

local function IsOwn(name)
	return name == ns:GetPlayerFullName()
end

ns.RegisterCallback(Notify, "AA_QUESTION_ADDED", function(_, q)
	if q.viaSync or IsOwn(q.author) or Players.IsIgnored(q.author) or not ns.Channel.IsSelected(q.lang) then
		return
	end
	if Players.IsFavorite(q.author) then
		Raise({ kind = "question", question = q, sound = Notify.GetMode(q.cat) == "sound", favorite = true })
	elseif ns.db.settings.mentor and Notify.WantsQuestion(q) then
		Raise({ kind = "question", question = q, sound = Notify.GetMode(q.cat) == "sound" })
	end
end)

ns.RegisterCallback(Notify, "AA_ANSWER_ADDED", function(_, q, a)
	if q.viaSync or not IsOwn(q.author) or IsOwn(a.author) or Players.IsIgnored(a.author) then
		return
	end
	-- Answers to own questions always notify, with sound.
	Raise({ kind = "answer", question = q, answer = a, sound = true })
end)

-- Expired or withdrawn questions shouldn't be opened from a late toast.
ns.RegisterCallback(Notify, "AA_QUESTION_REMOVED", function(_, q)
	if pending and pending.question == q then
		pending, pendingCount = nil, 0
	end
end)
