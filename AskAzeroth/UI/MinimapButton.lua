-- luacheck: read globals GameTooltip
local _, ns = ...

-- Minimap button via LibDBIcon, so minimap addons (SexyMap, Leatrix Plus,
-- button collectors …) can hide, fade or collect it like other addons'
-- buttons. Left click toggles the window, right click opens the settings,
-- drag moves it around the minimap. The addon compartment entry (.toc) does
-- the same. A red badge counts notifications not yet seen.
local MinimapButton = {}
ns.MinimapButton = MinimapButton

local L = ns.L
local C = ns.C

local NAME = "AskAzeroth"
local ICON = "Interface\\AddOns\\AskAzeroth\\Media\\Logo"

local LibDBIcon = LibStub("LibDBIcon-1.0")

-- LibDBIcon's db keys mapped onto the existing saved settings.
local DB_KEYS = { minimapPos = "minimapAngle", hide = "minimapHidden" }

local badge

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
	GameTooltip:AddLine(L.QUEUE_OPEN_COUNT:format(ns.UI.CountOpenQuestions()), 1, 1, 1)
	local players, mentors, any = ns.Presence.CountAll()
	if any then
		GameTooltip:AddLine(L.ONLINE_COUNT:format(players, mentors), 1, 0.82, 0)
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

local function CreateBadge(button)
	badge = ns.Widgets.Panel(button, { 0.7, 0.1, 0.1, 1 }, { 0, 0, 0, 1 })
	badge:SetSize(16, 14)
	badge:SetPoint("TOPRIGHT", 2, 2)
	badge:SetFrameLevel(button:GetFrameLevel() + 2)
	badge.text = ns.Widgets.Text(badge, "GameFontHighlightSmall")
	badge.text:SetPoint("CENTER", 0, 0)
	badge:Hide()
end

local function Register()
	local object = LibStub("LibDataBroker-1.1"):NewDataObject(NAME, {
		type = "launcher",
		icon = ICON,
		OnClick = function(_, mouseButton)
			OnClick(mouseButton)
		end,
		OnEnter = ShowTooltip,
		OnLeave = function()
			GameTooltip:Hide()
		end,
	})
	local db = setmetatable({}, {
		__index = function(_, key)
			local settingsKey = DB_KEYS[key]
			return settingsKey and ns.db.settings[settingsKey]
		end,
		__newindex = function(store, key, value)
			local settingsKey = DB_KEYS[key]
			if settingsKey then
				ns.db.settings[settingsKey] = value
			else
				rawset(store, key, value)
			end
		end,
	})
	LibDBIcon:Register(NAME, object, db)
	CreateBadge(LibDBIcon:GetMinimapButton(NAME))
	MinimapButton.UpdateBadge()
end

function MinimapButton.UpdateBadge()
	if not badge then
		return
	end
	local count = ns.Notify.GetBadgeCount()
	badge:SetShown(count > 0)
	badge.text:SetText(count > 99 and "99+" or tostring(count))
	badge:SetWidth(math.max(16, badge.text:GetStringWidth() + 6))
end

function MinimapButton.Update()
	if not LibDBIcon:IsRegistered(NAME) then
		Register()
	end
	if ns.db.settings.minimapHidden then
		LibDBIcon:Hide(NAME)
	else
		LibDBIcon:Show(NAME)
	end
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
