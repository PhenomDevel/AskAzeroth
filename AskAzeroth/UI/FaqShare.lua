-- luacheck: read globals ChatFrameUtil ChatEdit_GetActiveWindow ChatFrame_OpenChat GameTooltip
local _, ns = ...

-- FAQ entries in the normal chat.
--
-- Sending: a shift-click on a FAQ entry puts it into the chat input as
-- plain text, "AskAzeroth: <question> <answer>", the answer shortened
-- with "…" so the whole line fits the chat's limit (C.CHAT_MESSAGE_MAX
-- bytes, counting what is already typed). Players cannot send links of
-- their own, so the line carries nothing but text: players without the
-- addon read the question, the answer and the addon's name.
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
-- Name in front of a shared question; the same in every language.
C.FAQ_SHARE_TAG = "AskAzeroth"

local TAG_OPEN = C.FAQ_SHARE_TAG .. ": "
local ELLIPSIS = "…"

FaqShare.LINK_PREFIX = "addon:AskAzeroth:faq:"
local LINK_COLOR = W.Hex(W.GOLD)
local LOGO = "|TInterface\\AddOns\\AskAzeroth\\Media\\Logo:0|t"

-- The first bytes of text, at most maxBytes, cut after a whole UTF-8
-- character and, where possible, at a space.
local function Cut(text, maxBytes)
	if #text <= maxBytes then
		return text
	end
	local stop = maxBytes
	-- A continuation byte (10xxxxxx) after the cut means a split character.
	while stop > 0 and (text:byte(stop + 1) or 0) >= 0x80 and (text:byte(stop + 1) or 0) < 0xC0 do
		stop = stop - 1
	end
	local cut = text:sub(1, stop)
	local space = cut:find(" [^ ]*$")
	if space and space > maxBytes / 2 then
		cut = cut:sub(1, space - 1)
	end
	return (cut:gsub("[%s%p]+$", ""))
end

-- Chat line of an entry in lang within maxBytes, nil when not even the
-- question fits.
function FaqShare.Format(entry, lang, maxBytes)
	local q, a = Faq.GetText(entry, lang)
	local tag = TAG_OPEN .. q
	if #tag > maxBytes then
		return nil
	end
	local room = maxBytes - #tag - 1
	a = FaqMarkup.Strip(a)
	if #a > room then
		a = room > #ELLIPSIS + 10 and Cut(a, room - #ELLIPSIS) .. ELLIPSIS or ""
	end
	return a ~= "" and tag .. " " .. a or tag
end

local function ActiveEditBox()
	if ChatFrameUtil and ChatFrameUtil.GetActiveWindow then
		return ChatFrameUtil.GetActiveWindow()
	end
	return ChatEdit_GetActiveWindow and ChatEdit_GetActiveWindow()
end

local function OpenChat(text)
	if ChatFrameUtil and ChatFrameUtil.OpenChat then
		ChatFrameUtil.OpenChat(text)
	elseif ChatFrame_OpenChat then
		ChatFrame_OpenChat(text)
	end
end

-- Puts entry id into the chat input, in lang (default: the reader's): at
-- the cursor of an open input, otherwise in a newly opened one. Returns
-- true when something was inserted.
function FaqShare.Insert(id, lang)
	local entry = Faq.Get(id)
	if not entry then
		return false
	end
	lang = lang or ns.FaqRefs.ReaderLanguage()
	local editBox = ActiveEditBox()
	if editBox and editBox.Insert then
		local typed = editBox:GetText() or ""
		local before = typed ~= "" and not typed:find("%s$") and " " or ""
		local line = FaqShare.Format(entry, lang, C.CHAT_MESSAGE_MAX - #typed - #before)
		if not line then
			return false
		end
		editBox:Insert(before .. line)
		return true
	end
	local line = FaqShare.Format(entry, lang, C.CHAT_MESSAGE_MAX)
	if line then
		OpenChat(line)
	end
	return line ~= nil
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
