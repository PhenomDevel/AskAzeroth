local _, ns = ...

if GetLocale() ~= "frFR" then
	return
end

local L = ns.L

-- General
L.ADDON_LOADED = "Version %s chargée. Tapez |cffffd100/aa|r pour les commandes."
L.UNKNOWN_COMMAND = "Commande inconnue |cffffd100%s|r."
L.HELP_HEADER = "Commandes :"
L.YES = "oui"
L.NO = "non"
