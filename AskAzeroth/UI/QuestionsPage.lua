local _, ns = ...

-- Questions page: on the left search, "Ask a question", the category
-- filter and the list of questions in the selected languages; the selected
-- thread on the right.
local L = ns.L
local C = ns.C
local UI = ns.UI
local W = ns.Widgets
local Store = ns.Store
local Players = ns.Players

local LIST_WIDTH = 380
local PAD = 12
local REFRESH_DELAY = 0.3

local function Build(content)
	local page = { cats = {}, search = "" }

	-- Left column: search, "Ask", category chips, then the list.
	local listPane = CreateFrame("Frame", nil, content)
	listPane:SetPoint("TOPLEFT")
	listPane:SetPoint("BOTTOMLEFT")
	listPane:SetWidth(LIST_WIDTH)
	W.SideLine(listPane, "RIGHT")

	local filters = CreateFrame("Frame", nil, listPane)
	filters:SetPoint("TOPLEFT")
	filters:SetPoint("TOPRIGHT", -1, 0)
	W.EdgeLine(filters, "BOTTOM")

	local ask = W.Button(filters, L.QUEUE_ASK, nil, function()
		ns.AskDialog.Show(function(q)
			page.thread:SetQuestion(q.id)
			page.list:SetSelected(q.id)
			page:Refresh()
		end)
	end, "primary")
	ask:SetHeight(28)
	ask:SetPoint("TOPRIGHT", -PAD, -PAD)
	ns.AskDialog.BindButton(ask, content)

	local search = W.SearchBox(filters, 100, L.QUEUE_SEARCH, function(text)
		page.search = strtrim(text):lower()
		page:Refresh()
	end)
	search:SetPoint("TOPLEFT", PAD, -PAD)
	search:SetPoint("RIGHT", ask, "LEFT", -8, 0)

	local chips = {}
	local all = W.Chip(filters, function()
		wipe(page.cats)
		page:Refresh()
	end)
	all:SetLabel(L.QUEUE_ALL)
	chips[1] = all
	for _, category in ipairs(C.CATEGORIES) do
		local chip = W.Chip(filters, function(self)
			page.cats[self.key] = not page.cats[self.key] or nil
			page:Refresh()
		end, W.CategoryColor(category.key))
		chip.key = category.key
		chip:SetLabel(W.CategoryLabel(category.key))
		chips[#chips + 1] = chip
	end
	local chipsHeight = W.WrapChips(chips, filters, PAD, -PAD - 28 - 10, LIST_WIDTH - 2 * PAD, 6)

	-- Hide solved / answered questions (kept in the settings), in one
	-- dropdown so the filters stay a single row.
	local function SetFilter(key, value)
		ns.db.settings[key] = value
		page:Refresh()
	end
	local function AddTooltip(desc, title, text)
		if desc.SetTooltip then
			desc:SetTooltip(function(tooltip)
				tooltip:SetText(title, 1, 1, 1)
				tooltip:AddLine(text, nil, nil, nil, true)
			end)
		end
	end
	local function ActiveFilters()
		local settings = ns.db.settings
		return (settings.hideSolved and 1 or 0) + (settings.hideAnswered and 1 or 0)
	end
	local function FilterText()
		local active = ActiveFilters()
		return active > 0 and L.QUEUE_FILTER_ACTIVE:format(active) or L.QUEUE_FILTER
	end
	local statusFilter = W.Menu(filters, 150, function(root)
		local settings = ns.db.settings
		root:CreateCheckbox(L.QUEUE_HIDE_SOLVED, function()
			return settings.hideSolved
		end, function()
			SetFilter("hideSolved", not settings.hideSolved)
		end)
		local hideAnswered = root:CreateCheckbox(L.QUEUE_HIDE_ANSWERED, function()
			return settings.hideAnswered
		end, function()
			SetFilter("hideAnswered", not settings.hideAnswered)
		end)
		AddTooltip(hideAnswered, L.QUEUE_HIDE_ANSWERED, L.QUEUE_HIDE_ANSWERED_TIP)
		-- Finer "Hide answered": keep questions the player answered.
		local keepOwn = root:CreateCheckbox("   " .. L.QUEUE_KEEP_OWN_ANSWERED, function()
			return settings.keepOwnAnswered
		end, function()
			SetFilter("keepOwnAnswered", not settings.keepOwnAnswered)
		end)
		AddTooltip(keepOwn, L.QUEUE_KEEP_OWN_ANSWERED, L.QUEUE_KEEP_OWN_ANSWERED_TIP)
		if keepOwn.SetEnabled then
			keepOwn:SetEnabled(function()
				return settings.hideAnswered
			end)
		end
	end)
	-- Show "Filter (n)" instead of the list of ticked entries.
	if statusFilter.SetSelectionText then
		statusFilter:SetSelectionText(FilterText)
	end
	if statusFilter.SetDefaultText then
		statusFilter:SetDefaultText(L.QUEUE_FILTER)
	end
	statusFilter:SetPoint("TOPLEFT", PAD, -PAD - 28 - 10 - chipsHeight - 8)
	W.Tooltip(statusFilter, L.QUEUE_FILTER, L.QUEUE_FILTER_TIP)
	-- How many questions still wait for a first answer.
	local openCount = W.Text(filters, "GameFontHighlight", W.SOFT)
	openCount:SetPoint("RIGHT", filters, "RIGHT", -PAD, 0)
	openCount:SetPoint("TOP", statusFilter, "TOP", 0, -6)
	openCount:SetJustifyH("RIGHT")
	filters:SetHeight(PAD + 28 + 10 + chipsHeight + 8 + 26 + PAD)

	-- True if the player wrote at least one answer to the question.
	local function AnsweredByMe(q)
		local me = ns:GetPlayerFullName()
		for _, a in pairs(q.answers) do
			if a.author == me then
				return true
			end
		end
		return false
	end

	-- Questions the "Hide solved" / "Hide answered" boxes take out. The
	-- question open on the right always stays, so answering it (or someone
	-- else answering it) doesn't throw the player out of the thread; it
	-- leaves the list once another question is opened.
	local function HiddenByStatus(q)
		if q.id == page.thread:GetQuestion() then
			return false
		end
		local settings = ns.db.settings
		if settings.hideSolved and q.solved then
			return true
		end
		if settings.hideAnswered and q.answerCount > 0 then
			return not (settings.keepOwnAnswered and AnsweredByMe(q))
		end
		return false
	end

	local listBox = CreateFrame("Frame", nil, listPane)
	listBox:SetPoint("TOPLEFT", filters, "BOTTOMLEFT")
	listBox:SetPoint("BOTTOMRIGHT", -1, 0)

	local threadPane = CreateFrame("Frame", nil, content)
	threadPane:SetPoint("TOPLEFT", listPane, "TOPRIGHT")
	threadPane:SetPoint("BOTTOMRIGHT")

	page.thread = ns.ThreadView.Create(threadPane)
	-- Own question marked as solved: done with it, close it.
	page.thread.onSolved = function(id)
		if page.thread:GetQuestion() == id then
			page.thread:SetQuestion(nil)
			page.list:SetSelected(nil)
		end
	end
	page.list = ns.QueueList.Create(listBox, function(q)
		page.thread:SetQuestion(q.id)
		page.list:SetSelected(q.id)
		-- The question open before may be one the filters hide now.
		page:Refresh()
	end, function()
		page.showIgnored = not page.showIgnored
		page:Refresh()
	end)

	local function Matches(q, langs)
		if not langs[q.lang] then
			return false
		end
		if HiddenByStatus(q) then
			return false
		end
		if next(page.cats) and not page.cats[q.cat] then
			return false
		end
		if page.search ~= "" then
			local haystack = q.title:lower() .. "\n" .. (q.body or ""):lower()
			if not haystack:find(page.search, 1, true) then
				return false
			end
		end
		return true
	end

	function page:Refresh()
		all:SetActive(next(self.cats) == nil)
		for i = 2, #chips do
			chips[i]:SetActive(self.cats[chips[i].key] == true)
		end
		local langs = {}
		for _, lang in ipairs(ns.Channel.GetSelectedLanguages()) do
			langs[lang] = true
		end
		-- Favourites first, ignored players folded in at the end.
		local favorites, others, ignored = {}, {}, {}
		for _, q in ipairs(Store.List(function(q)
			return Matches(q, langs)
		end)) do
			if Players.IsIgnored(q.author) then
				ignored[#ignored + 1] = q
			elseif Players.IsFavorite(q.author) then
				favorites[#favorites + 1] = q
			else
				others[#others + 1] = q
			end
		end
		local list = favorites
		for _, q in ipairs(others) do
			list[#list + 1] = q
		end
		if #ignored > 0 then
			list[#list + 1] = { ignoredCount = #ignored, expanded = self.showIgnored }
			if self.showIgnored then
				for _, q in ipairs(ignored) do
					list[#list + 1] = q
				end
			end
		end
		statusFilter:Refresh()
		if statusFilter.OverrideText then
			statusFilter:OverrideText(FilterText())
		end
		openCount:SetText(L.QUEUE_OPEN_COUNT:format(UI.CountOpenQuestions()))
		local emptyText
		if #list == 0 then
			emptyText = Store.Count() == 0 and L.QUEUE_EMPTY or L.QUEUE_NO_MATCH
		end
		self.list:SetQuestions(list, emptyText)
		-- A removed question leaves the thread (the status filters keep the
		-- open one, see HiddenByStatus).
		local selected = self.thread:GetQuestion()
		if selected and not Store.Get(selected) then
			self.thread:SetQuestion(nil)
			self.list:SetSelected(nil)
		else
			self.thread:Refresh()
		end
	end

	function page:OnShow()
		ns.Notify.MarkSeen()
	end

	function page:Tick()
		self.list:Repaint()
		self.thread:Tick()
	end

	local timer
	ns.RegisterCallback(page, "AA_STORE_CHANGED", function()
		if timer or not content:IsVisible() then
			return
		end
		timer = C_Timer.NewTimer(REFRESH_DELAY, function()
			timer = nil
			if content:IsVisible() then
				page:Refresh()
			end
		end)
	end)
	-- What arrives while the page is open counts as seen.
	ns.RegisterCallback(page, "AA_NOTIFY_CHANGED", function(_, count)
		if count > 0 and content:IsVisible() then
			ns.Notify.MarkSeen()
		end
	end)
	ns.RegisterCallback(page, "AA_PLAYERS_CHANGED", function()
		if content:IsVisible() then
			page:Refresh()
		end
	end)
	ns.RegisterCallback(page, "AA_LANGUAGES_CHANGED", function()
		if content:IsVisible() then
			page:Refresh()
		end
	end)
	C_Timer.NewTicker(30, function()
		if content:IsVisible() then
			page:Tick()
		end
	end)

	return page
end

UI.RegisterPage(UI.PAGE_QUESTIONS, L.PAGE_QUESTIONS, Build)

-- Opens the window on a question (used by notifications later).
function UI.ShowQuestion(id)
	UI.Show(UI.PAGE_QUESTIONS)
	local frame = UI.GetFrame()
	local page = frame and UI.GetCurrentPage()
	if page and page.thread and Store.Get(id) then
		page.thread:SetQuestion(id)
		page.list:SetSelected(id)
		page:Refresh()
	end
end
