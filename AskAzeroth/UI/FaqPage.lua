-- luacheck: read globals CreateScrollBoxListLinearView ScrollUtil CreateDataProvider
local _, ns = ...

-- Built-in FAQ (Core/Data/Faq*.lua) with search and category filter. Shown
-- in German for German clients, otherwise in English; a button switches
-- between the two.
local L = ns.L
local C = ns.C
local UI = ns.UI
local W = ns.Widgets

local PAD = 8
local FAQ_LANGUAGES = { "en", "de" }

local function DefaultLanguage()
	local lang = C.GetClientLanguage()
	return ns.FAQ[lang] and lang or "en"
end

local function Build(content)
	local page = { cats = {}, search = "", lang = DefaultLanguage() }

	local search = W.SearchBox(content, 170, L.QUEUE_SEARCH, function(text)
		page.search = strtrim(text):lower()
		page:Refresh()
	end)
	search:SetPoint("TOPLEFT", 6, -6)

	local chips = {}
	local all = W.Chip(content, function()
		wipe(page.cats)
		page:Refresh()
	end)
	all:SetLabel(L.QUEUE_ALL)
	chips[1] = all
	for _, category in ipairs(C.CATEGORIES) do
		local chip = W.Chip(content, function(self)
			page.cats[self.key] = not page.cats[self.key] or nil
			page:Refresh()
		end)
		chip.key = category.key
		chip:SetLabel(category.label)
		chips[#chips + 1] = chip
	end
	W.FlowChips(chips, content, 186, -6, 4)

	local switch = W.Button(content, "", 90)
	switch:SetPoint("TOPRIGHT", -4, -5)
	W.Tooltip(switch, L.FAQ_LANGUAGE, L.FAQ_LANGUAGE_TIP)
	switch:SetScript("OnClick", function()
		page.lang = page.lang == FAQ_LANGUAGES[1] and FAQ_LANGUAGES[2] or FAQ_LANGUAGES[1]
		page:Refresh()
	end)

	local pane = CreateFrame("Frame", nil, content)
	pane:SetPoint("TOPLEFT", 4, -38)
	pane:SetPoint("BOTTOMRIGHT", -4, 4)

	local scrollBox = CreateFrame("Frame", nil, pane, "WowScrollBoxList")
	scrollBox:SetPoint("TOPLEFT")
	scrollBox:SetPoint("BOTTOMRIGHT", -16, 0)
	local scrollBar = CreateFrame("EventFrame", nil, pane, "MinimalScrollBar")
	scrollBar:SetPoint("TOPLEFT", scrollBox, "TOPRIGHT", 4, 0)
	scrollBar:SetPoint("BOTTOMLEFT", scrollBox, "BOTTOMRIGHT", 4, 0)

	local empty = W.Text(pane, "GameFontDisable")
	empty:SetPoint("CENTER", -8, 0)
	empty:SetJustifyH("CENTER")
	empty:SetWidth(360)
	empty:SetText(L.QUEUE_NO_MATCH)

	local measure = pane:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
	measure:Hide()
	local function TextHeight(text, font, width)
		measure:SetFontObject(font)
		measure:SetWidth(width)
		measure:SetText(text)
		return measure:GetStringHeight()
	end

	local function RowHeight(entry)
		local width = math.max(100, scrollBox:GetWidth() - 2 * PAD)
		return PAD + TextHeight(entry.q, "GameFontNormal", width) + 4 + 14 + 6
			+ TextHeight(entry.a, "GameFontHighlight", width) + PAD + 4
	end

	local function FillRow(row, entry)
		if not row.bg then
			row.bg = W.Panel(row, { 0.08, 0.08, 0.1, 1 }, { 0.18, 0.18, 0.22, 1 })
			row.bg:SetPoint("TOPLEFT")
			row.bg:SetPoint("BOTTOMRIGHT", 0, 4)
			row.title = W.Text(row.bg, "GameFontNormal")
			row.title:SetPoint("TOPLEFT", PAD, -PAD)
			row.title:SetPoint("RIGHT", -PAD, 0)
			row.title:SetWordWrap(true)
			row.meta = W.Text(row.bg, "GameFontHighlightSmall", W.MUTED)
			row.meta:SetPoint("TOPLEFT", row.title, "BOTTOMLEFT", 0, -4)
			row.text = W.Text(row.bg, "GameFontHighlight", W.TEXT)
			row.text:SetPoint("TOPLEFT", row.meta, "BOTTOMLEFT", 0, -6)
			row.text:SetPoint("RIGHT", -PAD, 0)
			row.text:SetWordWrap(true)
		end
		local category = C.GetCategory(entry.cat)
		row.title:SetText(entry.q)
		row.meta:SetText(category and category.label or entry.cat)
		row.text:SetText(entry.a)
	end

	local listView = CreateScrollBoxListLinearView()
	listView:SetElementExtentCalculator(function(_, entry)
		return RowHeight(entry)
	end)
	listView:SetElementInitializer("Frame", FillRow)
	ScrollUtil.InitScrollBoxListWithScrollBar(scrollBox, scrollBar, listView)

	function page:Refresh()
		all:SetActive(next(self.cats) == nil)
		for i = 2, #chips do
			chips[i]:SetActive(self.cats[chips[i].key] == true)
		end
		switch:SetText(C.LANGUAGE_NAMES[self.lang])
		local list = {}
		for _, entry in ipairs(ns.FAQ[self.lang] or {}) do
			local ok = next(self.cats) == nil or self.cats[entry.cat]
			if ok and self.search ~= "" then
				ok = (entry.q .. "\n" .. entry.a):lower():find(self.search, 1, true) ~= nil
			end
			if ok then
				list[#list + 1] = entry
			end
		end
		scrollBox:SetDataProvider(CreateDataProvider(list), true)
		empty:SetShown(#list == 0)
	end

	return page
end

UI.RegisterPage(UI.PAGE_FAQ, L.PAGE_FAQ, Build)
