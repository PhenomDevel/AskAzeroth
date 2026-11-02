local _, ns = ...

-- Settings page in the main window, three columns: general options, how
-- long own questions are kept and the setup wizard; mentor notifications;
-- languages (one hidden channel each).
local L = ns.L
local C = ns.C
local UI = ns.UI
local W = ns.Widgets
local Channel = ns.Channel

local COLUMN_WIDTH = 290
-- Class files for the class filter, in the game's order where known.
-- luacheck: read globals CLASS_SORT_ORDER
local CLASSES = CLASS_SORT_ORDER or { "WARRIOR", "PALADIN", "HUNTER", "ROGUE", "PRIEST", "SHAMAN", "MAGE", "WARLOCK", "DRUID" }

local function IntervalLabel(seconds)
	if seconds == 0 then
		return L.NOTIFY_INTERVAL_NOW
	end
	return L.NOTIFY_INTERVAL_MINUTES:format(seconds / 60)
end

local function SoundLabel(key)
	return L["NOTIFY_SOUND_" .. key] or key
end

local function RetentionLabel(days)
	if days == 0 then
		return L.RETENTION_FOREVER
	end
	return L.RETENTION_DAYS:format(days)
end

local function Build(content)
	local page = { controls = {} }
	local settings = ns.db.settings

	local function Add(control)
		page.controls[#page.controls + 1] = control
		return control
	end

	-- General (left column)
	local general = W.Header(content, L.SETTINGS_GENERAL)
	general:SetPoint("TOPLEFT", 24, -22)

	local mentor = Add(W.Checkbox(content, L.SETTING_MENTOR, function()
		return settings.mentor
	end, function(checked)
		settings.mentor = checked
		UI.UpdateStatus()
	end))
	mentor:SetPoint("TOPLEFT", general, "BOTTOMLEFT", -4, -8)
	W.Tooltip(mentor, L.SETTING_MENTOR, L.SETTING_MENTOR_TIP)

	local minimap = Add(W.Checkbox(content, L.SETTING_MINIMAP, function()
		return not settings.minimapHidden
	end, function(checked)
		settings.minimapHidden = not checked
		ns.MinimapButton.Update()
	end))
	minimap:SetPoint("TOPLEFT", mentor, "BOTTOMLEFT", 0, -4)

	local retentionLabel = W.Text(content, "GameFontNormal")
	retentionLabel:SetPoint("TOPLEFT", minimap, "BOTTOMLEFT", 4, -16)
	retentionLabel:SetText(L.SETTING_RETENTION)
	local retentionOptions = {}
	for _, days in ipairs(C.RETENTION_DAYS) do
		retentionOptions[#retentionOptions + 1] = { value = days, label = RetentionLabel(days) }
	end
	local retention = Add(W.Dropdown(content, 180, retentionOptions, function()
		return settings.retentionDays
	end, function(days)
		settings.retentionDays = days
	end))
	retention:SetPoint("TOPLEFT", retentionLabel, "BOTTOMLEFT", 0, -6)
	W.Tooltip(retention, L.SETTING_RETENTION, L.SETTING_RETENTION_TIP)

	local setup = W.Button(content, L.SETTING_SETUP, nil, function()
		ns.Setup.Show()
	end)
	setup:SetPoint("TOPLEFT", retention, "BOTTOMLEFT", 0, -22)
	W.Tooltip(setup, L.SETTING_SETUP, L.SETTING_SETUP_TIP)

	-- Mentor notifications (middle column)
	local notify = settings.notify
	local mentorHeader = W.Header(content, L.SETTINGS_NOTIFY)
	mentorHeader:SetPoint("TOPLEFT", general, "TOPLEFT", COLUMN_WIDTH, 0)
	local mentorHint = W.Paragraph(content, COLUMN_WIDTH - 20, L.SETTINGS_NOTIFY_TEXT, "GameFontHighlightSmall", W.MUTED)
	mentorHint:SetPoint("TOPLEFT", mentorHeader, "BOTTOMLEFT", 0, -6)

	local modeOptions = {}
	for _, mode in ipairs(ns.Notify.MODES) do
		modeOptions[#modeOptions + 1] = { value = mode, label = L["NOTIFY_MODE_" .. mode:upper()] }
	end
	local previousRow = mentorHint
	for i, category in ipairs(C.CATEGORIES) do
		local label = W.Text(content, "GameFontHighlight")
		label:SetPoint("TOPLEFT", previousRow, "BOTTOMLEFT", 0, i == 1 and -12 or -10)
		label:SetText(category.label)
		local dropdown = Add(W.Dropdown(content, 110, modeOptions, function()
			return ns.Notify.GetMode(category.key)
		end, function(mode)
			ns.Notify.SetMode(category.key, mode)
		end))
		dropdown:SetPoint("LEFT", label, "LEFT", 112, 0)
		previousRow = label
	end

	local classLabel = W.Text(content, "GameFontHighlight")
	classLabel:SetPoint("TOPLEFT", previousRow, "BOTTOMLEFT", 0, -16)
	classLabel:SetText(L.SETTING_CLASSES)
	local classes = Add(W.Menu(content, 110, function(root)
		root:CreateButton(L.SETTING_CLASSES_ALL, function()
			wipe(notify.classes)
		end)
		for _, classFile in ipairs(CLASSES) do
			local name = W.ClassName(classFile)
			if name then
				root:CreateCheckbox(name, function()
					return notify.classes[classFile] == true
				end, function()
					notify.classes[classFile] = not notify.classes[classFile] or nil
				end)
			end
		end
	end))
	classes:SetPoint("LEFT", classLabel, "LEFT", 112, 0)
	if classes.SetDefaultText then
		classes:SetDefaultText(L.SETTING_CLASSES_ALL)
	end
	W.Tooltip(classes, L.SETTING_CLASSES, L.SETTING_CLASSES_TIP)

	local levelLabel = W.Text(content, "GameFontHighlight")
	levelLabel:SetPoint("TOPLEFT", classLabel, "BOTTOMLEFT", 0, -16)
	levelLabel:SetText(L.SETTING_MAX_LEVEL)
	local levelOptions = { { value = false, label = L.SETTING_MAX_LEVEL_ANY } }
	for _, level in ipairs(C.ASKER_LEVELS) do
		levelOptions[#levelOptions + 1] = { value = level, label = L.LEVEL_SHORT:format(level) }
	end
	local level = Add(W.Dropdown(content, 110, levelOptions, function()
		return notify.maxLevel or false
	end, function(value)
		notify.maxLevel = value or nil
	end))
	level:SetPoint("LEFT", levelLabel, "LEFT", 112, 0)
	W.Tooltip(level, L.SETTING_MAX_LEVEL, L.SETTING_MAX_LEVEL_TIP)

	local intervalLabel = W.Text(content, "GameFontHighlight")
	intervalLabel:SetPoint("TOPLEFT", levelLabel, "BOTTOMLEFT", 0, -16)
	intervalLabel:SetText(L.NOTIFY_INTERVAL)
	local intervalOptions = {}
	for _, seconds in ipairs(ns.Notify.INTERVALS) do
		intervalOptions[#intervalOptions + 1] = { value = seconds, label = IntervalLabel(seconds) }
	end
	local interval = Add(W.Dropdown(content, 110, intervalOptions, function()
		return notify.interval or 0
	end, function(seconds)
		notify.interval = seconds
	end))
	interval:SetPoint("LEFT", intervalLabel, "LEFT", 112, 0)
	W.Tooltip(interval, L.NOTIFY_INTERVAL, L.NOTIFY_INTERVAL_TIP)

	local soundLabel = W.Text(content, "GameFontHighlight")
	soundLabel:SetPoint("TOPLEFT", intervalLabel, "BOTTOMLEFT", 0, -16)
	soundLabel:SetText(L.NOTIFY_SOUND)
	local sound = Add(W.Dropdown(content, 110, function()
		local list = { { value = "none", label = L.NOTIFY_SOUND_NONE } }
		for _, key in ipairs(ns.Notify.GetSounds()) do
			list[#list + 1] = { value = key, label = SoundLabel(key) }
		end
		return list
	end, ns.Notify.GetSound, function(key)
		notify.sound = key
		-- Preview
		ns.Notify.PlaySound(key)
	end))
	sound:SetPoint("LEFT", soundLabel, "LEFT", 112, 0)
	W.Tooltip(sound, L.NOTIFY_SOUND, L.NOTIFY_SOUND_TIP)

	local badge = Add(W.Checkbox(content, L.NOTIFY_BADGE, function()
		return notify.badge ~= false
	end, function(checked)
		ns.Notify.SetBadge(checked)
	end))
	badge:SetPoint("TOPLEFT", soundLabel, "BOTTOMLEFT", -4, -12)
	W.Tooltip(badge, L.NOTIFY_BADGE, L.NOTIFY_BADGE_TIP)

	local pauseInstance = Add(W.Checkbox(content, L.SETTING_PAUSE_INSTANCE, function()
		return notify.pauseInstance
	end, function(checked)
		notify.pauseInstance = checked
	end))
	pauseInstance:SetPoint("TOPLEFT", badge, "BOTTOMLEFT", 0, -2)
	W.Tooltip(pauseInstance, L.SETTING_PAUSE_INSTANCE, L.SETTING_PAUSE_INSTANCE_TIP)

	local test = W.Button(content, L.NOTIFY_TEST, nil, function()
		ns.Notify.Test()
	end)
	test:SetPoint("TOPLEFT", pauseInstance, "BOTTOMLEFT", 4, -10)
	W.Tooltip(test, L.NOTIFY_TEST, ns.Toast.HasEditMode() and L.NOTIFY_TEST_TIP or L.NOTIFY_TEST_TIP_DRAG)
	local reset = W.Button(content, L.NOTIFY_RESET_POSITION, nil, function()
		ns.Toast.ResetPosition()
	end)
	reset:SetPoint("LEFT", test, "RIGHT", 6, 0)

	-- Languages (right column)
	local languages = W.Header(content, L.SETTINGS_LANGUAGES)
	languages:SetPoint("TOPLEFT", general, "TOPLEFT", 2 * COLUMN_WIDTH, 0)
	local hint = W.Paragraph(content, COLUMN_WIDTH - 20, L.SETTINGS_LANGUAGES_TEXT, "GameFontHighlightSmall", W.MUTED)
	hint:SetPoint("TOPLEFT", languages, "BOTTOMLEFT", 0, -6)

	local askDropdown
	local previous = hint
	for i, lang in ipairs(C.LANGUAGES) do
		local box = Add(W.Checkbox(content, C.LANGUAGE_NAMES[lang], function()
			return Channel.IsSelected(lang)
		end, function(checked)
			if not Channel.SetSelected(lang, checked) then
				ns:Print(L.SETTING_LANGUAGE_LAST)
				return false
			end
			askDropdown:Refresh()
		end))
		box:SetPoint("TOPLEFT", previous, "BOTTOMLEFT", i == 1 and -4 or 0, i == 1 and -6 or 2)
		local channel = W.Text(box, "GameFontHighlightSmall", W.MUTED)
		channel:SetPoint("LEFT", box.label, "RIGHT", 6, 0)
		channel:SetText(C.GetChannelName(lang))
		box.status = channel
		previous = box
	end

	local askLabel = W.Text(content, "GameFontNormal")
	askLabel:SetPoint("TOPLEFT", previous, "BOTTOMLEFT", 4, -12)
	askLabel:SetText(L.SETTING_ASK_LANGUAGE)
	askDropdown = Add(W.Dropdown(content, 180, function()
		local list = {}
		for _, lang in ipairs(Channel.GetSelectedLanguages()) do
			list[#list + 1] = { value = lang, label = C.LANGUAGE_NAMES[lang] }
		end
		return list
	end, Channel.GetAskLanguage, function(lang)
		settings.askLanguage = lang
	end))
	askDropdown:SetPoint("TOPLEFT", askLabel, "BOTTOMLEFT", 0, -6)

	function page:Refresh()
		for _, control in ipairs(self.controls) do
			control:Refresh()
		end
	end

	return page
end

UI.RegisterPage(UI.PAGE_SETTINGS, L.PAGE_SETTINGS, Build)

-- A language change from elsewhere (probe, later the ask dialog).
ns.RegisterCallback({}, "AA_LANGUAGES_CHANGED", function()
	local frame = UI.GetFrame()
	if frame and frame.selectedTab == UI.PAGE_SETTINGS then
		UI.Refresh()
	end
end)
