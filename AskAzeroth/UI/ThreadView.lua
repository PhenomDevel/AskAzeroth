-- luacheck: read globals CreateScrollBoxListLinearView ScrollUtil CreateDataProvider StaticPopup_Show YES NO GameTooltip
-- luacheck: globals StaticPopupDialogs
local _, ns = ...

-- Thread of one question: the question with the asker's context, every
-- answer, when it disappears, and the answer field. The asker also gets
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

local PAD = 8
local PIN_SIZE = 16
local PIN_ICON = "Interface\\Icons\\INV_Misc_Note_01"
local ANSWER_HEIGHT = 64

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
	local category = C.GetCategory(q.cat)
	parts[#parts + 1] = category and category.label or q.cat
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

function ThreadView.Create(parent, get)
	local view = {}
	get = get or Store.Get

	local empty = W.Text(parent, "GameFontDisable")
	empty:SetPoint("CENTER")
	empty:SetJustifyH("CENTER")
	empty:SetWidth(300)
	empty:SetText(L.THREAD_NONE)

	local content = CreateFrame("Frame", nil, parent)
	content:SetAllPoints()

	-- Bottom: answer field and actions.
	local bottom = CreateFrame("Frame", nil, content)
	bottom:SetPoint("BOTTOMLEFT")
	bottom:SetPoint("BOTTOMRIGHT")
	bottom:SetHeight(ANSWER_HEIGHT + 56)

	local expiry = W.Text(bottom, "GameFontHighlightSmall", W.MUTED)
	expiry:SetPoint("TOPLEFT", 0, -2)
	expiry:SetPoint("RIGHT")

	local answerBox = W.TextArea(bottom, 200, ANSWER_HEIGHT, C.ANSWER_MAX)
	answerBox:SetPoint("TOPLEFT", 0, -20)
	answerBox:SetPoint("RIGHT", -96, 0)
	answerBox.counter:ClearAllPoints()
	answerBox.counter:SetPoint("TOPLEFT", answerBox, "BOTTOMLEFT", 0, -4)

	local message = W.Text(bottom, "GameFontHighlightSmall", W.RED)
	message:SetPoint("LEFT", answerBox.counter, "RIGHT", 12, 0)
	message:SetPoint("RIGHT", -96, 0)
	message:SetWordWrap(false)

	local send = W.Button(bottom, L.THREAD_SEND, 88)
	send:SetPoint("TOPRIGHT", 0, -20)

	local solve = W.Button(bottom, L.THREAD_SOLVE, 88)
	solve:SetPoint("TOPRIGHT", send, "BOTTOMRIGHT", 0, -4)
	W.Tooltip(solve, L.THREAD_SOLVE, L.THREAD_SOLVE_TIP)

	local withdraw = W.Button(bottom, L.THREAD_WITHDRAW, 88)
	withdraw:SetPoint("TOPRIGHT", solve, "BOTTOMRIGHT", 0, -4)
	W.Tooltip(withdraw, L.THREAD_WITHDRAW, L.THREAD_WITHDRAW_TIP)

	-- Scrolling question + answers above.
	local scrollBox = CreateFrame("Frame", nil, content, "WowScrollBoxList")
	scrollBox:SetPoint("TOPLEFT")
	scrollBox:SetPoint("BOTTOMRIGHT", bottom, "TOPRIGHT", -16, 6)
	local scrollBar = CreateFrame("EventFrame", nil, content, "MinimalScrollBar")
	scrollBar:SetPoint("TOPLEFT", scrollBox, "TOPRIGHT", 4, 0)
	scrollBar:SetPoint("BOTTOMLEFT", scrollBox, "BOTTOMRIGHT", 4, 0)

	-- Measures wrapped text for the row heights.
	local measure = content:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
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

	local function RowHeight(item)
		local width = InnerWidth()
		if item.kind == "question" then
			local q = item.question
			local height = PAD + TextHeight(Util.EscapeText(q.title), "GameFontNormalLarge", width) + 4 + 14
			if q.body then
				height = height + 6 + TextHeight(Util.EscapeText(q.body), "GameFontHighlight", width)
			end
			return height + PAD + 6
		end
		if item.folded then
			return PAD + 14 + PAD + 4
		end
		return PAD + 14 + 2 + TextHeight(Util.EscapeText(item.answer.text), "GameFontHighlight", width) + PAD + 4
	end

	local current
	-- Answers of ignored players the reader unfolded, by answer id.
	local unfolded = {}

	local function IsOwn(q)
		return q.author == ns:GetPlayerFullName()
	end

	local function BuildRow(row)
		row.bg = W.Panel(row, { 0.08, 0.08, 0.1, 1 }, { 0.18, 0.18, 0.22, 1 })
		row.bg:SetPoint("TOPLEFT")
		row.bg:SetPoint("BOTTOMRIGHT", 0, 4)
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
				if item.kind == "question" then
					ns.PlayerMenu.Open(self, item.question.author)
				elseif q then
					ns.PlayerMenu.Open(self, item.answer.author, IsOwn(q) and item.answer or nil)
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
		row.pin:SetPoint("TOPRIGHT", -PAD, -PAD + 2)
		row.pinIcon = row.pin:CreateTexture(nil, "ARTWORK")
		row.pinIcon:SetAllPoints()
		row.pinIcon:SetTexture(PIN_ICON)
		row.pin:SetHighlightTexture("Interface\\Buttons\\ButtonHilight-Square", "ADD")
		row.pin:SetScript("OnClick", function()
			local q = get(current)
			local item = row.item
			if not q or not item or item.kind ~= "answer" then
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
		row.head = W.Text(row.bg, "GameFontNormalLarge")
		row.head:SetPoint("TOPLEFT", PAD, -PAD)
		row.head:SetPoint("RIGHT", -PAD - PIN_SIZE - 4, 0)
		row.head:SetWordWrap(true)
		row.sub = W.Text(row.bg, "GameFontHighlightSmall", W.MUTED)
		row.sub:SetPoint("TOPLEFT", row.head, "BOTTOMLEFT", 0, -4)
		row.sub:SetPoint("RIGHT", -PAD, 0)
		row.sub:SetWordWrap(false)
		row.body = W.Text(row.bg, "GameFontHighlight", W.TEXT)
		row.body:SetPoint("TOPLEFT", row.sub, "BOTTOMLEFT", 0, -6)
		row.body:SetPoint("RIGHT", -PAD, 0)
		row.body:SetWordWrap(true)
	end

	local function FillRow(row, item)
		if not row.bg then
			BuildRow(row)
		end
		local now = Util.Now()
		row.item = item
		row.pin:SetShown(item.kind == "answer" and not item.folded)
		if item.kind == "answer" then
			local pinned = Pinned.IsPinned(item.answer.id)
			row.pinIcon:SetDesaturated(not pinned)
			row.pin:SetAlpha(pinned and 1 or 0.45)
		end
		if item.kind == "question" then
			local q = item.question
			row.head:SetFontObject("GameFontNormalLarge")
			row.head:SetText(Util.EscapeText(q.title))
			row.sub:SetText(ContextText(q))
			row.body:SetText(q.body and Util.EscapeText(q.body) or "")
			row.body:SetShown(q.body ~= nil)
			row.bg:SetBackdropBorderColor(0.4, 0.33, 0.16, 1)
		else
			local a = item.answer
			row.head:SetFontObject("GameFontHighlightSmall")
			row.sub:SetText("")
			if item.folded then
				row.head:SetText("|cff9d9d9d" .. L.THREAD_IGNORED_ANSWER .. "|r")
				row.body:SetText("")
				row.body:Hide()
				row.bg:SetBackdropBorderColor(0.18, 0.18, 0.22, 1)
				return
			end
			local favorite = Players.IsFavorite(a.author)
			row.head:SetText(("%s%s%s  |cff9d9d9d%s|r"):format(
				favorite and STAR or "",
				W.PlayerText(a.author, Players.GetClass(a.author)),
				Players.HasHelped(a.id) and (" " .. CHECK) or "",
				W.Ago(now - a.created)))
			row.body:ClearAllPoints()
			row.body:SetPoint("TOPLEFT", row.head, "BOTTOMLEFT", 0, -2)
			row.body:SetPoint("RIGHT", -PAD, 0)
			row.body:SetText(Util.EscapeText(a.text))
			row.body:Show()
			if favorite then
				row.bg:SetBackdropBorderColor(0.79, 0.635, 0.29, 1)
			else
				row.bg:SetBackdropBorderColor(0.18, 0.18, 0.22, 1)
			end
			return
		end
		row.body:ClearAllPoints()
		row.body:SetPoint("TOPLEFT", row.sub, "BOTTOMLEFT", 0, -6)
		row.body:SetPoint("RIGHT", -PAD, 0)
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
		local items = { { kind = "question", question = q } }
		for _, a in ipairs(Store.GetAnswers(q)) do
			local folded = Players.IsIgnored(a.author) and not unfolded[a.id]
			items[#items + 1] = { kind = "answer", answer = a, folded = folded }
		end
		scrollBox:SetDataProvider(CreateDataProvider(items), true)
		expiry:SetText(ExpiryText(q))
		-- Only public questions take answers and actions.
		local live = Store.Get(q.id) ~= nil
		local own = live and IsOwn(q)
		local solved = q.solved ~= nil
		solve:SetShown(own)
		solve:SetEnabled(not solved and q.answerCount > 0)
		withdraw:SetShown(own)
		answerBox:SetShown(live and not solved)
		send:SetShown(live and not solved)
	end

	-- Updates ages and the expiry line without resetting the scroll position.
	function view:Tick()
		local q = current and get(current)
		if q then
			expiry:SetText(ExpiryText(q))
		end
	end

	function view:SetQuestion(id)
		if current ~= id then
			answerBox:SetText("")
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
		if text == "" then
			return
		end
		local a, reason = ns.Net.Answer(current, text)
		if a then
			answerBox:SetText("")
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
