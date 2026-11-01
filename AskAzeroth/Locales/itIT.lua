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
L.PAGE_QUESTIONS_TEXT = "Le domande aperte nelle tue lingue, con filtri per categoria e una ricerca. Scegline una per leggere il thread e rispondere."
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

-- Categories
L.CAT_QUEST = "Missione"
L.CAT_CLASS = "Classe"
L.CAT_DUNGEON = "Spedizione"
L.CAT_PROF = "Professione"
L.CAT_UI = "Interfaccia"
L.CAT_MISC = "Altro"
