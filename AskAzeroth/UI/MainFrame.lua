-- luacheck: read globals tinsert UIParent UISpecialFrames PanelTemplates_SetNumTabs PanelTemplates_SetTab
local _, ns = ...

-- Main window: portrait frame with one tab per page at the bottom and a
-- status line. Pages register themselves with UI.RegisterPage and are built
-- on first show.
local UI = {}
ns.UI = UI

local L = ns.L
local C = ns.C
local W = ns.Widgets

local FRAME_NAME = "AskAzerothFrame"
local WIDTH, HEIGHT = 820, 540
local PORTRAIT = "Interface\\AddOns\\AskAzeroth\\Media\\Logo"

-- Page order; the files in UI/ register under these indexes.
UI.PAGE_QUESTIONS = 1
UI.PAGE_MY_QUESTIONS = 2
UI.PAGE_PINNED = 3
UI.PAGE_PLAYERS = 4
UI.PAGE_FAQ = 5
UI.PAGE_SETTINGS = 6

local pageDefs = {}
local frame

-- builder(content) returns a page object with :Refresh() and optionally
-- :OnShow(); called once, on first show of the page.
function UI.RegisterPage(index, label, builder)
	pageDefs[index] = { label = label, builder = builder }
end

local function SavePosition()
	local point, _, relativePoint, x, y = frame:GetPoint()
	local saved = ns.charDb.window
	saved.point, saved.relativePoint, saved.x, saved.y = point, relativePoint, x, y
end

local function RestorePosition()
	local saved = ns.charDb.window
	frame:ClearAllPoints()
	if saved.point then
		frame:SetPoint(saved.point, UIParent, saved.relativePoint or saved.point, saved.x or 0, saved.y or 0)
	else
		frame:SetPoint("CENTER")
	end
end

function UI.UpdateStatus()
	if not frame or not frame:IsShown() then
		return
	end
	local parts = {}
	for _, lang in ipairs(ns.Channel.GetSelectedLanguages()) do
		local icon = ns.Channel.IsReady(lang) and "Indicator-Green" or "Indicator-Red"
		parts[#parts + 1] = ("|TInterface\\COMMON\\%s:14|t%s"):format(icon, C.LANGUAGE_NAMES[lang])
	end
	if ns.Comm.InLockdown() then
		parts[#parts + 1] = "|cffffd100" .. L.STATUS_LOCKDOWN .. "|r"
	end
	frame.statusLeft:SetText(table.concat(parts, "   "))
	frame.statusRight:SetText(ns.db.settings.mentor and ("|cff1eff00" .. L.STATUS_MENTOR .. "|r") or "")
end

-- Tabs as wide as their label: the template's own sizing truncates longer
-- (translated) labels. Runs again after selection changes the font.
local TAB_SIDES, TAB_MIN = 40, 80
local function FitTab(tab)
	local text = tab:GetFontString()
	text:SetWidth(0)
	tab:SetWidth(math.max(TAB_MIN, text:GetStringWidth() + TAB_SIDES))
end

local function SelectPage(index)
	ns.db.settings.page = index
	PanelTemplates_SetTab(frame, index)
	for _, tab in ipairs(frame.Tabs) do
		FitTab(tab)
	end
	for i, def in ipairs(pageDefs) do
		local content = frame.contents[i]
		if i == index then
			if not def.object then
				def.object = def.builder(content)
			end
			content:Show()
			if def.object.OnShow then
				def.object:OnShow()
			end
			def.object:Refresh()
		else
			content:Hide()
		end
	end
	UI.UpdateStatus()
end

function UI.GetFrame()
	return frame
end

function UI.GetCurrentPage()
	local def = frame and pageDefs[frame.selectedTab]
	return def and def.object
end

local function Create()
	frame = CreateFrame("Frame", FRAME_NAME, UIParent, "PortraitFrameTemplate")
	frame:SetSize(WIDTH, HEIGHT)
	frame:SetFrameStrata("HIGH")
	frame:SetToplevel(true)
	frame:SetClampedToScreen(true)
	frame:SetMovable(true)
	frame:EnableMouse(true)
	frame:RegisterForDrag("LeftButton")
	frame:SetScript("OnDragStart", frame.StartMoving)
	frame:SetScript("OnDragStop", function(self)
		self:StopMovingOrSizing()
		SavePosition()
	end)
	if frame.SetTitle then
		frame:SetTitle(ns.title)
	end
	if frame.SetPortraitToAsset then
		frame:SetPortraitToAsset(PORTRAIT)
	end
	-- Escape closes the window.
	tinsert(UISpecialFrames, FRAME_NAME)
	RestorePosition()

	frame.contents = {}
	frame.Tabs = {}
	for i, def in ipairs(pageDefs) do
		local content = CreateFrame("Frame", nil, frame)
		-- Left gutter keeps the portrait clear.
		content:SetPoint("TOPLEFT", 58, -30)
		content:SetPoint("BOTTOMRIGHT", -12, 28)
		content:Hide()
		frame.contents[i] = content

		local tab = CreateFrame("Button", FRAME_NAME .. "Tab" .. i, frame, "PanelTabButtonTemplate")
		tab:SetID(i)
		tab:SetText(def.label)
		if i == 1 then
			tab:SetPoint("TOPLEFT", frame, "BOTTOMLEFT", 12, 2)
		else
			tab:SetPoint("TOPLEFT", frame.Tabs[i - 1], "TOPRIGHT", 3, 0)
		end
		tab:SetScript("OnClick", function(self)
			SelectPage(self:GetID())
		end)
		tab:HookScript("OnShow", FitTab)
		FitTab(tab)
		frame.Tabs[i] = tab
	end
	PanelTemplates_SetNumTabs(frame, #pageDefs)

	local statusBar = CreateFrame("Frame", nil, frame)
	statusBar:SetPoint("BOTTOMLEFT", 60, 6)
	statusBar:SetPoint("BOTTOMRIGHT", -14, 6)
	statusBar:SetHeight(18)
	frame.statusLeft = W.Text(statusBar, "GameFontHighlightSmall", W.MUTED)
	frame.statusLeft:SetPoint("LEFT")
	frame.statusRight = W.Text(statusBar, "GameFontHighlightSmall", W.MUTED)
	frame.statusRight:SetPoint("RIGHT")

	frame:SetScript("OnShow", function()
		local page = UI.GetCurrentPage()
		if page then
			if page.OnShow then
				page:OnShow()
			end
			page:Refresh()
		end
		UI.UpdateStatus()
	end)

	local saved = ns.db.settings.page
	SelectPage(pageDefs[saved] and saved or UI.PAGE_QUESTIONS)
end

function UI.Show(pageIndex)
	if not ns.db then
		return
	end
	if not frame then
		Create()
	end
	frame:Show()
	if pageIndex and pageDefs[pageIndex] then
		SelectPage(pageIndex)
	end
end

function UI.Hide()
	if frame then
		frame:Hide()
	end
end

function UI.Toggle()
	if frame and frame:IsShown() then
		frame:Hide()
	else
		UI.Show()
	end
end

-- Refreshes the open page, e.g. after a setting changed elsewhere.
function UI.Refresh()
	if frame and frame:IsShown() then
		local page = UI.GetCurrentPage()
		if page then
			page:Refresh()
		end
		UI.UpdateStatus()
	end
end

for _, message in ipairs({ "AA_CHANNEL_READY", "AA_CHANNEL_LEFT", "AA_CHANNEL_FAILED", "AA_COMM_HELD", "AA_COMM_FLUSHED", "AA_LANGUAGES_CHANGED" }) do
	ns.RegisterCallback(UI, message, UI.UpdateStatus)
end
-- Lockdown starts and ends without an own message; check now and then.
C_Timer.NewTicker(5, UI.UpdateStatus)
