-- luacheck: read globals tinsert UIParent UISpecialFrames InCombatLockdown
local _, ns = ...

-- First-run setup: a short wizard on the first login of the account. It
-- asks for the languages, the role (newcomer or mentor), the mentor
-- notifications and a few extras. Every choice is stored at once, in the
-- same settings the Settings page uses, so closing or skipping keeps what
-- was set so far. /aa setup and the Settings page start it again.
local Setup = {}
ns.Setup = Setup

local L = ns.L
local C = ns.C
local W = ns.Widgets
local UI = ns.UI
local Channel = ns.Channel
local Notify = ns.Notify

-- Raise to show the wizard once more to everyone who finished an older
-- version (e.g. after adding a step).
local SETUP_VERSION = 1

local FRAME_NAME = "AskAzerothSetupFrame"
local WIDTH, HEIGHT = 620, 500
local PAD = 22
local BODY_WIDTH = WIDTH - 2 * PAD
local FOOTER_HEIGHT = 56
-- Seconds after login before the wizard opens, so it doesn't show up in
-- the middle of the loading screen and the chat spam after it.
local SHOW_DELAY = 4
local LOGO = "Interface\\AddOns\\AskAzeroth\\Media\\Logo"
local ROLE_ICONS = {
	newcomer = "Interface\\Icons\\INV_Misc_QuestionMark",
	mentor = "Interface\\Icons\\INV_Misc_Book_09",
}

local frame
local builders = {}
local pages = {}
local current = 1
-- "newcomer" | "mentor"; nil until chosen on a first run.
local role
-- true while Finish hides the window (no "skipped" message then).
local finishing = false

local function Settings()
	return ns.db.settings
end

function Setup.IsNeeded()
	return ns.db ~= nil and (Settings().setupVersion or 0) < SETUP_VERSION
end

local function StepOrder()
	local order = { "welcome", "languages", "role" }
	if role == "mentor" then
		order[#order + 1] = "notify"
	end
	order[#order + 1] = "extras"
	return order
end

-- Heading and text at the top of a step; returns the text for anchoring.
local function Intro(page, title, text)
	local head = W.Header(page, title)
	head:SetPoint("TOPLEFT", 0, 0)
	local body = W.Paragraph(page, BODY_WIDTH, text, "GameFontHighlight", W.SOFT)
	body:SetPoint("TOPLEFT", head, "BOTTOMLEFT", 0, -10)
	return body
end

--------------------------------------------------------------------------------
-- Steps
--------------------------------------------------------------------------------
-- builders[key](page) adds the controls to the page frame and sets
-- page:Refresh(); page:CanContinue() is optional.

function builders.welcome(page)
	local logo = page:CreateTexture(nil, "ARTWORK")
	logo:SetTexture(LOGO)
	logo:SetSize(80, 80)
	logo:SetPoint("TOP", 0, -10)
	local head = W.Header(page, L.SETUP_WELCOME_HEAD)
	head:SetPoint("TOP", logo, "BOTTOM", 0, -18)
	local text = W.Paragraph(page, BODY_WIDTH - 60, L.SETUP_WELCOME_TEXT, "GameFontHighlight", W.SOFT)
	text:SetJustifyH("CENTER")
	text:SetPoint("TOP", head, "BOTTOM", 0, -14)
	local hint = W.Paragraph(page, BODY_WIDTH - 60, L.SETUP_WELCOME_HINT, "GameFontHighlightSmall", W.MUTED)
	hint:SetJustifyH("CENTER")
	-- Community note: answers come from other players, and there may be
	-- few of them at first.
	local note = W.Panel(page, W.COLORS.nav, W.COLORS.line)
	note:SetWidth(BODY_WIDTH - 40)
	note:SetPoint("TOP", text, "BOTTOM", 0, -16)
	local noteText = W.Paragraph(note, BODY_WIDTH - 68, L.SETUP_COMMUNITY, "GameFontHighlightSmall", W.SOFT)
	noteText:SetPoint("TOPLEFT", 14, -10)
	hint:SetPoint("TOP", note, "BOTTOM", 0, -14)
	function page:Refresh()
		note:SetHeight(noteText:GetStringHeight() + 20)
	end
end

function builders.languages(page)
	local intro = Intro(page, L.SETUP_LANG_HEAD, L.SETUP_LANG_TEXT)
	local controls = {}
	local message = W.Text(page, "GameFontHighlightSmall", W.RED)
	local askDropdown

	local columnWidth = 200
	local rows = math.ceil(#C.LANGUAGES / 2)
	for i, lang in ipairs(C.LANGUAGES) do
		local box = W.Checkbox(page, C.LANGUAGE_NAMES[lang], function()
			return Channel.IsSelected(lang)
		end, function(checked)
			if not Channel.SetSelected(lang, checked) then
				message:SetText(L.SETTING_LANGUAGE_LAST)
				return false
			end
			message:SetText("")
			askDropdown:Refresh()
		end)
		local column, line = math.floor((i - 1) / rows), (i - 1) % rows
		box:SetPoint("TOPLEFT", intro, "BOTTOMLEFT", -4 + column * columnWidth, -16 - line * 30)
		controls[#controls + 1] = box
	end

	local askLabel = W.Text(page, "GameFontNormal")
	askLabel:SetPoint("TOPLEFT", intro, "BOTTOMLEFT", 0, -16 - rows * 30 - 18)
	askLabel:SetText(L.SETTING_ASK_LANGUAGE)
	askDropdown = W.Dropdown(page, 180, function()
		local list = {}
		for _, lang in ipairs(Channel.GetSelectedLanguages()) do
			list[#list + 1] = { value = lang, label = C.LANGUAGE_NAMES[lang] }
		end
		return list
	end, Channel.GetAskLanguage, function(lang)
		Settings().askLanguage = lang
	end)
	askDropdown:SetPoint("LEFT", askLabel, "RIGHT", 12, 0)
	controls[#controls + 1] = askDropdown

	message:SetPoint("TOPLEFT", askLabel, "BOTTOMLEFT", 0, -20)

	function page:Refresh()
		message:SetText("")
		for _, control in ipairs(controls) do
			control:Refresh()
		end
	end
end

function builders.role(page)
	local intro = Intro(page, L.SETUP_ROLE_HEAD, L.SETUP_ROLE_TEXT)
	local gap = 14
	local cardWidth = math.floor((BODY_WIDTH - gap) / 2)
	local cards = {}

	local function Card(key, title, text, column)
		local card = CreateFrame("Button", nil, page, "BackdropTemplate")
		card:SetBackdrop({ bgFile = W.WHITE8, edgeFile = W.WHITE8, edgeSize = 2 })
		card:SetSize(cardWidth, 190)
		card:SetPoint("TOPLEFT", intro, "BOTTOMLEFT", column * (cardWidth + gap), -20)
		card.key = key

		local icon = card:CreateTexture(nil, "ARTWORK")
		icon:SetTexture(ROLE_ICONS[key])
		icon:SetSize(40, 40)
		icon:SetPoint("TOPLEFT", 16, -16)
		local head = W.Text(card, "GameFontNormalLarge", W.GOLD)
		head:SetPoint("LEFT", icon, "RIGHT", 12, 0)
		head:SetPoint("RIGHT", -36, 0)
		head:SetText(title)
		local body = W.Paragraph(card, cardWidth - 32, text, "GameFontHighlight", W.SOFT)
		body:SetPoint("TOPLEFT", icon, "BOTTOMLEFT", 0, -14)

		card.check = card:CreateTexture(nil, "OVERLAY")
		card.check:SetTexture("Interface\\RaidFrame\\ReadyCheck-Ready")
		card.check:SetSize(20, 20)
		card.check:SetPoint("TOPRIGHT", -10, -10)

		card:SetHighlightTexture(W.WHITE8)
		card:GetHighlightTexture():SetVertexColor(1, 0.85, 0.5, 0.06)
		card:SetScript("OnClick", function(self)
			Setup.SetRole(self.key)
		end)
		cards[#cards + 1] = card
	end

	Card("newcomer", L.SETUP_ROLE_NEWCOMER, L.SETUP_ROLE_NEWCOMER_TEXT, 0)
	Card("mentor", L.SETUP_ROLE_MENTOR, L.SETUP_ROLE_MENTOR_TEXT, 1)

	function page:Refresh()
		for _, card in ipairs(cards) do
			local active = card.key == role
			W.SetColors(card, active and W.COLORS.selected or W.COLORS.card, active and W.COLORS.accent or W.COLORS.line)
			card.check:SetShown(active)
		end
	end

	function page:CanContinue()
		return role ~= nil
	end
end

function builders.notify(page)
	local intro = Intro(page, L.SETUP_NOTIFY_HEAD, L.SETUP_NOTIFY_TEXT)
	local controls = {}
	local chips = {}
	-- Mode for categories switched on: "sound" or "badge".
	local sound = false

	local gap = 6
	local chipWidth = math.floor((BODY_WIDTH - 2 * gap) / 3)
	for i, category in ipairs(C.CATEGORIES) do
		local chip = W.Chip(page, function(self)
			local on = Notify.GetMode(self.key) ~= "off"
			Notify.SetMode(self.key, on and "off" or (sound and "sound" or "badge"))
			page:Refresh()
		end, W.CategoryColor(category.key))
		chip.key = category.key
		chip:SetLabel(W.CategoryLabel(category.key))
		chip:SetSize(chipWidth, 30)
		local column, line = (i - 1) % 3, math.floor((i - 1) / 3)
		chip:SetPoint("TOPLEFT", intro, "BOTTOMLEFT", column * (chipWidth + gap), -16 - line * (30 + gap))
		chips[#chips + 1] = chip
	end
	local chipLines = math.ceil(#C.CATEGORIES / 3)
	local chipsBottom = -16 - chipLines * (30 + gap)

	local soundBox = W.Checkbox(page, L.SETUP_NOTIFY_SOUND, function()
		return sound
	end, function(checked)
		sound = checked
		for _, category in ipairs(C.CATEGORIES) do
			if Notify.GetMode(category.key) ~= "off" then
				Notify.SetMode(category.key, checked and "sound" or "badge")
			end
		end
	end)
	soundBox:SetPoint("TOPLEFT", intro, "BOTTOMLEFT", -4, chipsBottom - 10)
	controls[#controls + 1] = soundBox

	-- Classes the mentor can help with (empty = all).
	local classLabel = W.Text(page, "GameFontHighlight")
	classLabel:SetPoint("TOPLEFT", soundBox, "BOTTOMLEFT", 4, -14)
	classLabel:SetText(L.SETUP_NOTIFY_CLASSES)
	local classes = W.ClassMenu(page, 180, Settings().notify.classes)
	classes:SetPoint("LEFT", classLabel, "LEFT", 140, 0)
	controls[#controls + 1] = classes

	local levelLabel = W.Text(page, "GameFontHighlight")
	levelLabel:SetPoint("TOPLEFT", classLabel, "BOTTOMLEFT", 0, -18)
	levelLabel:SetText(L.SETTING_MAX_LEVEL)
	local levelOptions = { { value = false, label = L.SETTING_MAX_LEVEL_ANY } }
	for _, level in ipairs(C.ASKER_LEVELS) do
		levelOptions[#levelOptions + 1] = { value = level, label = L.LEVEL_SHORT:format(level) }
	end
	local level = W.Dropdown(page, 130, levelOptions, function()
		return Settings().notify.maxLevel or false
	end, function(value)
		Settings().notify.maxLevel = value or nil
	end)
	level:SetPoint("LEFT", levelLabel, "LEFT", 140, 0)
	W.Tooltip(level, L.SETTING_MAX_LEVEL, L.SETTING_MAX_LEVEL_TIP)
	controls[#controls + 1] = level

	local pauseInstance = W.Checkbox(page, L.SETTING_PAUSE_INSTANCE, function()
		return Settings().notify.pauseInstance
	end, function(checked)
		Settings().notify.pauseInstance = checked
	end)
	pauseInstance:SetPoint("TOPLEFT", levelLabel, "BOTTOMLEFT", -4, -16)
	W.Tooltip(pauseInstance, L.SETTING_PAUSE_INSTANCE, L.SETTING_PAUSE_INSTANCE_TIP)
	controls[#controls + 1] = pauseInstance

	function page:Refresh()
		sound = false
		for _, category in ipairs(C.CATEGORIES) do
			if Notify.GetMode(category.key) == "sound" then
				sound = true
			end
		end
		for _, chip in ipairs(chips) do
			chip:SetActive(Notify.GetMode(chip.key) ~= "off")
		end
		for _, control in ipairs(controls) do
			control:Refresh()
		end
	end
end

local function RetentionLabel(days)
	if days == 0 then
		return L.RETENTION_FOREVER
	end
	return L.RETENTION_DAYS:format(days)
end

function builders.extras(page)
	local intro = Intro(page, L.SETUP_EXTRAS_HEAD, L.SETUP_EXTRAS_TEXT)
	local controls = {}

	local minimap = W.Checkbox(page, L.SETTING_MINIMAP, function()
		return not Settings().minimapHidden
	end, function(checked)
		Settings().minimapHidden = not checked
		ns.MinimapButton.Update()
	end)
	minimap:SetPoint("TOPLEFT", intro, "BOTTOMLEFT", -4, -16)
	controls[#controls + 1] = minimap

	local retentionLabel = W.Text(page, "GameFontHighlight")
	retentionLabel:SetPoint("TOPLEFT", minimap, "BOTTOMLEFT", 4, -16)
	retentionLabel:SetText(L.SETTING_RETENTION)
	local retentionOptions = {}
	for _, days in ipairs(C.RETENTION_DAYS) do
		retentionOptions[#retentionOptions + 1] = { value = days, label = RetentionLabel(days) }
	end
	local retention = W.Dropdown(page, 160, retentionOptions, function()
		return Settings().retentionDays
	end, function(days)
		Settings().retentionDays = days
	end)
	retention:SetPoint("LEFT", retentionLabel, "LEFT", 220, 0)
	W.Tooltip(retention, L.SETTING_RETENTION, L.SETTING_RETENTION_TIP)
	controls[#controls + 1] = retention

	-- What happens next, depending on the role.
	local tipBox = W.Panel(page, W.COLORS.nav, W.COLORS.line)
	tipBox:SetPoint("TOPLEFT", retentionLabel, "BOTTOMLEFT", 0, -30)
	tipBox:SetWidth(BODY_WIDTH)
	local tip = W.Paragraph(tipBox, BODY_WIDTH - 28, "", "GameFontHighlight", W.SOFT)
	tip:SetPoint("TOPLEFT", 14, -12)
	local commands = W.Paragraph(tipBox, BODY_WIDTH - 28, L.SETUP_COMMANDS, "GameFontHighlightSmall", W.MUTED)
	commands:SetPoint("TOPLEFT", tip, "BOTTOMLEFT", 0, -10)

	function page:Refresh()
		tip:SetText(role == "mentor" and L.SETUP_TIP_MENTOR or L.SETUP_TIP_NEWCOMER)
		tipBox:SetHeight(tip:GetStringHeight() + commands:GetStringHeight() + 34)
		for _, control in ipairs(controls) do
			control:Refresh()
		end
	end
end

--------------------------------------------------------------------------------
-- Window
--------------------------------------------------------------------------------

local function GetPage(key)
	local page = pages[key]
	if not page then
		page = CreateFrame("Frame", nil, frame.body)
		page:SetAllPoints()
		builders[key](page)
		pages[key] = page
	end
	return page
end

local function UpdateFooter()
	local order = StepOrder()
	local page = pages[order[current]]
	frame.step:SetText(L.SETUP_STEP:format(current, #order))
	frame.back:SetEnabled(current > 1)
	if current == 1 then
		frame.next:SetText(L.SETUP_START)
	elseif current == #order then
		frame.next:SetText(L.SETUP_FINISH)
	else
		frame.next:SetText(L.SETUP_NEXT)
	end
	frame.next:SetWidth(frame.next:GetFontString():GetStringWidth() + 40)
	frame.next:SetEnabled(not (page and page.CanContinue) or page:CanContinue())
end

local function Go(index)
	local order = StepOrder()
	current = math.max(1, math.min(index, #order))
	for key, page in pairs(pages) do
		page:SetShown(key == order[current])
	end
	local page = GetPage(order[current])
	page:Show()
	page:Refresh()
	UpdateFooter()
end

function Setup.SetRole(key)
	role = key
	Settings().mentor = key == "mentor"
	UI.UpdateStatus()
	pages.role:Refresh()
	UpdateFooter()
end

local function Finish()
	finishing = true
	frame:Hide()
	finishing = false
	ns:Print(L.SETUP_FINISHED)
	UI.Show(role == "mentor" and UI.PAGE_QUESTIONS or UI.PAGE_FAQ)
end

local function Next()
	local order = StepOrder()
	if current >= #order then
		Finish()
	else
		Go(current + 1)
	end
end

local function Create()
	frame = W.Window(FRAME_NAME, UIParent, L.SETUP_TITLE, function()
		frame:Hide()
	end)
	frame:SetSize(WIDTH, HEIGHT)
	frame:SetPoint("CENTER", 0, 40)
	frame:SetFrameStrata("DIALOG")
	frame:SetToplevel(true)
	frame:SetClampedToScreen(true)
	frame:SetMovable(true)
	frame:EnableMouse(true)
	frame:RegisterForDrag("LeftButton")
	frame:SetScript("OnDragStart", frame.StartMoving)
	frame:SetScript("OnDragStop", frame.StopMovingOrSizing)
	-- Escape closes it like the close button.
	tinsert(UISpecialFrames, FRAME_NAME)

	frame.body = CreateFrame("Frame", nil, frame)
	frame.body:SetPoint("TOPLEFT", PAD, -66)
	frame.body:SetPoint("BOTTOMRIGHT", -PAD, FOOTER_HEIGHT + 12)

	local footer = CreateFrame("Frame", nil, frame)
	footer:SetPoint("BOTTOMLEFT", 4, 4)
	footer:SetPoint("BOTTOMRIGHT", -4, 4)
	footer:SetHeight(FOOTER_HEIGHT)
	W.EdgeLine(footer, "TOP")

	frame.next = W.Button(footer, L.SETUP_NEXT, 120, Next, "primary")
	frame.next:SetHeight(32)
	frame.next:SetPoint("RIGHT", -PAD + 2, 0)
	frame.back = W.Button(footer, L.SETUP_BACK, nil, function()
		Go(current - 1)
	end)
	frame.back:SetHeight(32)
	frame.back:SetPoint("RIGHT", frame.next, "LEFT", -8, 0)

	local skip = W.Button(footer, L.SETUP_SKIP, nil, function()
		frame:Hide()
	end)
	skip:SetHeight(32)
	skip:SetPoint("LEFT", PAD - 2, 0)

	frame.step = W.Text(footer, "GameFontHighlightSmall", W.MUTED)
	frame.step:SetPoint("LEFT", skip, "RIGHT", 14, 0)

	-- Closing in any way counts as done: the wizard doesn't come back on
	-- every login, /aa setup starts it again.
	frame:SetScript("OnHide", function()
		-- Hiding the whole interface (Alt+Z) hides this window too.
		if not UIParent:IsShown() then
			return
		end
		Settings().setupVersion = SETUP_VERSION
		if not finishing then
			ns:Print(L.SETUP_SKIPPED)
		end
		UI.Refresh()
	end)
end

function Setup.Show()
	if not ns.db then
		return
	end
	if not frame then
		Create()
	end
	local settings = Settings()
	if settings.mentor then
		role = "mentor"
	elseif (settings.setupVersion or 0) > 0 then
		role = "newcomer"
	else
		-- First run: the player picks the role themselves.
		role = nil
	end
	frame:Show()
	frame:Raise()
	Go(1)
end

-- Opens the wizard once after login while it is needed; waits for the end
-- of combat.
local waitingForCombat = false
local function ShowWhenReady()
	if not Setup.IsNeeded() then
		return
	end
	if InCombatLockdown() then
		if not waitingForCombat then
			waitingForCombat = true
			local function OnRegen(event)
				ns:UnregisterEvent(event, OnRegen)
				waitingForCombat = false
				ShowWhenReady()
			end
			ns:RegisterEvent("PLAYER_REGEN_ENABLED", OnRegen)
		end
		return
	end
	Setup.Show()
end

ns:RegisterEvent("PLAYER_ENTERING_WORLD", function(_, isLogin, isReload)
	if (isLogin or isReload) and Setup.IsNeeded() then
		C_Timer.After(SHOW_DELAY, ShowWhenReady)
	end
end)
