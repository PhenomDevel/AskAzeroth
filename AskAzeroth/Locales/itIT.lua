local _, ns = ...

if GetLocale() ~= "itIT" then
	return
end

local L = ns.L

-- General
L.ADDON_LOADED = "Versione %s caricata. Digita |cffffd100/aa|r per i comandi."
L.UNKNOWN_COMMAND = "Comando sconosciuto |cffffd100%s|r."
L.HELP_HEADER = "Comandi:"
L.YES = "sì"
L.NO = "no"
