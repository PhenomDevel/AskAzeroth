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

-- Window
L.PAGE_QUESTIONS = "Preguntas"
L.PAGE_MY_QUESTIONS = "Mis preguntas"
L.PAGE_PINNED = "Fijadas"
L.PAGE_PLAYERS = "Jugadores"
L.PAGE_FAQ = "FAQ"
L.PAGE_SETTINGS = "Opciones"
L.PAGE_COMING_SOON = "Llegará en una versión posterior."
L.PAGE_MY_QUESTIONS_TEXT = "Todo lo que has preguntado, con todas las respuestas, incluso después de desaparecer de la lista pública."
L.PAGE_PINNED_TEXT = "Respuestas que fijaste, junto con su pregunta. Se quedan en tu ordenador y nunca caducan, aunque la pregunta haya desaparecido."
L.PAGE_FAQ_TEXT = "Respuestas a preguntas frecuentes de jugadores nuevos."

-- Status line
L.STATUS_LOCKDOWN = "Mensajes de chat bloqueados (encuentro)"
L.STATUS_MENTOR = "Modo mentor"

-- Settings
L.SETTINGS_GENERAL = "General"
L.SETTING_MENTOR = "Modo mentor"
L.SETTING_MENTOR_TIP = "Quieres ayudar: recibes avisos de preguntas nuevas (a partir de una versión posterior)."
L.SETTING_MINIMAP = "Mostrar botón del minimapa"
L.SETTING_RETENTION = "Conservar mis preguntas"
L.SETTING_RETENTION_TIP = "Cuánto tiempo se quedan tus preguntas en «Mis preguntas»."
L.RETENTION_FOREVER = "Siempre"
L.RETENTION_DAYS = "%d días"
L.SETTINGS_LANGUAGES = "Idiomas"
L.SETTINGS_LANGUAGES_TEXT = "Las preguntas viajan por un canal de chat oculto por idioma. Cada idioma ocupa uno de tus espacios de canal."
L.SETTING_LANGUAGE_LAST = "Debe quedar al menos un idioma seleccionado."
L.SETTING_ASK_LANGUAGE = "Idioma de las preguntas nuevas"

-- Minimap button
L.MINIMAP_LANGUAGES = "Idiomas: %s"
L.MINIMAP_LEFT = "Clic izquierdo: abrir o cerrar"
L.MINIMAP_RIGHT = "Clic derecho: opciones"

-- Commands
L.CMD_SHOW = "abrir la ventana"
L.CMD_SETTINGS = "abrir las opciones"
L.CMD_MINIMAP = "mostrar u ocultar el botón del minimapa"
L.CMD_MINIMAP_HIDDEN = "Botón del minimapa oculto. |cffffd100/aa minimap|r lo vuelve a mostrar."
L.CMD_MINIMAP_SHOWN = "Botón del minimapa visible."

-- Questions page
L.QUEUE_SEARCH = "Buscar…"
L.QUEUE_ALL = "Todas"
L.QUEUE_ASK = "Hacer una pregunta"
L.QUEUE_EMPTY = "Aún no hay preguntas. ¡Haz la primera!"
L.QUEUE_NO_MATCH = "Ninguna pregunta coincide con el filtro."

-- Thread
L.THREAD_NONE = "Elige una pregunta a la izquierda para leer las respuestas."
L.THREAD_SEND = "Enviar"
L.THREAD_SOLVE = "Marcar como resuelta"
L.THREAD_SOLVE_TIP = "Tu pregunta tiene la respuesta que necesitabas. Desaparece 10 minutos después."
L.THREAD_WITHDRAW = "Retirar"
L.THREAD_WITHDRAW_TIP = "Elimina tu pregunta para todos."
L.THREAD_WITHDRAW_CONFIRM = "¿Retirar tu pregunta para todos?"
L.THREAD_OPEN_EXPIRES = "Desaparece en %d min si nadie responde."
L.THREAD_ANSWERED_EXPIRES = "Desaparece en %d min sin una respuesta nueva."
L.THREAD_SOLVED_EXPIRES = "Resuelta – desaparece en %d min."

-- Formatting
L.LEVEL_SHORT = "Nivel %d"
L.AGO_NOW = "ahora mismo"
L.AGO_MINUTES = "hace %d min"
L.AGO_HOURS = "hace %d h"

-- Status
L.STATUS_OPEN = "abierta"
L.STATUS_ANSWER_ONE = "1 respuesta"
L.STATUS_ANSWERS = "%d respuestas"
L.STATUS_SOLVED = "resuelta"
L.STATUS_CLOSED = "cerrada"

-- Ask dialog
L.ASK_TITLE = "Hacer una pregunta"
L.ASK_CATEGORY = "Categoría"
L.ASK_SUMMARY = "Resumen"
L.ASK_DETAILS = "Detalles (opcional)"
L.ASK_LANGUAGE = "Idioma"
L.ASK_CONTEXT = "Se envía también: %s"
L.ASK_SUBMIT = "Preguntar"
L.ASK_CANCEL = "Cancelar"

-- Reasons
L.REASON_RATE = "Puedes hacer una pregunta por minuto. Espera un momento."
L.REASON_OPEN_LIMIT = "Ya tienes 3 preguntas abiertas. Marca una como resuelta o retírala primero."
L.REASON_TITLE = "El resumen está vacío, es demasiado largo o tiene caracteres no válidos."
L.REASON_BODY = "Los detalles son demasiado largos o tienen caracteres no válidos."
L.REASON_TEXT = "La respuesta está vacía, es demasiado larga o tiene caracteres no válidos."
L.REASON_LANG = "Este idioma no está seleccionado."
L.REASON_CATEGORY = "Elige una categoría."
L.REASON_SENDER = "Aún no se conoce el nombre de tu personaje. Inténtalo de nuevo en un momento."
L.REASON_UNKNOWN = "Esta pregunta ya no existe."
L.REASON_NOT_AUTHOR = "Solo quien preguntó puede hacerlo."
L.REASON_DUPLICATE = "Ya está hecho."
L.REASON_ANSWERS_FULL = "Esta pregunta tiene demasiadas respuestas."
L.REASON_TIME = "La hora no encaja."
L.REASON_OTHER = "No es posible (%s)."

-- Players
L.QUEUE_IGNORED = "%d preguntas de jugadores ignorados"
L.THREAD_PLAYER_TIP = "Clic derecho: opciones del jugador"
L.THREAD_IGNORED_TIP = "Respuesta de un jugador ignorado. Haz clic para verla."
L.THREAD_IGNORED_ANSWER = "Respuesta de un jugador ignorado (clic para verla)"
L.PLAYER_NOTE_PROMPT = "Nota para %s:"
L.PLAYER_HELPED = "Me ayudó"
L.PLAYER_HELPED_DONE = "Contada como útil"
L.PLAYER_FAVORITE = "Favorito"
L.PLAYER_IGNORE = "Ignorar"
L.PLAYER_NOTE = "Nota…"
L.PLAYER_WHISPER = "Susurrar"
L.PLAYERS_FAVORITES = "Favoritos"
L.PLAYERS_IGNORED = "Ignorados"
L.PLAYERS_RECENT = "Vistos hace poco"
L.PLAYERS_FAVORITES_EMPTY = "Aún no hay favoritos. Haz clic derecho en un nombre de una pregunta o respuesta para añadir uno."
L.PLAYERS_IGNORED_EMPTY = "No ignoras a nadie."
L.PLAYERS_RECENT_EMPTY = "Aún no has visto a nadie en esta sesión."
L.PLAYERS_HINT = "Haz clic en un jugador para ver opciones"
L.PLAYERS_HELPED = "te ayudó %d×"
L.PLAYERS_NOTE = "nota: %s"
L.PLAYERS_IS_IGNORED = "ignorado"

-- Categories
L.CAT_QUEST = "Misión"
L.CAT_CLASS = "Clase"
L.CAT_DUNGEON = "Mazmorra"
L.CAT_PROF = "Profesión"
L.CAT_UI = "Interfaz"
L.CAT_MISC = "Otros"
