local _, ns = ...

-- FAQ: AskAzeroth itself. See Core/Faq.lua for the format.
ns.Faq.Add("addon", {
	{
		id = "addon-ask",
		de = {
			q = "Wie stelle ich mit AskAzeroth eine Frage?",
			a = "Öffne das Fenster mit /aa oder dem Minimap-Button, klicke auf der Seite „Fragen“ auf „Frage stellen“, wähle eine Kategorie und schreib eine kurze Zusammenfassung. Erfahrene Spieler mit dem Addon sehen deine Frage und antworten im Thread. Für jede Antwort bekommst du eine Benachrichtigung.",
		},
		en = {
			q = "How do I ask a question with AskAzeroth?",
			a = "Open the window with /aa or the minimap button, click \"Ask a question\" on the Questions page, pick a category and write a short summary. Experienced players who use the addon see your question and answer in its thread. You get a notification for every answer.",
		},
	},
	{
		id = "addon-who-answers",
		de = {
			q = "Wer beantwortet meine Fragen?",
			a = "Andere Spieler, die AskAzeroth nutzen und dieselbe Sprache lesen, oft im Mentor-Modus. Sie helfen freiwillig und sind keine Blizzard-Mitarbeiter, eine Antwort kann also ein paar Minuten dauern. Am schnellsten klappt es mit einer klaren Zusammenfassung samt Stufe, Gebiet und Questname.",
		},
		en = {
			q = "Who answers my questions?",
			a = "Other players who use AskAzeroth and read the same language, often in mentor mode. They are volunteers, not Blizzard staff, so an answer can take a few minutes. A clear summary with your level, zone and quest name gets the quickest help.",
		},
	},
	{
		id = "addon-language",
		de = {
			q = "In welcher Sprache soll ich fragen?",
			a = "Jede Sprache hat einen eigenen Kanal, und nur Spieler mit dieser Sprache sehen deine Frage. In den Einstellungen legst du fest, welche Sprachen du liest und welche neue Fragen nutzen; im Fenster „Frage stellen“ kannst du sie auch ändern.",
		},
		en = {
			q = "Which language should I ask in?",
			a = "Every language has its own channel, and only players who chose that language see your question. In the settings you pick which languages you read and which one new questions use; you can also change it in the ask dialog.",
		},
	},
	{
		id = "addon-expiry",
		de = {
			q = "Warum ist meine Frage verschwunden?",
			a = "Fragen bleiben nur eine Weile in der öffentlichen Liste: 2 Stunden ohne Antwort, 45 Minuten nach der letzten Antwort, 10 Minuten nachdem du sie als gelöst markiert hast. Deine eigenen Fragen bleiben mit allen Antworten unter „Meine Fragen“.",
		},
		en = {
			q = "Why did my question disappear?",
			a = "Questions only stay in the public list for a while: 2 hours without answers, 45 minutes after the last answer, 10 minutes after you mark it as solved. Your own questions and all their answers stay under \"My questions\".",
		},
	},
	{
		id = "addon-pin",
		de = {
			q = "Wie behalte ich eine hilfreiche Antwort?",
			a = "Klick auf das Notiz-Symbol neben einer Antwort, um sie anzupinnen. Angepinnte Antworten werden samt Frage auf deinem Rechner gespeichert und laufen nie ab. Du findest sie auf der Seite „Angepinnt“.",
		},
		en = {
			q = "How do I keep a helpful answer?",
			a = "Click the note icon next to an answer to pin it. Pinned answers are saved on your computer together with their question and never expire. You find them on the Pinned page.",
		},
	},
	{
		id = "addon-mentor",
		de = {
			q = "Was ist der Mentor-Modus?",
			a = "Wer gerne hilft, schaltet in den Einstellungen den Mentor-Modus ein. Mentoren werden über neue Fragen benachrichtigt und können wählen, zu welchen Kategorien und Klassen sie etwas hören möchten.",
		},
		en = {
			q = "What is mentor mode?",
			a = "Players who like to help turn on mentor mode in the settings. They are notified about new questions and can choose the categories and classes they want to hear about.",
		},
	},
	{
		id = "addon-safety",
		de = {
			q = "Was gehört nie in eine Frage?",
			a = "Gib nie dein Passwort, deine Account-E-Mail oder Authenticator-Codes weiter, auch nicht an jemanden, der sich als Blizzard ausgibt: Blizzard fragt im Spiel nie danach. Bei Problemen mit Account, Zahlung oder Technik hilft der Blizzard-Support über den Hilfe-Knopf im Spielmenü.",
		},
		en = {
			q = "What should I never post in a question?",
			a = "Never share your password, account email or authenticator codes, not even with someone claiming to be from Blizzard: Blizzard never asks for them in game. For account, payment or technical problems, contact Blizzard support through the Help button in the game menu.",
		},
	},
})
