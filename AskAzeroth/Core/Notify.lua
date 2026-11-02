-- luacheck: read globals InCombatLockdown IsInInstance PlaySound SOUNDKIT
local _, ns = ...

-- Decides which events notify the player and how (PLAN.md, section 9):
--   * new questions, in mentor mode: per category off / badge / sound,
--     optional class filter and asker level limit;
--   * questions of favourites: always (badge + toast);
--   * answers to own questions: always.
-- Never a toast or sound in combat, optionally none in instances; the
-- badge still counts and held back toasts follow right afterwards. Every
-- other notification shows at once; while a toast is up, it is updated
-- and counts the others as "+N more".
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
-- The toast on screen (entry and "+N more") and until when it stays.
local shown, shownMore, shownUntil = nil, 0, 0
-- Newest entry held back in combat or an instance, and how many.
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
	shown, shownMore, shownUntil = entry, more, GetTime() + C.TOAST_DURATION
	ns:Fire("AA_NOTIFY_TOAST", entry, more)
end

-- Of two entries for one toast, an answer to an own question wins over a
-- new question; otherwise the newer one.
local function Pick(old, new)
	if old and old.kind == "answer" and new.kind ~= "answer" then
		return old
	end
	return new
end

-- Shows what was held back once combat or the instance is over (checked
-- every second while something waits).
local function FlushLater()
	if timer then
		return
	end
	timer = C_Timer.NewTimer(1, function()
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
		pending, pendingCount = Pick(pending, entry), pendingCount + 1
		FlushLater()
		return
	end
	if entry.sound then
		PlayAlert()
	end
	-- A toast is still up: update it ("+N more") instead of stacking.
	if shown and GetTime() < shownUntil then
		ShowToast(Pick(shown, entry), shownMore + 1)
	else
		ShowToast(entry, 0)
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
	local entry, more = pending, pendingCount - 1
	pending, pendingCount = nil, 0
	ShowToast(entry, more)
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
