-- luacheck: read globals CreateScrollBoxListLinearView ScrollUtil CreateDataProvider
local _, ns = ...

-- Scrolling list of questions for the Questions page. Rows show category
-- and age, the title, author with level and the status; a click selects
-- the question.
local QueueList = {}
ns.QueueList = QueueList

local W = ns.Widgets
local Util = ns.Util
local Store = ns.Store
local Players = ns.Players
local L = ns.L

local STAR = W.STAR

local ROW_HEIGHT = 66
local PAD = 12

local function BuildRow(list, row)
	row:SetHeight(ROW_HEIGHT)
	local bg = CreateFrame("Button", nil, row)
	bg:SetAllPoints()
	W.ListRowLook(bg)
	row.bg = bg
	bg:SetHighlightTexture("Interface\\Buttons\\WHITE8x8")
	bg:GetHighlightTexture():SetVertexColor(1, 0.85, 0.5, 0.05)
	bg:RegisterForClicks("LeftButtonUp", "RightButtonUp")
	-- Solved questions: green tint and a green bar on the left.
	row.solvedTint = W.Fill(bg, W.COLORS.solved, "BACKGROUND")
	row.solvedTint:SetAllPoints()
	row.solvedBar = W.Fill(bg, W.COLORS.success, "ARTWORK")
	row.solvedBar:SetWidth(3)
	row.solvedBar:SetPoint("TOPLEFT")
	row.solvedBar:SetPoint("BOTTOMLEFT")
	-- Own questions (Questions page): blue tint and bar.
	row.ownTint = W.Fill(bg, W.COLORS.own, "BACKGROUND")
	row.ownTint:SetAllPoints()
	row.ownBar = W.Fill(bg, W.COLORS.ownBar, "ARTWORK")
	row.ownBar:SetWidth(3)
	row.ownBar:SetPoint("TOPLEFT")
	row.ownBar:SetPoint("BOTTOMLEFT")
	bg:SetScript("OnClick", function(self, mouseButton)
		if row.toggle then
			list.onToggleIgnored()
		elseif row.question and mouseButton == "RightButton" then
			ns.PlayerMenu.Open(self, row.question.author)
		elseif row.question then
			list.onSelect(row.question)
		end
	end)
	-- Category and age, title, author and status.
	row.category = W.Text(bg, "GameFontNormalSmall")
	row.category:SetPoint("TOPLEFT", PAD, -9)
	row.age = W.Text(bg, "GameFontHighlightSmall", W.MUTED)
	row.age:SetPoint("TOPRIGHT", -PAD, -9)
	row.age:SetJustifyH("RIGHT")
	row.title = W.Text(bg, "GameFontHighlight", W.TEXT)
	row.title:SetPoint("TOPLEFT", PAD, -26)
	row.title:SetPoint("RIGHT", -PAD, 0)
	row.title:SetWordWrap(false)
	row.status = W.Text(bg, "GameFontHighlightSmall")
	row.status:SetPoint("BOTTOMRIGHT", -PAD, 9)
	row.status:SetJustifyH("RIGHT")
	row.meta = W.Text(bg, "GameFontHighlightSmall", W.MUTED)
	row.meta:SetPoint("BOTTOMLEFT", PAD, 9)
	row.meta:SetPoint("RIGHT", row.status, "LEFT", -8, 0)
	row.meta:SetWordWrap(false)
end

local function AuthorText(q)
	local ctx = q.ctx or {}
	return W.PlayerLine(q.author, ctx, Players.GetClass(q.author))
end

local function FillRow(list, row, item)
	if not row.bg then
		BuildRow(list, row)
	end
	-- The "questions from ignored players" row folds them in and out.
	if item.ignoredCount then
		row.question = nil
		row.toggle = true
		row.category:SetText("")
		row.age:SetText("")
		row.status:SetText("")
		row.title:SetText((item.expanded and W.ARROW_UP or W.ARROW_DOWN) .. L.QUEUE_IGNORED:format(item.ignoredCount))
		W.Color(row.title, W.MUTED)
		row.meta:SetText("")
		row.bg:SetAlpha(1)
		row.bg:SetSelectedLook(false)
		row.solvedTint:Hide()
		row.solvedBar:Hide()
		row.ownTint:Hide()
		row.ownBar:Hide()
		return
	end
	local q = item
	row.toggle = nil
	row.question = q
	W.Color(row.title, W.TEXT)
	row.bg:SetAlpha(Players.IsIgnored(q.author) and 0.5 or 1)
	row.category:SetText(W.CategoryText(q.cat))
	row.age:SetText(W.Ago(Util.Now() - q.created))
	row.title:SetText((Players.IsFavorite(q.author) and STAR or "") .. Util.EscapeText(q.title))
	local own = list.highlightOwn and q.author == ns:GetPlayerFullName()
	row.meta:SetText(own and ("|cff7fbfff" .. L.QUEUE_OWN .. "|r") or AuthorText(q))
	local status = (list.statusOf or Store.GetStatus)(q)
	row.status:SetText(W.StatusText(status, q.answerCount))
	local selected = list.selectedId == q.id
	row.bg:SetSelectedLook(selected)
	local solved = status == "solved" and not selected
	row.solvedTint:SetShown(solved)
	row.solvedBar:SetShown(solved)
	row.ownTint:SetShown(own and not solved and not selected)
	row.ownBar:SetShown(own and not solved and not selected)
end

-- onSelect(question) runs when a row is clicked, onToggleIgnored() when the
-- "ignored players" row is. statusOf(question) gives the status shown
-- (default Store.GetStatus).
function QueueList.Create(parent, onSelect, onToggleIgnored, statusOf)
	-- Own questions stand out where they are mixed with others.
	local list = { onSelect = onSelect, onToggleIgnored = onToggleIgnored, statusOf = statusOf, highlightOwn = statusOf == nil }
	local scrollBox = CreateFrame("Frame", nil, parent, "WowScrollBoxList")
	scrollBox:SetPoint("TOPLEFT", 0, 0)
	scrollBox:SetPoint("BOTTOMRIGHT", -12, 0)
	local scrollBar = CreateFrame("EventFrame", nil, parent, "MinimalScrollBar")
	scrollBar:SetPoint("TOPLEFT", scrollBox, "TOPRIGHT", 2, -4)
	scrollBar:SetPoint("BOTTOMLEFT", scrollBox, "BOTTOMRIGHT", 2, 4)

	local view = CreateScrollBoxListLinearView()
	view:SetElementExtent(ROW_HEIGHT)
	view:SetElementInitializer("Frame", function(row, item)
		FillRow(list, row, item)
	end)
	ScrollUtil.InitScrollBoxListWithScrollBar(scrollBox, scrollBar, view)

	local empty = W.Text(parent, "GameFontHighlight", W.MUTED)
	empty:SetPoint("CENTER", -8, 0)
	empty:SetJustifyH("CENTER")
	empty:SetWidth(260)

	-- questions: the filtered list (questions and at most one
	-- { ignoredCount, expanded } row); emptyText shown when it is empty.
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
		-- (the toggle row has nothing that changes over time)
	end

	function list:SetSelected(id)
		self.selectedId = id
		self:Repaint()
	end

	return list
end
