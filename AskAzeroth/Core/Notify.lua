-- luacheck: read globals InCombatLockdown IsInInstance PlaySound SOUNDKIT
local _, ns = ...

-- Decides which events notify the player and how (PLAN.md, section 9):
--   * new questions, in mentor mode: per category off / badge / sound,
--     optional class filter and asker level limit;
--   * questions of favourites: always (badge + toast);
--   * answers to own questions: always.
-- Never a toast or sound in combat, optionally none in instances; the
-- badge still counts and held back toasts follow right afterwards.
-- A new toast pops up at most once per notify.interval seconds (0 = at
-- once); answers to own questions don't wait. While a toast is up, it is
-- updated and counts the others as "+N more".
--
-- Messages: AA_NOTIFY_TOAST (entry, more), AA_NOTIFY_CHANGED (unseen)
local Notify = {}
ns.Notify = Notify

local C = ns.C
local Players = ns.Players

Notify.MODES = { "off", "badge", "sound" }
-- Choices for the least time between two toasts (seconds).
Notify.INTERVALS = { 0, 60, 120, 300, 600, 900 }
-- Sounds to pick from: SOUNDKIT keys, offered only when the client has
-- them, plus "none".
Notify.SOUNDS = { "TELL_MESSAGE", "RAID_WARNING", "READY_CHECK", "UI_BNET_TOAST", "MAP_PING", "IG_PLAYER_INVITE" }
Notify.DEFAULT_SOUND = "TELL_MESSAGE"

ns.dbDefaults.settings.notify = {
	-- category key → "off" | "badge" | "sound"; missing = "badge"
	categories = {},
	-- class file → true; empty = every class
	classes = {},
	-- Only questions from players up to this level; nil = any level.
	maxLevel = nil,
	-- Hold toasts and sounds in instances (combat always holds them).
	pauseInstance = true,
	-- Least seconds between two toasts; 0 = every notification at once.
	interval = 0,
	-- SOUNDKIT key of the alert, or "none".
	sound = "TELL_MESSAGE",
	-- Count of unseen notifications on the minimap button and the tab.
	badge = true,
}

local unseen = 0
-- The toast on screen (entry and "+N more") and until when it stays.
local shown, shownMore, shownUntil = nil, 0, 0
-- When the last new toast popped up (updates of a shown one don't count).
local lastPopup = nil
-- Newest entry held back (combat, instance or interval), how many, and
-- whether one of them asked for a sound.
local pending, pendingCount, pendingSound = nil, 0, false
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

-- What the badges show: the unseen count, or 0 when badges are off.
function Notify.GetBadgeCount()
	if Settings().badge == false then
		return 0
	end
	return unseen
end

function Notify.SetBadge(enabled)
	Settings().badge = enabled
	ns:Fire("AA_NOTIFY_CHANGED", unseen)
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

-- Sound keys this client has, in the order of Notify.SOUNDS.
function Notify.GetSounds()
	local list = {}
	for _, key in ipairs(Notify.SOUNDS) do
		if SOUNDKIT and SOUNDKIT[key] then
			list[#list + 1] = key
		end
	end
	return list
end

-- The chosen sound (key) if the client has it, else the default; "none"
-- stays silent.
function Notify.GetSound()
	local key = Settings().sound or Notify.DEFAULT_SOUND
	if key ~= "none" and not (SOUNDKIT and SOUNDKIT[key]) then
		key = Notify.DEFAULT_SOUND
	end
	return key
end

function Notify.PlaySound(key)
	key = key or Notify.GetSound()
	if key ~= "none" and SOUNDKIT and SOUNDKIT[key] then
		PlaySound(SOUNDKIT[key])
	end
end

local function ToastUp()
	return shown ~= nil and GetTime() < shownUntil
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

-- Seconds until the next new toast may pop up (0 or less = now).
local function IntervalLeft()
	local interval = Settings().interval or 0
	if interval <= 0 or not lastPopup then
		return 0
	end
	return lastPopup + interval - GetTime()
end

-- Shows entry (standing for more + 1 notifications). A toast that is still
-- up is updated instead; with an interval set, that update stays silent.
local function Present(entry, more, sound)
	if ToastUp() then
		if sound and (Settings().interval or 0) <= 0 then
			Notify.PlaySound()
		end
		ShowToast(Pick(shown, entry), shownMore + more + 1)
		return
	end
	if sound then
		Notify.PlaySound()
	end
	lastPopup = GetTime()
	ShowToast(entry, more)
end

local function Hold(entry)
	pending, pendingCount = Pick(pending, entry), pendingCount + 1
	pendingSound = pendingSound or entry.sound
end

-- Whether held back entries may show now.
local function CanRelease()
	if not pending or Notify.IsPaused() then
		return false
	end
	return ToastUp() or pending.kind == "answer" or IntervalLeft() <= 0
end

local function Release()
	local entry, more, sound = pending, pendingCount - 1, pendingSound
	pending, pendingCount, pendingSound = nil, 0, false
	Present(entry, more, sound)
end

-- Shows what was held back once combat, the instance or the interval is
-- over (checked every second while something waits).
local function FlushLater()
	if timer then
		return
	end
	timer = C_Timer.NewTimer(1, function()
		timer = nil
		if not pending then
			return
		end
		if CanRelease() then
			Release()
		else
			FlushLater()
		end
	end)
end

-- entry = { kind = "question" | "answer", question, answer?, sound }
local function Raise(entry)
	unseen = unseen + 1
	ns:Fire("AA_NOTIFY_CHANGED", unseen)
	Hold(entry)
	if CanRelease() then
		Release()
	else
		FlushLater()
	end
end

-- Settings "Test": a sample toast with sound, shown right away.
function Notify.Test()
	Notify.PlaySound()
	ns:Fire("AA_NOTIFY_TOAST", { kind = "test" }, 0)
end

-- Held back toasts follow soon after combat instead of waiting for the
-- next retry.
ns:RegisterEvent("PLAYER_REGEN_ENABLED", function()
	if not CanRelease() then
		return
	end
	if timer then
		timer:Cancel()
		timer = nil
	end
	Release()
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
		pending, pendingCount, pendingSound = nil, 0, false
	end
end)
