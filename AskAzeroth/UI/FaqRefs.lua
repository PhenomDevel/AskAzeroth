-- luacheck: read globals CreateScrollBoxListLinearView ScrollUtil CreateDataProvider GameTooltip
local _, ns = ...

-- References on answers, to FAQ entries and glossary terms ("g:<id>",
-- Faq.GlossaryRef): the links under an answer (thread view and Pinned
-- page) and the picker mentors use to attach them.
local FaqRefs = {}
ns.FaqRefs = FaqRefs

local L = ns.L
local C = ns.C
local W = ns.Widgets
local Faq = ns.Faq
local Glossary = ns.Glossary

FaqRefs.LINE_HEIGHT = 18
local BOOK_ICON = "Interface\\Icons\\INV_Misc_Book_09"
local LINK_ICON = "|T" .. BOOK_ICON .. ":0|t "
local LOGO = "Interface\\AddOns\\AskAzeroth\\Media\\Logo"
local GLOSSARY_ICON = "|T" .. LOGO .. ":0|t "

-- Topic colours, in the palette of the question categories; class topics
-- use the class colour.
local TOPIC_COLORS = {
	addon = W.GOLD,
	start = W.RGB("cfc4ad"),
	quest = W.CategoryColor("quest"),
	class = W.CategoryColor("class"),
	combat = W.RGB("e37d73"),
	travel = W.RGB("8cc7db"),
	gold = W.RGB("edcc6b"),
	prof = W.CategoryColor("prof"),
	group = W.CategoryColor("dungeon"),
	social = W.RGB("e399c7"),
	ui = W.CategoryColor("ui"),
}

function FaqRefs.TopicLabel(key)
	local topic = C.GetFaqTopic(key)
	if not topic then
		return tostring(key)
	end
	return topic.label or W.ClassName(topic.class) or topic.key
end

-- Colour code ("ffrrggbb") of a topic.
function FaqRefs.TopicHex(key)
	local topic = C.GetFaqTopic(key)
	local classHex = topic and W.ClassColorHex(topic.class)
	return classHex or W.Hex(TOPIC_COLORS[key] or W.SOFT)
end

-- Topic name in its colour.
function FaqRefs.TopicText(key)
	return ("|c%s%s|r"):format(FaqRefs.TopicHex(key), FaqRefs.TopicLabel(key))
end

-- The FAQ language of this client: its own when there is an FAQ in it,
-- otherwise English.
function FaqRefs.ReaderLanguage()
	local lang = C.GetClientLanguage()
	return Faq.HasLanguage(lang) and lang or "en"
end

-- Question of a FAQ entry or term of a glossary reference in lang
-- (default: reader's language), or nil for ids this version does not know.
function FaqRefs.Title(ref, lang)
	local glossaryId = Faq.GlossaryRef(ref)
	if glossaryId then
		local entry = Glossary.Get(glossaryId)
		return entry and (Glossary.GetText(entry, lang or FaqRefs.ReaderLanguage()))
	end
	local entry = Faq.Get(ref)
	if not entry then
		return nil
	end
	return (Faq.GetText(entry, lang or FaqRefs.ReaderLanguage()))
end

-- Label of a reference: "FAQ: question" or "Glossary: term".
function FaqRefs.Label(ref, title)
	return (Faq.GlossaryRef(ref) and L.GLOSSARY_REF_LINK or L.FAQ_REF_LINK):format(title)
end

-- Answer text for an answer that only has links: the FAQ questions and
-- glossary terms in lang (the question's language), so players without the
-- links still see what is meant.
function FaqRefs.FallbackText(refs, lang)
	local titles = {}
	for _, ref in ipairs(refs) do
		local title = FaqRefs.Title(ref, Faq.HasLanguage(lang) and lang or "en") or ref
		titles[#titles + 1] = Faq.GlossaryRef(ref) and title or "FAQ: " .. title
	end
	local text = table.concat(titles, " / ")
	if #text > C.ANSWER_MAX then
		text = text:sub(1, C.ANSWER_MAX - 3):gsub("[\128-\191]*$", ""):gsub("[\192-\255]$", "") .. "..."
	end
	return text
end

-- Height of the link lines for refs (0 without refs), including the gap
-- above them.
function FaqRefs.Height(refs)
	if not refs or #refs == 0 then
		return 0
	end
	return 6 + #refs * FaqRefs.LINE_HEIGHT
end

-- Link lines under anchor inside parent; returns an object with
-- :Fill(refs). Known FAQ entries open the FAQ page, glossary terms show
-- their explanation and open the glossary, unknown ones say the addon
-- needs an update.
function FaqRefs.CreateLinks(parent, anchor)
	local links = { buttons = {} }
	for i = 1, C.FAQ_REFS_MAX do
		local button = CreateFrame("Button", nil, parent)
		button:SetHeight(FaqRefs.LINE_HEIGHT)
		if i == 1 then
			button:SetPoint("TOPLEFT", anchor, "BOTTOMLEFT", 0, -6)
		else
			button:SetPoint("TOPLEFT", links.buttons[i - 1], "BOTTOMLEFT")
		end
		button:SetPoint("RIGHT", parent, "RIGHT", -10, 0)
		button.text = W.Text(button, "GameFontHighlight", W.GOLD)
		button.text:SetPoint("LEFT")
		button.text:SetPoint("RIGHT")
		button.text:SetJustifyH("LEFT")
		button.text:SetWordWrap(false)
		button:SetScript("OnClick", function(self)
			if not self.known then
				return
			end
			GameTooltip:Hide()
			if self.glossaryId then
				ns.UI.ShowGlossary(self.glossaryId)
			else
				ns.UI.ShowFaq(self.id)
			end
		end)
		button:SetScript("OnEnter", function(self)
			if self.known then
				self.text:SetTextColor(1, 1, 1)
			end
			if self.known and self.glossaryId then
				ns.GlossaryLinks.ShowTooltip(self, Glossary.Get(self.glossaryId), nil, true)
				return
			end
			GameTooltip:SetOwner(self, "ANCHOR_TOPLEFT")
			GameTooltip:SetText(self.known and L.FAQ_REF_OPEN or L.FAQ_REF_UNKNOWN, 1, 1, 1, 1, true)
			GameTooltip:Show()
		end)
		button:SetScript("OnLeave", function(self)
			W.Color(self.text, self.color)
			GameTooltip:Hide()
		end)
		button:Hide()
		links.buttons[i] = button
	end
	function links:Fill(refs)
		for i, button in ipairs(self.buttons) do
			local id = refs and refs[i]
			if id then
				local title = FaqRefs.Title(id)
				local glossaryId = Faq.GlossaryRef(id)
				button.id = id
				button.glossaryId = glossaryId
				button.known = title ~= nil
				button.color = not title and W.MUTED or glossaryId and W.BLUE or W.GOLD
				local missing = glossaryId and L.GLOSSARY_REF_MISSING or L.FAQ_REF_MISSING
				button.text:SetText((glossaryId and GLOSSARY_ICON or LINK_ICON) .. (title and FaqRefs.Label(id, title) or missing))
				W.Color(button.text, button.color)
				button:Show()
			else
				button:Hide()
			end
		end
	end
	return links
end

-- Button that opens the picker; onPick(ref) gets the chosen FAQ id or
-- glossary reference. The picker opens above the button and has a tab for
-- the FAQ and one for the glossary. getContext (optional) returns the text
-- of the question being answered; entries matching it come first.
function FaqRefs.CreatePickerButton(parent, size, onPick, getContext)
	local picker
	local button = W.IconButton(parent, size, BOOK_ICON)
	W.Tooltip(button, L.FAQ_REF_ATTACH, L.FAQ_REF_ATTACH_TIP)

	local function Build()
		picker = W.Panel(parent, W.COLORS.window, W.COLORS.frame, true)
		picker:SetSize(420, 340)
		picker:SetFrameStrata("DIALOG")
		picker:EnableMouse(true)
		picker:SetPoint("BOTTOMRIGHT", button, "TOPRIGHT", 0, 6)

		local close = W.CloseButton(picker, function()
			picker:Hide()
		end)
		close:SetPoint("TOPRIGHT", -8, -8)
		local title = W.Text(picker, "GameFontNormal", W.GOLD)
		title:SetPoint("TOPLEFT", 12, -14)
		title:SetText(L.FAQ_REF_ATTACH)

		local search = ""
		local suggested = {}
		local mode = "faq"
		local scrollBox, list

		-- Tabs: FAQ and glossary.
		local tabs = {}
		local function SetMode(newMode)
			mode = newMode
			for key, tab in pairs(tabs) do
				tab:SetActive(key == mode)
			end
			list()
		end
		tabs.faq = W.Chip(picker, function()
			SetMode("faq")
		end)
		tabs.faq:SetLabel(L.PAGE_FAQ)
		tabs.glossary = W.Chip(picker, function()
			SetMode("glossary")
		end, W.BLUE)
		tabs.glossary:SetLabel(L.GLOSSARY)
		tabs.glossary:SetPoint("RIGHT", close, "LEFT", -10, 0)
		tabs.faq:SetPoint("RIGHT", tabs.glossary, "LEFT", -6, 0)
		tabs.faq:SetActive(true)
		local searchBox = W.SearchBox(picker, 100, L.QUEUE_SEARCH, function(text)
			search = strtrim(text):lower()
			list()
		end)
		searchBox:SetPoint("TOPLEFT", 12, -42)
		searchBox:SetPoint("RIGHT", -12, 0)
		picker.searchBox = searchBox

		scrollBox = CreateFrame("Frame", nil, picker, "WowScrollBoxList")
		scrollBox:SetPoint("TOPLEFT", 12, -78)
		scrollBox:SetPoint("BOTTOMRIGHT", -26, 12)
		local scrollBar = CreateFrame("EventFrame", nil, picker, "MinimalScrollBar")
		scrollBar:SetPoint("TOPLEFT", scrollBox, "TOPRIGHT", 4, 0)
		scrollBar:SetPoint("BOTTOMLEFT", scrollBox, "BOTTOMRIGHT", 4, 0)

		local view = CreateScrollBoxListLinearView()
		view:SetElementExtent(40)
		view:SetElementInitializer("Button", function(row, entry)
			if not row.title then
				row:SetHeight(40)
				W.ListRowLook(row)
				row:SetHighlightTexture(W.WHITE8)
				row:GetHighlightTexture():SetVertexColor(1, 0.85, 0.5, 0.06)
				row.title = W.Text(row, "GameFontHighlight", W.TEXT)
				row.title:SetPoint("TOPLEFT", 8, -5)
				row.title:SetPoint("RIGHT", -8, 0)
				row.title:SetWordWrap(false)
				row.meta = W.Text(row, "GameFontHighlightSmall")
				row.meta:SetPoint("BOTTOMLEFT", 8, 5)
				row.meta:SetPoint("RIGHT", -8, 0)
				row.meta:SetWordWrap(false)
				row:SetScript("OnClick", function(self)
					picker:Hide()
					onPick(self.ref)
				end)
			end
			local lang = FaqRefs.ReaderLanguage()
			local meta
			if entry.topic then
				row.ref = entry.id
				row.title:SetText((Faq.GetText(entry, lang)))
				meta = FaqRefs.TopicText(entry.topic)
			else
				-- Glossary entry: term, short explanation below.
				local term, _, def = Glossary.GetText(entry, lang)
				row.ref = Faq.GLOSSARY_PREFIX .. entry.id
				row.title:SetText(term)
				meta = "|c" .. W.Hex(W.MUTED) .. def .. "|r"
			end
			row.meta:SetText(suggested[entry] and "|cff8fd18f" .. L.FAQ_REF_SUGGESTED .. "|r  " .. meta or meta)
			row:SetSelectedLook(false)
		end)
		ScrollUtil.InitScrollBoxListWithScrollBar(scrollBox, scrollBar, view)

		-- Without a search: entries matching the question first, then all
		-- others. With a search: word search, plain text search for
		-- searches without a usable word.
		-- Glossary: terms found in the question first, then all; with a
		-- search, the terms whose name or explanation contain it.
		local function GlossaryList(lang)
			local result = {}
			if search == "" then
				local context = getContext and getContext()
				if context and context ~= "" then
					for _, found in ipairs(Glossary.Find(context, lang, true)) do
						suggested[found[3]] = true
						result[#result + 1] = found[3]
					end
				end
				for _, entry in ipairs(Glossary.GetAll(lang)) do
					if not suggested[entry] then
						result[#result + 1] = entry
					end
				end
			else
				for _, entry in ipairs(Glossary.GetAll(lang)) do
					if Glossary.Contains(entry, search, lang) then
						result[#result + 1] = entry
					end
				end
			end
			return result
		end

		function list()
			local lang = FaqRefs.ReaderLanguage()
			local langs = { lang, "en" }
			local all = Faq.GetAll()
			local result
			suggested = {}
			if mode == "glossary" then
				result = GlossaryList(lang)
			elseif search == "" then
				result = {}
				local context = getContext and getContext()
				if context and context ~= "" then
					for _, entry in ipairs(ns.FaqSearch.Suggest(context, langs, C.FAQ_SUGGEST_MAX)) do
						suggested[entry] = true
						result[#result + 1] = entry
					end
				end
				for _, entry in ipairs(all) do
					if not suggested[entry] then
						result[#result + 1] = entry
					end
				end
			else
				result = ns.FaqSearch.Filter(all, search, langs)
				if not result then
					result = {}
					for _, entry in ipairs(all) do
						if ns.FaqSearch.Contains(entry, search, lang) then
							result[#result + 1] = entry
						end
					end
				end
			end
			scrollBox:SetDataProvider(CreateDataProvider(result))
		end
		picker.Update = list
		picker:SetScript("OnHide", function()
			searchBox:ClearFocus()
		end)
	end

	button:SetScript("OnClick", function()
		if not picker then
			Build()
		elseif picker:IsShown() then
			picker:Hide()
			return
		end
		picker:Update()
		picker:Show()
		picker.searchBox:SetFocus()
	end)
	function button:HidePicker()
		if picker then
			picker:Hide()
		end
	end
	return button
end
