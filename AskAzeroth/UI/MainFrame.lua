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
local WIDTH, HEIGHT = 1040, 652
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

-- Questions still waiting for a first answer, in the selected languages,
-- without those of ignored players.
function UI.CountOpenQuestions()
	local langs = {}
	for _, lang in ipairs(ns.Channel.GetSelectedLanguages()) do
		langs[lang] = true
	end
	local count = 0
	for _, q in ipairs(ns.Store.List(function(q)
		return langs[q.lang] and ns.Store.GetStatus(q) == "open"
	end)) do
		if not ns.Players.IsIgnored(q.author) then
			count = count + 1
		end
	end
	return count
end

function UI.UpdateStatus()
	if not frame or not frame:IsShown() then
		return
	end
	-- Language pill: codes of the selected languages, gold when the channel
	-- is joined, grey while not.
	local codes = {}
	for _, lang in ipairs(ns.Channel.GetSelectedLanguages()) do
		local color = ns.Channel.IsReady(lang) and "ffffd100" or "ff808080"
		codes[#codes + 1] = ("|c%s%s|r"):format(color, lang:upper())
	end
	frame.languages.text:SetText(table.concat(codes, " · "))
	frame.languages:SetWidth(frame.languages.text:GetStringWidth() + 18)

	local players, mentors, any = ns.Presence.CountAll()
	frame.online:SetShown(any)
	if any then
		frame.online.text:SetText(L.ONLINE_COUNT:format(players, mentors))
		frame.online:SetWidth(frame.online.text:GetStringWidth() + 4)
	end

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

-- Players and mentors online per joined language, for tooltips (also used
-- by the minimap button).
function UI.AddOnlineLines(tooltip)
	for _, lang in ipairs(ns.Channel.GetSelectedLanguages()) do
		if ns.Channel.IsReady(lang) then
			local players, mentors = ns.Presence.Count(lang)
			tooltip:AddDoubleLine(C.LANGUAGE_NAMES[lang], L.ONLINE_COUNT:format(players, mentors), 1, 1, 1, 1, 0.82, 0)
		end
	end
end

local function OnlineTooltip(self)
	GameTooltip:SetOwner(self, "ANCHOR_BOTTOMRIGHT")
	GameTooltip:SetText(L.ONLINE_TITLE, 1, 1, 1)
	UI.AddOnlineLines(GameTooltip)
	GameTooltip:AddLine(" ")
	GameTooltip:AddLine(L.ONLINE_TIP, nil, nil, nil, true)
	GameTooltip:Show()
end

local function UpdateNav()
	for _, button in ipairs(frame.navButtons) do
		local active = button.page == frame.selectedTab
		if active then
			W.SetColors(button, W.COLORS.navActive, W.COLORS.favorite)
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

-- The game's window frame (PortraitFrameTemplate: metal border, title bar,
-- round portrait, close button). Clients without it get a dark backdrop
-- with our own title row.
local function CreateWindow()
	local ok, window = pcall(CreateFrame, "Frame", FRAME_NAME, UIParent, "PortraitFrameTemplate")
	if ok and window then
		if window.SetTitle then
			window:SetTitle(ns.title)
		end
		if window.SetPortraitToAsset then
			window:SetPortraitToAsset(LOGO)
		end
		window.blizzard = true
		-- The template's close button goes through HideUIPanel, which doesn't
		-- close the window on Forever (only Escape did). Hide it directly.
		-- Leave its frame level to the template: a fixed level set here
		-- doesn't survive the strata change in Create() and hid the button.
		if window.CloseButton then
			window.CloseButton:SetScript("OnClick", function()
				window:Hide()
			end)
		end
		return window
	end
	window = CreateFrame("Frame", FRAME_NAME, UIParent, "BackdropTemplate")
	window:SetBackdrop(W.BACKDROP_THICK)
	W.SetColors(window, W.COLORS.window, W.COLORS.frame)
	return window
end

-- Status row: subtitle on the left; lockdown, language channels and mentor
-- state on the right. In the fallback frame it also holds logo, title and
-- a close button.
local function CreateHeader()
	local header = CreateFrame("Frame", nil, frame)
	if frame.blizzard then
		header:SetPoint("TOPLEFT", 62, -24)
		header:SetPoint("TOPRIGHT", -8, -24)
		header:SetHeight(HEADER_HEIGHT - 14)
	else
		header:SetPoint("TOPLEFT", 4, -4)
		header:SetPoint("TOPRIGHT", -4, -4)
		header:SetHeight(HEADER_HEIGHT)
		W.Fill(header, W.COLORS.header):SetAllPoints()
		W.EdgeLine(header, "BOTTOM", W.COLORS.line)
	end

	local anchor, rightAnchor = header, nil
	if not frame.blizzard then
		local logo = header:CreateTexture(nil, "ARTWORK")
		logo:SetTexture(LOGO)
		logo:SetSize(26, 26)
		logo:SetPoint("LEFT", 14, 0)
		local title = W.Text(header, W.TITLE_FONT, W.GOLD)
		title:SetPoint("LEFT", logo, "RIGHT", 10, 0)
		title:SetText(ns.title)
		anchor = title
		local close = W.CloseButton(header, function()
			frame:Hide()
		end)
		close:SetPoint("RIGHT", -8, 0)
		rightAnchor = close
	end
	local subtitle = W.Text(header, "GameFontHighlight", W.MUTED)
	if anchor == header then
		subtitle:SetPoint("LEFT", header, "LEFT", 4, 0)
	else
		subtitle:SetPoint("LEFT", anchor, "RIGHT", 10, -1)
	end
	subtitle:SetText(L.WINDOW_SUBTITLE)

	-- Mentor state: green dot and label.
	local mentor = CreateFrame("Frame", nil, header)
	mentor:SetHeight(20)
	if rightAnchor then
		mentor:SetPoint("RIGHT", rightAnchor, "LEFT", -14, 0)
	else
		mentor:SetPoint("RIGHT", header, "RIGHT", -4, 0)
	end
	local mentorText = W.Text(mentor, "GameFontHighlight", W.GREEN)
	mentorText:SetPoint("RIGHT")
	mentorText:SetText(L.STATUS_MENTOR)
	local dot = W.Fill(mentor, W.GREEN, "ARTWORK")
	dot:SetSize(8, 8)
	dot:SetPoint("RIGHT", mentorText, "LEFT", -6, 0)
	mentor:SetWidth(mentorText:GetStringWidth() + 14)
	frame.mentor = mentor

	-- Language channels as a pill.
	local languages = W.Panel(header, W.COLORS.input, W.COLORS.line)
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

	-- Players and mentors online (estimate, see Core/Presence.lua).
	local online = CreateFrame("Frame", nil, header)
	online:SetHeight(20)
	online:SetPoint("RIGHT", languages, "LEFT", -14, 0)
	online.text = W.Text(online, "GameFontHighlightSmall", W.SOFT)
	online.text:SetPoint("RIGHT")
	online:EnableMouse(true)
	online:SetScript("OnEnter", OnlineTooltip)
	online:SetScript("OnLeave", function()
		GameTooltip:Hide()
	end)
	frame.online = online

	local lockdown = W.Text(header, "GameFontHighlightSmall", W.GOLD)
	lockdown:SetPoint("RIGHT", online, "LEFT", -14, 0)
	lockdown:SetText(L.STATUS_LOCKDOWN)
	frame.lockdown = lockdown
	return header
end

-- Top and side insets of the area below the header.
local function BodyInsets()
	if frame.blizzard then
		return 4, -(24 + HEADER_HEIGHT - 14 + 4), -6, 4
	end
	return 4, -(4 + HEADER_HEIGHT), -4, 4
end

local function CreateNav()
	local left, top, _, bottom = BodyInsets()
	local nav = CreateFrame("Frame", nil, frame)
	nav:SetPoint("TOPLEFT", left, top)
	nav:SetPoint("BOTTOMLEFT", left, bottom)
	nav:SetWidth(NAV_WIDTH)
	W.Fill(nav, W.COLORS.nav):SetAllPoints()
	W.SideLine(nav, "RIGHT")

	frame.navButtons = {}
	local y = -10
	for _, index in ipairs(NAV_ORDER) do
		local def = pageDefs[index]
		if def then
			local button = CreateFrame("Button", nil, nav, "BackdropTemplate")
			button:SetBackdrop({ bgFile = W.WHITE8, edgeFile = W.WHITE8, edgeSize = 1 })
			button.page = index
			button:SetHeight(NAV_BUTTON_HEIGHT)
			button:SetPoint("TOPLEFT", 6, y)
			button:SetPoint("RIGHT", -6, 0)
			button.label = W.Text(button, "GameFontHighlight", W.SOFT)
			button.label:SetPoint("LEFT", 12, 0)
			button.label:SetPoint("RIGHT", -28, 0)
			button.label:SetWordWrap(false)
			button.label:SetText(def.label)
			-- The game's list highlight.
			button:SetHighlightTexture("Interface\\QuestFrame\\UI-QuestTitleHighlight", "ADD")
			button:SetScript("OnClick", function(self)
				SelectPage(self.page)
			end)
			frame.navButtons[#frame.navButtons + 1] = button
			y = y - NAV_BUTTON_HEIGHT - 4
		end
	end

	-- Unseen questions next to "Questions".
	local badge = W.Panel(frame.navButtons[1], { 0.7, 0.1, 0.1, 1 }, { 0.9, 0.2, 0.2, 1 })
	badge:SetSize(22, 18)
	badge:SetPoint("RIGHT", -6, 0)
	badge:SetFrameLevel(frame.navButtons[1]:GetFrameLevel() + 2)
	badge.text = W.Text(badge, "GameFontHighlightSmall", { 1, 1, 1 })
	badge.text:SetPoint("CENTER")
	badge:Hide()
	frame.badge = badge
	return nav
end

function UI.UpdateBadge()
	if not frame then
		return
	end
	local count = ns.Notify.GetBadgeCount()
	frame.badge:SetShown(count > 0)
	frame.badge.text:SetText(count > 99 and "99+" or tostring(count))
	frame.badge:SetWidth(math.max(18, frame.badge.text:GetStringWidth() + 10))
end

local function Create()
	frame = CreateWindow()
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

	local _, _, right, bottom = BodyInsets()
	frame.contents = {}
	for i in pairs(pageDefs) do
		local content = CreateFrame("Frame", nil, frame)
		content:SetPoint("TOPLEFT", nav, "TOPRIGHT", 0, 0)
		content:SetPoint("BOTTOMRIGHT", right, bottom)
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

ns.RegisterCallback(UI, "AA_NOTIFY_CHANGED", function()
	UI.UpdateBadge()
end)
for _, message in ipairs({ "AA_CHANNEL_READY", "AA_CHANNEL_LEFT", "AA_CHANNEL_FAILED", "AA_COMM_HELD", "AA_COMM_FLUSHED", "AA_LANGUAGES_CHANGED", "AA_PRESENCE_CHANGED" }) do
	ns.RegisterCallback(UI, message, UI.UpdateStatus)
end
-- Lockdown starts and ends without an own message; check now and then.
C_Timer.NewTicker(5, UI.UpdateStatus)
