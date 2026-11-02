-- luacheck: read globals Minimap GameTooltip GetCursorPosition
local _, ns = ...

-- Own minimap button: left click toggles the window, right click opens the
-- settings, drag moves it around the minimap. The addon compartment entry
-- (.toc) does the same. A red badge counts notifications not yet seen.
local MinimapButton = {}
ns.MinimapButton = MinimapButton

local L = ns.L
local C = ns.C

local RADIUS_OFFSET = 10
local ICON = "Interface\\AddOns\\AskAzeroth\\Media\\Logo"

local button

local function UpdatePosition()
	local angle = math.rad(ns.db.settings.minimapAngle or 210)
	local radius = Minimap:GetWidth() / 2 + RADIUS_OFFSET
	button:ClearAllPoints()
	button:SetPoint("CENTER", Minimap, "CENTER", math.cos(angle) * radius, math.sin(angle) * radius)
end

local function OnDragUpdate()
	local mx, my = Minimap:GetCenter()
	local cx, cy = GetCursorPosition()
	local scale = Minimap:GetEffectiveScale()
	ns.db.settings.minimapAngle = math.deg(math.atan2(cy / scale - my, cx / scale - mx)) % 360
	UpdatePosition()
end

local function ShowTooltip(owner)
	GameTooltip:SetOwner(owner, "ANCHOR_LEFT")
	GameTooltip:SetText(ns.title, 1, 1, 1)
	local names = {}
	for _, lang in ipairs(ns.Channel.GetSelectedLanguages()) do
		names[#names + 1] = C.LANGUAGE_NAMES[lang]
	end
	GameTooltip:AddLine(L.MINIMAP_LANGUAGES:format(table.concat(names, ", ")), 1, 1, 1)
	if ns.db.settings.mentor then
		GameTooltip:AddLine(L.STATUS_MENTOR, 0.12, 1, 0)
	end
	local unseen = ns.Notify.GetUnseen()
	if unseen > 0 then
		GameTooltip:AddLine(L.MINIMAP_NEW:format(unseen), 1, 0.82, 0)
	end
	GameTooltip:AddLine(" ")
	GameTooltip:AddLine(L.MINIMAP_LEFT, 0.12, 1, 0)
	GameTooltip:AddLine(L.MINIMAP_RIGHT, 0.12, 1, 0)
	GameTooltip:Show()
end

local function OnClick(mouseButton)
	if mouseButton == "RightButton" then
		ns.UI.Show(ns.UI.PAGE_SETTINGS)
	else
		ns.UI.Toggle()
	end
end

local function Create()
	button = CreateFrame("Button", "AskAzerothMinimapButton", Minimap)
	button:SetSize(31, 31)
	button:SetFrameStrata("MEDIUM")
	button:SetFrameLevel(8)
	button:RegisterForClicks("LeftButtonUp", "RightButtonUp")
	button:RegisterForDrag("LeftButton")
	button:SetHighlightTexture("Interface\\Minimap\\UI-Minimap-ZoomButton-Highlight")

	local icon = button:CreateTexture(nil, "BACKGROUND")
	icon:SetTexture(ICON)
	icon:SetSize(20, 20)
	icon:SetPoint("TOPLEFT", 7, -5)
	local border = button:CreateTexture(nil, "OVERLAY")
	border:SetTexture("Interface\\Minimap\\MiniMap-TrackingBorder")
	border:SetSize(53, 53)
	border:SetPoint("TOPLEFT")

	local badge = ns.Widgets.Panel(button, { 0.7, 0.1, 0.1, 1 }, { 0, 0, 0, 1 })
	badge:SetSize(16, 14)
	badge:SetPoint("TOPRIGHT", 2, 2)
	badge:SetFrameLevel(button:GetFrameLevel() + 2)
	badge.text = ns.Widgets.Text(badge, "GameFontHighlightSmall")
	badge.text:SetPoint("CENTER", 0, 0)
	badge:Hide()
	button.badge = badge

	button:SetScript("OnClick", function(_, mouseButton)
		OnClick(mouseButton)
	end)
	button:SetScript("OnDragStart", function(self)
		self:SetScript("OnUpdate", OnDragUpdate)
	end)
	button:SetScript("OnDragStop", function(self)
		self:SetScript("OnUpdate", nil)
	end)
	button:SetScript("OnEnter", ShowTooltip)
	button:SetScript("OnLeave", function()
		GameTooltip:Hide()
	end)
	UpdatePosition()
	MinimapButton.UpdateBadge()
end

function MinimapButton.UpdateBadge()
	if not button then
		return
	end
	local count = ns.Notify.GetBadgeCount()
	button.badge:SetShown(count > 0)
	button.badge.text:SetText(count > 99 and "99+" or tostring(count))
	button.badge:SetWidth(math.max(16, button.badge.text:GetStringWidth() + 6))
end

function MinimapButton.Update()
	if ns.db.settings.minimapHidden then
		if button then
			button:Hide()
		end
		return
	end
	if not button then
		Create()
	end
	button:Show()
end

ns.RegisterCallback(MinimapButton, "AA_DB_READY", MinimapButton.Update)
ns.RegisterCallback(MinimapButton, "AA_NOTIFY_CHANGED", MinimapButton.UpdateBadge)

-- Addon compartment (.toc AddonCompartmentFunc*).
function AskAzeroth_OnAddonCompartmentClick(_, mouseButton)
	OnClick(mouseButton)
end

function AskAzeroth_OnAddonCompartmentEnter(_, menuButton)
	ShowTooltip(menuButton)
end

function AskAzeroth_OnAddonCompartmentLeave()
	GameTooltip:Hide()
end
