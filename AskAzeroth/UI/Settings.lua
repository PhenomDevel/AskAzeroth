local _, ns = ...

-- Settings page in the main window: general options, languages (one hidden
-- channel each) and how long own questions are kept.
local L = ns.L
local C = ns.C
local UI = ns.UI
local W = ns.Widgets
local Channel = ns.Channel

local COLUMN_GAP = 300

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
	general:SetPoint("TOPLEFT", 16, -16)

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

	-- Languages (right column)
	local languages = W.Header(content, L.SETTINGS_LANGUAGES)
	languages:SetPoint("TOPLEFT", general, "TOPLEFT", COLUMN_GAP, 0)
	local hint = W.Paragraph(content, 380, L.SETTINGS_LANGUAGES_TEXT, "GameFontHighlightSmall", W.MUTED)
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
		local channel = W.Text(box, "GameFontDisableSmall")
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
