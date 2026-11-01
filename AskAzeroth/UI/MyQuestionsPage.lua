local _, ns = ...

-- My questions: every question asked on this account, newest first, with
-- the thread on the right. Public questions work as on the Questions page;
-- expired or withdrawn ones are read-only. "Clean up" applies the
-- retention setting right away.
local L = ns.L
local UI = ns.UI
local W = ns.Widgets
local MyQuestions = ns.MyQuestions

local LIST_WIDTH = 380
local PAD = 12
local REFRESH_DELAY = 0.3

local function Build(content)
	local page = { search = "" }

	-- Left column: search, "Clean up", count, then the list.
	local listPane = CreateFrame("Frame", nil, content)
	listPane:SetPoint("TOPLEFT")
	listPane:SetPoint("BOTTOMLEFT")
	listPane:SetWidth(LIST_WIDTH)
	W.SideLine(listPane, "RIGHT")

	local filters = CreateFrame("Frame", nil, listPane)
	filters:SetPoint("TOPLEFT")
	filters:SetPoint("TOPRIGHT", -1, 0)
	filters:SetHeight(PAD + 28 + 8 + 14 + PAD)
	W.EdgeLine(filters, "BOTTOM")

	local cleanup = W.Button(filters, L.MY_CLEANUP, nil, function()
		local days = ns.db.settings.retentionDays or 0
		if days <= 0 then
			page.note:SetText(L.MY_CLEANUP_FOREVER)
			return
		end
		page.note:SetText(L.MY_CLEANUP_DONE:format(MyQuestions.Cleanup()))
		page:Refresh()
	end)
	cleanup:SetHeight(28)
	cleanup:SetPoint("TOPRIGHT", -PAD, -PAD)
	W.Tooltip(cleanup, L.MY_CLEANUP, L.MY_CLEANUP_TIP)

	local search = W.SearchBox(filters, 100, L.QUEUE_SEARCH, function(text)
		page.search = strtrim(text):lower()
		page:Refresh()
	end)
	search:SetPoint("TOPLEFT", PAD, -PAD)
	search:SetPoint("RIGHT", cleanup, "LEFT", -8, 0)

	local count = W.Text(filters, "GameFontHighlightSmall", W.GOLD)
	count:SetPoint("TOPLEFT", search, "BOTTOMLEFT", 0, -8)

	page.note = W.Text(filters, "GameFontHighlightSmall", W.MUTED)
	page.note:SetPoint("LEFT", count, "RIGHT", 12, 0)
	page.note:SetPoint("RIGHT", -PAD, 0)
	page.note:SetWordWrap(false)

	local listBox = CreateFrame("Frame", nil, listPane)
	listBox:SetPoint("TOPLEFT", filters, "BOTTOMLEFT")
	listBox:SetPoint("BOTTOMRIGHT", -1, 0)

	local threadPane = CreateFrame("Frame", nil, content)
	threadPane:SetPoint("TOPLEFT", listPane, "TOPRIGHT")
	threadPane:SetPoint("BOTTOMRIGHT")

	page.thread = ns.ThreadView.Create(threadPane, MyQuestions.GetThread)
	page.list = ns.QueueList.Create(listBox, function(q)
		page.thread:SetQuestion(q.id)
		page.list:SetSelected(q.id)
	end, nil, MyQuestions.GetStatus)

	local function Matches(entry)
		if page.search == "" then
			return true
		end
		local haystack = entry.title:lower() .. "\n" .. (entry.body or ""):lower()
		return haystack:find(page.search, 1, true) ~= nil
	end

	function page:Refresh()
		local list = MyQuestions.List(Matches)
		local total = MyQuestions.Count()
		count:SetText(L.MY_COUNT:format(total))
		local emptyText
		if #list == 0 then
			emptyText = total == 0 and L.MY_EMPTY or L.QUEUE_NO_MATCH
		end
		self.list:SetQuestions(list, emptyText)
		local selected = self.thread:GetQuestion()
		if selected and not MyQuestions.GetThread(selected) then
			self.thread:SetQuestion(nil)
			self.list:SetSelected(nil)
		else
			self.thread:Refresh()
		end
	end

	function page:OnShow()
		self.note:SetText("")
	end

	local timer
	local function Schedule()
		if timer or not content:IsVisible() then
			return
		end
		timer = C_Timer.NewTimer(REFRESH_DELAY, function()
			timer = nil
			if content:IsVisible() then
				page:Refresh()
			end
		end)
	end
	ns.RegisterCallback(page, "AA_MY_QUESTIONS_CHANGED", Schedule)
	ns.RegisterCallback(page, "AA_STORE_CHANGED", Schedule)
	ns.RegisterCallback(page, "AA_PLAYERS_CHANGED", Schedule)
	C_Timer.NewTicker(30, function()
		if content:IsVisible() then
			page.list:Repaint()
			page.thread:Tick()
		end
	end)

	return page
end

UI.RegisterPage(UI.PAGE_MY_QUESTIONS, L.PAGE_MY_QUESTIONS, Build)
