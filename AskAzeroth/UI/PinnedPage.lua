-- luacheck: read globals CreateScrollBoxListLinearView ScrollUtil CreateDataProvider GameTooltip
local _, ns = ...

-- Pinned answers: each with its question, newest pin first, with search,
-- category filter and "Unpin". The copies are kept independently of the
-- public thread and never expire.
local L = ns.L
local C = ns.C
local UI = ns.UI
local W = ns.Widgets
local Util = ns.Util
local Pinned = ns.Pinned
local Players = ns.Players

local PAD = 8
local UNPIN_WIDTH = 80

local function Build(content)
	local page = { cats = {}, search = "" }

	local search = W.SearchBox(content, 200, L.QUEUE_SEARCH, function(text)
		page.search = strtrim(text):lower()
		page:Refresh()
	end)
	search:SetPoint("TOPLEFT", 16, -11)

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
		end, W.CategoryColor(category.key))
		chip.key = category.key
		chip:SetLabel(category.label)
		chips[#chips + 1] = chip
	end
	W.FlowChips(chips, content, 228, -14, 6)
	local bar = CreateFrame("Frame", nil, content)
	bar:SetPoint("TOPLEFT")
	bar:SetPoint("TOPRIGHT")
	bar:SetHeight(50)
	W.EdgeLine(bar, "BOTTOM")

	local count = W.Text(content, "GameFontHighlightSmall", W.MUTED)
	count:SetPoint("TOPRIGHT", -16, -18)

	local pane = CreateFrame("Frame", nil, content)
	pane:SetPoint("TOPLEFT", 16, -62)
	pane:SetPoint("BOTTOMRIGHT", -12, 12)

	local scrollBox = CreateFrame("Frame", nil, pane, "WowScrollBoxList")
	scrollBox:SetPoint("TOPLEFT")
	scrollBox:SetPoint("BOTTOMRIGHT", -16, 0)
	local scrollBar = CreateFrame("EventFrame", nil, pane, "MinimalScrollBar")
	scrollBar:SetPoint("TOPLEFT", scrollBox, "TOPRIGHT", 4, 0)
	scrollBar:SetPoint("BOTTOMLEFT", scrollBox, "BOTTOMRIGHT", 4, 0)

	local empty = W.Text(pane, "GameFontHighlight", W.MUTED)
	empty:SetPoint("CENTER", -8, 0)
	empty:SetJustifyH("CENTER")
	empty:SetWidth(360)

	local measure = pane:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
	measure:Hide()
	local function TextHeight(text, font, width)
		measure:SetFontObject(font)
		measure:SetWidth(width)
		measure:SetText(text)
		return measure:GetStringHeight()
	end
	local function InnerWidth()
		return math.max(100, scrollBox:GetWidth() - 2 * PAD)
	end

	local function RowHeight(entry)
		local width = InnerWidth()
		return PAD
			+ TextHeight(Util.EscapeText(entry.question.title), "GameFontNormal", width - UNPIN_WIDTH - 8)
			+ 4 + 14 + 8 + 14 + 2
			+ TextHeight(Util.EscapeText(entry.answer.text), "GameFontHighlight", width)
			+ PAD + 4
	end

	local function QuestionLine(q)
		local category = C.GetCategory(q.cat)
		return ("%s · %s · %s"):format(
			category and category.label or q.cat,
			W.PlayerText(q.author, Players.GetClass(q.author)),
			date("%Y-%m-%d", q.created))
	end

	local function BuildRow(row)
		row.bg = W.Panel(row)
		row.bg:SetPoint("TOPLEFT")
		row.bg:SetPoint("BOTTOMRIGHT", 0, 4)
		row.bg:EnableMouse(true)
		row.bg:SetScript("OnMouseUp", function(self, mouseButton)
			if mouseButton == "RightButton" and row.entry then
				ns.PlayerMenu.Open(self, row.entry.answer.author)
			end
		end)
		row.bg:SetScript("OnEnter", function(self)
			GameTooltip:SetOwner(self, "ANCHOR_CURSOR")
			GameTooltip:SetText(L.THREAD_PLAYER_TIP, 1, 1, 1, 1, true)
			GameTooltip:Show()
		end)
		row.bg:SetScript("OnLeave", function()
			GameTooltip:Hide()
		end)
		row.unpin = W.Button(row.bg, L.PINNED_UNPIN, UNPIN_WIDTH, function()
			if row.entry then
				Pinned.Unpin(row.entry.answer.id)
			end
		end)
		row.unpin:SetPoint("TOPRIGHT", -PAD, -PAD + 2)
		row.title = W.Text(row.bg, "GameFontNormal", W.GOLD)
		row.title:SetPoint("TOPLEFT", PAD, -PAD)
		row.title:SetPoint("RIGHT", row.unpin, "LEFT", -8, 0)
		row.title:SetWordWrap(true)
		row.meta = W.Text(row.bg, "GameFontHighlightSmall", W.MUTED)
		row.meta:SetPoint("TOPLEFT", row.title, "BOTTOMLEFT", 0, -4)
		row.meta:SetPoint("RIGHT", row.unpin, "LEFT", -8, 0)
		row.meta:SetWordWrap(false)
		row.who = W.Text(row.bg, "GameFontHighlightSmall")
		row.who:SetPoint("TOPLEFT", row.meta, "BOTTOMLEFT", 0, -8)
		row.who:SetPoint("RIGHT", -PAD, 0)
		row.who:SetWordWrap(false)
		row.text = W.Text(row.bg, "GameFontHighlight", W.TEXT)
		row.text:SetPoint("TOPLEFT", row.who, "BOTTOMLEFT", 0, -2)
		row.text:SetPoint("RIGHT", -PAD, 0)
		row.text:SetWordWrap(true)
	end

	local function FillRow(row, entry)
		if not row.bg then
			BuildRow(row)
		end
		row.entry = entry
		local q, a = entry.question, entry.answer
		row.title:SetText(Util.EscapeText(q.title))
		row.meta:SetText(QuestionLine(q))
		row.who:SetText(("%s%s  |cff9d9d9d%s|r"):format(
			Players.IsFavorite(a.author) and W.STAR or "",
			W.PlayerText(a.author, Players.GetClass(a.author)),
			date("%Y-%m-%d %H:%M", a.created)))
		row.text:SetText(Util.EscapeText(a.text))
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
		local list = Pinned.List(self.search, self.cats)
		local total = Pinned.Count()
		count:SetText(L.PINNED_COUNT:format(total, C.MAX_PINNED))
		scrollBox:SetDataProvider(CreateDataProvider(list), true)
		empty:SetShown(#list == 0)
		empty:SetText(total == 0 and L.PINNED_EMPTY or L.QUEUE_NO_MATCH)
	end

	ns.RegisterCallback(page, "AA_PINNED_CHANGED", function()
		if content:IsVisible() then
			page:Refresh()
		end
	end)
	ns.RegisterCallback(page, "AA_PLAYERS_CHANGED", function()
		if content:IsVisible() then
			page:Refresh()
		end
	end)

	return page
end

UI.RegisterPage(UI.PAGE_PINNED, L.PAGE_PINNED, Build)
