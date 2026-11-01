local _, ns = ...

-- "Ask a question" dialog over the main window: category, summary, optional
-- details and language. The asker's level, class and zone go along; the
-- dialog says so.
local AskDialog = {}
ns.AskDialog = AskDialog

local L = ns.L
local C = ns.C
local W = ns.Widgets
local UI = ns.UI

local WIDTH, HEIGHT = 520, 400

local overlay, dialog
local state = {}

local function Close()
	if overlay then
		overlay:Hide()
	end
end

local function ContextNote()
	local ctx = ns.Net.GetPlayerContext()
	local parts = {}
	if ctx.lvl then
		parts[#parts + 1] = L.LEVEL_SHORT:format(ctx.lvl)
	end
	local className = W.ClassName(ctx.class)
	if className then
		parts[#parts + 1] = className
	end
	if ctx.zone then
		parts[#parts + 1] = ctx.zone
	end
	return L.ASK_CONTEXT:format(#parts > 0 and table.concat(parts, ", ") or "–")
end

local function UpdateChips()
	for _, chip in ipairs(dialog.chips) do
		chip:SetActive(chip.key == state.cat)
	end
end

local function Validate()
	local title = strtrim(dialog.titleBox:GetText())
	dialog.titleCounter:SetFormattedText("%d / %d", #title, C.TITLE_MAX)
	dialog.submit:SetEnabled(state.cat ~= nil and title ~= "")
end

local function Submit()
	local title = strtrim(dialog.titleBox:GetText())
	local body = strtrim(dialog.bodyBox:GetText())
	local q, reason = ns.Net.Ask(state.lang, state.cat, title, body ~= "" and body or nil)
	if not q then
		dialog.message:SetText(UI.ReasonText(reason))
		return
	end
	Close()
	if AskDialog.onAsked then
		AskDialog.onAsked(q)
	end
end

local function Create()
	local main = UI.GetFrame()
	overlay = CreateFrame("Frame", nil, main)
	overlay:SetPoint("TOPLEFT", 2, -22)
	overlay:SetPoint("BOTTOMRIGHT", -2, 2)
	overlay:SetFrameStrata("DIALOG")
	overlay:EnableMouse(true)
	local dim = overlay:CreateTexture(nil, "BACKGROUND")
	dim:SetAllPoints()
	dim:SetColorTexture(0, 0, 0, 0.6)
	overlay:SetScript("OnMouseDown", Close)

	dialog = W.Panel(overlay, { 0.07, 0.065, 0.06, 0.98 }, { 0.79, 0.635, 0.29, 1 })
	dialog:SetSize(WIDTH, HEIGHT)
	dialog:SetPoint("CENTER", 0, 10)
	dialog:EnableMouse(true)

	local close = CreateFrame("Button", nil, dialog, "UIPanelCloseButton")
	close:SetPoint("TOPRIGHT", 2, 2)
	close:SetScript("OnClick", Close)

	local header = W.Header(dialog, L.ASK_TITLE)
	header:SetPoint("TOPLEFT", 16, -14)

	-- Category
	local catLabel = W.Text(dialog, "GameFontNormal")
	catLabel:SetPoint("TOPLEFT", header, "BOTTOMLEFT", 0, -14)
	catLabel:SetText(L.ASK_CATEGORY)
	dialog.chips = {}
	for _, category in ipairs(C.CATEGORIES) do
		local chip = W.Chip(dialog, function(self)
			state.cat = self.key
			UpdateChips()
			Validate()
		end)
		chip.key = category.key
		chip:SetLabel(category.label)
		dialog.chips[#dialog.chips + 1] = chip
	end
	W.FlowChips(dialog.chips, dialog, 16, -64, 6)

	-- Summary
	local titleLabel = W.Text(dialog, "GameFontNormal")
	titleLabel:SetPoint("TOPLEFT", 16, -100)
	titleLabel:SetText(L.ASK_SUMMARY)
	dialog.titleCounter = W.Text(dialog, "GameFontDisableSmall")
	dialog.titleCounter:SetPoint("TOPRIGHT", -18, -102)
	dialog.titleBox = W.EditBox(dialog, WIDTH - 40, Validate)
	dialog.titleBox:SetPoint("TOPLEFT", titleLabel, "BOTTOMLEFT", 6, -4)
	dialog.titleBox:SetMaxBytes(C.TITLE_MAX + 1)
	dialog.titleBox:SetScript("OnEnterPressed", function(self)
		self:ClearFocus()
		dialog.bodyBox.editBox:SetFocus()
	end)

	-- Details
	local bodyLabel = W.Text(dialog, "GameFontNormal")
	bodyLabel:SetPoint("TOPLEFT", 16, -152)
	bodyLabel:SetText(L.ASK_DETAILS)
	dialog.bodyBox = W.TextArea(dialog, WIDTH - 32, 100, C.BODY_MAX)
	dialog.bodyBox:SetPoint("TOPLEFT", bodyLabel, "BOTTOMLEFT", 0, -4)

	-- Language
	local langLabel = W.Text(dialog, "GameFontNormal")
	langLabel:SetPoint("TOPLEFT", 16, -300)
	langLabel:SetText(L.ASK_LANGUAGE)
	dialog.langDropdown = W.Dropdown(dialog, 160, function()
		local list = {}
		for _, lang in ipairs(ns.Channel.GetSelectedLanguages()) do
			list[#list + 1] = { value = lang, label = C.LANGUAGE_NAMES[lang] }
		end
		return list
	end, function()
		return state.lang
	end, function(lang)
		state.lang = lang
	end)
	dialog.langDropdown:SetPoint("LEFT", langLabel, "RIGHT", 10, 0)

	dialog.context = W.Text(dialog, "GameFontHighlightSmall", W.MUTED)
	dialog.context:SetPoint("TOPLEFT", langLabel, "BOTTOMLEFT", 0, -14)
	dialog.context:SetPoint("RIGHT", -16, 0)

	dialog.message = W.Text(dialog, "GameFontHighlightSmall", W.RED)
	dialog.message:SetPoint("BOTTOMLEFT", 16, 18)
	dialog.message:SetPoint("RIGHT", -220, 0)

	dialog.submit = W.Button(dialog, L.ASK_SUBMIT, 100, Submit)
	dialog.submit:SetPoint("BOTTOMRIGHT", -16, 12)
	local cancel = W.Button(dialog, L.ASK_CANCEL, 100, Close)
	cancel:SetPoint("RIGHT", dialog.submit, "LEFT", -6, 0)
end

-- onAsked(question) runs after a successful ask.
function AskDialog.Show(onAsked)
	UI.Show(UI.PAGE_QUESTIONS)
	if not overlay then
		Create()
	end
	AskDialog.onAsked = onAsked
	state.cat = nil
	state.lang = ns.Channel.GetAskLanguage()
	dialog.titleBox:SetText("")
	dialog.bodyBox:SetText("")
	dialog.message:SetText("")
	dialog.context:SetText(ContextNote())
	dialog.langDropdown:Refresh()
	UpdateChips()
	Validate()
	overlay:Show()
	dialog.titleBox:SetFocus()
end

AskDialog.Close = Close
