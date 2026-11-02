local _, ns = ...

-- Slash commands of the window (/aa probe lives in Probe/).
local L = ns.L
local UI = ns.UI

ns.defaultCommand = UI.Toggle

ns:RegisterCommand("show", function()
	UI.Show()
end, "show", L.CMD_SHOW)

ns:RegisterCommand("settings", function()
	UI.Show(UI.PAGE_SETTINGS)
end, "settings", L.CMD_SETTINGS)

ns:RegisterCommand("setup", function()
	ns.Setup.Show()
end, "setup", L.CMD_SETUP)

ns:RegisterCommand("minimap", function()
	local settings = ns.db.settings
	settings.minimapHidden = not settings.minimapHidden
	ns.MinimapButton.Update()
	UI.Refresh()
	ns:Print(settings.minimapHidden and L.CMD_MINIMAP_HIDDEN or L.CMD_MINIMAP_SHOWN)
end, "minimap", L.CMD_MINIMAP)

-- How often FAQ suggestions in the ask dialog were marked "That helped",
-- with the five entries that helped most.
ns:RegisterCommand("faqstats", function()
	local counts = ns.db.faqHelped
	local list, total = {}, 0
	for id, count in pairs(counts) do
		if type(count) == "number" then
			list[#list + 1] = id
			total = total + count
		end
	end
	if total == 0 then
		ns:Print(L.FAQSTATS_NONE)
		return
	end
	table.sort(list, function(a, b)
		if counts[a] ~= counts[b] then
			return counts[a] > counts[b]
		end
		return a < b
	end)
	ns:Print(L.FAQSTATS_HEADER, total)
	for i = 1, math.min(5, #list) do
		local id = list[i]
		DEFAULT_CHAT_FRAME:AddMessage(("  %dx %s"):format(counts[id], ns.FaqRefs.Title(id) or id))
	end
end, "faqstats", L.CMD_FAQSTATS)
