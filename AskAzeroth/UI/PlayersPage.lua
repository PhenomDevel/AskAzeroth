-- luacheck: read globals CreateScrollBoxListLinearView ScrollUtil CreateDataProvider
local _, ns = ...

-- Players page: favourites, ignored and recently seen players with the
-- note and the "helped me" counter. Click a row for the player menu.
local L = ns.L
local UI = ns.UI
local W = ns.Widgets
local Util = ns.Util
local Players = ns.Players

local ROW_HEIGHT = 40
local VIEWS = {
	{ key = "fav", label = L.PLAYERS_FAVORITES, filter = function(entry) return entry.fav end, empty = L.PLAYERS_FAVORITES_EMPTY },
	{ key = "ignored", label = L.PLAYERS_IGNORED, filter = function(entry) return entry.ignored end, empty = L.PLAYERS_IGNORED_EMPTY },
	{ key = "recent", label = L.PLAYERS_RECENT, empty = L.PLAYERS_RECENT_EMPTY },
}

local function Build(content)
	local page = { view = 1 }

	local hint = W.Text(content, "GameFontHighlightSmall", W.MUTED)
	hint:SetPoint("TOPRIGHT", -8, -10)
	hint:SetText(L.PLAYERS_HINT)

	local chips = {}
	for i, def in ipairs(VIEWS) do
		local chip = W.Chip(content, function()
			page.view = i
			page:Refresh()
		end)
		chip:SetLabel(def.label)
		chips[i] = chip
	end
	W.FlowChips(chips, content, 6, -6, 4)

	local pane = CreateFrame("Frame", nil, content)
	pane:SetPoint("TOPLEFT", 4, -38)
	pane:SetPoint("BOTTOMRIGHT", -4, 4)

	local scrollBox = CreateFrame("Frame", nil, pane, "WowScrollBoxList")
	scrollBox:SetPoint("TOPLEFT")
	scrollBox:SetPoint("BOTTOMRIGHT", -16, 0)
	local scrollBar = CreateFrame("EventFrame", nil, pane, "MinimalScrollBar")
	scrollBar:SetPoint("TOPLEFT", scrollBox, "TOPRIGHT", 4, 0)
	scrollBar:SetPoint("BOTTOMLEFT", scrollBox, "BOTTOMRIGHT", 4, 0)

	local listView = CreateScrollBoxListLinearView()
	listView:SetElementExtent(ROW_HEIGHT + 4)
	listView:SetElementInitializer("Button", function(row, name)
		if not row.bg then
			row.bg = W.Panel(row, { 0.1, 0.1, 0.12, 1 }, { 0.2, 0.2, 0.24, 1 })
			row.bg:SetPoint("TOPLEFT")
			row.bg:SetPoint("BOTTOMRIGHT", 0, 4)
			row.name = W.Text(row.bg, "GameFontHighlight")
			row.name:SetPoint("TOPLEFT", 8, -6)
			row.info = W.Text(row.bg, "GameFontHighlightSmall", W.MUTED)
			row.info:SetPoint("BOTTOMLEFT", 8, 6)
			row.info:SetPoint("RIGHT", -8, 0)
			row.info:SetWordWrap(false)
			row:RegisterForClicks("LeftButtonUp", "RightButtonUp")
			row:SetScript("OnClick", function(self)
				ns.PlayerMenu.Open(self, self.player)
			end)
		end
		row.player = name
		local star = Players.IsFavorite(name) and W.STAR or ""
		row.name:SetText(star .. W.PlayerText(name, Players.GetClass(name)) .. "  |cff9d9d9d" .. Util.EscapeText(name) .. "|r")
		local parts = {}
		local helped = Players.GetHelped(name)
		if helped > 0 then
			parts[#parts + 1] = L.PLAYERS_HELPED:format(helped)
		end
		local note = Players.GetNote(name)
		if note then
			parts[#parts + 1] = L.PLAYERS_NOTE:format(Util.EscapeText(note))
		end
		if Players.IsIgnored(name) then
			parts[#parts + 1] = L.PLAYERS_IS_IGNORED
		end
		row.info:SetText(#parts > 0 and table.concat(parts, " · ") or "")
	end)
	ScrollUtil.InitScrollBoxListWithScrollBar(scrollBox, scrollBar, listView)

	local empty = W.Text(pane, "GameFontDisable")
	empty:SetPoint("CENTER")
	empty:SetJustifyH("CENTER")
	empty:SetWidth(420)

	function page:Refresh()
		for i, chip in ipairs(chips) do
			chip:SetActive(i == self.view)
		end
		local def = VIEWS[self.view]
		local names
		if def.key == "recent" then
			names = Players.ListRecent()
		else
			names = Players.List(def.filter)
		end
		scrollBox:SetDataProvider(CreateDataProvider(names), true)
		empty:SetShown(#names == 0)
		empty:SetText(def.empty)
	end

	ns.RegisterCallback(page, "AA_PLAYERS_CHANGED", function()
		if content:IsVisible() then
			page:Refresh()
		end
	end)

	return page
end

UI.RegisterPage(UI.PAGE_PLAYERS, L.PAGE_PLAYERS, Build)
