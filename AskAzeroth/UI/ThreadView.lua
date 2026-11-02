-- luacheck: read globals CreateScrollBoxListLinearView ScrollUtil CreateDataProvider StaticPopup_Show YES NO GameTooltip CopyTable
-- luacheck: globals StaticPopupDialogs
local _, ns = ...

-- Thread of one question: the question with the asker's context and when
-- it disappears on top, every answer as a card, the answer field below. The asker also gets
-- "Mark as solved" and "Withdraw". Every answer has a pin button.
--
-- ThreadView.Create(parent, get): get(id) returns the question to show
-- (default Store.Get). Questions that are not public any more (My
-- questions) show their answers read-only.
local ThreadView = {}
ns.ThreadView = ThreadView

local L = ns.L
local C = ns.C
local W = ns.Widgets
local Util = ns.Util
local Store = ns.Store
local Players = ns.Players
local Pinned = ns.Pinned

local STAR = W.STAR
local CHECK = W.CHECK

local PAD = 10
local SIDE = 18
local GAP = 10
local PIN_SIZE = 16
local PIN_ICON = "Interface\\Icons\\INV_Misc_Note_01"
local ANSWER_HEIGHT = 40
local BUTTON_WIDTH = 96
local BOTTOM_HEIGHT = 12 + ANSWER_HEIGHT + 4 + 14 + 8
-- Row of attached FAQ entries above the answer field.
local REFS_HEIGHT = 22 + 8
local REF_CHIP_MAX = 24

-- Asker line under the question: name, level and class, zone, age.
local function ContextText(q)
	local ctx = q.ctx or {}
	local parts = { (Players.IsFavorite(q.author) and STAR or "") .. W.PlayerText(q.author, ctx.class) }
	local who = {}
	if ctx.lvl then
		who[#who + 1] = L.LEVEL_SHORT:format(ctx.lvl)
	end
	local className = W.ClassName(ctx.class)
	if className then
		who[#who + 1] = className
	end
	if #who > 0 then
		parts[#parts + 1] = table.concat(who, " ")
	end
	if ctx.zone then
		parts[#parts + 1] = Util.EscapeText(ctx.zone)
	end
	parts[#parts + 1] = W.Ago(Util.Now() - q.created)
	return table.concat(parts, " · ")
end

local function ExpiryText(q)
	if not Store.Get(q.id) then
		local status = ns.MyQuestions.GetStatus(q)
		if status == "withdrawn" then
			return L.THREAD_WITHDRAWN
		elseif status == "closed" then
			return L.THREAD_CLOSED
		end
		return L.THREAD_ELSEWHERE
	end
	local left = Store.ExpiresAt(q) - Util.Now()
	local status = Store.GetStatus(q)
	if status == "solved" then
		return L.THREAD_SOLVED_EXPIRES:format(W.Minutes(left))
	elseif status == "answered" then
		return L.THREAD_ANSWERED_EXPIRES:format(W.Minutes(left))
	end
	return L.THREAD_OPEN_EXPIRES:format(W.Minutes(left))
end

-- Category · language · expiry, above the question title.
local function MetaText(q)
	return ("%s |cff999999· %s · %s|r"):format(W.CategoryText(q.cat), tostring(q.lang or ""):upper(), ExpiryText(q))
end

function ThreadView.Create(parent, get)
	local view = {}
	get = get or Store.Get

	local empty = W.Text(parent, "GameFontHighlight", W.MUTED)
	empty:SetPoint("CENTER")
	empty:SetJustifyH("CENTER")
	empty:SetWidth(300)
	empty:SetText(L.THREAD_NONE)

	local content = CreateFrame("Frame", nil, parent)
	content:SetAllPoints()

	local current

	local function IsOwn(q)
		return q.author == ns:GetPlayerFullName()
	end

	-- Top: the question itself, with the asker's actions.
	local head = CreateFrame("Frame", nil, content)
	head:SetPoint("TOPLEFT")
	head:SetPoint("TOPRIGHT")
	W.Fill(head, W.COLORS.threadHead):SetAllPoints()
	W.EdgeLine(head, "BOTTOM")
	head:EnableMouse(true)
	head:SetScript("OnMouseUp", function(self, mouseButton)
		local q = current and get(current)
		if q and mouseButton == "RightButton" then
			ns.PlayerMenu.Open(self, q.author)
		end
	end)
	head:SetScript("OnEnter", function(self)
		GameTooltip:SetOwner(self, "ANCHOR_CURSOR")
		GameTooltip:SetText(L.THREAD_PLAYER_TIP, 1, 1, 1, 1, true)
		GameTooltip:Show()
	end)
	head:SetScript("OnLeave", function()
		GameTooltip:Hide()
	end)

	local withdraw = W.Button(head, L.THREAD_WITHDRAW, nil)
	withdraw:SetPoint("TOPRIGHT", -SIDE, -12)
	W.Tooltip(withdraw, L.THREAD_WITHDRAW, L.THREAD_WITHDRAW_TIP)
	local solve = W.Button(head, L.THREAD_SOLVE, nil, nil, "success")
	solve:SetPoint("RIGHT", withdraw, "LEFT", -6, 0)
	W.Tooltip(solve, L.THREAD_SOLVE, L.THREAD_SOLVE_TIP)

	local meta = W.Text(head, "GameFontNormalSmall")
	meta:SetPoint("TOPLEFT", SIDE, -19)
	meta:SetPoint("RIGHT", solve, "LEFT", -8, 0)
	meta:SetWordWrap(false)
	local title = W.Text(head, "GameFontHighlightLarge", W.TEXT)
	title:SetPoint("TOPLEFT", SIDE, -46)
	title:SetPoint("RIGHT", -SIDE, 0)
	title:SetWordWrap(true)
	local body = W.Text(head, "GameFontHighlight", W.SOFT)
	body:SetPoint("TOPLEFT", title, "BOTTOMLEFT", 0, -6)
	body:SetPoint("RIGHT", -SIDE, 0)
	body:SetWordWrap(true)
	body:SetSpacing(2)
	local context = W.Text(head, "GameFontHighlightSmall", W.MUTED)
	context:SetWordWrap(false)

	-- Bottom: answer field and "Send".
	local bottom = CreateFrame("Frame", nil, content)
	bottom:SetPoint("BOTTOMLEFT")
	bottom:SetPoint("BOTTOMRIGHT")
	bottom:SetHeight(BOTTOM_HEIGHT)
	W.Fill(bottom, W.COLORS.nav):SetAllPoints()
	W.EdgeLine(bottom, "TOP")

	local send = W.Button(bottom, L.THREAD_SEND, BUTTON_WIDTH, nil, "primary")
	send:SetHeight(ANSWER_HEIGHT)
	send:SetPoint("TOPRIGHT", -SIDE, -12)

	-- FAQ entries attached to the next answer, shown as removable chips.
	local refs = {}
	local refsRow = CreateFrame("Frame", nil, bottom)
	refsRow:SetPoint("TOPLEFT", SIDE, -12)
	refsRow:SetPoint("RIGHT", -SIDE, 0)
	refsRow:SetHeight(22)
	local refChips = {}
	local UpdateRefs
	for i = 1, C.FAQ_REFS_MAX do
		refChips[i] = W.Chip(refsRow, function(self)
			table.remove(refs, self.index)
			UpdateRefs()
		end, W.GOLD)
		refChips[i].index = i
	end

	local faqButton = ns.FaqRefs.CreatePickerButton(bottom, ANSWER_HEIGHT, function(id)
		for _, known in ipairs(refs) do
			if known == id then
				return
			end
		end
		if #refs < C.FAQ_REFS_MAX then
			refs[#refs + 1] = id
			UpdateRefs()
		end
	end, function()
		-- The question's text puts matching FAQ entries first.
		local q = current and get(current)
		if not q or type(q.title) ~= "string" then
			return nil
		end
		return type(q.body) == "string" and q.title .. " " .. q.body or q.title
	end)
	faqButton:SetPoint("RIGHT", send, "LEFT", -8, 0)

	local answerBox = W.TextArea(bottom, 200, ANSWER_HEIGHT, C.ANSWER_MAX)
	answerBox:SetPoint("TOPLEFT", SIDE, -12)
	answerBox:SetPoint("RIGHT", faqButton, "LEFT", -8, 0)
	answerBox.counter:ClearAllPoints()
	answerBox.counter:SetPoint("TOPLEFT", answerBox, "BOTTOMLEFT", 0, -4)

	-- Solved questions: a green bar with a check mark instead of the field.
	local solvedTint = W.Fill(bottom, W.COLORS.solved, "BORDER")
	solvedTint:SetAllPoints()
	local solvedLabel = W.Text(bottom, "GameFontNormal", W.GREEN)
	solvedLabel:SetPoint("LEFT", SIDE, 0)
	solvedLabel:SetText(CHECK .. " " .. L.THREAD_SOLVED_BANNER)

	local message = W.Text(bottom, "GameFontHighlightSmall", W.RED)
	message:SetPoint("LEFT", answerBox.counter, "RIGHT", 12, 0)
	message:SetPoint("RIGHT", -SIDE, 0)
	message:SetWordWrap(false)

	-- Answers in between.
	local scrollBox = CreateFrame("Frame", nil, content, "WowScrollBoxList")
	local scrollBar = CreateFrame("EventFrame", nil, content, "MinimalScrollBar")
	scrollBar:SetPoint("TOPLEFT", scrollBox, "TOPRIGHT", 4, 0)
	scrollBar:SetPoint("BOTTOMLEFT", scrollBox, "BOTTOMRIGHT", 4, 0)
	scrollBox:SetPoint("TOPLEFT", head, "BOTTOMLEFT", SIDE, -12)
	scrollBox:SetPoint("BOTTOMRIGHT", bottom, "TOPRIGHT", -SIDE - 12, 8)

	-- Measures wrapped text for the row heights.
	local measure = content:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
	measure:Hide()
	local function TextHeight(text, font, width)
		measure:SetFontObject(font)
		measure:SetWidth(width)
		measure:SetText(text)
		return measure:GetStringHeight()
	end

	-- Height of the question block for the current width.
	local function LayoutHead()
		local width = math.max(200, (head:GetWidth() > 0 and head:GetWidth() or parent:GetWidth()) - 2 * SIDE)
		local height = 46 + TextHeight(title:GetText() or "", "GameFontHighlightLarge", width)
		context:ClearAllPoints()
		if body:IsShown() then
			measure:SetSpacing(2)
			height = height + 6 + TextHeight(body:GetText() or "", "GameFontHighlight", width)
			measure:SetSpacing(0)
			context:SetPoint("TOPLEFT", body, "BOTTOMLEFT", 0, -8)
		else
			context:SetPoint("TOPLEFT", title, "BOTTOMLEFT", 0, -8)
		end
		context:SetPoint("RIGHT", -SIDE, 0)
		head:SetHeight(height + 8 + 12 + 14)
	end
	head:SetScript("OnSizeChanged", function(_, width)
		if width > 0 and content:IsShown() then
			LayoutHead()
		end
	end)

	local function InnerWidth()
		return math.max(100, scrollBox:GetWidth() - 2 * PAD - 2)
	end

	local function RowHeight(item)
		if item.folded then
			return PAD + 14 + PAD + GAP
		end
		return PAD + 14 + 6 + TextHeight(Util.EscapeText(item.answer.text), "GameFontHighlight", InnerWidth())
			+ ns.FaqRefs.Height(item.answer.faq) + PAD + GAP
	end

	-- Answers of ignored players the reader unfolded, by answer id.
	local unfolded = {}

	local function BuildRow(row)
		row.bg = W.Panel(row)
		row.bg:SetPoint("TOPLEFT")
		row.bg:SetPoint("BOTTOMRIGHT", 0, GAP)
		row.bg:EnableMouse(true)
		-- Left click unfolds an ignored player's answer, right click opens
		-- the player menu.
		row.bg:SetScript("OnMouseUp", function(self, mouseButton)
			local item = row.item
			if not item then
				return
			end
			if item.folded and mouseButton == "LeftButton" then
				unfolded[item.answer.id] = true
				view:Refresh()
			elseif mouseButton == "RightButton" then
				local q = get(current)
				if q then
					ns.PlayerMenu.Open(self, item.answer.author, IsOwn(q) and item.answer or nil, {
						question = q,
						answer = item.answer,
						onError = function(reason)
							view:ShowMessage(ns.UI.ReasonText(reason), true)
						end,
					})
				end
			end
		end)
		row.bg:SetScript("OnEnter", function(self)
			GameTooltip:SetOwner(self, "ANCHOR_CURSOR")
			GameTooltip:SetText(row.item and row.item.folded and L.THREAD_IGNORED_TIP or L.THREAD_PLAYER_TIP, 1, 1, 1, 1, true)
			GameTooltip:Show()
		end)
		row.bg:SetScript("OnLeave", function()
			GameTooltip:Hide()
		end)
		row.pin = CreateFrame("Button", nil, row.bg)
		row.pin:SetSize(PIN_SIZE, PIN_SIZE)
		row.pin:SetPoint("TOPRIGHT", -PAD, -PAD + 1)
		row.pinIcon = row.pin:CreateTexture(nil, "ARTWORK")
		row.pinIcon:SetAllPoints()
		row.pinIcon:SetTexture(PIN_ICON)
		row.pin:SetHighlightTexture("Interface\\Buttons\\ButtonHilight-Square", "ADD")
		row.pin:SetScript("OnClick", function()
			local q = get(current)
			local item = row.item
			if not q or not item then
				return
			end
			local state, reason = Pinned.Toggle(q, item.answer)
			if state == nil then
				view:ShowMessage(ns.UI.ReasonText(reason), true)
			end
		end)
		row.pin:SetScript("OnEnter", function(self)
			local pinned = row.item and row.item.answer and Pinned.IsPinned(row.item.answer.id)
			GameTooltip:SetOwner(self, "ANCHOR_LEFT")
			GameTooltip:SetText(pinned and L.THREAD_UNPIN or L.THREAD_PIN, 1, 1, 1)
			GameTooltip:AddLine(pinned and L.THREAD_UNPIN_TIP or L.THREAD_PIN_TIP, nil, nil, nil, true)
			GameTooltip:Show()
		end)
		row.pin:SetScript("OnLeave", function()
			GameTooltip:Hide()
		end)
		row.age = W.Text(row.bg, "GameFontHighlightSmall", W.MUTED)
		row.age:SetPoint("RIGHT", row.pin, "LEFT", -8, 0)
		row.age:SetJustifyH("RIGHT")
		row.head = W.Text(row.bg, "GameFontNormalSmall")
		row.head:SetPoint("TOPLEFT", PAD + 1, -PAD)
		row.head:SetPoint("RIGHT", row.age, "LEFT", -8, 0)
		row.head:SetWordWrap(false)
		row.body = W.Text(row.bg, "GameFontHighlight", W.TEXT)
		row.body:SetPoint("TOPLEFT", row.head, "BOTTOMLEFT", 0, -6)
		row.body:SetPoint("RIGHT", -PAD, 0)
		row.body:SetWordWrap(true)
		row.links = ns.FaqRefs.CreateLinks(row.bg, row.body)
	end

	local function FillRow(row, item)
		if not row.bg then
			BuildRow(row)
		end
		row.item = item
		local a = item.answer
		if item.folded then
			row.pin:Hide()
			row.age:SetText("")
			row.head:SetText("|cff999999" .. L.THREAD_IGNORED_ANSWER .. "|r")
			row.body:SetText("")
			row.body:Hide()
			row.links:Fill(nil)
			W.SetColors(row.bg, W.COLORS.window, W.COLORS.field)
			return
		end
		local pinned = Pinned.IsPinned(a.id)
		row.pin:Show()
		row.pinIcon:SetDesaturated(not pinned)
		row.pin:SetAlpha(pinned and 1 or 0.45)
		local favorite = Players.IsFavorite(a.author)
		row.head:SetText(("%s%s%s"):format(
			favorite and STAR or "",
			W.PlayerText(a.author, Players.GetClass(a.author)),
			Players.HasHelped(a.id) and (" " .. CHECK) or ""))
		row.age:SetText(W.Ago(Util.Now() - a.created))
		row.body:SetText(Util.EscapeText(a.text))
		row.body:Show()
		row.links:Fill(a.faq)
		if favorite then
			W.SetColors(row.bg, W.COLORS.cardFavorite, W.COLORS.favorite)
		else
			W.SetColors(row.bg, W.COLORS.card, W.COLORS.line)
		end
	end

	local listView = CreateScrollBoxListLinearView()
	listView:SetElementExtentCalculator(function(_, item)
		return RowHeight(item)
	end)
	listView:SetElementInitializer("Frame", FillRow)
	ScrollUtil.InitScrollBoxListWithScrollBar(scrollBox, scrollBar, listView)

	local function ShowMessage(text, isError)
		message:SetText(text or "")
		W.Color(message, isError and W.RED or W.GREEN)
	end
	function view:ShowMessage(text, isError)
		ShowMessage(text, isError)
	end

	function view:Refresh()
		local q = current and get(current)
		empty:SetShown(q == nil)
		content:SetShown(q ~= nil)
		if not q then
			return
		end
		meta:SetText(MetaText(q))
		title:SetText(Util.EscapeText(q.title))
		body:SetText(q.body and Util.EscapeText(q.body) or "")
		body:SetShown(q.body ~= nil)
		context:SetText(ContextText(q))
		LayoutHead()

		local items = {}
		for _, a in ipairs(Store.GetAnswers(q)) do
			local folded = Players.IsIgnored(a.author) and not unfolded[a.id]
			items[#items + 1] = { kind = "answer", answer = a, folded = folded }
		end
		scrollBox:SetDataProvider(CreateDataProvider(items), true)
		-- Only public questions take answers and actions.
		local live = Store.Get(q.id) ~= nil
		local own = live and IsOwn(q)
		local solved = q.solved ~= nil
		solve:SetShown(own)
		solve:SetEnabled(not solved and q.answerCount > 0)
		withdraw:SetShown(own)
		meta:SetPoint("RIGHT", own and solve or head, own and "LEFT" or "RIGHT", own and -8 or -SIDE, 0)
		-- Read-only threads keep a slim bar for messages (pin errors).
		local canAnswer = live and not solved
		answerBox:SetShown(canAnswer)
		send:SetShown(canAnswer)
		faqButton:SetShown(canAnswer)
		refsRow:SetShown(canAnswer and #refs > 0)
		if not canAnswer then
			faqButton:HidePicker()
		end
		message:ClearAllPoints()
		if canAnswer then
			local refsHeight = #refs > 0 and REFS_HEIGHT or 0
			bottom:SetHeight(BOTTOM_HEIGHT + refsHeight)
			answerBox:SetPoint("TOPLEFT", SIDE, -12 - refsHeight)
			send:SetPoint("TOPRIGHT", -SIDE, -12 - refsHeight)
			message:SetPoint("LEFT", answerBox.counter, "RIGHT", 12, 0)
		elseif solved then
			bottom:SetHeight(36)
			message:SetPoint("LEFT", solvedLabel, "RIGHT", 16, 0)
		else
			bottom:SetHeight(28)
			message:SetPoint("LEFT", SIDE, 0)
		end
		solvedTint:SetShown(solved)
		solvedLabel:SetShown(solved)
		message:SetPoint("RIGHT", -SIDE, 0)
	end

	-- Updates ages and the expiry line without resetting the scroll position.
	function view:Tick()
		local q = current and get(current)
		if q then
			meta:SetText(MetaText(q))
			context:SetText(ContextText(q))
			scrollBox:ForEachFrame(function(row)
				if row.item then
					FillRow(row, row.item)
				end
			end)
		end
	end

	function UpdateRefs()
		local chips = {}
		for i, chip in ipairs(refChips) do
			local id = refs[i]
			if id then
				local label = ns.FaqRefs.Title(id) or id
				if #label > REF_CHIP_MAX then
					label = label:sub(1, REF_CHIP_MAX):gsub("[\128-\191]*$", ""):gsub("[\192-\255]$", "") .. "…"
				end
				chip:SetLabel(L.FAQ_REF_CHIP:format(label), true)
				chip:SetActive(false)
				chip:Show()
				chips[#chips + 1] = chip
			else
				chip:Hide()
			end
		end
		W.FlowChips(chips, refsRow, 0, 0, 6)
		view:Refresh()
	end

	function view:SetQuestion(id)
		if current ~= id then
			answerBox:SetText("")
			wipe(refs)
			faqButton:HidePicker()
			ShowMessage(nil)
		end
		current = id
		self:Refresh()
	end

	function view:GetQuestion()
		return current
	end

	send:SetScript("OnClick", function()
		local text = strtrim(answerBox:GetText())
		if text == "" and #refs > 0 then
			-- Only FAQ links: the text names them, in the question's
			-- language, for players without them (older versions).
			local q = get(current)
			text = ns.FaqRefs.FallbackText(refs, q and q.lang)
		end
		if text == "" then
			return
		end
		local a, reason = ns.Net.Answer(current, text, #refs > 0 and CopyTable(refs) or nil)
		if a then
			answerBox:SetText("")
			wipe(refs)
			UpdateRefs()
			answerBox.editBox:ClearFocus()
			ShowMessage(nil)
		else
			ShowMessage(ns.UI.ReasonText(reason), true)
		end
	end)
	solve:SetScript("OnClick", function()
		local ok, reason = ns.Net.Solve(current)
		if not ok then
			ShowMessage(ns.UI.ReasonText(reason), true)
		end
	end)
	StaticPopupDialogs.ASKAZEROTH_WITHDRAW = {
		text = L.THREAD_WITHDRAW_CONFIRM,
		button1 = YES,
		button2 = NO,
		OnAccept = function()
			local ok, reason = ns.Net.Withdraw(current)
			if not ok then
				ShowMessage(ns.UI.ReasonText(reason), true)
			end
		end,
		timeout = 0,
		whileDead = true,
		hideOnEscape = true,
	}
	withdraw:SetScript("OnClick", function()
		StaticPopup_Show("ASKAZEROTH_WITHDRAW")
	end)

	ns.RegisterCallback(view, "AA_PLAYERS_CHANGED", function()
		if parent:IsVisible() then
			view:Refresh()
		end
	end)
	-- Pin icons only; keeps the scroll position.
	ns.RegisterCallback(view, "AA_PINNED_CHANGED", function()
		if parent:IsVisible() then
			scrollBox:ForEachFrame(function(row)
				if row.item then
					FillRow(row, row.item)
				end
			end)
		end
	end)

	view:Refresh()
	return view
end
