-- luacheck: read globals CreateScrollBoxListLinearView ScrollUtil CreateDataProvider StaticPopup_Show YES NO
-- luacheck: globals StaticPopupDialogs
local _, ns = ...

-- Thread of one question: the question with the asker's context, every
-- answer, when it disappears, and the answer field. The asker also gets
-- "Mark as solved" and "Withdraw".
local ThreadView = {}
ns.ThreadView = ThreadView

local L = ns.L
local C = ns.C
local W = ns.Widgets
local Util = ns.Util
local Store = ns.Store

local PAD = 8
local ANSWER_HEIGHT = 64

local function ContextText(q)
	local ctx = q.ctx or {}
	local parts = { W.PlayerText(q.author, ctx.class) }
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
	local left = Store.ExpiresAt(q) - Util.Now()
	local status = Store.GetStatus(q)
	if status == "solved" then
		return L.THREAD_SOLVED_EXPIRES:format(W.Minutes(left))
	elseif status == "answered" then
		return L.THREAD_ANSWERED_EXPIRES:format(W.Minutes(left))
	end
	return L.THREAD_OPEN_EXPIRES:format(W.Minutes(left))
end

function ThreadView.Create(parent)
	local view = {}

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
		return PAD + 14 + 2 + TextHeight(Util.EscapeText(item.answer.text), "GameFontHighlight", width) + PAD + 4
	end

	local function BuildRow(row)
		row.bg = W.Panel(row, { 0.08, 0.08, 0.1, 1 }, { 0.18, 0.18, 0.22, 1 })
		row.bg:SetPoint("TOPLEFT")
		row.bg:SetPoint("BOTTOMRIGHT", 0, 4)
		row.head = W.Text(row.bg, "GameFontNormalLarge")
		row.head:SetPoint("TOPLEFT", PAD, -PAD)
		row.head:SetPoint("RIGHT", -PAD, 0)
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
			row.head:SetText(("%s  |cff9d9d9d%s|r"):format(W.PlayerText(a.author), W.Ago(now - a.created)))
			row.sub:SetText("")
			row.body:ClearAllPoints()
			row.body:SetPoint("TOPLEFT", row.head, "BOTTOMLEFT", 0, -2)
			row.body:SetPoint("RIGHT", -PAD, 0)
			row.body:SetText(Util.EscapeText(a.text))
			row.body:Show()
			row.bg:SetBackdropBorderColor(0.18, 0.18, 0.22, 1)
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

	local current

	local function ShowMessage(text, isError)
		message:SetText(text or "")
		W.Color(message, isError and W.RED or W.GREEN)
	end

	local function IsOwn(q)
		return q.author == ns:GetPlayerFullName()
	end

	function view:Refresh()
		local q = current and Store.Get(current)
		empty:SetShown(q == nil)
		content:SetShown(q ~= nil)
		if not q then
			return
		end
		local items = { { kind = "question", question = q } }
		for _, a in ipairs(Store.GetAnswers(q)) do
			items[#items + 1] = { kind = "answer", answer = a }
		end
		scrollBox:SetDataProvider(CreateDataProvider(items), true)
		expiry:SetText(ExpiryText(q))
		local own = IsOwn(q)
		local solved = q.solved ~= nil
		solve:SetShown(own)
		solve:SetEnabled(not solved and q.answerCount > 0)
		withdraw:SetShown(own)
		answerBox:SetShown(not solved)
		send:SetShown(not solved)
	end

	-- Updates ages and the expiry line without resetting the scroll position.
	function view:Tick()
		local q = current and Store.Get(current)
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

	view:Refresh()
	return view
end
