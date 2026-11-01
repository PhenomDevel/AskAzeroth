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

-- Window
L.PAGE_QUESTIONS = "Domande"
L.PAGE_MY_QUESTIONS = "Le mie domande"
L.PAGE_PINNED = "Fissate"
L.PAGE_PLAYERS = "Giocatori"
L.PAGE_FAQ = "FAQ"
L.PAGE_SETTINGS = "Impostazioni"
L.PAGE_COMING_SOON = "In arrivo in una versione successiva."
L.PAGE_MY_QUESTIONS_TEXT = "Tutto ciò che hai chiesto, con tutte le risposte, anche dopo che è sparito dall'elenco pubblico."
L.PAGE_PINNED_TEXT = "Le risposte che hai fissato, insieme alla loro domanda. Restano sul tuo computer e non scadono mai, anche dopo che la domanda è sparita."
L.PAGE_FAQ_TEXT = "Risposte alle domande frequenti dei nuovi giocatori."

-- Status line
L.STATUS_LOCKDOWN = "Messaggi di chat bloccati (scontro)"
L.STATUS_MENTOR = "Modalità mentore"

-- Settings
L.SETTINGS_GENERAL = "Generale"
L.SETTING_MENTOR = "Modalità mentore"
L.SETTING_MENTOR_TIP = "Vuoi aiutare: ricevi un avviso per le nuove domande nelle tue lingue (vedi Notifiche mentore)."
L.SETTING_MINIMAP = "Mostra il pulsante della minimappa"
L.SETTING_RETENTION = "Conserva le mie domande"
L.SETTING_RETENTION_TIP = "Per quanto tempo le tue domande restano in \"Le mie domande\"."
L.RETENTION_FOREVER = "Sempre"
L.RETENTION_DAYS = "%d giorni"
L.SETTINGS_LANGUAGES = "Lingue"
L.SETTINGS_LANGUAGES_TEXT = "Le domande passano da un canale di chat nascosto per lingua. Ogni lingua occupa uno dei tuoi posti canale."
L.SETTING_LANGUAGE_LAST = "Deve restare selezionata almeno una lingua."
L.SETTING_ASK_LANGUAGE = "Lingua delle nuove domande"

-- Minimap button
L.MINIMAP_LANGUAGES = "Lingue: %s"
L.MINIMAP_LEFT = "Clic sinistro: apri o chiudi"
L.MINIMAP_RIGHT = "Clic destro: impostazioni"

-- Commands
L.CMD_SHOW = "apri la finestra"
L.CMD_SETTINGS = "apri le impostazioni"
L.CMD_MINIMAP = "mostra o nascondi il pulsante della minimappa"
L.CMD_MINIMAP_HIDDEN = "Pulsante della minimappa nascosto. |cffffd100/aa minimap|r lo mostra di nuovo."
L.CMD_MINIMAP_SHOWN = "Pulsante della minimappa visibile."

-- Questions page
L.QUEUE_SEARCH = "Cerca…"
L.QUEUE_ALL = "Tutte"
L.QUEUE_ASK = "Fai una domanda"
L.QUEUE_EMPTY = "Ancora nessuna domanda. Fai tu la prima!"
L.QUEUE_NO_MATCH = "Nessuna domanda corrisponde al filtro."

-- Thread
L.THREAD_NONE = "Scegli una domanda a sinistra per leggere le risposte."
L.THREAD_SEND = "Invia"
L.THREAD_SOLVE = "Segna come risolta"
L.THREAD_SOLVE_TIP = "La tua domanda ha avuto la risposta che cercavi. Sparisce 10 minuti dopo."
L.THREAD_WITHDRAW = "Ritira"
L.THREAD_WITHDRAW_TIP = "Rimuove la tua domanda per tutti."
L.THREAD_WITHDRAW_CONFIRM = "Ritirare la tua domanda per tutti?"
L.THREAD_OPEN_EXPIRES = "Sparisce tra %d min se nessuno risponde."
L.THREAD_ANSWERED_EXPIRES = "Sparisce tra %d min senza una nuova risposta."
L.THREAD_SOLVED_EXPIRES = "Risolta – sparisce tra %d min."

-- Formatting
L.LEVEL_SHORT = "Livello %d"
L.AGO_NOW = "adesso"
L.AGO_MINUTES = "%d min fa"
L.AGO_HOURS = "%d h fa"

-- Status
L.STATUS_OPEN = "aperta"
L.STATUS_ANSWER_ONE = "1 risposta"
L.STATUS_ANSWERS = "%d risposte"
L.STATUS_SOLVED = "risolta"
L.STATUS_CLOSED = "chiusa"

-- Ask dialog
L.ASK_TITLE = "Fai una domanda"
L.ASK_CATEGORY = "Categoria"
L.ASK_SUMMARY = "Riassunto"
L.ASK_DETAILS = "Dettagli (facoltativo)"
L.ASK_LANGUAGE = "Lingua"
L.ASK_CONTEXT = "Inviato insieme: %s"
L.ASK_SUBMIT = "Chiedi"
L.ASK_CANCEL = "Annulla"

-- Reasons
L.REASON_RATE = "Puoi fare una domanda al minuto. Attendi un momento."
L.REASON_OPEN_LIMIT = "Hai già 3 domande aperte. Prima segnane una come risolta o ritirala."
L.REASON_TITLE = "Il riassunto è vuoto, troppo lungo o contiene caratteri non validi."
L.REASON_BODY = "I dettagli sono troppo lunghi o contengono caratteri non validi."
L.REASON_TEXT = "La risposta è vuota, troppo lunga o contiene caratteri non validi."
L.REASON_LANG = "Questa lingua non è selezionata."
L.REASON_CATEGORY = "Scegli una categoria."
L.REASON_SENDER = "Il nome del tuo personaggio non è ancora noto. Riprova tra un attimo."
L.REASON_UNKNOWN = "Questa domanda non esiste più."
L.REASON_NOT_AUTHOR = "Solo chi ha chiesto può farlo."
L.REASON_DUPLICATE = "Già fatto."
L.REASON_ANSWERS_FULL = "Questa domanda ha troppe risposte."
L.REASON_TIME = "L'orario non torna."
L.REASON_OTHER = "Non possibile (%s)."

-- Players
L.QUEUE_IGNORED = "%d domande di giocatori ignorati"
L.THREAD_PLAYER_TIP = "Clic destro: opzioni giocatore"
L.THREAD_IGNORED_TIP = "Risposta di un giocatore ignorato. Clicca per mostrarla."
L.THREAD_IGNORED_ANSWER = "Risposta di un giocatore ignorato (clicca per mostrarla)"
L.PLAYER_NOTE_PROMPT = "Nota per %s:"
L.PLAYER_HELPED = "Mi ha aiutato"
L.PLAYER_HELPED_DONE = "Contata come utile"
L.PLAYER_FAVORITE = "Preferito"
L.PLAYER_IGNORE = "Ignora"
L.PLAYER_NOTE = "Nota…"
L.PLAYER_WHISPER = "Sussurra"
L.PLAYERS_FAVORITES = "Preferiti"
L.PLAYERS_IGNORED = "Ignorati"
L.PLAYERS_RECENT = "Visti di recente"
L.PLAYERS_FAVORITES_EMPTY = "Ancora nessun preferito. Clic destro su un nome in una domanda o risposta per aggiungerne uno."
L.PLAYERS_IGNORED_EMPTY = "Non ignori nessuno."
L.PLAYERS_RECENT_EMPTY = "Nessuno visto in questa sessione."
L.PLAYERS_HINT = "Clicca su un giocatore per le opzioni"
L.PLAYERS_HELPED = "ti ha aiutato %d×"
L.PLAYERS_NOTE = "nota: %s"
L.PLAYERS_IS_IGNORED = "ignorato"

-- Notifications
L.SETTINGS_NOTIFY = "Notifiche mentore"
L.SETTINGS_NOTIFY_TEXT = "Nuove domande in modalità mentore, per categoria. Le domande dei preferiti e le risposte alle tue domande avvisano sempre."
L.NOTIFY_MODE_OFF = "Disattivato"
L.NOTIFY_MODE_BADGE = "Badge"
L.NOTIFY_MODE_SOUND = "Suono"
L.SETTING_CLASSES = "Classi"
L.SETTING_CLASSES_ALL = "Tutte le classi"
L.SETTING_CLASSES_TIP = "Solo domande di giocatori di queste classi."
L.SETTING_MAX_LEVEL = "Chi chiede fino a"
L.SETTING_MAX_LEVEL_ANY = "Qualsiasi livello"
L.SETTING_MAX_LEVEL_TIP = "Solo domande di giocatori fino a questo livello."
L.SETTING_PAUSE_COMBAT = "Non in combattimento"
L.SETTING_PAUSE_INSTANCE = "Non nelle istanze"
L.TOAST_OPEN = "Apri"
L.TOAST_LATER = "Dopo"
L.TOAST_ANSWER = "Risposta alla tua domanda"
L.TOAST_LINE = "%s: «%s»"
L.TOAST_MORE = "+%d altre"
L.MINIMAP_NEW = "%d nuove"

-- Categories
L.CAT_QUEST = "Missione"
L.CAT_CLASS = "Classe"
L.CAT_DUNGEON = "Spedizione"
L.CAT_PROF = "Professione"
L.CAT_UI = "Interfaccia"
L.CAT_MISC = "Altro"
