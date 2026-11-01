local _, ns = ...

if GetLocale() ~= "frFR" then
	return
end

local L = ns.L

-- General
L.ADDON_LOADED = "Version %s chargée. Tapez |cffffd100/aa|r pour les commandes."
L.UNKNOWN_COMMAND = "Commande inconnue |cffffd100%s|r."
L.HELP_HEADER = "Commandes :"
L.YES = "oui"
L.NO = "non"

-- Window
L.PAGE_QUESTIONS = "Questions"
L.PAGE_MY_QUESTIONS = "Mes questions"
L.PAGE_PINNED = "Épinglées"
L.PAGE_PLAYERS = "Joueurs"
L.PAGE_FAQ = "FAQ"
L.PAGE_SETTINGS = "Options"
L.PAGE_COMING_SOON = "Dans une version ultérieure."
L.PAGE_QUESTIONS_TEXT = "Les questions ouvertes dans vos langues, avec des filtres par catégorie et une recherche. Choisissez-en une pour lire le fil et y répondre."
L.PAGE_MY_QUESTIONS_TEXT = "Tout ce que vous avez demandé, avec toutes les réponses, même après sa disparition de la liste publique."
L.PAGE_PINNED_TEXT = "Les réponses que vous avez épinglées, avec leur question. Elles restent sur votre ordinateur et n'expirent jamais, même après la disparition de la question."
L.PAGE_PLAYERS_TEXT = "Les joueurs que vous avez mis en favoris ou que vous ignorez, avec vos notes et le nombre de fois où ils vous ont aidé. Enregistré uniquement sur votre ordinateur."
L.PAGE_FAQ_TEXT = "Réponses aux questions fréquentes des nouveaux joueurs."

-- Status line
L.STATUS_LOCKDOWN = "Messages de discussion bloqués (rencontre)"
L.STATUS_MENTOR = "Mode mentor"

-- Settings
L.SETTINGS_GENERAL = "Général"
L.SETTING_MENTOR = "Mode mentor"
L.SETTING_MENTOR_TIP = "Vous voulez aider : vous êtes averti des nouvelles questions (dans une version ultérieure)."
L.SETTING_MINIMAP = "Afficher le bouton de la minicarte"
L.SETTING_RETENTION = "Conserver mes questions"
L.SETTING_RETENTION_TIP = "Durée pendant laquelle vos questions restent dans « Mes questions »."
L.RETENTION_FOREVER = "Toujours"
L.RETENTION_DAYS = "%d jours"
L.SETTINGS_LANGUAGES = "Langues"
L.SETTINGS_LANGUAGES_TEXT = "Les questions passent par un canal de discussion caché par langue. Chaque langue occupe un de vos emplacements de canal."
L.SETTING_LANGUAGE_LAST = "Au moins une langue doit rester sélectionnée."
L.SETTING_ASK_LANGUAGE = "Langue des nouvelles questions"

-- Minimap button
L.MINIMAP_LANGUAGES = "Langues : %s"
L.MINIMAP_LEFT = "Clic gauche : ouvrir ou fermer"
L.MINIMAP_RIGHT = "Clic droit : options"

-- Commands
L.CMD_SHOW = "ouvrir la fenêtre"
L.CMD_SETTINGS = "ouvrir les options"
L.CMD_MINIMAP = "afficher ou masquer le bouton de la minicarte"
L.CMD_MINIMAP_HIDDEN = "Bouton de la minicarte masqué. |cffffd100/aa minimap|r le réaffiche."
L.CMD_MINIMAP_SHOWN = "Bouton de la minicarte affiché."

-- Categories
L.CAT_QUEST = "Quête"
L.CAT_CLASS = "Classe"
L.CAT_DUNGEON = "Donjon"
L.CAT_PROF = "Métier"
L.CAT_UI = "Interface"
L.CAT_MISC = "Autre"
