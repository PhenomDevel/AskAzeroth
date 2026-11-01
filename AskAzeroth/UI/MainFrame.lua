-- luacheck: read globals tinsert UIParent UISpecialFrames GameTooltip
local _, ns = ...

-- Main window: header bar (logo, title, language channels, mentor state,
-- close), navigation on the left, the selected page on the right. Pages
-- register themselves with UI.RegisterPage and are built on first show.
local UI = {}
ns.UI = UI

local L = ns.L
local C = ns.C
local W = ns.Widgets

local FRAME_NAME = "AskAzerothFrame"
local WIDTH, HEIGHT = 1040, 640
local HEADER_HEIGHT = 48
local NAV_WIDTH = 150
local NAV_BUTTON_HEIGHT = 34
local LOGO = "Interface\\AddOns\\AskAzeroth\\Media\\Logo"

-- Page indexes (saved in settings.page, do not renumber); the files in UI/
-- register under these.
UI.PAGE_QUESTIONS = 1
UI.PAGE_MY_QUESTIONS = 2
UI.PAGE_PINNED = 3
UI.PAGE_PLAYERS = 4
UI.PAGE_FAQ = 5
UI.PAGE_SETTINGS = 6

-- Order of the entries in the navigation.
local NAV_ORDER = { UI.PAGE_QUESTIONS, UI.PAGE_FAQ, UI.PAGE_MY_QUESTIONS, UI.PAGE_PINNED, UI.PAGE_PLAYERS, UI.PAGE_SETTINGS }

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
	-- Language pill: codes of the selected languages, gold when the channel
	-- is joined, grey while not.
	local codes = {}
	for _, lang in ipairs(ns.Channel.GetSelectedLanguages()) do
		local color = ns.Channel.IsReady(lang) and "fff0d68c" or "ff8a7e6a"
		codes[#codes + 1] = ("|c%s%s|r"):format(color, lang:upper())
	end
	frame.languages.text:SetText(table.concat(codes, " · "))
	frame.languages:SetWidth(frame.languages.text:GetStringWidth() + 18)

	frame.lockdown:SetShown(ns.Comm.InLockdown())
	local mentor = ns.db.settings.mentor and true or false
	frame.mentor:SetShown(mentor)
end

local function LanguageTooltip(self)
	GameTooltip:SetOwner(self, "ANCHOR_BOTTOMRIGHT")
	GameTooltip:SetText(L.SETTINGS_LANGUAGES, 1, 1, 1)
	for _, lang in ipairs(ns.Channel.GetSelectedLanguages()) do
		local ready = ns.Channel.IsReady(lang)
		GameTooltip:AddDoubleLine(C.LANGUAGE_NAMES[lang], C.GetChannelName(lang),
			1, 1, 1, ready and 0.56 or 0.9, ready and 0.82 or 0.63, ready and 0.56 or 0.63)
	end
	GameTooltip:Show()
end

local function UpdateNav()
	for _, button in ipairs(frame.navButtons) do
		local active = button.page == frame.selectedTab
		if active then
			W.SetColors(button, W.COLORS.navActive, W.COLORS.frame)
		else
			W.SetColors(button, { 0, 0, 0, 0 }, { 0, 0, 0, 0 })
		end
		button.label:SetFontObject(active and "GameFontNormal" or "GameFontHighlight")
		W.Color(button.label, active and W.GOLD or W.SOFT)
	end
end

local function SelectPage(index)
	ns.db.settings.page = index
	frame.selectedTab = index
	UpdateNav()
	for i, def in pairs(pageDefs) do
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

-- Player-facing text for a reason code from the store or protocol.
function UI.ReasonText(reason)
	local key = "REASON_" .. tostring(reason):upper():gsub("%-", "_")
	local text = rawget(L, key)
	return text or L.REASON_OTHER:format(tostring(reason))
end

function UI.GetFrame()
	return frame
end

function UI.GetCurrentPage()
	local def = frame and pageDefs[frame.selectedTab]
	return def and def.object
end

local function CreateHeader()
	local header = CreateFrame("Frame", nil, frame)
	header:SetPoint("TOPLEFT", 2, -2)
	header:SetPoint("TOPRIGHT", -2, -2)
	header:SetHeight(HEADER_HEIGHT)
	W.Fill(header, W.COLORS.header):SetAllPoints()
	W.EdgeLine(header, "BOTTOM", W.COLORS.frame)

	local logo = header:CreateTexture(nil, "ARTWORK")
	logo:SetTexture(LOGO)
	logo:SetSize(26, 26)
	logo:SetPoint("LEFT", 14, 0)
	local title = W.Text(header, W.TITLE_FONT, W.ACCENT)
	title:SetPoint("LEFT", logo, "RIGHT", 10, 0)
	title:SetText(ns.title)
	local subtitle = W.Text(header, "GameFontHighlight", W.MUTED)
	subtitle:SetPoint("LEFT", title, "RIGHT", 10, -1)
	subtitle:SetText(L.WINDOW_SUBTITLE)

	local close = W.CloseButton(header, function()
		frame:Hide()
	end)
	close:SetPoint("RIGHT", -12, 0)

	-- Mentor state: green dot and label.
	local mentor = CreateFrame("Frame", nil, header)
	mentor:SetHeight(20)
	mentor:SetPoint("RIGHT", close, "LEFT", -14, 0)
	local mentorText = W.Text(mentor, "GameFontHighlight", W.GREEN)
	mentorText:SetPoint("RIGHT")
	mentorText:SetText(L.STATUS_MENTOR)
	local dot = W.Fill(mentor, W.GREEN, "ARTWORK")
	dot:SetSize(8, 8)
	dot:SetPoint("RIGHT", mentorText, "LEFT", -6, 0)
	mentor:SetWidth(mentorText:GetStringWidth() + 14)
	frame.mentor = mentor

	-- Language channels as a pill.
	local languages = W.Panel(header, W.COLORS.header, W.COLORS.frame)
	languages:SetHeight(20)
	languages:SetPoint("RIGHT", mentor, "LEFT", -14, 0)
	languages.text = W.Text(languages, "GameFontHighlightSmall")
	languages.text:SetPoint("CENTER")
	languages:EnableMouse(true)
	languages:SetScript("OnEnter", LanguageTooltip)
	languages:SetScript("OnLeave", function()
		GameTooltip:Hide()
	end)
	frame.languages = languages

	local lockdown = W.Text(header, "GameFontHighlightSmall", W.ACCENT)
	lockdown:SetPoint("RIGHT", languages, "LEFT", -14, 0)
	lockdown:SetText(L.STATUS_LOCKDOWN)
	frame.lockdown = lockdown
end

local function CreateNav()
	local nav = CreateFrame("Frame", nil, frame)
	nav:SetPoint("TOPLEFT", 2, -2 - HEADER_HEIGHT)
	nav:SetPoint("BOTTOMLEFT", 2, 2)
	nav:SetWidth(NAV_WIDTH)
	W.Fill(nav, W.COLORS.nav):SetAllPoints()
	W.SideLine(nav, "RIGHT")

	frame.navButtons = {}
	local y = -12
	for _, index in ipairs(NAV_ORDER) do
		local def = pageDefs[index]
		if def then
			local button = CreateFrame("Button", nil, nav, "BackdropTemplate")
			button:SetBackdrop({ bgFile = W.WHITE8, edgeFile = W.WHITE8, edgeSize = 1 })
			button.page = index
			button:SetHeight(NAV_BUTTON_HEIGHT)
			button:SetPoint("TOPLEFT", 8, y)
			button:SetPoint("RIGHT", -8, 0)
			button.label = W.Text(button, "GameFontHighlight", W.SOFT)
			button.label:SetPoint("LEFT", 12, 0)
			button.label:SetPoint("RIGHT", -28, 0)
			button.label:SetWordWrap(false)
			button.label:SetText(def.label)
			button:SetHighlightTexture(W.WHITE8)
			button:GetHighlightTexture():SetVertexColor(1, 0.85, 0.5, 0.06)
			button:SetScript("OnClick", function(self)
				SelectPage(self.page)
			end)
			frame.navButtons[#frame.navButtons + 1] = button
			y = y - NAV_BUTTON_HEIGHT - 4
		end
	end

	-- Unseen questions next to "Questions".
	local badge = W.Panel(frame.navButtons[1], { 0.7, 0.23, 0.16, 1 }, { 0.7, 0.23, 0.16, 1 })
	badge:SetSize(22, 18)
	badge:SetPoint("RIGHT", -6, 0)
	badge:SetFrameLevel(frame.navButtons[1]:GetFrameLevel() + 2)
	badge.text = W.Text(badge, "GameFontHighlightSmall", { 1, 1, 1 })
	badge.text:SetPoint("CENTER")
	badge:Hide()
	frame.badge = badge
	return nav
end

function UI.UpdateBadge(count)
	if not frame then
		return
	end
	count = count or ns.Notify.GetUnseen()
	frame.badge:SetShown(count > 0)
	frame.badge.text:SetText(count > 99 and "99+" or tostring(count))
	frame.badge:SetWidth(math.max(18, frame.badge.text:GetStringWidth() + 10))
end

local function Create()
	frame = CreateFrame("Frame", FRAME_NAME, UIParent, "BackdropTemplate")
	frame:SetBackdrop({ bgFile = W.WHITE8, edgeFile = W.WHITE8, edgeSize = 2 })
	W.SetColors(frame, W.COLORS.window, W.COLORS.frame)
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
	-- Escape closes the window.
	tinsert(UISpecialFrames, FRAME_NAME)
	RestorePosition()

	CreateHeader()
	local nav = CreateNav()

	frame.contents = {}
	for i in pairs(pageDefs) do
		local content = CreateFrame("Frame", nil, frame)
		content:SetPoint("TOPLEFT", nav, "TOPRIGHT", 0, 0)
		content:SetPoint("BOTTOMRIGHT", -2, 2)
		content:Hide()
		frame.contents[i] = content
	end

	frame:SetScript("OnShow", function()
		local page = UI.GetCurrentPage()
		if page then
			if page.OnShow then
				page:OnShow()
			end
			page:Refresh()
		end
		UI.UpdateStatus()
		UI.UpdateBadge()
	end)

	local saved = ns.db.settings.page
	SelectPage(pageDefs[saved] and saved or UI.PAGE_QUESTIONS)
	UI.UpdateBadge()
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

ns.RegisterCallback(UI, "AA_NOTIFY_CHANGED", function(_, count)
	UI.UpdateBadge(count)
end)
for _, message in ipairs({ "AA_CHANNEL_READY", "AA_CHANNEL_LEFT", "AA_CHANNEL_FAILED", "AA_COMM_HELD", "AA_COMM_FLUSHED", "AA_LANGUAGES_CHANGED" }) do
	ns.RegisterCallback(UI, message, UI.UpdateStatus)
end
-- Lockdown starts and ends without an own message; check now and then.
C_Timer.NewTicker(5, UI.UpdateStatus)
