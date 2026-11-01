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

local WIDTH, HEIGHT = 520, 520
local PAD = 18
local GRID_GAP = 6

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

local function Label(text, x, y)
	local label = W.Text(dialog, "GameFontNormal", W.SOFT)
	label:SetPoint("TOPLEFT", x, y)
	label:SetText(text)
	return label
end

local function Create()
	local main = UI.GetFrame()
	overlay = CreateFrame("Frame", nil, main)
	overlay:SetPoint("TOPLEFT", 2, -2)
	overlay:SetPoint("BOTTOMRIGHT", -2, 2)
	overlay:SetFrameStrata("DIALOG")
	overlay:EnableMouse(true)
	local dim = overlay:CreateTexture(nil, "BACKGROUND")
	dim:SetAllPoints()
	dim:SetColorTexture(0, 0, 0, 0.6)
	overlay:SetScript("OnMouseDown", Close)

	dialog = W.Panel(overlay, W.COLORS.window, W.COLORS.frame, true)
	dialog:SetSize(WIDTH, HEIGHT)
	dialog:SetPoint("CENTER", 0, 0)
	dialog:EnableMouse(true)

	W.TitleBar(dialog, L.ASK_TITLE, Close)

	-- Category: a grid of three columns.
	Label(L.ASK_CATEGORY, PAD, -60)
	dialog.chips = {}
	local chipWidth = math.floor((WIDTH - 2 * PAD - 2 * GRID_GAP) / 3)
	for i, category in ipairs(C.CATEGORIES) do
		local chip = W.Chip(dialog, function(self)
			state.cat = self.key
			UpdateChips()
			Validate()
		end, W.CategoryColor(category.key))
		chip.key = category.key
		chip:SetLabel(category.label)
		chip:SetSize(chipWidth, 30)
		local column, line = (i - 1) % 3, math.floor((i - 1) / 3)
		chip:SetPoint("TOPLEFT", PAD + column * (chipWidth + GRID_GAP), -80 - line * (30 + GRID_GAP))
		dialog.chips[#dialog.chips + 1] = chip
	end

	-- Summary
	Label(L.ASK_SUMMARY, PAD, -162)
	dialog.titleCounter = W.Text(dialog, "GameFontHighlightSmall", W.MUTED)
	dialog.titleCounter:SetPoint("TOPRIGHT", -PAD, -163)
	dialog.titleBox = W.EditBox(dialog, WIDTH - 2 * PAD, Validate)
	dialog.titleBox:SetPoint("TOPLEFT", PAD, -180)
	dialog.titleBox:SetMaxBytes(C.TITLE_MAX + 1)
	dialog.titleBox:SetScript("OnEnterPressed", function(self)
		self:ClearFocus()
		dialog.bodyBox.editBox:SetFocus()
	end)

	-- Details
	Label(L.ASK_DETAILS, PAD, -222)
	dialog.bodyBox = W.TextArea(dialog, WIDTH - 2 * PAD, 96, C.BODY_MAX)
	dialog.bodyBox:SetPoint("TOPLEFT", PAD, -240)

	-- Language and what goes along with the question.
	local langLabel = Label(L.ASK_LANGUAGE, PAD, -366)
	dialog.langDropdown = W.Dropdown(dialog, 180, function()
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
	dialog.langDropdown:SetPoint("LEFT", langLabel, "RIGHT", 12, 0)

	local contextBox = W.Panel(dialog, W.COLORS.nav, W.COLORS.line)
	contextBox:SetPoint("TOPLEFT", PAD, -396)
	contextBox:SetPoint("RIGHT", -PAD, 0)
	contextBox:SetHeight(44)
	dialog.context = W.Text(contextBox, "GameFontHighlightSmall", W.MUTED)
	dialog.context:SetPoint("LEFT", 12, 0)
	dialog.context:SetPoint("RIGHT", -12, 0)
	dialog.context:SetWordWrap(true)

	-- Footer: error message, Cancel, Submit.
	local footer = CreateFrame("Frame", nil, dialog)
	footer:SetPoint("BOTTOMLEFT", 2, 2)
	footer:SetPoint("BOTTOMRIGHT", -2, 2)
	footer:SetHeight(56)
	W.EdgeLine(footer, "TOP")

	dialog.submit = W.Button(footer, L.ASK_SUBMIT, nil, Submit, "primary")
	dialog.submit:SetHeight(32)
	dialog.submit:SetPoint("RIGHT", -PAD + 2, 0)
	local cancel = W.Button(footer, L.ASK_CANCEL, nil, Close)
	cancel:SetHeight(32)
	cancel:SetPoint("RIGHT", dialog.submit, "LEFT", -8, 0)

	dialog.message = W.Text(footer, "GameFontHighlightSmall", W.RED)
	dialog.message:SetPoint("LEFT", PAD - 2, 0)
	dialog.message:SetPoint("RIGHT", cancel, "LEFT", -10, 0)
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
