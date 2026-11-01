local _, ns = ...

if GetLocale() ~= "ruRU" then
	return
end

local L = ns.L

-- General
L.ADDON_LOADED = "Версия %s загружена. Введите |cffffd100/aa|r для списка команд."
L.UNKNOWN_COMMAND = "Неизвестная команда |cffffd100%s|r."
L.HELP_HEADER = "Команды:"
L.YES = "да"
L.NO = "нет"
