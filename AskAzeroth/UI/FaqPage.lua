-- luacheck: read globals CreateScrollBoxListLinearView ScrollUtil CreateDataProvider
local _, ns = ...

-- Built-in FAQ (Core/Faq.lua, entries in Core/Data/Faq/): on the left
-- search, language switch, topic dropdown and the list of entries; the
-- selected answer on the right with "Ask a question" (preselecting the
-- question category of the entry's topic) for when it did not help. Shown
-- in German for German clients, otherwise in English. UI.ShowFaq(id) opens
-- an entry, e.g. from a FAQ link under an answer.
local L = ns.L
local C = ns.C
local UI = ns.UI
local W = ns.Widgets
local Faq = ns.Faq
local FaqRefs = ns.FaqRefs

local LIST_WIDTH = 360
local PAD = 12
local SIDE = 22
local ROW_HEIGHT = 50

local function Build(content)
	local page = { search = "", lang = FaqRefs.ReaderLanguage() }

	-- Left column.
	local listPane = CreateFrame("Frame", nil, content)
	listPane:SetPoint("TOPLEFT")
	listPane:SetPoint("BOTTOMLEFT")
	listPane:SetWidth(LIST_WIDTH)
	W.SideLine(listPane, "RIGHT")

	local filters = CreateFrame("Frame", nil, listPane)
	filters:SetPoint("TOPLEFT")
	filters:SetPoint("TOPRIGHT", -1, 0)
	filters:SetHeight(PAD + 28 + 8 + 28 + PAD)
	W.EdgeLine(filters, "BOTTOM")

	local switch = W.Button(filters, "", 90)
	switch:SetHeight(28)
	switch:SetPoint("TOPRIGHT", -PAD, -PAD)
	W.Tooltip(switch, L.FAQ_LANGUAGE, L.FAQ_LANGUAGE_TIP)
	switch:SetScript("OnClick", function()
		local languages = C.FAQ_LANGUAGES
		for i, lang in ipairs(languages) do
			if lang == page.lang then
				page.lang = languages[i % #languages + 1]
				break
			end
		end
		page:Refresh()
	end)

	local search = W.SearchBox(filters, 100, L.QUEUE_SEARCH, function(text)
		page.search = strtrim(text):lower()
		page:Refresh()
	end)
	search:SetPoint("TOPLEFT", PAD, -PAD)
	search:SetPoint("RIGHT", switch, "LEFT", -8, 0)

	-- Topics with entries, each with its count; nil = all topics.
	local function TopicOptions()
		local options = { { value = false, label = L.FAQ_ALL_TOPICS:format(#Faq.GetAll()) } }
		for _, topic in ipairs(C.FAQ_TOPICS) do
			local count = Faq.Count(topic.key)
			if count > 0 then
				options[#options + 1] = { value = topic.key, label = ("%s (%d)"):format(FaqRefs.TopicText(topic.key), count) }
			end
		end
		return options
	end
	local topicDropdown = W.Dropdown(filters, LIST_WIDTH - 2 * PAD, TopicOptions, function()
		return page.topic or false
	end, function(value)
		page.topic = value or nil
		page:Refresh()
	end)
	topicDropdown:SetPoint("TOPLEFT", PAD, -PAD - 28 - 8)

	local listBox = CreateFrame("Frame", nil, listPane)
	listBox:SetPoint("TOPLEFT", filters, "BOTTOMLEFT")
	listBox:SetPoint("BOTTOMRIGHT", -1, 0)

	local scrollBox = CreateFrame("Frame", nil, listBox, "WowScrollBoxList")
	scrollBox:SetPoint("TOPLEFT")
	scrollBox:SetPoint("BOTTOMRIGHT", -12, 0)
	local scrollBar = CreateFrame("EventFrame", nil, listBox, "MinimalScrollBar")
	scrollBar:SetPoint("TOPLEFT", scrollBox, "TOPRIGHT", 2, -4)
	scrollBar:SetPoint("BOTTOMLEFT", scrollBox, "BOTTOMRIGHT", 2, 4)

	local empty = W.Text(listBox, "GameFontHighlight", W.MUTED)
	empty:SetPoint("CENTER", -6, 0)
	empty:SetJustifyH("CENTER")
	empty:SetWidth(LIST_WIDTH - 40)
	empty:SetText(L.QUEUE_NO_MATCH)

	local listView = CreateScrollBoxListLinearView()
	listView:SetElementExtent(ROW_HEIGHT)
	listView:SetElementInitializer("Button", function(row, entry)
		if not row.title then
			row:SetHeight(ROW_HEIGHT)
			W.ListRowLook(row)
			row:SetHighlightTexture(W.WHITE8)
			row:GetHighlightTexture():SetVertexColor(1, 0.85, 0.5, 0.05)
			row.title = W.Text(row, "GameFontHighlight", W.TEXT)
			row.title:SetPoint("TOPLEFT", PAD, -9)
			row.title:SetPoint("RIGHT", -PAD, 0)
			row.title:SetWordWrap(false)
			row.meta = W.Text(row, "GameFontHighlightSmall")
			row.meta:SetPoint("BOTTOMLEFT", PAD, 9)
			row:SetScript("OnClick", function(self)
				page.selected = self.entry
				page:Refresh()
			end)
		end
		row.entry = entry
		row.title:SetText((Faq.GetText(entry, page.lang)))
		row.meta:SetText(FaqRefs.TopicText(entry.topic))
		row:SetSelectedLook(entry == page.selected)
	end)
	ScrollUtil.InitScrollBoxListWithScrollBar(scrollBox, scrollBar, listView)

	-- Right column: the selected entry.
	local detail = CreateFrame("Frame", nil, content)
	detail:SetPoint("TOPLEFT", listPane, "TOPRIGHT")
	detail:SetPoint("BOTTOMRIGHT")

	local bottom = CreateFrame("Frame", nil, detail)
	bottom:SetPoint("BOTTOMLEFT")
	bottom:SetPoint("BOTTOMRIGHT")
	bottom:SetHeight(56)
	W.Fill(bottom, W.COLORS.nav):SetAllPoints()
	W.EdgeLine(bottom, "TOP")
	local askHint = W.Text(bottom, "GameFontHighlight", W.SOFT)
	askHint:SetPoint("LEFT", SIDE, 0)
	askHint:SetText(L.FAQ_NOT_HELPED)
	local ask = W.Button(bottom, L.QUEUE_ASK, nil, function()
		local topic = page.selected and C.GetFaqTopic(page.selected.topic)
		ns.AskDialog.Show(function(q)
			UI.ShowQuestion(q.id)
		end, topic and topic.cat)
	end, "primary")
	ask:SetHeight(32)
	ask:SetPoint("RIGHT", -SIDE, 0)
	askHint:SetPoint("RIGHT", ask, "LEFT", -12, 0)
	askHint:SetWordWrap(false)

	-- The answer can be long: one scrolling element with everything.
	local textBox = CreateFrame("Frame", nil, detail, "WowScrollBoxList")
	textBox:SetPoint("TOPLEFT", SIDE, -18)
	textBox:SetPoint("BOTTOMRIGHT", bottom, "TOPRIGHT", -SIDE - 12, 8)
	local textBar = CreateFrame("EventFrame", nil, detail, "MinimalScrollBar")
	textBar:SetPoint("TOPLEFT", textBox, "TOPRIGHT", 4, 0)
	textBar:SetPoint("BOTTOMLEFT", textBox, "BOTTOMRIGHT", 4, 0)

	local measure = detail:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
	measure:Hide()
	local function TextHeight(text, font, width, spacing)
		measure:SetFontObject(font)
		measure:SetSpacing(spacing or 0)
		measure:SetWidth(width)
		measure:SetText(text)
		return measure:GetStringHeight()
	end

	local function DetailHeight(entry)
		local width = math.max(100, textBox:GetWidth() - 4)
		local q, a = Faq.GetText(entry, page.lang)
		return 14 + 8 + TextHeight(q, W.TITLE_FONT, width) + 14 + TextHeight(a, "GameFontHighlight", width, 3) + 12
	end

	local detailView = CreateScrollBoxListLinearView()
	detailView:SetElementExtentCalculator(function(_, entry)
		return DetailHeight(entry)
	end)
	detailView:SetElementInitializer("Frame", function(frame, entry)
		if not frame.title then
			frame.category = W.Text(frame, "GameFontNormalSmall")
			frame.category:SetPoint("TOPLEFT")
			frame.title = W.Text(frame, W.TITLE_FONT, W.GOLD)
			frame.title:SetPoint("TOPLEFT", frame.category, "BOTTOMLEFT", 0, -8)
			frame.title:SetPoint("RIGHT", -4, 0)
			frame.title:SetWordWrap(true)
			frame.text = W.Text(frame, "GameFontHighlight", W.TEXT)
			frame.text:SetPoint("TOPLEFT", frame.title, "BOTTOMLEFT", 0, -14)
			frame.text:SetPoint("RIGHT", -4, 0)
			frame.text:SetWordWrap(true)
			frame.text:SetSpacing(3)
		end
		local q, a = Faq.GetText(entry, page.lang)
		frame.category:SetText(FaqRefs.TopicText(entry.topic))
		frame.title:SetText(q)
		frame.text:SetText(a)
	end)
	ScrollUtil.InitScrollBoxListWithScrollBar(textBox, textBar, detailView)

	local none = W.Text(detail, "GameFontHighlight", W.MUTED)
	none:SetPoint("CENTER", 0, 28)
	none:SetText(L.QUEUE_NO_MATCH)

	function page:Refresh()
		switch:SetText(C.LANGUAGE_NAMES[self.lang])
		topicDropdown:Refresh()
		local list = {}
		local selectedVisible = false
		local source = self.topic and Faq.GetTopic(self.topic) or Faq.GetAll()
		for _, entry in ipairs(source) do
			local ok = true
			if self.search ~= "" then
				local q, a = Faq.GetText(entry, self.lang)
				ok = (q .. "\n" .. a):lower():find(self.search, 1, true) ~= nil
			end
			if ok then
				list[#list + 1] = entry
				selectedVisible = selectedVisible or entry == self.selected
			end
		end
		-- Keep the selection while it matches, else show the first entry.
		if not selectedVisible then
			self.selected = list[1]
		end
		scrollBox:SetDataProvider(CreateDataProvider(list), true)
		empty:SetShown(#list == 0)
		textBox:SetDataProvider(CreateDataProvider(self.selected and { self.selected } or {}))
		none:SetShown(self.selected == nil)
	end

	-- Shows one entry: its topic, no search, the entry selected and in view.
	function page:Select(id)
		local entry = Faq.Get(id)
		if not entry then
			return
		end
		self.topic = entry.topic
		self.search = ""
		search:SetText("")
		self.selected = entry
		self:Refresh()
		if scrollBox.ScrollToElementData then
			scrollBox:ScrollToElementData(entry)
		end
	end

	return page
end

UI.RegisterPage(UI.PAGE_FAQ, L.PAGE_FAQ, Build)

-- Opens the FAQ on an entry (FAQ links under answers).
function UI.ShowFaq(id)
	UI.Show(UI.PAGE_FAQ)
	local page = UI.GetCurrentPage()
	if page and page.Select then
		page:Select(id)
	end
end
