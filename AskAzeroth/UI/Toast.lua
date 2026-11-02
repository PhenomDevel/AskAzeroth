-- luacheck: read globals UIParent EventRegistry EditModeManagerFrame
local _, ns = ...

-- Toast for notifications: who asked or answered what, "+N more", Open and
-- Later. Disappears after C.TOAST_DURATION.
--
-- Position: moved in the game's Edit Mode. While Edit Mode is open the
-- toast shows as a placeholder with a highlight and can be dragged; the
-- spot is saved in settings.toastPosition. Clients without Edit Mode can
-- drag the test toast (Settings → "Test") instead.
local L = ns.L
local C = ns.C
local W = ns.Widgets
local Util = ns.Util

local WIDTH, HEIGHT = 360, 96
local ICON = "Interface\\AddOns\\AskAzeroth\\Media\\Logo"
local DEFAULT_POINT, DEFAULT_Y = "TOP", -140

local toast, hideTimer, current
local editMode = false

local Toast = {}
ns.Toast = Toast

local function SavedPosition()
	return ns.db and ns.db.settings.toastPosition
end

local function ApplyPosition()
	toast:ClearAllPoints()
	local saved = SavedPosition()
	if saved and saved.point then
		toast:SetPoint(saved.point, UIParent, saved.relativePoint or saved.point, saved.x or 0, saved.y or 0)
	else
		toast:SetPoint(DEFAULT_POINT, UIParent, DEFAULT_POINT, 0, DEFAULT_Y)
	end
end

local function SavePosition()
	local point, _, relativePoint, x, y = toast:GetPoint()
	ns.db.settings.toastPosition = { point = point, relativePoint = relativePoint, x = x, y = y }
end

local function CancelHideTimer()
	if hideTimer then
		hideTimer:Cancel()
		hideTimer = nil
	end
end

local function Hide()
	CancelHideTimer()
	if toast and not editMode then
		toast:Hide()
	end
end

-- Dragging is allowed in Edit Mode and on the test toast.
local function CanMove()
	return editMode or (current and current.kind == "test")
end

local function Create()
	toast = W.Panel(UIParent, W.COLORS.window, W.COLORS.accent, true)
	toast:SetSize(WIDTH, HEIGHT)
	toast:SetFrameStrata("DIALOG")
	toast:SetClampedToScreen(true)
	toast:SetMovable(true)
	toast:EnableMouse(true)
	toast:RegisterForDrag("LeftButton")
	toast:SetScript("OnDragStart", function(self)
		if CanMove() then
			self:StartMoving()
		end
	end)
	toast:SetScript("OnDragStop", function(self)
		self:StopMovingOrSizing()
		SavePosition()
	end)
	toast:Hide()
	ApplyPosition()

	local icon = toast:CreateTexture(nil, "ARTWORK")
	icon:SetTexture(ICON)
	icon:SetSize(16, 16)
	icon:SetPoint("TOPLEFT", 12, -10)
	toast.kind = W.Text(toast, "GameFontNormalSmall")
	toast.kind:SetPoint("LEFT", icon, "RIGHT", 6, 0)
	toast.kind:SetPoint("RIGHT", -90, 0)
	toast.kind:SetWordWrap(false)
	toast.age = W.Text(toast, "GameFontHighlightSmall", W.MUTED)
	toast.age:SetPoint("TOPRIGHT", -12, -12)
	toast.age:SetJustifyH("RIGHT")

	toast.text = W.Text(toast, "GameFontHighlight", W.TEXT)
	toast.text:SetPoint("TOPLEFT", 12, -34)
	toast.text:SetPoint("RIGHT", -12, 0)
	toast.text:SetWordWrap(false)

	local open = W.Button(toast, L.TOAST_OPEN, nil, function()
		local entry = current
		Hide()
		if entry and entry.question then
			ns.UI.ShowQuestion(entry.question.id)
		end
	end, "primary")
	open:SetPoint("BOTTOMRIGHT", -12, 12)
	toast.open = open
	local later = W.Button(toast, L.TOAST_LATER, nil, Hide)
	later:SetPoint("RIGHT", open, "LEFT", -6, 0)
	toast.later = later

	toast.more = W.Text(toast, "GameFontHighlightSmall", W.MUTED)
	toast.more:SetPoint("BOTTOMLEFT", 12, 19)
	toast.more:SetPoint("RIGHT", later, "LEFT", -8, 0)
	toast.more:SetWordWrap(false)

	-- Edit Mode placeholder: a highlight over the whole toast with its name,
	-- like the game's own movable frames.
	local overlay = CreateFrame("Frame", nil, toast, "BackdropTemplate")
	overlay:SetAllPoints()
	overlay:SetFrameLevel(toast:GetFrameLevel() + 10)
	overlay:SetBackdrop({ bgFile = W.WHITE8, edgeFile = W.WHITE8, edgeSize = 2 })
	overlay:SetBackdropColor(0.2, 0.55, 1, 0.3)
	overlay:SetBackdropBorderColor(0.35, 0.7, 1, 1)
	local label = W.Text(overlay, "GameFontHighlight", { 1, 1, 1 })
	label:SetPoint("CENTER")
	label:SetText(L.TOAST_EDIT_LABEL)
	overlay:Hide()
	toast.overlay = overlay
end

local function Fill(entry, more)
	current = entry
	if entry.kind == "test" then
		toast.kind:SetText("|cfff0d68c" .. L.TOAST_TEST_TITLE .. "|r")
		toast.text:SetText(L.TOAST_TEST_TEXT)
	elseif entry.kind == "answer" then
		toast.kind:SetText("|cfff0d68c" .. L.TOAST_ANSWER .. "|r")
		toast.text:SetText(L.TOAST_LINE:format(W.PlayerText(entry.answer.author, ns.Players.GetClass(entry.answer.author)), Util.EscapeText(entry.answer.text)))
	else
		local q = entry.question
		toast.kind:SetText((entry.favorite and W.STAR or "") .. W.CategoryText(q.cat))
		toast.text:SetText(L.TOAST_LINE:format(W.PlayerText(q.author, q.ctx and q.ctx.class), Util.EscapeText(q.title)))
	end
	toast.open:SetEnabled(entry.question ~= nil)
	toast.more:SetText(more > 0 and L.TOAST_MORE:format(more) or "")
	toast.age:SetText(L.AGO_NOW)
end

ns.RegisterCallback(Toast, "AA_NOTIFY_TOAST", function(_, entry, more)
	if not toast then
		Create()
	end
	Fill(entry, more)
	toast:Show()
	CancelHideTimer()
	if not editMode then
		hideTimer = C_Timer.NewTimer(C.TOAST_DURATION, Hide)
	end
end)

-- Edit Mode: show the placeholder while it is open.
local function EnterEditMode()
	if not ns.db then
		return
	end
	if not toast then
		Create()
	end
	editMode = true
	CancelHideTimer()
	if not toast:IsShown() then
		Fill({ kind = "test" }, 0)
	end
	toast.overlay:Show()
	toast:Show()
end

local function ExitEditMode()
	editMode = false
	if toast then
		toast.overlay:Hide()
		toast:Hide()
	end
end

-- Whether the client has Edit Mode (EventRegistry events "EditMode.Enter"
-- and "EditMode.Exit").
function Toast.HasEditMode()
	return EventRegistry ~= nil and EditModeManagerFrame ~= nil
end

if EventRegistry and EventRegistry.RegisterCallback then
	EventRegistry:RegisterCallback("EditMode.Enter", EnterEditMode, Toast)
	EventRegistry:RegisterCallback("EditMode.Exit", ExitEditMode, Toast)
end

-- Settings: back to the default spot.
function Toast.ResetPosition()
	if ns.db then
		ns.db.settings.toastPosition = nil
	end
	if toast then
		ApplyPosition()
	end
end
