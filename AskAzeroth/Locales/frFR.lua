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
L.PAGE_MY_QUESTIONS_TEXT = "Tout ce que vous avez demandé, avec toutes les réponses, même après sa disparition de la liste publique."
L.PAGE_PINNED_TEXT = "Les réponses que vous avez épinglées, avec leur question. Elles restent sur votre ordinateur et n'expirent jamais, même après la disparition de la question."
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

-- Questions page
L.QUEUE_SEARCH = "Rechercher…"
L.QUEUE_ALL = "Toutes"
L.QUEUE_ASK = "Poser une question"
L.QUEUE_EMPTY = "Aucune question pour l'instant. Posez la première !"
L.QUEUE_NO_MATCH = "Aucune question ne correspond au filtre."

-- Thread
L.THREAD_NONE = "Choisissez une question à gauche pour lire les réponses."
L.THREAD_SEND = "Envoyer"
L.THREAD_SOLVE = "Marquer comme résolue"
L.THREAD_SOLVE_TIP = "Votre question a obtenu la réponse attendue. Elle disparaît 10 minutes plus tard."
L.THREAD_WITHDRAW = "Retirer"
L.THREAD_WITHDRAW_TIP = "Retire votre question pour tout le monde."
L.THREAD_WITHDRAW_CONFIRM = "Retirer votre question pour tout le monde ?"
L.THREAD_OPEN_EXPIRES = "Disparaît dans %d min si personne ne répond."
L.THREAD_ANSWERED_EXPIRES = "Disparaît dans %d min sans nouvelle réponse."
L.THREAD_SOLVED_EXPIRES = "Résolue – disparaît dans %d min."

-- Formatting
L.LEVEL_SHORT = "Niveau %d"
L.AGO_NOW = "à l'instant"
L.AGO_MINUTES = "il y a %d min"
L.AGO_HOURS = "il y a %d h"

-- Status
L.STATUS_OPEN = "ouverte"
L.STATUS_ANSWER_ONE = "1 réponse"
L.STATUS_ANSWERS = "%d réponses"
L.STATUS_SOLVED = "résolue"
L.STATUS_CLOSED = "fermée"

-- Ask dialog
L.ASK_TITLE = "Poser une question"
L.ASK_CATEGORY = "Catégorie"
L.ASK_SUMMARY = "Résumé"
L.ASK_DETAILS = "Détails (facultatif)"
L.ASK_LANGUAGE = "Langue"
L.ASK_CONTEXT = "Envoyé avec : %s"
L.ASK_SUBMIT = "Envoyer"
L.ASK_CANCEL = "Annuler"

-- Reasons
L.REASON_RATE = "Vous pouvez poser une question par minute. Patientez un instant."
L.REASON_OPEN_LIMIT = "Vous avez déjà 3 questions ouvertes. Marquez-en une comme résolue ou retirez-la d'abord."
L.REASON_TITLE = "Le résumé est vide, trop long ou contient des caractères non valides."
L.REASON_BODY = "Les détails sont trop longs ou contiennent des caractères non valides."
L.REASON_TEXT = "La réponse est vide, trop longue ou contient des caractères non valides."
L.REASON_LANG = "Cette langue n'est pas sélectionnée."
L.REASON_CATEGORY = "Choisissez une catégorie."
L.REASON_SENDER = "Le nom de votre personnage n'est pas encore connu. Réessayez dans un instant."
L.REASON_UNKNOWN = "Cette question n'existe plus."
L.REASON_NOT_AUTHOR = "Seul l'auteur de la question peut faire cela."
L.REASON_DUPLICATE = "Déjà fait."
L.REASON_ANSWERS_FULL = "Cette question a trop de réponses."
L.REASON_TIME = "L'heure ne correspond pas."
L.REASON_OTHER = "Impossible (%s)."

-- Players
L.QUEUE_IGNORED = "%d questions de joueurs ignorés"
L.THREAD_PLAYER_TIP = "Clic droit : options du joueur"
L.THREAD_IGNORED_TIP = "Réponse d'un joueur ignoré. Cliquez pour l'afficher."
L.THREAD_IGNORED_ANSWER = "Réponse d'un joueur ignoré (cliquez pour l'afficher)"
L.PLAYER_NOTE_PROMPT = "Note pour %s :"
L.PLAYER_HELPED = "M'a aidé"
L.PLAYER_HELPED_DONE = "Comptée comme utile"
L.PLAYER_FAVORITE = "Favori"
L.PLAYER_IGNORE = "Ignorer"
L.PLAYER_NOTE = "Note…"
L.PLAYER_WHISPER = "Chuchoter"
L.PLAYERS_FAVORITES = "Favoris"
L.PLAYERS_IGNORED = "Ignorés"
L.PLAYERS_RECENT = "Vus récemment"
L.PLAYERS_FAVORITES_EMPTY = "Pas encore de favoris. Clic droit sur un nom dans une question ou une réponse pour en ajouter un."
L.PLAYERS_IGNORED_EMPTY = "Vous n'ignorez personne."
L.PLAYERS_RECENT_EMPTY = "Personne vu pendant cette session."
L.PLAYERS_HINT = "Cliquez sur un joueur pour les options"
L.PLAYERS_HELPED = "vous a aidé %d×"
L.PLAYERS_NOTE = "note : %s"
L.PLAYERS_IS_IGNORED = "ignoré"

-- Categories
L.CAT_QUEST = "Quête"
L.CAT_CLASS = "Classe"
L.CAT_DUNGEON = "Donjon"
L.CAT_PROF = "Métier"
L.CAT_UI = "Interface"
L.CAT_MISC = "Autre"
