-- luacheck: read globals UIParent
local _, ns = ...

-- Toast for notifications: who asked or answered what, "+N more", Open and
-- Later. Disappears after C.TOAST_DURATION.
local L = ns.L
local C = ns.C
local W = ns.Widgets
local Util = ns.Util

local WIDTH, HEIGHT = 320, 96
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
	toast = W.Panel(UIParent, { 0.05, 0.05, 0.07, 0.96 }, { 0.79, 0.635, 0.29, 1 })
	toast:SetSize(WIDTH, HEIGHT)
	toast:SetPoint("TOP", 0, -140)
	toast:SetFrameStrata("DIALOG")
	toast:SetClampedToScreen(true)
	toast:EnableMouse(true)
	toast:Hide()

	local icon = toast:CreateTexture(nil, "ARTWORK")
	icon:SetTexture(ICON)
	icon:SetSize(20, 20)
	icon:SetPoint("TOPLEFT", 8, -8)
	local title = W.Text(toast, "GameFontNormal")
	title:SetPoint("LEFT", icon, "RIGHT", 6, 0)
	title:SetText(ns.title)
	toast.kind = W.Text(toast, "GameFontHighlightSmall", W.MUTED)
	toast.kind:SetPoint("TOPRIGHT", -10, -12)

	toast.text = W.Text(toast, "GameFontHighlight")
	toast.text:SetPoint("TOPLEFT", 10, -34)
	toast.text:SetPoint("RIGHT", -10, 0)
	toast.text:SetWordWrap(false)
	toast.more = W.Text(toast, "GameFontHighlightSmall", W.MUTED)
	toast.more:SetPoint("TOPLEFT", toast.text, "BOTTOMLEFT", 0, -4)

	local open = W.Button(toast, L.TOAST_OPEN, 90, function()
		Hide()
		if current then
			ns.UI.ShowQuestion(current.question.id)
		end
	end)
	open:SetPoint("BOTTOMRIGHT", -8, 8)
	local later = W.Button(toast, L.TOAST_LATER, 90, Hide)
	later:SetPoint("RIGHT", open, "LEFT", -4, 0)
end

ns.RegisterCallback({}, "AA_NOTIFY_TOAST", function(_, entry, more)
	if not toast then
		Create()
	end
	current = entry
	local q = entry.question
	if entry.kind == "answer" then
		toast.kind:SetText(L.TOAST_ANSWER)
		toast.text:SetText(L.TOAST_LINE:format(ns.Widgets.PlayerText(entry.answer.author, ns.Players.GetClass(entry.answer.author)), Util.EscapeText(entry.answer.text)))
	else
		local category = C.GetCategory(q.cat)
		toast.kind:SetText((entry.favorite and W.STAR or "") .. (category and category.label or ""))
		toast.text:SetText(L.TOAST_LINE:format(W.PlayerText(q.author, q.ctx and q.ctx.class), Util.EscapeText(q.title)))
	end
	toast.more:SetText(more > 0 and L.TOAST_MORE:format(more) or "")
	toast:Show()
	if hideTimer then
		hideTimer:Cancel()
	end
	hideTimer = C_Timer.NewTimer(C.TOAST_DURATION, Hide)
end)
