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
L.PAGE_QUESTIONS_TEXT = "Preguntas abiertas en tus idiomas, con filtros por categoría y una búsqueda. Elige una para leer el hilo y responder."
L.PAGE_MY_QUESTIONS_TEXT = "Todo lo que has preguntado, con todas las respuestas, incluso después de desaparecer de la lista pública."
L.PAGE_PINNED_TEXT = "Respuestas que fijaste, junto con su pregunta. Se quedan en tu ordenador y nunca caducan, aunque la pregunta haya desaparecido."
L.PAGE_PLAYERS_TEXT = "Jugadores que marcaste como favoritos o ignoras, con tus notas y cuántas veces te han ayudado. Solo se guarda en tu ordenador."
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

-- Categories
L.CAT_QUEST = "Misión"
L.CAT_CLASS = "Clase"
L.CAT_DUNGEON = "Mazmorra"
L.CAT_PROF = "Profesión"
L.CAT_UI = "Interfaz"
L.CAT_MISC = "Otros"
