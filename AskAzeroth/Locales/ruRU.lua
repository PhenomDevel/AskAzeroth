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

-- Window
L.PAGE_QUESTIONS = "Вопросы"
L.PAGE_MY_QUESTIONS = "Мои вопросы"
L.PAGE_PINNED = "Закреплённые"
L.PAGE_PLAYERS = "Игроки"
L.PAGE_FAQ = "FAQ"
L.PAGE_SETTINGS = "Настройки"
L.PAGE_COMING_SOON = "Появится в одной из следующих версий."
L.PAGE_QUESTIONS_TEXT = "Открытые вопросы на ваших языках, с фильтрами по категориям и поиском. Выберите вопрос, чтобы прочитать ветку и ответить."
L.PAGE_MY_QUESTIONS_TEXT = "Всё, что вы спрашивали, со всеми ответами, даже после исчезновения из общего списка."
L.PAGE_PINNED_TEXT = "Ответы, которые вы закрепили, вместе с вопросом. Они хранятся на вашем компьютере и никогда не исчезают, даже если вопрос уже пропал."
L.PAGE_PLAYERS_TEXT = "Игроки, которых вы отметили как избранных или игнорируете, с вашими заметками и тем, сколько раз они вам помогли. Хранится только на вашем компьютере."
L.PAGE_FAQ_TEXT = "Ответы на частые вопросы новых игроков."

-- Status line
L.STATUS_LOCKDOWN = "Сообщения чата заблокированы (бой с боссом)"
L.STATUS_MENTOR = "Режим наставника"

-- Settings
L.SETTINGS_GENERAL = "Общие"
L.SETTING_MENTOR = "Режим наставника"
L.SETTING_MENTOR_TIP = "Вы хотите помогать: вы получаете уведомления о новых вопросах (в одной из следующих версий)."
L.SETTING_MINIMAP = "Показывать кнопку у миникарты"
L.SETTING_RETENTION = "Хранить мои вопросы"
L.SETTING_RETENTION_TIP = "Как долго ваши вопросы остаются в разделе «Мои вопросы»."
L.RETENTION_FOREVER = "Всегда"
L.RETENTION_DAYS = "%d дн."
L.SETTINGS_LANGUAGES = "Языки"
L.SETTINGS_LANGUAGES_TEXT = "Вопросы передаются через скрытый канал чата для каждого языка. Каждый язык занимает одно из ваших мест для каналов."
L.SETTING_LANGUAGE_LAST = "Должен оставаться выбранным хотя бы один язык."
L.SETTING_ASK_LANGUAGE = "Язык новых вопросов"

-- Minimap button
L.MINIMAP_LANGUAGES = "Языки: %s"
L.MINIMAP_LEFT = "Левый клик: открыть или закрыть"
L.MINIMAP_RIGHT = "Правый клик: настройки"

-- Commands
L.CMD_SHOW = "открыть окно"
L.CMD_SETTINGS = "открыть настройки"
L.CMD_MINIMAP = "показать или скрыть кнопку у миникарты"
L.CMD_MINIMAP_HIDDEN = "Кнопка у миникарты скрыта. |cffffd100/aa minimap|r снова покажет её."
L.CMD_MINIMAP_SHOWN = "Кнопка у миникарты показана."
