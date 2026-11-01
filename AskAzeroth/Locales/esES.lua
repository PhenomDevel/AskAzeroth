local _, ns = ...

if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then
	return
end

local L = ns.L

-- General
L.ADDON_LOADED = "Versión %s cargada. Escribe |cffffd100/aa|r para ver los comandos."
L.UNKNOWN_COMMAND = "Comando desconocido |cffffd100%s|r."
L.HELP_HEADER = "Comandos:"
L.YES = "sí"
L.NO = "no"
