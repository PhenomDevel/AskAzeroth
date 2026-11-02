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
	{
		id = "addon-good-question",
		de = {
			q = "Wie stelle ich eine gute Frage?",
			a = "Schreib in die Zusammenfassung, worum es geht, zum Beispiel „Wo finde ich den Questgeber für …?“, und nenne in den Details Quest, Gebiet oder Gegenstand. Deine Stufe, Klasse und dein Gebiet schickt AskAzeroth automatisch mit. Je genauer die Frage, desto schneller die Antwort.",
		},
		en = {
			q = "How do I ask a good question?",
			a = "Put the topic in the summary, for example \"Where do I find the quest giver for ...?\", and name the quest, zone or item in the details. AskAzeroth sends your level, class and zone automatically. The more precise the question, the faster the answer.",
		},
	},
	{
		id = "addon-no-answer",
		de = {
			q = "Warum bekomme ich keine Antwort?",
			a = "Vielleicht sind gerade wenige Mentoren in deiner Sprache online, oder die Frage ist sehr speziell. Schau zuerst im FAQ nach, warte etwas und frag sonst noch einmal genauer. Mehrere Sprachen in den Einstellungen erreichen mehr Spieler.",
		},
		en = {
			q = "Why do I not get an answer?",
			a = "Maybe few mentors in your language are online right now, or the question is very specific. Check the FAQ first, wait a bit, and otherwise ask again more precisely. Several languages in the settings reach more players.",
		},
	},
	{
		id = "addon-limits",
		de = {
			q = "Warum kann ich keine weitere Frage stellen?",
			a = "Gegen Spam gibt es Grenzen: höchstens 3 offene Fragen gleichzeitig und eine neue Frage pro Minute. Markiere beantwortete Fragen als gelöst oder zieh alte zurück, dann geht es wieder.",
		},
		en = {
			q = "Why can I not ask another question?",
			a = "There are limits against spam: at most 3 open questions at once and one new question per minute. Mark answered questions as solved or withdraw old ones, then you can ask again.",
		},
	},
	{
		id = "addon-solve",
		de = {
			q = "Wann markiere ich eine Frage als gelöst?",
			a = "Sobald dir eine Antwort geholfen hat. Andere sehen dann, dass keine Hilfe mehr nötig ist, und die Frage verschwindet 10 Minuten später aus der Liste. Du findest sie weiterhin unter „Meine Fragen“.",
		},
		en = {
			q = "When do I mark a question as solved?",
			a = "As soon as an answer helped you. Others then see that no more help is needed, and the question disappears from the list 10 minutes later. You still find it under My questions.",
		},
	},
	{
		id = "addon-withdraw",
		de = {
			q = "Wie nehme ich eine Frage zurück?",
			a = "Öffne deine Frage und klick auf „Zurückziehen“. Sie verschwindet für alle. Das ist praktisch, wenn du die Antwort selbst gefunden hast oder dich vertippt hast.",
		},
		en = {
			q = "How do I take a question back?",
			a = "Open your question and click Withdraw. It disappears for everyone. Handy if you found the answer yourself or made a typo.",
		},
	},
	{
		id = "addon-helped",
		de = {
			q = "Wie bedanke ich mich für eine gute Antwort?",
			a = "Rechtsklick auf eine Antwort auf deine Frage und „Hat mir geholfen“. Das zählt bei dir lokal, wie oft dir ein Spieler geholfen hat, und markiert die Antwort mit einem Haken. Ein kurzes Danke im Flüstern freut die meisten Mentoren zusätzlich.",
		},
		en = {
			q = "How do I thank someone for a good answer?",
			a = "Right-click an answer to your question and choose Helped me. It counts locally how often a player helped you and marks the answer with a check mark. A short thank-you whisper makes most mentors happy too.",
		},
	},
	{
		id = "addon-favorites",
		de = {
			q = "Was bringen Favoriten?",
			a = "Spieler, die du als Favorit markierst (Rechtsklick auf den Namen), stehen mit ihren Fragen oben und mit einem Stern. Über ihre Fragen wirst du immer benachrichtigt. Die Liste liegt nur auf deinem Rechner.",
		},
		en = {
			q = "What are favourites for?",
			a = "Players you mark as favourite (right-click their name) appear at the top with a star. You are always notified about their questions. The list is kept on your computer only.",
		},
	},
	{
		id = "addon-ignore",
		de = {
			q = "Wie blende ich störende Spieler in AskAzeroth aus?",
			a = "Rechtsklick auf den Namen und „Ignorieren“. Ihre Fragen und Antworten werden eingeklappt; mit einem Klick kannst du sie trotzdem lesen. Auf der Seite „Spieler“ hebst du das wieder auf.",
		},
		en = {
			q = "How do I hide annoying players in AskAzeroth?",
			a = "Right-click the name and choose Ignore. Their questions and answers are folded away; one click still lets you read them. Undo it on the Players page.",
		},
	},
	{
		id = "addon-notifications",
		de = {
			q = "Wie stelle ich Benachrichtigungen ein?",
			a = "In den Einstellungen unter Mentor-Benachrichtigungen legst du pro Kategorie fest: aus, nur Badge am Minimap-Button oder mit Ton. Fragen von Favoriten und Antworten auf deine Fragen melden sich immer. Im Kampf gibt es keine Toasts, in Instanzen auf Wunsch auch nicht.",
		},
		en = {
			q = "How do I set up notifications?",
			a = "In the settings under mentor notifications you choose per category: off, badge on the minimap button only, or with sound. Questions from favourites and answers to your questions always notify you. There are no toasts in combat, and optionally none in instances.",
		},
	},
	{
		id = "addon-faq-links",
		de = {
			q = "Wie verweise ich in einer Antwort auf das FAQ?",
			a = "Klick neben „Senden“ auf das Buch-Symbol, such den passenden Eintrag und klick ihn an; bis zu drei gehen pro Antwort. Der Fragende sieht unter deiner Antwort einen Link und öffnet den Eintrag mit einem Klick in seiner Sprache.",
		},
		en = {
			q = "How do I point to the FAQ in an answer?",
			a = "Click the book icon next to Send, search for the right entry and click it; up to three fit in one answer. The asker sees a link under your answer and opens the entry with one click in their own language.",
		},
	},
	{
		id = "addon-offline-questions",
		de = {
			q = "Sehe ich Fragen, die gestellt wurden, während ich offline war?",
			a = "Ja, zum Teil: Nach dem Einloggen fragt AskAzeroth andere Spieler im Kanal nach den aktuellen Fragen. Das dauert ein paar Sekunden. Abgelaufene Fragen kommen nicht zurück.",
		},
		en = {
			q = "Do I see questions asked while I was offline?",
			a = "Partly: after logging in, AskAzeroth asks other players on the channel for the current questions. That takes a few seconds. Expired questions do not come back.",
		},
	},
	{
		id = "addon-channel-slot",
		de = {
			q = "Warum taucht ein AskAzeroth-Kanal in meiner Kanalliste auf?",
			a = "AskAzeroth nutzt pro Sprache einen versteckten Chatkanal, um Fragen auszutauschen. Er belegt einen deiner Kanalplätze, zeigt aber keine Nachrichten im Chat. Verlass ihn nicht von Hand, sonst siehst du keine Fragen mehr.",
		},
		en = {
			q = "Why is there an AskAzeroth channel in my channel list?",
			a = "AskAzeroth uses one hidden chat channel per language to exchange questions. It takes one of your channel slots but shows no messages in chat. Do not leave it by hand, or you will not see questions any more.",
		},
	},
	{
		id = "addon-minimap-button",
		de = {
			q = "Wie blende ich den Minimap-Button aus?",
			a = "In den Einstellungen von AskAzeroth unter Allgemein. Das Fenster öffnest du dann weiter mit /aa oder über das Addon-Menü an der Minikarte.",
		},
		en = {
			q = "How do I hide the minimap button?",
			a = "In AskAzeroth's settings under General. You can still open the window with /aa or from the addon compartment at the minimap.",
		},
	},
})
