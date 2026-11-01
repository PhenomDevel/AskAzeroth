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

ns:RegisterCommand("minimap", function()
	local settings = ns.db.settings
	settings.minimapHidden = not settings.minimapHidden
	ns.MinimapButton.Update()
	UI.Refresh()
	ns:Print(settings.minimapHidden and L.CMD_MINIMAP_HIDDEN or L.CMD_MINIMAP_SHOWN)
end, "minimap", L.CMD_MINIMAP)
