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
L.WINDOW_SUBTITLE = "Помощь новичкам"

-- Status line
L.STATUS_LOCKDOWN = "Сообщения чата заблокированы (бой с боссом)"
L.STATUS_MENTOR = "Режим наставника"

-- Settings
L.SETTINGS_GENERAL = "Общие"
L.SETTING_MENTOR = "Режим наставника"
L.SETTING_MENTOR_TIP = "Вы хотите помогать: вы получаете уведомления о новых вопросах на ваших языках (см. Уведомления наставника)."
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

-- Players
L.QUEUE_IGNORED = "Вопросов от игнорируемых игроков: %d"
L.THREAD_PLAYER_TIP = "Правый клик: действия с игроком"
L.THREAD_IGNORED_TIP = "Ответ игнорируемого игрока. Нажмите, чтобы показать."
L.THREAD_IGNORED_ANSWER = "Ответ игнорируемого игрока (нажмите, чтобы показать)"
L.PLAYER_NOTE_PROMPT = "Заметка о %s:"
L.PLAYER_HELPED = "Помог мне"
L.PLAYER_HELPED_DONE = "Учтено как полезное"
L.PLAYER_FAVORITE = "Избранный"
L.PLAYER_IGNORE = "Игнорировать"
L.PLAYER_NOTE = "Заметка…"
L.PLAYER_WHISPER = "Шепнуть"
L.PLAYERS_FAVORITES = "Избранные"
L.PLAYERS_IGNORED = "Игнорируемые"
L.PLAYERS_RECENT = "Недавние"
L.PLAYERS_FAVORITES_EMPTY = "Избранных пока нет. Щёлкните правой кнопкой по имени в вопросе или ответе, чтобы добавить."
L.PLAYERS_IGNORED_EMPTY = "Вы никого не игнорируете."
L.PLAYERS_RECENT_EMPTY = "В этой сессии ещё никого не было."
L.PLAYERS_HINT = "Нажмите на игрока для действий"
L.PLAYERS_HELPED = "помог вам %d раз"
L.PLAYERS_NOTE = "заметка: %s"
L.PLAYERS_IS_IGNORED = "игнорируется"

-- Notifications
L.SETTINGS_NOTIFY = "Уведомления наставника"
L.SETTINGS_NOTIFY_TEXT = "Новые вопросы в режиме наставника, по категориям. О вопросах избранных и ответах на ваши вопросы уведомляем всегда."
L.NOTIFY_MODE_OFF = "Выкл."
L.NOTIFY_MODE_BADGE = "Значок"
L.NOTIFY_MODE_SOUND = "Звук"
L.SETTING_CLASSES = "Классы"
L.SETTING_CLASSES_ALL = "Все классы"
L.SETTING_CLASSES_TIP = "Только вопросы игроков этих классов."
L.SETTING_MAX_LEVEL = "Автор до уровня"
L.SETTING_MAX_LEVEL_ANY = "Любой уровень"
L.SETTING_MAX_LEVEL_TIP = "Только вопросы игроков до этого уровня."
L.SETTING_PAUSE_COMBAT = "Не в бою"
L.SETTING_PAUSE_INSTANCE = "Не в подземельях"
L.TOAST_OPEN = "Открыть"
L.TOAST_LATER = "Позже"
L.TOAST_ANSWER = "Ответ на ваш вопрос"
L.TOAST_LINE = "%s: «%s»"
L.TOAST_MORE = "ещё %d"
L.MINIMAP_NEW = "новых: %d"

-- Thread (pins, My questions)
L.THREAD_CLOSED = "Закрыт – больше не в общем списке."
L.THREAD_WITHDRAWN = "Отозван."
L.THREAD_ELSEWHERE = "Ещё открыт, но на этого персонажа пока не получен."
L.THREAD_PIN = "Закрепить ответ"
L.THREAD_PIN_TIP = "Сохраняет этот ответ вместе с вопросом в разделе «Закреплённые». Закреплённые ответы никогда не исчезают."
L.THREAD_UNPIN = "Открепить"
L.THREAD_UNPIN_TIP = "Убирает этот ответ из «Закреплённых»."

-- Status and reasons
L.STATUS_WITHDRAWN = "отозван"
L.REASON_PIN_FULL = "Вы закрепили максимум – 500 ответов. Сначала открепите несколько."

-- My questions
L.MY_CLEANUP = "Очистить"
L.MY_CLEANUP_TIP = "Удаляет закрытые и отозванные вопросы старше срока хранения из настроек."
L.MY_CLEANUP_FOREVER = "Вопросы хранятся всегда. Задайте срок хранения в настройках."
L.MY_CLEANUP_DONE = "Удалено вопросов: %d."
L.MY_COUNT = "Вопросов: %d"
L.MY_EMPTY = "Вы ещё ничего не спрашивали. Здесь будут храниться ваши вопросы со всеми ответами."

-- Pinned
L.PINNED_UNPIN = "Открепить"
L.PINNED_COUNT = "Закреплено: %d / %d"
L.PINNED_EMPTY = "Пока ничего не закреплено. Нажмите на значок записки рядом с ответом, чтобы сохранить его здесь."

-- FAQ
L.FAQ_LANGUAGE = "Язык FAQ"
L.FAQ_LANGUAGE_TIP = "Переключает FAQ между немецким и английским."
L.FAQ_NOT_HELPED = "Не помогло? Спросите сообщество."

-- Categories
L.CAT_QUEST = "Задание"
L.CAT_CLASS = "Класс"
L.CAT_DUNGEON = "Подземелье"
L.CAT_PROF = "Профессия"
L.CAT_UI = "Интерфейс"
L.CAT_MISC = "Другое"
