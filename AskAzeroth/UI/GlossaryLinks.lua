-- luacheck: read globals GameTooltip C_Spell ChatFrameUtil ChatEdit_InsertLink IsModifiedClick
local _, ns = ...

-- Links inside the addon's own texts (FAQ answers, glossary) and in
-- received thread texts:
-- - glossary terms: the first place of each term becomes a coloured link;
--   hovering shows the short explanation, a click opens the term in the
--   glossary;
-- - spell names (Core/SpellRefs.lua): the first place of each spell gets
--   its icon and becomes a spell link; hovering shows the game's spell
--   tooltip, shift-click puts the real spell link into the chat.
-- - FAQ markup (Core/FaqMarkup.lua): keys, interface names and chat
--   commands in the addon's own texts are drawn in their colour.
-- The links only work in frames prepared with GlossaryLinks.Enable.
local GlossaryLinks = {}
ns.GlossaryLinks = GlossaryLinks

local L = ns.L
local C = ns.C
local W = ns.Widgets
local Glossary = ns.Glossary
local SpellRefs = ns.SpellRefs
local FaqMarkup = ns.FaqMarkup

local LINK_TYPE = "askazeroth-glossary"
local FAQ_LINK_TYPE = "askazeroth-faq"
local SPELL_LINK_TYPE = "askazeroth-spell"
local LINK_COLOR = W.Hex(W.BLUE)
-- The colour the game uses for spell links.
local SPELL_COLOR = "ff71d5ff"
-- Icon at text height, its border cut off.
local ICON_FORMAT = "|T%s:0:0:0:0:64:64:5:59:5:59|t "

local function SpellLink(id, label)
	local icon = SpellRefs.Icon(id)
	return ("|c%s|H%s:%d|h%s%s|h|r"):format(SPELL_COLOR, SPELL_LINK_TYPE, id, icon and ICON_FORMAT:format(icon) or "", label)
end

-- text with every place in places ({ first, last, render(label) }, in text
-- order, non-overlapping) replaced by its link.
local function Replace(text, places)
	if #places == 0 then
		return text
	end
	local parts, last = {}, 0
	for _, place in ipairs(places) do
		local first, stop = place[1], place[2]
		parts[#parts + 1] = text:sub(last + 1, first - 1)
		parts[#parts + 1] = place[3](text:sub(first, stop))
		last = stop
	end
	parts[#parts + 1] = text:sub(last + 1)
	return table.concat(parts)
end

local function SpellPlaces(text)
	local places = {}
	for _, found in ipairs(SpellRefs.Find(text)) do
		local id = found[3]
		places[#places + 1] = { found[1], found[2], function(label)
			return SpellLink(id, label)
		end }
	end
	return places
end

-- Places of FAQ markup, drawn in the colour of their kind.
local MARKUP_COLORS = {
	key = W.Hex(W.KEY),
	interface = W.Hex(W.INTERFACE),
	command = W.Hex(W.COMMAND),
}

local function MarkupPlaces(text)
	local places = {}
	for _, found in ipairs(FaqMarkup.Find(text)) do
		local color, inner = MARKUP_COLORS[found[3]], found[4]
		places[#places + 1] = { found[1], found[2], function()
			return ("|c%s%s|r"):format(color, inner)
		end }
	end
	return places
end

-- text with the places blanked out (same length, so positions stay).
local function Mask(text, places)
	for _, place in ipairs(places) do
		text = text:sub(1, place[1] - 1) .. (" "):rep(place[2] - place[1] + 1) .. text:sub(place[2] + 1)
	end
	return text
end

-- Annotated texts by language and text; spell names depend on the
-- spellbook, so the cache is cleared when it changes (and when it gets big:
-- player texts land here too).
local cache, cacheSize = {}, 0
local CACHE_MAX = 3000
ns.RegisterCallback(GlossaryLinks, "AA_SPELLS_CHANGED", function()
	cache, cacheSize = {}, 0
end)

-- text with links for the spell names and glossary terms in it; with
-- markup, FAQ markup is drawn first and nothing inside it is linked.
local function AnnotateText(text, lang, markup)
	local key = (markup and "m" or "p") .. lang .. "\0" .. text
	local result = cache[key]
	if result then
		return result
	end
	local places = markup and MarkupPlaces(text) or {}
	-- Spell names and then glossary terms are only looked for where
	-- nothing was found yet; the positions stay the same.
	local masked = Mask(text, places)
	local spells = SpellPlaces(masked)
	for _, place in ipairs(spells) do
		places[#places + 1] = place
	end
	masked = Mask(masked, spells)
	for _, found in ipairs(Glossary.Find(masked, lang)) do
		local id = found[3].id
		places[#places + 1] = { found[1], found[2], function(label)
			return ("|c%s|H%s:%s|h%s|h|r"):format(LINK_COLOR, LINK_TYPE, id, label)
		end }
	end
	table.sort(places, function(a, b)
		return a[1] < b[1]
	end)
	result = Replace(text, places)
	if cacheSize >= CACHE_MAX then
		cache, cacheSize = {}, 0
	end
	cache[key] = result
	cacheSize = cacheSize + 1
	return result
end

-- The addon's own text (FAQ answer) in lang with its markup drawn and
-- links for the spell names and glossary terms in it. A spell name is
-- never also a glossary link.
function GlossaryLinks.Annotate(text, lang)
	return AnnotateText(text, lang, true)
end

-- text with links for the spell names in it, no glossary terms. Also for
-- received text that was already escaped (Util.EscapeText): spell names
-- never contain "|", so a link never splits an escaped "||".
function GlossaryLinks.AnnotateSpells(text)
	return Replace(text, SpellPlaces(text))
end

-- Player text (question or answer) for a font string: "|" escaped, the
-- spell names and the glossary terms of lang (the thread's language) as
-- links. Rows are filled
-- again on every scroll, so the results are kept for a while.
local playerCache, playerCacheSize = {}, 0
local PLAYER_CACHE_MAX = 300
ns.RegisterCallback("AskAzerothPlayerText", "AA_SPELLS_CHANGED", function()
	playerCache, playerCacheSize = {}, 0
end)

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
		-- No FAQ markup: players write "[" and "{" for other things.
		-- Spell names and terms never contain "|", so a link never
		-- splits an escaped "||".
		result = AnnotateText(ns.Util.EscapeText(text), lang, false)
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

-- The part of link after "linkType:", or nil for other link types. A plain
-- comparison: the "-" in the link types would be a pattern quantifier.
local function LinkValue(link, linkType)
	if type(link) ~= "string" or link:sub(1, #linkType + 1) ~= linkType .. ":" then
		return nil
	end
	return link:sub(#linkType + 2)
end

local function SpellOfLink(link)
	local value = LinkValue(link, SPELL_LINK_TYPE)
	return value and value:find("^%d+$") and tonumber(value)
end

-- The game's tooltip of a spell at owner.
function GlossaryLinks.ShowSpellTooltip(owner, id)
	GameTooltip:SetOwner(owner, "ANCHOR_CURSOR")
	GameTooltip:SetSpellByID(id)
	GameTooltip:Show()
end

-- Puts the game's own link of a spell into the open chat input.
local function InsertSpellLink(id)
	local link = C_Spell and C_Spell.GetSpellLink and C_Spell.GetSpellLink(id)
	if not link then
		return
	end
	if ChatFrameUtil and ChatFrameUtil.InsertLink then
		ChatFrameUtil.InsertLink(link)
	elseif ChatEdit_InsertLink then
		ChatEdit_InsertLink(link)
	end
end

-- Set by the probe (/aa probe glossary): called with an event name and
-- details for every link event in frames prepared with Enable.
GlossaryLinks.debugLog = nil

local function Debug(event, link, details)
	if GlossaryLinks.debugLog then
		GlossaryLinks.debugLog(event, tostring(link), details or "")
	end
end

local function EntryOfLink(link)
	local id = LinkValue(link, LINK_TYPE)
	return id and Glossary.Get(id)
end

-- Lets frame show the tooltips of glossary and spell links in its font
-- strings; a click on a glossary term opens it in the glossary, unless
-- tooltipOnly; shift-click on a spell puts its link into the chat. FAQ
-- links (GlossaryLinks.FaqLink) open the entry in the FAQ. Other link
-- types in the frame are left alone.
function GlossaryLinks.Enable(frame, tooltipOnly)
	if not frame.SetHyperlinksEnabled then
		return
	end
	-- Link events need the mouse on the frame that owns the text.
	frame:EnableMouse(true)
	frame:SetHyperlinksEnabled(true)
	frame:SetScript("OnHyperlinkEnter", function(self, link)
		local spellId = SpellOfLink(link)
		if spellId then
			GlossaryLinks.ShowSpellTooltip(self, spellId)
			return
		end
		local entry = EntryOfLink(link)
		if entry then
			GlossaryLinks.ShowTooltip(self, entry, nil, not tooltipOnly)
		end
		Debug("enter", link, ("entry %s, tooltip shown %s"):format(tostring(entry and entry.id), tostring(GameTooltip:IsShown())))
	end)
	frame:SetScript("OnHyperlinkLeave", function(_, link)
		Debug("leave", link)
		GameTooltip:Hide()
	end)
	frame:SetScript("OnHyperlinkClick", function(self, link, _, mouseButton)
		Debug("click", link, tostring(mouseButton))
		self.glossaryLinkClicked = GetTime()
		local spellId = SpellOfLink(link)
		if spellId then
			if IsModifiedClick("CHATLINK") then
				InsertSpellLink(spellId)
			end
			return
		end
		local faqId = LinkValue(link, FAQ_LINK_TYPE)
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
		Debug("mouse up", "-", tostring(mouseButton))
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
