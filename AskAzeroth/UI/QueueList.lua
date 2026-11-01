-- luacheck: read globals CreateScrollBoxListLinearView ScrollUtil CreateDataProvider
local _, ns = ...

-- Scrolling list of questions for the Questions page. Rows show title,
-- category, status, author and age; a click selects the question.
local QueueList = {}
ns.QueueList = QueueList

local C = ns.C
local W = ns.Widgets
local Util = ns.Util
local Store = ns.Store

local ROW_HEIGHT = 44
local ROW_GAP = 4

local function BuildRow(list, row)
	row:SetHeight(ROW_HEIGHT)
	local bg = W.Panel(row, { 0.1, 0.1, 0.12, 1 }, { 0.2, 0.2, 0.24, 1 })
	bg:SetPoint("TOPLEFT")
	bg:SetPoint("BOTTOMRIGHT", 0, ROW_GAP)
	row.bg = bg
	local button = CreateFrame("Button", nil, bg)
	button:SetAllPoints()
	button:SetHighlightTexture("Interface\\Buttons\\WHITE8x8")
	button:GetHighlightTexture():SetVertexColor(1, 0.82, 0, 0.06)
	button:SetScript("OnClick", function()
		if row.question then
			list.onSelect(row.question)
		end
	end)
	row.title = W.Text(bg, "GameFontHighlight")
	row.title:SetPoint("TOPLEFT", 8, -6)
	row.title:SetPoint("RIGHT", -8, 0)
	row.title:SetWordWrap(false)
	row.meta = W.Text(bg, "GameFontHighlightSmall", W.MUTED)
	row.meta:SetPoint("BOTTOMLEFT", 8, 6)
	row.meta:SetPoint("RIGHT", -8, 0)
	row.meta:SetWordWrap(false)
end

local function FillRow(list, row, q)
	if not row.bg then
		BuildRow(list, row)
	end
	row.question = q
	row.title:SetText(Util.EscapeText(q.title))
	local category = C.GetCategory(q.cat)
	local now = Util.Now()
	row.meta:SetText(("%s · %s · %s · %s"):format(
		category and category.label or q.cat,
		W.StatusText(Store.GetStatus(q), q.answerCount),
		W.PlayerText(q.author, q.ctx and q.ctx.class),
		W.Ago(now - q.created)))
	local selected = list.selectedId == q.id
	if selected then
		row.bg:SetBackdropBorderColor(0.79, 0.635, 0.29, 1)
	else
		row.bg:SetBackdropBorderColor(0.2, 0.2, 0.24, 1)
	end
end

-- onSelect(question) runs when a row is clicked.
function QueueList.Create(parent, onSelect)
	local list = { onSelect = onSelect }
	local scrollBox = CreateFrame("Frame", nil, parent, "WowScrollBoxList")
	scrollBox:SetPoint("TOPLEFT", 0, 0)
	scrollBox:SetPoint("BOTTOMRIGHT", -16, 0)
	local scrollBar = CreateFrame("EventFrame", nil, parent, "MinimalScrollBar")
	scrollBar:SetPoint("TOPLEFT", scrollBox, "TOPRIGHT", 4, 0)
	scrollBar:SetPoint("BOTTOMLEFT", scrollBox, "BOTTOMRIGHT", 4, 0)

	local view = CreateScrollBoxListLinearView()
	view:SetElementExtent(ROW_HEIGHT + ROW_GAP)
	view:SetElementInitializer("Frame", function(row, q)
		FillRow(list, row, q)
	end)
	ScrollUtil.InitScrollBoxListWithScrollBar(scrollBox, scrollBar, view)

	local empty = W.Text(parent, "GameFontDisable")
	empty:SetPoint("CENTER", -8, 0)
	empty:SetJustifyH("CENTER")
	empty:SetWidth(260)

	-- questions: the filtered list; emptyText shown when it is empty.
	function list:SetQuestions(questions, emptyText)
		scrollBox:SetDataProvider(CreateDataProvider(questions), true)
		empty:SetShown(#questions == 0)
		empty:SetText(emptyText or "")
	end

	-- Repaints the visible rows (selection, ages) without rebuilding.
	function list:Repaint()
		scrollBox:ForEachFrame(function(row)
			if row.question then
				FillRow(list, row, row.question)
			end
		end)
	end

	function list:SetSelected(id)
		self.selectedId = id
		self:Repaint()
	end

	return list
end
