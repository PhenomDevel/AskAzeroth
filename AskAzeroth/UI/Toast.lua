-- luacheck: read globals UIParent
local _, ns = ...

-- Toast for notifications: who asked or answered what, "+N more", Open and
-- Later. Disappears after C.TOAST_DURATION.
local L = ns.L
local C = ns.C
local W = ns.Widgets
local Util = ns.Util

local WIDTH, HEIGHT = 360, 96
local ICON = "Interface\\AddOns\\AskAzeroth\\Media\\Logo"

local toast, hideTimer, current

local function Hide()
	if hideTimer then
		hideTimer:Cancel()
		hideTimer = nil
	end
	if toast then
		toast:Hide()
	end
end

local function Create()
	toast = W.Panel(UIParent, W.COLORS.window, W.COLORS.accent, true)
	toast:SetSize(WIDTH, HEIGHT)
	toast:SetPoint("TOP", 0, -140)
	toast:SetFrameStrata("DIALOG")
	toast:SetClampedToScreen(true)
	toast:EnableMouse(true)
	toast:Hide()

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
		Hide()
		if current then
			ns.UI.ShowQuestion(current.question.id)
		end
	end, "primary")
	open:SetPoint("BOTTOMRIGHT", -12, 12)
	local later = W.Button(toast, L.TOAST_LATER, nil, Hide)
	later:SetPoint("RIGHT", open, "LEFT", -6, 0)

	toast.more = W.Text(toast, "GameFontHighlightSmall", W.MUTED)
	toast.more:SetPoint("BOTTOMLEFT", 12, 19)
	toast.more:SetPoint("RIGHT", later, "LEFT", -8, 0)
	toast.more:SetWordWrap(false)
end

ns.RegisterCallback({}, "AA_NOTIFY_TOAST", function(_, entry, more)
	if not toast then
		Create()
	end
	current = entry
	local q = entry.question
	if entry.kind == "answer" then
		toast.kind:SetText("|cfff0d68c" .. L.TOAST_ANSWER .. "|r")
		toast.text:SetText(L.TOAST_LINE:format(ns.Widgets.PlayerText(entry.answer.author, ns.Players.GetClass(entry.answer.author)), Util.EscapeText(entry.answer.text)))
	else
		toast.kind:SetText((entry.favorite and W.STAR or "") .. W.CategoryText(q.cat))
		toast.text:SetText(L.TOAST_LINE:format(W.PlayerText(q.author, q.ctx and q.ctx.class), Util.EscapeText(q.title)))
	end
	toast.more:SetText(more > 0 and L.TOAST_MORE:format(more) or "")
	toast.age:SetText(L.AGO_NOW)
	toast:Show()
	if hideTimer then
		hideTimer:Cancel()
	end
	hideTimer = C_Timer.NewTimer(C.TOAST_DURATION, Hide)
end)
