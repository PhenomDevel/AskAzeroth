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
L.PAGE_PLAYERS_TEXT = "I giocatori che hai segnato come preferiti o che ignori, con le tue note e quante volte ti hanno aiutato. Salvato solo sul tuo computer."
L.PAGE_FAQ_TEXT = "Risposte alle domande frequenti dei nuovi giocatori."

-- Status line
L.STATUS_LOCKDOWN = "Messaggi di chat bloccati (scontro)"
L.STATUS_MENTOR = "Modalità mentore"

-- Settings
L.SETTINGS_GENERAL = "Generale"
L.SETTING_MENTOR = "Modalità mentore"
L.SETTING_MENTOR_TIP = "Vuoi aiutare: ricevi un avviso per le nuove domande (da una versione successiva)."
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

-- Categories
L.CAT_QUEST = "Missione"
L.CAT_CLASS = "Classe"
L.CAT_DUNGEON = "Spedizione"
L.CAT_PROF = "Professione"
L.CAT_UI = "Interfaccia"
L.CAT_MISC = "Altro"
