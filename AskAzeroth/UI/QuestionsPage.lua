local _, ns = ...

-- Questions page: search and category filter on top, the list of questions
-- in the selected languages on the left, the selected thread on the right.
local L = ns.L
local C = ns.C
local UI = ns.UI
local W = ns.Widgets
local Store = ns.Store
local Players = ns.Players

local LIST_WIDTH = 330
local REFRESH_DELAY = 0.3

local function Build(content)
	local page = { cats = {}, search = "" }

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

	local ask = W.Button(content, L.QUEUE_ASK, nil, function()
		ns.AskDialog.Show(function(q)
			page.thread:SetQuestion(q.id)
			page.list:SetSelected(q.id)
			page:Refresh()
		end)
	end)
	ask:SetPoint("TOPRIGHT", -4, -5)

	local listPane = CreateFrame("Frame", nil, content)
	listPane:SetPoint("TOPLEFT", 4, -38)
	listPane:SetPoint("BOTTOMLEFT", 4, 4)
	listPane:SetWidth(LIST_WIDTH)

	local threadPane = CreateFrame("Frame", nil, content)
	threadPane:SetPoint("TOPLEFT", listPane, "TOPRIGHT", 12, 0)
	threadPane:SetPoint("BOTTOMRIGHT", -4, 4)

	page.thread = ns.ThreadView.Create(threadPane)
	page.list = ns.QueueList.Create(listPane, function(q)
		page.thread:SetQuestion(q.id)
		page.list:SetSelected(q.id)
	end, function()
		page.showIgnored = not page.showIgnored
		page:Refresh()
	end)

	local function Matches(q, langs)
		if not langs[q.lang] then
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
		local emptyText
		if #list == 0 then
			emptyText = Store.Count() == 0 and L.QUEUE_EMPTY or L.QUEUE_NO_MATCH
		end
		self.list:SetQuestions(list, emptyText)
		-- A removed question leaves the thread.
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
	end
end
