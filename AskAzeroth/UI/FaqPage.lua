-- luacheck: read globals CreateScrollBoxListLinearView ScrollUtil CreateDataProvider
local _, ns = ...

-- Built-in FAQ (Core/Faq.lua, entries in Core/Data/Faq/).
--
--   * Across the top a highlighted banner points to Wowhead, with the
--     address in a field to copy (addons cannot open web pages).
--   * On the left the topics with their entry counts ("All topics" first).
--   * On the right search and FAQ language (dropdown) above the entries of
--     the topic as an accordion: every question is a bar, a click unfolds
--     its answer below it. The search covers the selected topic.
--   * The bottom bar offers "Ask a question" for when nothing helped; it
--     preselects the question category of the last opened entry's topic.
--
-- Shown in the client's language (English for entries not translated
-- yet); the dropdown picks any other FAQ language. UI.ShowFaq(id) opens an
-- entry, e.g. from a FAQ link under an answer.
--
-- The last row of the topics is the glossary (Core/Glossary.lua): its
-- terms show in the same accordion, alphabetically, with their
-- explanation. Glossary terms inside FAQ answers are links with a tooltip
-- (UI/GlossaryLinks.lua); UI.ShowGlossary(id) opens a term.
--
-- Wrapped texts get an explicit width and height from a measuring font
-- string, never from anchors alone: anchor-sized text measured before the
-- layout is done gets cut with "…" until the window moves.
local L = ns.L
local C = ns.C
local UI = ns.UI
local W = ns.Widgets
local Faq = ns.Faq
local FaqRefs = ns.FaqRefs
local FaqSearch = ns.FaqSearch
local Glossary = ns.Glossary
local GlossaryLinks = ns.GlossaryLinks

-- Topic key of the glossary row; FAQ topic keys never start with "@".
local GLOSSARY = "@glossary"

local TOPIC_WIDTH = 230
local TOPIC_ROW_HEIGHT = 30
local BANNER_HEIGHT = 46
local PAD = 12
local SIDE = 18
local ITEM_GAP = 6
local ITEM_PAD = 10
local ICON_SIZE = 14
-- Fallback for the first layout pass, before the list has a width.
local FALLBACK_WIDTH = 560

local PLUS = "Interface\\Buttons\\UI-PlusButton-Up"
local MINUS = "Interface\\Buttons\\UI-MinusButton-Up"
local INFO = "Interface\\Common\\help-i"

-- Banner colours: amber background and border to stand out from the page.
local BANNER_BG = { 0.42, 0.26, 0.02, 0.55 }
local BANNER_BORDER = { 1, 0.7, 0.1, 0.9 }

local function Build(content)
	local page = { search = "", lang = FaqRefs.ReaderLanguage(), expanded = {} }

	--------------------------------------------------------------------------
	-- Wowhead banner across the whole page.
	--------------------------------------------------------------------------
	local banner = W.Panel(content, BANNER_BG, BANNER_BORDER)
	banner:SetPoint("TOPLEFT", 8, -8)
	banner:SetPoint("TOPRIGHT", -8, -8)
	banner:SetHeight(BANNER_HEIGHT)
	local info = banner:CreateTexture(nil, "ARTWORK")
	info:SetTexture(INFO)
	info:SetSize(26, 26)
	info:SetPoint("LEFT", 10, 0)
	local url = W.EditBox(banner, 210)
	url:SetHeight(26)
	url:SetPoint("RIGHT", -12, 0)
	url:SetText(C.WOWHEAD_URL)
	url:SetCursorPosition(0)
	url:SetScript("OnTextChanged", function(self, userInput)
		if userInput then
			self:SetText(C.WOWHEAD_URL)
			self:HighlightText()
		end
	end)
	url:HookScript("OnEditFocusGained", function(self)
		self:HighlightText()
	end)
	url:HookScript("OnEditFocusLost", function(self)
		self:HighlightText(0, 0)
		self:SetCursorPosition(0)
	end)
	W.Tooltip(url, "Wowhead", L.FAQ_WOWHEAD_TIP)
	local bannerText = W.Text(banner, "GameFontNormal", W.GOLD)
	bannerText:SetPoint("LEFT", info, "RIGHT", 8, 0)
	bannerText:SetPoint("RIGHT", url, "LEFT", -12, 0)
	bannerText:SetJustifyH("LEFT")
	bannerText:SetWordWrap(true)
	bannerText:SetMaxLines(2)
	bannerText:SetText(L.FAQ_WOWHEAD)

	local body = CreateFrame("Frame", nil, content)
	body:SetPoint("TOPLEFT", banner, "BOTTOMLEFT", -8, -8)
	body:SetPoint("BOTTOMRIGHT")

	--------------------------------------------------------------------------
	-- Topics (left).
	--------------------------------------------------------------------------
	local topicPane = CreateFrame("Frame", nil, body)
	topicPane:SetPoint("TOPLEFT")
	topicPane:SetPoint("BOTTOMLEFT")
	topicPane:SetWidth(TOPIC_WIDTH)
	W.Fill(topicPane, W.COLORS.nav):SetAllPoints()
	W.SideLine(topicPane, "RIGHT")
	W.EdgeLine(topicPane, "TOP")

	local topicBox = CreateFrame("Frame", nil, topicPane, "WowScrollBoxList")
	topicBox:SetPoint("TOPLEFT", 0, -4)
	topicBox:SetPoint("BOTTOMRIGHT", -13, 4)
	local topicBar = CreateFrame("EventFrame", nil, topicPane, "MinimalScrollBar")
	topicBar:SetPoint("TOPLEFT", topicBox, "TOPRIGHT", 2, -4)
	topicBar:SetPoint("BOTTOMLEFT", topicBox, "BOTTOMRIGHT", 2, 4)

	local topicView = CreateScrollBoxListLinearView()
	topicView:SetElementExtent(TOPIC_ROW_HEIGHT)
	topicView:SetElementInitializer("Button", function(row, topic)
		if not row.label then
			row:SetHeight(TOPIC_ROW_HEIGHT)
			W.ListRowLook(row)
			row:SetHighlightTexture("Interface\\QuestFrame\\UI-QuestTitleHighlight", "ADD")
			row.label = W.Text(row, "GameFontHighlight", W.TEXT)
			row.label:SetPoint("LEFT", PAD, 0)
			row.label:SetPoint("RIGHT", -40, 0)
			row.label:SetWordWrap(false)
			row.count = W.Text(row, "GameFontHighlightSmall", W.MUTED)
			row.count:SetPoint("RIGHT", -PAD, 0)
			row.count:SetJustifyH("RIGHT")
			row:SetScript("OnClick", function(self)
				page.topic = self.topic.key or nil
				page:Refresh(true)
			end)
		end
		row.topic = topic
		local active = (topic.key or nil) == page.topic
		row.label:SetFontObject(active and "GameFontNormal" or "GameFontHighlight")
		row.label:SetText(topic.label)
		W.Color(row.label, active and W.GOLD or W.TEXT)
		row.count:SetText(topic.count)
		row:SetSelectedLook(active)
	end)
	ScrollUtil.InitScrollBoxListWithScrollBar(topicBox, topicBar, topicView)

	-- "All topics" (key false), every topic that has entries and the
	-- glossary.
	local function TopicList()
		local list = { { key = false, label = L.FAQ_TOPICS_ALL, count = #Faq.GetAll() } }
		for _, topic in ipairs(C.FAQ_TOPICS) do
			local count = Faq.Count(topic.key)
			if count > 0 then
				list[#list + 1] = { key = topic.key, label = FaqRefs.TopicText(topic.key), count = count }
			end
		end
		list[#list + 1] = { key = GLOSSARY, label = ("|c%s%s|r"):format(W.Hex(W.BLUE), L.GLOSSARY), count = Glossary.Count() }
		return list
	end

	--------------------------------------------------------------------------
	-- Entries (right).
	--------------------------------------------------------------------------
	local main = CreateFrame("Frame", nil, body)
	main:SetPoint("TOPLEFT", topicPane, "TOPRIGHT")
	main:SetPoint("BOTTOMRIGHT")

	local filters = CreateFrame("Frame", nil, main)
	filters:SetPoint("TOPLEFT")
	filters:SetPoint("TOPRIGHT")
	filters:SetHeight(PAD + 28 + PAD)
	W.EdgeLine(filters, "TOP")
	W.EdgeLine(filters, "BOTTOM")

	local langOptions = {}
	for _, lang in ipairs(C.FAQ_LANGUAGES) do
		langOptions[#langOptions + 1] = { value = lang, label = C.LANGUAGE_NAMES[lang] }
	end
	local langDropdown = W.Dropdown(filters, 150, langOptions, function()
		return page.lang
	end, function(lang)
		page.lang = lang
		page:Refresh()
	end)
	langDropdown:SetPoint("TOPRIGHT", -SIDE, -PAD - 2)
	W.Tooltip(langDropdown, L.FAQ_LANGUAGE, L.FAQ_LANGUAGE_TIP)

	local search = W.SearchBox(filters, 100, L.QUEUE_SEARCH, function(text)
		page.search = strtrim(text):lower()
		page:Refresh(true)
	end)
	search:SetPoint("TOPLEFT", SIDE, -PAD)
	search:SetPoint("RIGHT", langDropdown, "LEFT", -12, 0)

	-- Bottom bar: "Ask a question".
	local bottom = CreateFrame("Frame", nil, main)
	bottom:SetPoint("BOTTOMLEFT")
	bottom:SetPoint("BOTTOMRIGHT")
	bottom:SetHeight(50)
	W.Fill(bottom, W.COLORS.nav):SetAllPoints()
	W.EdgeLine(bottom, "TOP")
	local ask = W.Button(bottom, L.QUEUE_ASK, nil, function()
		local key = page.lastOpened and page.lastOpened.topic or page.topic
		local topic = key and C.GetFaqTopic(key)
		ns.AskDialog.Show(function(q)
			UI.ShowQuestion(q.id)
		end, topic and topic.cat)
	end, "primary")
	ask:SetPoint("RIGHT", -SIDE, 0)
	local askHint = W.Text(bottom, "GameFontHighlight", W.SOFT)
	askHint:SetPoint("LEFT", SIDE, 0)
	askHint:SetPoint("RIGHT", ask, "LEFT", -12, 0)
	askHint:SetWordWrap(false)
	askHint:SetText(L.FAQ_NOT_HELPED)

	local listBox = CreateFrame("Frame", nil, main, "WowScrollBoxList")
	listBox:SetPoint("TOPLEFT", filters, "BOTTOMLEFT", SIDE, -10)
	listBox:SetPoint("BOTTOMRIGHT", bottom, "TOPRIGHT", -SIDE - 12, 8)
	local listBar = CreateFrame("EventFrame", nil, main, "MinimalScrollBar")
	listBar:SetPoint("TOPLEFT", listBox, "TOPRIGHT", 4, 0)
	listBar:SetPoint("BOTTOMLEFT", listBox, "BOTTOMRIGHT", 4, 0)

	local empty = W.Text(main, "GameFontHighlight", W.MUTED)
	empty:SetPoint("CENTER", 0, 10)
	empty:SetJustifyH("CENTER")
	empty:SetText(L.QUEUE_NO_MATCH)

	-- Measuring.
	local measure = main:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
	measure:Hide()
	local function TextHeight(text, font, width, spacing)
		measure:SetFontObject(font)
		measure:SetSpacing(spacing or 0)
		measure:SetWidth(width)
		measure:SetText(text)
		return math.ceil(measure:GetStringHeight())
	end

	local function ItemWidth()
		local width = listBox:GetWidth()
		if not width or width <= 0 then
			width = FALLBACK_WIDTH
		end
		return width
	end
	-- Text width inside an item: icon on the left, topic label on the right.
	local function QuestionWidth()
		return ItemWidth() - 2 * ITEM_PAD - ICON_SIZE - 8
	end
	local function AnswerWidth()
		return ItemWidth() - 2 * ITEM_PAD - ICON_SIZE - 8
	end

	local function ShowsTopic()
		return page.topic == nil
	end

	local function IsGlossary(entry)
		return entry.topic == nil
	end

	-- Key in page.expanded; glossary ids may equal FAQ ids.
	local function Key(entry)
		return IsGlossary(entry) and "@" .. entry.id or entry.id
	end

	-- Bar text and unfolded text of an entry: question and answer with
	-- glossary links, or term and explanation (other names, FAQ link).
	local function Texts(entry)
		if IsGlossary(entry) then
			local term, alt, def = Glossary.GetText(entry, page.lang)
			local text = def
			if #alt > 0 then
				text = text .. "\n\n" .. ("|c%s%s|r"):format(W.Hex(W.MUTED), L.GLOSSARY_ALSO:format(table.concat(alt, ", ")))
			end
			local faqTitle = entry.faq and FaqRefs.Title(entry.faq, page.lang)
			if faqTitle then
				text = text .. "\n\n" .. GlossaryLinks.FaqLink(entry.faq, L.FAQ_REF_LINK:format(faqTitle))
			end
			return term, text
		end
		local q, a = Faq.GetText(entry, page.lang)
		return q, GlossaryLinks.Annotate(a, page.lang)
	end

	local function Heights(entry)
		local q, a = Texts(entry)
		local qHeight = TextHeight(q, "GameFontNormal", QuestionWidth())
		local head = ITEM_PAD + qHeight + (ShowsTopic() and 4 + 12 or 0) + ITEM_PAD
		if not page.expanded[Key(entry)] then
			return head, qHeight, 0
		end
		local aHeight = TextHeight(a, "GameFontHighlight", AnswerWidth(), 3)
		return head + aHeight + ITEM_PAD + 2, qHeight, aHeight
	end

	local listView = CreateScrollBoxListLinearView()
	listView:SetElementExtentCalculator(function(_, entry)
		return (Heights(entry)) + ITEM_GAP
	end)
	listView:SetElementInitializer("Button", function(item, entry)
		if not item.question then
			item.bg = W.Panel(item)
			item.bg:SetPoint("TOPLEFT")
			item.bg:SetPoint("BOTTOMRIGHT", 0, ITEM_GAP)
			-- Everything is drawn on the panel (a child frame covers its
			-- parent's textures); the panel takes no mouse, clicks reach item.
			local bg = item.bg
			item.hl = bg:CreateTexture(nil, "BORDER")
			item.hl:SetPoint("TOPLEFT", 1, -1)
			item.hl:SetPoint("BOTTOMRIGHT", -1, 1)
			item.hl:SetColorTexture(1, 0.82, 0, 0.07)
			item.hl:Hide()
			item:SetScript("OnEnter", function(self)
				self.hl:Show()
			end)
			item:SetScript("OnLeave", function(self)
				self.hl:Hide()
			end)
			item.icon = bg:CreateTexture(nil, "ARTWORK")
			item.icon:SetSize(ICON_SIZE, ICON_SIZE)
			item.icon:SetPoint("TOPLEFT", ITEM_PAD, -ITEM_PAD)
			item.question = bg:CreateFontString(nil, "OVERLAY", "GameFontNormal")
			item.question:SetJustifyH("LEFT")
			item.question:SetJustifyV("TOP")
			item.question:SetWordWrap(true)
			item.question:SetPoint("TOPLEFT", item.icon, "TOPRIGHT", 8, 0)
			item.topic = W.Text(bg, "GameFontHighlightSmall", W.MUTED)
			item.topic:SetWordWrap(false)
			item.answer = bg:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
			item.answer:SetJustifyH("LEFT")
			item.answer:SetJustifyV("TOP")
			item.answer:SetWordWrap(true)
			item.answer:SetSpacing(3)
			item.divider = W.Divider(bg)
			item.divider:SetHeight(1)
			item:SetScript("OnClick", function(self)
				-- A click on a link in the answer does not fold it.
				if GlossaryLinks.JustClicked(self) then
					return
				end
				local key = Key(self.entry)
				page.expanded[key] = not page.expanded[key] or nil
				if page.expanded[key] and not IsGlossary(self.entry) then
					page.lastOpened = self.entry
				end
				page:RefreshList()
			end)
			GlossaryLinks.Enable(item)
		end
		item.entry = entry
		local q, a = Texts(entry)
		local open = page.expanded[Key(entry)]
		local _, qHeight, aHeight = Heights(entry)
		item.icon:SetTexture(open and MINUS or PLUS)
		item.question:SetWidth(QuestionWidth())
		item.question:SetHeight(qHeight)
		item.question:SetText(q)
		local below = item.question
		if ShowsTopic() then
			item.topic:ClearAllPoints()
			item.topic:SetPoint("TOPLEFT", item.question, "BOTTOMLEFT", 0, -4)
			item.topic:SetText(FaqRefs.TopicText(entry.topic))
			item.topic:Show()
			below = item.topic
		else
			item.topic:Hide()
		end
		if open then
			W.SetColors(item.bg, W.COLORS.selected, W.COLORS.favorite)
			item.divider:ClearAllPoints()
			item.divider:SetPoint("TOPLEFT", below, "BOTTOMLEFT", 0, -ITEM_PAD / 2)
			item.divider:SetPoint("RIGHT", item.bg, "RIGHT", -ITEM_PAD, 0)
			item.divider:Show()
			item.answer:ClearAllPoints()
			item.answer:SetPoint("TOPLEFT", below, "BOTTOMLEFT", 0, -ITEM_PAD)
			item.answer:SetWidth(AnswerWidth())
			item.answer:SetHeight(aHeight)
			item.answer:SetText(a)
			item.answer:Show()
		else
			W.SetColors(item.bg, W.COLORS.card, W.COLORS.line)
			item.divider:Hide()
			item.answer:Hide()
		end
	end)
	ScrollUtil.InitScrollBoxListWithScrollBar(listBox, listBar, listView)

	-- Heights depend on the width: lay out again once it is known or changes.
	local lastWidth = 0
	listBox:HookScript("OnSizeChanged", function(_, width)
		if width and width > 0 and math.abs(width - lastWidth) >= 1 then
			lastWidth = width
			if page.list then
				page:RefreshList()
			end
		end
	end)

	--------------------------------------------------------------------------
	-- Data.
	--------------------------------------------------------------------------

	-- Entries of the topic, filtered by the search: word search (all words,
	-- best match first), plain text search while no usable word is typed.
	local function Filtered()
		if page.topic == GLOSSARY then
			local list = {}
			for _, entry in ipairs(Glossary.GetAll(page.lang)) do
				if page.search == "" or Glossary.Contains(entry, page.search, page.lang) then
					list[#list + 1] = entry
				end
			end
			return list
		end
		local source = page.topic and Faq.GetTopic(page.topic) or Faq.GetAll()
		if page.search == "" then
			return source
		end
		local list = FaqSearch.Filter(source, page.search, { page.lang, "en" })
		if list then
			return list
		end
		list = {}
		for _, entry in ipairs(source) do
			if FaqSearch.Contains(entry, page.search, page.lang) then
				list[#list + 1] = entry
			end
		end
		return list
	end

	-- Re-lays out the entries, keeping the scroll position.
	function page:RefreshList()
		listBox:SetDataProvider(CreateDataProvider(self.list or {}), true)
		empty:SetShown(#(self.list or {}) == 0)
	end

	-- toTop: the topic or search changed, start at the top.
	function page:Refresh(toTop)
		langDropdown:Refresh()
		topicBox:SetDataProvider(CreateDataProvider(TopicList()), true)
		self.list = Filtered()
		-- One search result opens right away.
		if self.search ~= "" and #self.list == 1 then
			self.expanded[Key(self.list[1])] = true
		end
		listBox:SetDataProvider(CreateDataProvider(self.list), not toTop)
		empty:SetShown(#self.list == 0)
	end

	-- Shows one entry: its topic, no search, the entry open and in view.
	function page:Select(id)
		local entry = Faq.Get(id)
		if not entry then
			return
		end
		self.topic = entry.topic
		self.search = ""
		search:SetText("")
		self.expanded[id] = true
		self.lastOpened = entry
		self:Refresh(true)
		if listBox.ScrollToElementData then
			listBox:ScrollToElementData(entry)
		end
	end

	-- Shows one glossary term: the glossary, no search, the term open and
	-- in view.
	function page:SelectGlossary(id)
		local entry = Glossary.Get(id)
		if not entry then
			return
		end
		self.topic = GLOSSARY
		self.search = ""
		search:SetText("")
		self.expanded[Key(entry)] = true
		self:Refresh(true)
		if listBox.ScrollToElementData then
			listBox:ScrollToElementData(entry)
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

-- Opens the glossary on a term (glossary links in FAQ answers).
function UI.ShowGlossary(id)
	UI.Show(UI.PAGE_FAQ)
	local page = UI.GetCurrentPage()
	if page and page.SelectGlossary then
		page:SelectGlossary(id)
	end
end
