-- luacheck: read globals GetNormalizedRealmName
local addonName, ns = ...

ns.name = addonName
ns.title = "AskAzeroth"
ns.shortTitle = "AA"
ns.color = "e2b13c"

local getMetadata = (C_AddOns and C_AddOns.GetAddOnMetadata) or GetAddOnMetadata
local version = getMetadata and getMetadata(addonName, "Version")
if not version or version:find("@project%-version@") then
	version = ns.L.UNKNOWN_VERSION
end
ns.version = version

-- Public handle, mainly for debugging with /dump AskAzeroth.
_G.AskAzeroth = ns

--------------------------------------------------------------------------------
-- Events
--------------------------------------------------------------------------------
-- Game events go to plain callbacks; several files may listen to the same
-- event. Internal messages between files use CallbackHandler:
--   ns.RegisterCallback(owner, "AA_SOMETHING", func)  /  ns:Fire("AA_SOMETHING", ...)

local eventFrame = CreateFrame("Frame")
local eventCallbacks = {}

eventFrame:SetScript("OnEvent", function(_, event, ...)
	local list = eventCallbacks[event]
	if not list then
		return
	end
	-- Iterate over a snapshot so callbacks may unregister themselves.
	local snapshot = { unpack(list) }
	for i = 1, #snapshot do
		snapshot[i](event, ...)
	end
end)

function ns:RegisterEvent(event, callback)
	local list = eventCallbacks[event]
	if not list then
		list = {}
		eventCallbacks[event] = list
		eventFrame:RegisterEvent(event)
	end
	list[#list + 1] = callback
end

function ns:UnregisterEvent(event, callback)
	local list = eventCallbacks[event]
	if not list then
		return
	end
	for i = #list, 1, -1 do
		if list[i] == callback then
			table.remove(list, i)
		end
	end
	if #list == 0 then
		eventCallbacks[event] = nil
		eventFrame:UnregisterEvent(event)
	end
end

ns.callbacks = LibStub("CallbackHandler-1.0"):New(ns)

function ns:Fire(message, ...)
	self.callbacks:Fire(message, ...)
end

--------------------------------------------------------------------------------
-- Output
--------------------------------------------------------------------------------

function ns:Print(text, ...)
	if select("#", ...) > 0 then
		text = text:format(...)
	end
	DEFAULT_CHAT_FRAME:AddMessage(("|cff%s%s|r: %s"):format(self.color, self.shortTitle, text))
end

--------------------------------------------------------------------------------
-- Player
--------------------------------------------------------------------------------

-- Own realm, normalized. Forever leaves the realm out of UnitFullName and of
-- addon message senders, but GetNormalizedRealmName still has it.
function ns:GetOwnRealm()
	local _, realm = UnitFullName("player")
	if type(realm) ~= "string" or realm == "" then
		realm = GetNormalizedRealmName and GetNormalizedRealmName()
	end
	if type(realm) == "string" and realm ~= "" then
		return realm
	end
end

-- "Name-Realm", the format questions and answers store authors in. Nil
-- before the realm is known (early in the loading process). Forever names
-- are "First Surname".
function ns:GetPlayerFullName()
	local name = UnitFullName("player")
	local realm = self:GetOwnRealm()
	if type(name) == "string" and name ~= "" and realm then
		return name .. "-" .. realm
	end
end
