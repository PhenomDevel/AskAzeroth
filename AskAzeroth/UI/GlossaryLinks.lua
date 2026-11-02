-- luacheck: read globals GameTooltip
local _, ns = ...

-- Glossary terms inside the addon's own texts (FAQ answers): the first
-- place of each term becomes a coloured link; hovering shows the short
-- explanation, a click opens the term in the glossary. The links only work
-- in frames prepared with GlossaryLinks.Enable.
local GlossaryLinks = {}
ns.GlossaryLinks = GlossaryLinks

local L = ns.L
local C = ns.C
local W = ns.Widgets
local Glossary = ns.Glossary

local LINK_TYPE = "askazeroth-glossary"
local FAQ_LINK_TYPE = "askazeroth-faq"
local LINK_COLOR = W.Hex(W.BLUE)

-- text with links for the glossary terms in it (plain text in lang, or
-- text with "|" escaped as "||").
function GlossaryLinks.Annotate(text, lang)
	local found = Glossary.Find(text, lang)
	if #found == 0 then
		return text
	end
	local parts, last = {}, 0
	for _, place in ipairs(found) do
		local first, stop, entry = place[1], place[2], place[3]
		parts[#parts + 1] = text:sub(last + 1, first - 1)
		parts[#parts + 1] = ("|c%s|H%s:%s|h%s|h|r"):format(LINK_COLOR, LINK_TYPE, entry.id, text:sub(first, stop))
		last = stop
	end
	parts[#parts + 1] = text:sub(last + 1)
	return table.concat(parts)
end

-- Player text (question or answer) for a font string: "|" escaped, the
-- glossary terms of lang (the thread's language) as links. Rows are filled
-- again on every scroll, so the results are kept for a while.
local playerCache, playerCacheSize = {}, 0
local PLAYER_CACHE_MAX = 300

function GlossaryLinks.PlayerText(text, lang)
	if type(text) ~= "string" then
		return ""
	end
	lang = C.IsLanguage(lang) and lang or ns.FaqRefs.ReaderLanguage()
	local key = lang .. "\n" .. text
	local result = playerCache[key]
	if not result then
		if playerCacheSize >= PLAYER_CACHE_MAX then
			playerCache, playerCacheSize = {}, 0
		end
		result = GlossaryLinks.Annotate(ns.Util.EscapeText(text), lang)
		playerCache[key] = result
		playerCacheSize = playerCacheSize + 1
	end
	return result
end

-- Tooltip of a glossary entry at owner: term, other names, explanation.
-- lang (optional) is the language to show, default the reader's.
function GlossaryLinks.ShowTooltip(owner, entry, lang, withClickHint)
	local term, alt, def = Glossary.GetText(entry, lang or ns.FaqRefs.ReaderLanguage())
	GameTooltip:SetOwner(owner, "ANCHOR_CURSOR")
	GameTooltip:SetText(term, W.GOLD[1], W.GOLD[2], W.GOLD[3])
	if #alt > 0 then
		GameTooltip:AddLine(L.GLOSSARY_ALSO:format(table.concat(alt, ", ")), W.MUTED[1], W.MUTED[2], W.MUTED[3], true)
	end
	GameTooltip:AddLine(def, 1, 1, 1, true)
	if withClickHint then
		GameTooltip:AddLine(L.GLOSSARY_CLICK, W.MUTED[1], W.MUTED[2], W.MUTED[3], true)
	end
	GameTooltip:Show()
end

-- Link to a FAQ entry for texts in frames prepared with Enable.
function GlossaryLinks.FaqLink(id, label)
	return ("|c%s|H%s:%s|h%s|h|r"):format(W.Hex(W.GOLD), FAQ_LINK_TYPE, id, label)
end

local function EntryOfLink(link)
	local id = link:match("^" .. LINK_TYPE .. ":([%l%d%-]+)$")
	return id and Glossary.Get(id)
end

-- Lets frame show the tooltips of glossary links in its font strings; a
-- click opens the term in the glossary, unless tooltipOnly. FAQ links
-- (GlossaryLinks.FaqLink) open the entry in the FAQ. Other link types in
-- the frame are left alone.
function GlossaryLinks.Enable(frame, tooltipOnly)
	if not frame.SetHyperlinksEnabled then
		return
	end
	-- Link events need the mouse on the frame that owns the text.
	frame:EnableMouse(true)
	frame:SetHyperlinksEnabled(true)
	frame:SetScript("OnHyperlinkEnter", function(self, link)
		local entry = EntryOfLink(link)
		if entry then
			GlossaryLinks.ShowTooltip(self, entry, nil, not tooltipOnly)
		end
	end)
	frame:SetScript("OnHyperlinkLeave", function()
		GameTooltip:Hide()
	end)
	frame:SetScript("OnHyperlinkClick", function(self, link)
		self.glossaryLinkClicked = GetTime()
		local faqId = link:match("^" .. FAQ_LINK_TYPE .. ":([%l%d%-]+)$")
		if faqId and ns.Faq.Get(faqId) then
			ns.UI.ShowFaq(faqId)
			return
		end
		local entry = not tooltipOnly and EntryOfLink(link)
		if entry then
			GameTooltip:Hide()
			ns.UI.ShowGlossary(entry.id)
		end
	end)
end

-- True right after a link in frame was clicked.
function GlossaryLinks.JustClicked(frame)
	return frame.glossaryLinkClicked ~= nil and GetTime() - frame.glossaryLinkClicked < 0.2
end

-- A left click on frame outside its links clicks button instead. Checked
-- a moment later, because the order of the mouse and the link event is
-- not guaranteed.
function GlossaryLinks.ForwardClicks(frame, button)
	frame:SetScript("OnMouseUp", function(self, mouseButton)
		if mouseButton ~= "LeftButton" then
			return
		end
		C_Timer.After(0.05, function()
			if not GlossaryLinks.JustClicked(self) and button:IsVisible() then
				button:Click()
			end
		end)
	end)
end
