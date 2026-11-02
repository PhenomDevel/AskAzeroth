local _, ns = ...

-- luacheck: read globals CreateScrollBoxListLinearView ScrollUtil CreateDataProvider
-- "Ask a question" dialog over the main window: category, summary, optional
-- details and language. The asker's level, class and zone go along; the
-- dialog says so. While the summary is typed, matching FAQ entries show up
-- below it (Core/FaqSearch.lua); a click shows the answer in the dialog,
-- where "That helped" closes it without asking.
local AskDialog = {}
ns.AskDialog = AskDialog

local L = ns.L
local C = ns.C
local W = ns.Widgets
local UI = ns.UI
local Faq = ns.Faq
local FaqRefs = ns.FaqRefs
local FaqSearch = ns.FaqSearch

local WIDTH, HEIGHT = 520, 520
local PAD = 18
local GRID_GAP = 6
-- Top of the fields below the summary, without and with suggestions.
local LOWER_TOP = -214
local SUGGEST_ROW = 22
local SUGGEST_HEIGHT = 30 + C.FAQ_SUGGEST_MAX * SUGGEST_ROW + 8

local overlay, dialog
local state = {}

local function Close()
	if overlay then
		overlay:Hide()
	end
	if state.timer then
		state.timer:Cancel()
		state.timer = nil
	end
end

-- Moves the fields below the summary down while suggestions are shown.
local function SetSuggestionsShown(shown)
	dialog.suggest:SetShown(shown)
	local offset = shown and SUGGEST_HEIGHT or 0
	dialog.lower:SetPoint("TOPLEFT", 0, LOWER_TOP - offset)
	dialog:SetHeight(HEIGHT + offset)
end

local function HideAnswer()
	dialog.answer:Hide()
	dialog.lower:Show()
	state.shown = nil
end

local function ShowAnswer(entry)
	state.shown = entry
	dialog.lower:Hide()
	dialog.answer:Show()
	dialog.answer.textBox:SetDataProvider(CreateDataProvider({ entry }))
end

local function UpdateSuggestions()
	state.timer = nil
	if state.shown then
		-- The player is reading an answer; keep it.
		return
	end
	local text = strtrim(dialog.titleBox:GetText())
	local list = {}
	if #text >= C.FAQ_SUGGEST_MIN_LENGTH then
		local langs = { FaqRefs.ReaderLanguage(), state.lang, "en" }
		list = FaqSearch.Suggest(text, langs, C.FAQ_SUGGEST_MAX)
	end
	local lang = FaqRefs.ReaderLanguage()
	for i, row in ipairs(dialog.suggestRows) do
		local entry = list[i]
		row.entry = entry
		if entry then
			row.title:SetText((Faq.GetText(entry, lang)))
			row.topic:SetText(FaqRefs.TopicText(entry.topic))
		end
		row:SetShown(entry ~= nil)
	end
	SetSuggestionsShown(#list > 0)
end

-- Searches again C.FAQ_SUGGEST_DELAY seconds after the last key.
local function ScheduleSuggestions()
	if state.timer then
		state.timer:Cancel()
	end
	state.timer = C_Timer.NewTimer(C.FAQ_SUGGEST_DELAY, UpdateSuggestions)
end

-- "That helped": counted for /aa faqstats, then the dialog closes.
local function Helped()
	local entry = state.shown
	if entry then
		local counts = ns.db.faqHelped
		counts[entry.id] = (counts[entry.id] or 0) + 1
	end
	Close()
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

local function Label(parent, text, x, y)
	local label = W.Text(parent, "GameFontNormal", W.SOFT)
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
	Label(dialog, L.ASK_CATEGORY, PAD, -60)
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
	Label(dialog, L.ASK_SUMMARY, PAD, -162)
	dialog.titleCounter = W.Text(dialog, "GameFontHighlightSmall", W.MUTED)
	dialog.titleCounter:SetPoint("TOPRIGHT", -PAD, -163)
	dialog.titleBox = W.EditBox(dialog, WIDTH - 2 * PAD, function()
		Validate()
		ScheduleSuggestions()
	end)
	dialog.titleBox:SetPoint("TOPLEFT", PAD, -180)
	dialog.titleBox:SetMaxBytes(C.TITLE_MAX + 1)
	dialog.titleBox:SetScript("OnEnterPressed", function(self)
		self:ClearFocus()
		dialog.bodyBox.editBox:SetFocus()
	end)

	-- FAQ suggestions: up to C.FAQ_SUGGEST_MAX questions, shown when there
	-- are any.
	local suggest = W.Panel(dialog, W.COLORS.nav, W.COLORS.line)
	suggest:SetPoint("TOPLEFT", PAD, LOWER_TOP)
	suggest:SetPoint("RIGHT", -PAD, 0)
	suggest:SetHeight(SUGGEST_HEIGHT - 8)
	suggest:Hide()
	dialog.suggest = suggest
	local suggestTitle = W.Text(suggest, "GameFontNormalSmall", W.GOLD)
	suggestTitle:SetPoint("TOPLEFT", 10, -9)
	suggestTitle:SetText(L.ASK_SUGGEST_TITLE)
	dialog.suggestRows = {}
	for i = 1, C.FAQ_SUGGEST_MAX do
		local row = CreateFrame("Button", nil, suggest)
		row:SetHeight(SUGGEST_ROW)
		row:SetPoint("TOPLEFT", 6, -26 - (i - 1) * SUGGEST_ROW)
		row:SetPoint("RIGHT", -6, 0)
		row:SetHighlightTexture(W.WHITE8)
		row:GetHighlightTexture():SetVertexColor(1, 0.85, 0.5, 0.06)
		row.topic = W.Text(row, "GameFontHighlightSmall")
		row.topic:SetPoint("RIGHT", -4, 0)
		row.title = W.Text(row, "GameFontHighlight", W.TEXT)
		row.title:SetPoint("LEFT", 4, 0)
		row.title:SetPoint("RIGHT", row.topic, "LEFT", -10, 0)
		row.title:SetJustifyH("LEFT")
		row.title:SetWordWrap(false)
		row:SetScript("OnClick", function(self)
			ShowAnswer(self.entry)
		end)
		dialog.suggestRows[i] = row
	end

	-- Everything below the summary moves down while suggestions show.
	local lower = CreateFrame("Frame", nil, dialog)
	lower:SetPoint("TOPLEFT", 0, LOWER_TOP)
	lower:SetPoint("RIGHT")
	lower:SetHeight(230)
	dialog.lower = lower

	-- Details
	Label(lower, L.ASK_DETAILS, PAD, -8)
	dialog.bodyBox = W.TextArea(lower, WIDTH - 2 * PAD, 96, C.BODY_MAX)
	dialog.bodyBox:SetPoint("TOPLEFT", PAD, -26)

	-- Language and what goes along with the question.
	local langLabel = Label(lower, L.ASK_LANGUAGE, PAD, -152)
	dialog.langDropdown = W.Dropdown(lower, 180, function()
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

	local contextBox = W.Panel(lower, W.COLORS.nav, W.COLORS.line)
	contextBox:SetPoint("TOPLEFT", PAD, -182)
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

	-- Answer of a suggestion, in place of the fields below the summary.
	local answer = W.Panel(dialog, W.COLORS.nav, W.COLORS.line)
	answer:SetPoint("TOPLEFT", suggest, "BOTTOMLEFT", 0, -8)
	answer:SetPoint("BOTTOMRIGHT", footer, "TOPRIGHT", -PAD + 2, 10)
	answer:EnableMouse(true)
	answer:Hide()
	dialog.answer = answer

	local helped = W.Button(answer, L.ASK_SUGGEST_HELPED, nil, Helped, "primary")
	helped:SetHeight(28)
	helped:SetPoint("BOTTOMRIGHT", -10, 10)
	local back = W.Button(answer, L.ASK_SUGGEST_BACK, nil, function()
		HideAnswer()
		UpdateSuggestions()
		dialog.titleBox:SetFocus()
	end)
	back:SetHeight(28)
	back:SetPoint("RIGHT", helped, "LEFT", -8, 0)

	-- The answer can be long: one scrolling element with topic, question
	-- and answer.
	local textBox = CreateFrame("Frame", nil, answer, "WowScrollBoxList")
	textBox:SetPoint("TOPLEFT", 12, -10)
	textBox:SetPoint("BOTTOMRIGHT", helped, "TOPRIGHT", -14, 10)
	local textBar = CreateFrame("EventFrame", nil, answer, "MinimalScrollBar")
	textBar:SetPoint("TOPLEFT", textBox, "TOPRIGHT", 4, 0)
	textBar:SetPoint("BOTTOMLEFT", textBox, "BOTTOMRIGHT", 4, 0)
	answer.textBox = textBox

	local measure = answer:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
	measure:Hide()
	local function TextHeight(text, font, width, spacing)
		measure:SetFontObject(font)
		measure:SetSpacing(spacing or 0)
		measure:SetWidth(width)
		measure:SetText(text)
		return measure:GetStringHeight()
	end

	local view = CreateScrollBoxListLinearView()
	view:SetElementExtentCalculator(function(_, entry)
		local width = math.max(100, textBox:GetWidth() - 4)
		local q, a = Faq.GetText(entry, FaqRefs.ReaderLanguage())
		return 12 + 6 + TextHeight(q, W.TITLE_FONT, width) + 10 + TextHeight(a, "GameFontHighlight", width, 3) + 8
	end)
	view:SetElementInitializer("Frame", function(frame, entry)
		if not frame.title then
			frame.topic = W.Text(frame, "GameFontNormalSmall")
			frame.topic:SetPoint("TOPLEFT")
			frame.title = W.Text(frame, W.TITLE_FONT, W.GOLD)
			frame.title:SetPoint("TOPLEFT", frame.topic, "BOTTOMLEFT", 0, -6)
			frame.title:SetPoint("RIGHT", -4, 0)
			frame.title:SetWordWrap(true)
			frame.text = W.Text(frame, "GameFontHighlight", W.TEXT)
			frame.text:SetPoint("TOPLEFT", frame.title, "BOTTOMLEFT", 0, -10)
			frame.text:SetPoint("RIGHT", -4, 0)
			frame.text:SetWordWrap(true)
			frame.text:SetSpacing(3)
		end
		local q, a = Faq.GetText(entry, FaqRefs.ReaderLanguage())
		frame.topic:SetText(FaqRefs.TopicText(entry.topic))
		frame.title:SetText(q)
		frame.text:SetText(a)
	end)
	ScrollUtil.InitScrollBoxListWithScrollBar(textBox, textBar, view)
end

-- onAsked(question) runs after a successful ask.
-- cat (optional) preselects a question category.
function AskDialog.Show(onAsked, cat)
	UI.Show(UI.PAGE_QUESTIONS)
	if not overlay then
		Create()
	end
	AskDialog.onAsked = onAsked
	state.cat = C.IsCategory(cat) and cat or nil
	state.lang = ns.Channel.GetAskLanguage()
	dialog.titleBox:SetText("")
	dialog.bodyBox:SetText("")
	dialog.message:SetText("")
	dialog.context:SetText(ContextNote())
	dialog.langDropdown:Refresh()
	HideAnswer()
	UpdateSuggestions()
	UpdateChips()
	Validate()
	overlay:Show()
	dialog.titleBox:SetFocus()
end

AskDialog.Close = Close
