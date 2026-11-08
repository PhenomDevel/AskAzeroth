-- luacheck: read globals ChatFrameUtil ChatEdit_GetActiveWindow ChatFrame_OpenChat GameTooltip C_Timer C_ChatInfo SendChatMessage DEFAULT_CHAT_FRAME GetChannelName
local _, ns = ...

-- FAQ entries in the normal chat.
--
-- Sending: a shift-click on a FAQ entry puts it into the chat input as
-- plain text, "AskAzeroth: <question> <answer>". Longer than the chat's
-- limit (C.CHAT_MESSAGE_MAX bytes, counting what is already typed), it is
-- split into numbered messages that the player sends one by one with
-- Enter. Players cannot send links of
-- their own, so the line carries nothing but text: players without the
-- addon read the question, the answer and the addon's name.
--
-- Button: FaqShare.Send sends all parts at once to the chat the player
-- would type into (say, party, guild, whisper, channel …).
--
-- Receiving: FaqShare.Annotate (called by the chat filter in
-- UI/ChatGlossary.lua) turns the word "AskAzeroth" into a link when the
-- text after "AskAzeroth: " starts with a question of the FAQ, in any FAQ
-- language; question and answer stay plain text after it. Hovering shows
-- the entry in the reader's language, a click opens it in the FAQ, a
-- shift-click shares it again. Unknown questions (a newer or older addon
-- version) stay plain text.
local FaqShare = {}
ns.FaqShare = FaqShare

local L = ns.L
local C = ns.C
local W = ns.Widgets
local Faq = ns.Faq
local FaqMarkup = ns.FaqMarkup

-- Longest chat message in bytes.
C.CHAT_MESSAGE_MAX = 255
-- Most chat messages one shared entry is split into.
C.FAQ_SHARE_PARTS_MAX = 6
-- Name in front of a shared question; the same in every language.
C.FAQ_SHARE_TAG = "AskAzeroth"

local TAG_OPEN = C.FAQ_SHARE_TAG .. ": "
local ELLIPSIS = "…"

FaqShare.LINK_PREFIX = "addon:AskAzeroth:faq:"
local LINK_COLOR = W.Hex(W.GOLD)
local LOGO = "|TInterface\\AddOns\\AskAzeroth\\Media\\Logo:0|t"

-- Byte where text is cut to fit maxBytes: after a whole UTF-8 character
-- and, where possible, before a space.
local function CutPoint(text, maxBytes)
	if #text <= maxBytes then
		return #text
	end
	local stop = maxBytes
	-- A continuation byte (10xxxxxx) after the cut means a split character.
	while stop > 0 and (text:byte(stop + 1) or 0) >= 0x80 and (text:byte(stop + 1) or 0) < 0xC0 do
		stop = stop - 1
	end
	local space = text:sub(1, stop + 1):find(" [^ ]*$")
	if space and space > maxBytes / 2 then
		return space - 1
	end
	return stop
end

-- Chat messages of an entry in lang: "AskAzeroth: <question> <answer>",
-- split at words into messages of at most C.CHAT_MESSAGE_MAX bytes, each
-- with " (i/n)" when there are several. firstMax is the room in the first
-- message (less when text is typed already). The question always stays
-- whole in the first message, so receivers recognise it. nil when it does
-- not fit there.
function FaqShare.Parts(entry, lang, firstMax)
	local q, a = Faq.GetText(entry, lang)
	local head = TAG_OPEN .. q
	local text = head .. " " .. FaqMarkup.Strip(a)
	if #text <= firstMax then
		return { text }
	end
	local reserve = #(" (%d/%d)"):format(C.FAQ_SHARE_PARTS_MAX, C.FAQ_SHARE_PARTS_MAX)
	if #head + reserve > firstMax then
		return nil
	end
	local parts, rest = {}, text
	while rest ~= "" do
		local room = (#parts == 0 and firstMax or C.CHAT_MESSAGE_MAX) - reserve
		if #parts == C.FAQ_SHARE_PARTS_MAX - 1 and #rest > room then
			-- Last allowed message: shorten what is left.
			rest = rest:sub(1, CutPoint(rest, room - #ELLIPSIS)):gsub("[%s%p]+$", "") .. ELLIPSIS
		end
		local cut = math.max(CutPoint(rest, room), #parts == 0 and #head or 1)
		parts[#parts + 1] = (rest:sub(1, cut):gsub("%s+$", ""))
		rest = rest:sub(cut + 1):gsub("^%s+", "")
	end
	if #parts > 1 then
		for i, part in ipairs(parts) do
			parts[i] = ("%s (%d/%d)"):format(part, i, #parts)
		end
	end
	return parts
end

local function ActiveEditBox()
	if ChatFrameUtil and ChatFrameUtil.GetActiveWindow then
		return ChatFrameUtil.GetActiveWindow()
	end
	return ChatEdit_GetActiveWindow and ChatEdit_GetActiveWindow()
end

local function OpenChat(text, chatFrame)
	if ChatFrameUtil and ChatFrameUtil.OpenChat then
		ChatFrameUtil.OpenChat(text, chatFrame)
	elseif ChatFrame_OpenChat then
		ChatFrame_OpenChat(text, chatFrame)
	end
end

-- Messages still to come: { box = edit box, parts = {…}, index = part in
-- the box now }. The addon never sends chat itself: the player sends every
-- part with Enter, then the next one is put into the input (same chat
-- type, the game keeps it). Escape, or sending something without the
-- part, drops the rest.
local pending

local function Hook(box)
	if not box or box.askAzerothShare or not box.HookScript then
		return
	end
	box.askAzerothShare = true
	-- The text is gone once the game has sent it: keep the last one.
	box:HookScript("OnTextChanged", function(self)
		local text = self:GetText()
		if text and text ~= "" then
			self.askAzerothLastText = text
		end
	end)
	box:HookScript("OnEnterPressed", function(self)
		local job = pending
		if not job or job.box ~= self then
			return
		end
		local sent = self.askAzerothLastText or ""
		if not sent:find(job.parts[job.index], 1, true) or job.index >= #job.parts then
			pending = nil
			return
		end
		job.index = job.index + 1
		-- After the game has closed the input.
		C_Timer.After(0, function()
			if pending == job then
				OpenChat(job.parts[job.index], self.chatFrame)
			end
		end)
	end)
	box:HookScript("OnEscapePressed", function(self)
		if pending and pending.box == self then
			pending = nil
		end
	end)
end

-- Puts entry id into the chat input, in lang (default: the reader's): at
-- the cursor of an open input, otherwise in a newly opened one. Longer
-- entries follow part by part, one per Enter (FaqShare.Parts). Returns
-- true when something was inserted.
function FaqShare.Insert(id, lang)
	local entry = Faq.Get(id)
	if not entry then
		return false
	end
	lang = lang or ns.FaqRefs.ReaderLanguage()
	pending = nil
	local box = ActiveEditBox()
	local parts
	if box and box.Insert then
		local typed = box:GetText() or ""
		local before = typed ~= "" and not typed:find("%s$") and " " or ""
		parts = FaqShare.Parts(entry, lang, C.CHAT_MESSAGE_MAX - #typed - #before)
		if not parts then
			return false
		end
		box:Insert(before .. parts[1])
	else
		parts = FaqShare.Parts(entry, lang, C.CHAT_MESSAGE_MAX)
		OpenChat(parts[1])
		box = ActiveEditBox()
	end
	if #parts > 1 and box then
		Hook(box)
		pending = { box = box, parts = parts, index = 1 }
	end
	return true
end

--------------------------------------------------------------------------------
-- Sending with a button.
--------------------------------------------------------------------------------

-- Chat types the button sends to; others (Battle.net whispers, emotes)
-- fall back to FaqShare.Insert.
local SENDABLE = {
	SAY = true, YELL = true, PARTY = true, RAID = true, INSTANCE_CHAT = true,
	GUILD = true, OFFICER = true, WHISPER = true, CHANNEL = true,
}

-- The chat the player would type into now: the open input, otherwise the
-- main chat window's (it keeps the last chat type).
local function TargetBox()
	return ActiveEditBox() or (DEFAULT_CHAT_FRAME and DEFAULT_CHAT_FRAME.editBox)
end

-- Chat type, target (whisper name or channel number) and a label for the
-- player of the current chat, or nil when the button cannot send there.
function FaqShare.Target()
	local box = TargetBox()
	local chatType = box and box.GetAttribute and box:GetAttribute("chatType")
	if not SENDABLE[chatType] then
		return nil
	end
	if chatType == "WHISPER" then
		local name = box:GetAttribute("tellTarget")
		if type(name) ~= "string" or name == "" then
			return nil
		end
		return chatType, name, name
	end
	if chatType == "CHANNEL" then
		local number = tonumber(box:GetAttribute("channelTarget"))
		local name
		if number then
			name = select(2, GetChannelName(number))
		end
		if type(name) ~= "string" or name == "" then
			return nil
		end
		return chatType, number, ("%d. %s"):format(number, name)
	end
	return chatType, nil, _G["CHAT_MSG_" .. chatType] or chatType
end

-- Sends entry id in lang to the current chat (FaqShare.Target), all parts
-- at once. Must run in a click: say, yell and channels need a hardware
-- event. Where the button cannot send, the entry goes into the chat input
-- instead. Returns true when it was sent.
function FaqShare.Send(id, lang)
	local entry = Faq.Get(id)
	if not entry then
		return false
	end
	if ns.Comm.InLockdown() then
		ns:Print(L.FAQ_SEND_LOCKED)
		return false
	end
	local chatType, target = FaqShare.Target()
	local send = C_ChatInfo and C_ChatInfo.SendChatMessage or SendChatMessage
	if not chatType or not send then
		FaqShare.Insert(id, lang)
		return false
	end
	pending = nil
	for _, part in ipairs(FaqShare.Parts(entry, lang or ns.FaqRefs.ReaderLanguage(), C.CHAT_MESSAGE_MAX)) do
		send(part, chatType, nil, target)
	end
	return true
end

--------------------------------------------------------------------------------
-- Receiving.
--------------------------------------------------------------------------------

-- Questions of every FAQ language as { question, entry }, longest first,
-- built on first use.
local questions

local function EntryAt(text, init)
	if not questions then
		questions = {}
		local seen = {}
		for _, entry in ipairs(Faq.GetAll()) do
			for _, lang in ipairs(C.FAQ_LANGUAGES) do
				local texts = entry[lang]
				if texts and not seen[texts.q] then
					seen[texts.q] = true
					questions[#questions + 1] = { texts.q, entry }
				end
			end
		end
		table.sort(questions, function(a, b)
			return #a[1] > #b[1]
		end)
	end
	for _, item in ipairs(questions) do
		if text:sub(init, init + #item[1] - 1) == item[1] then
			return item[2]
		end
	end
	return nil
end

local function Link(entry)
	return ("|c%s|H%s%s|h%s%s|h|r"):format(LINK_COLOR, FaqShare.LINK_PREFIX, entry.id, LOGO, C.FAQ_SHARE_TAG)
end

-- text with "AskAzeroth" turned into a link wherever "AskAzeroth: " is
-- followed by a FAQ question. Only used on plain chat text: players cannot
-- send escape sequences.
function FaqShare.Annotate(text)
	if not text:find(TAG_OPEN, 1, true) then
		return text
	end
	local parts, last, init = {}, 0, 1
	while true do
		local first = text:find(TAG_OPEN, init, true)
		if not first then
			break
		end
		local entry = EntryAt(text, first + #TAG_OPEN)
		if entry then
			parts[#parts + 1] = text:sub(last + 1, first - 1)
			parts[#parts + 1] = Link(entry)
			last = first + #C.FAQ_SHARE_TAG - 1
		end
		init = first + #TAG_OPEN
	end
	if last == 0 then
		return text
	end
	parts[#parts + 1] = text:sub(last + 1)
	return table.concat(parts)
end

-- FAQ entry of a chat link made by FaqShare.Annotate, or nil.
function FaqShare.EntryOfLink(link)
	if type(link) ~= "string" or link:sub(1, #FaqShare.LINK_PREFIX) ~= FaqShare.LINK_PREFIX then
		return nil
	end
	return Faq.Get(link:sub(#FaqShare.LINK_PREFIX + 1))
end

-- Tooltip of a FAQ entry at owner: question and answer in the reader's
-- language, and what a click does.
function FaqShare.ShowTooltip(owner, entry)
	local q, a = Faq.GetText(entry, ns.FaqRefs.ReaderLanguage())
	GameTooltip:SetOwner(owner, "ANCHOR_CURSOR")
	GameTooltip:SetText(q, W.GOLD[1], W.GOLD[2], W.GOLD[3], 1, true)
	GameTooltip:AddLine(FaqMarkup.Strip(a), 1, 1, 1, true)
	GameTooltip:AddLine(L.FAQ_REF_OPEN, W.MUTED[1], W.MUTED[2], W.MUTED[3], true)
	GameTooltip:AddLine(L.FAQ_SHARE_HINT, W.MUTED[1], W.MUTED[2], W.MUTED[3], true)
	GameTooltip:Show()
end
