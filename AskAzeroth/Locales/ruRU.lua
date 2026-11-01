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

-- Questions page
L.QUEUE_SEARCH = "Поиск…"
L.QUEUE_ALL = "Все"
L.QUEUE_ASK = "Задать вопрос"
L.QUEUE_EMPTY = "Вопросов пока нет. Задайте первый!"
L.QUEUE_NO_MATCH = "Ни один вопрос не подходит под фильтр."

-- Thread
L.THREAD_NONE = "Выберите вопрос слева, чтобы прочитать ответы."
L.THREAD_SEND = "Отправить"
L.THREAD_SOLVE = "Отметить как решённый"
L.THREAD_SOLVE_TIP = "Вы получили нужный ответ. Вопрос исчезнет через 10 минут."
L.THREAD_WITHDRAW = "Отозвать"
L.THREAD_WITHDRAW_TIP = "Удаляет ваш вопрос у всех."
L.THREAD_WITHDRAW_CONFIRM = "Отозвать ваш вопрос у всех?"
L.THREAD_OPEN_EXPIRES = "Исчезнет через %d мин., если никто не ответит."
L.THREAD_ANSWERED_EXPIRES = "Исчезнет через %d мин. без нового ответа."
L.THREAD_SOLVED_EXPIRES = "Решён – исчезнет через %d мин."

-- Formatting
L.LEVEL_SHORT = "Уровень %d"
L.AGO_NOW = "только что"
L.AGO_MINUTES = "%d мин. назад"
L.AGO_HOURS = "%d ч. назад"

-- Status
L.STATUS_OPEN = "открыт"
L.STATUS_ANSWER_ONE = "1 ответ"
L.STATUS_ANSWERS = "ответов: %d"
L.STATUS_SOLVED = "решён"
L.STATUS_CLOSED = "закрыт"

-- Ask dialog
L.ASK_TITLE = "Задать вопрос"
L.ASK_CATEGORY = "Категория"
L.ASK_SUMMARY = "Кратко"
L.ASK_DETAILS = "Подробности (необязательно)"
L.ASK_LANGUAGE = "Язык"
L.ASK_CONTEXT = "Отправляется вместе: %s"
L.ASK_SUBMIT = "Спросить"
L.ASK_CANCEL = "Отмена"

-- Reasons
L.REASON_RATE = "Можно задавать один вопрос в минуту. Подождите немного."
L.REASON_OPEN_LIMIT = "У вас уже 3 открытых вопроса. Сначала отметьте один как решённый или отзовите его."
L.REASON_TITLE = "Краткое описание пустое, слишком длинное или содержит недопустимые символы."
L.REASON_BODY = "Подробности слишком длинные или содержат недопустимые символы."
L.REASON_TEXT = "Ответ пустой, слишком длинный или содержит недопустимые символы."
L.REASON_LANG = "Этот язык не выбран."
L.REASON_CATEGORY = "Выберите категорию."
L.REASON_SENDER = "Имя вашего персонажа ещё неизвестно. Попробуйте ещё раз чуть позже."
L.REASON_UNKNOWN = "Этого вопроса больше нет."
L.REASON_NOT_AUTHOR = "Это может сделать только автор вопроса."
L.REASON_DUPLICATE = "Уже сделано."
L.REASON_ANSWERS_FULL = "У этого вопроса слишком много ответов."
L.REASON_TIME = "Время не подходит."
L.REASON_OTHER = "Невозможно (%s)."

-- Categories
L.CAT_QUEST = "Задание"
L.CAT_CLASS = "Класс"
L.CAT_DUNGEON = "Подземелье"
L.CAT_PROF = "Профессия"
L.CAT_UI = "Интерфейс"
L.CAT_MISC = "Другое"
