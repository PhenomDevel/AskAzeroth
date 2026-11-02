local _, ns = ...

-- FAQ: Chat and guild. See Core/Faq.lua for the format.
ns.Faq.Add("social", {
	{
		id = "social-chat",
		de = {
			q = "Wie schreibe ich im Chat?",
			a = "Drück Enter, schreib deinen Text und drück wieder Enter. Befehle legen fest, wohin er geht: /s sagen, /y schreien, /p Gruppe, /g Gilde, /w Name flüstern, /1 Allgemein-Kanal des Gebiets. Auf das letzte Flüstern antwortest du mit R.",
		},
		en = {
			q = "How do I use the chat?",
			a = "Press Enter, type your text and press Enter again. Commands change where it goes: /s say, /y yell, /p party, /g guild, /w Name whisper, /1 general channel of the zone. Reply to the last whisper with R.",
		},
	},
	{
		id = "social-guild",
		de = {
			q = "Wie finde ich eine Gilde?",
			a = "Gilden werben in den Chatkanälen der Städte, und das Addon Guild Finder Forever listet Gilden, die Mitglieder suchen. Sprich vor dem Beitritt mit ein paar Offizieren und such dir eine Gilde, die zu ähnlichen Zeiten spielt wie du.",
		},
		en = {
			q = "How do I find a guild?",
			a = "Guilds recruit in the chat channels of the cities, and the addon Guild Finder Forever lists guilds that are looking for members. Talk to a few officers before you join, and look for a guild that plays at the times you do.",
		},
	},
	{
		id = "social-friends",
		de = {
			q = "Wie füge ich Freunde hinzu?",
			a = "Öffne das Kontaktfenster (Taste O), klick auf „Freund hinzufügen“ und gib den Namen ein. Du kannst auch mit der rechten Maustaste auf einen Spieler klicken und ihn dort hinzufügen.",
		},
		en = {
			q = "How do I add friends?",
			a = "Open the social window (O key), click Add Friend and enter the name. You can also right-click a player and add them from there.",
		},
	},
	{
		id = "social-ignore",
		de = {
			q = "Wie gehe ich mit nervigen Spielern um?",
			a = "Klick mit der rechten Maustaste auf den Namen und wähl „Ignorieren“; in AskAzeroth kannst du einen Spieler zusätzlich auf der Seite „Spieler“ ignorieren. Beleidigendes Verhalten meldest du über dasselbe Menü.",
		},
		en = {
			q = "How do I deal with annoying players?",
			a = "Right-click their name and choose Ignore; in AskAzeroth you can also mark a player as ignored on the Players page. You can report abusive behaviour from the same menu.",
		},
	},
	{
		id = "social-channels",
		de = {
			q = "Welche Chatkanäle gibt es?",
			a = "Allgemein gilt für das ganze Gebiet, Handel nur in Hauptstädten, Suche nach Gruppe ist für Gruppensuche gedacht, Lokale Verteidigung meldet Angriffe. Mit /join Name trittst du einem Kanal bei, mit /leave Nummer verlässt du ihn.",
		},
		en = {
			q = "Which chat channels are there?",
			a = "General covers the whole zone, Trade only works in capital cities, LookingForGroup is for finding groups, LocalDefense reports attacks. /join Name joins a channel, /leave Number leaves it.",
		},
	},
	{
		id = "social-link-items",
		de = {
			q = "Wie zeige ich einen Gegenstand im Chat?",
			a = "Klick mit gedrückter Umschalttaste auf den Gegenstand, während das Chat-Eingabefeld offen ist. Dann erscheint ein Link, den andere anklicken können. Das geht auch mit Quests, Zaubern und Berufsrezepten.",
		},
		en = {
			q = "How do I show an item in chat?",
			a = "Shift-click the item while the chat input box is open. A link appears that others can click. This also works with quests, spells and recipes.",
		},
	},
	{
		id = "social-whisper-name",
		de = {
			q = "Warum kommt mein Flüstern nicht an?",
			a = "Prüf den Namen: In WoW: Forever haben Charaktere einen zweiteiligen Namen, und du brauchst oft den vollen Namen. Am einfachsten ist ein Rechtsklick auf den Namen im Chat und „Flüstern“. Spieler der anderen Fraktion kannst du nicht anflüstern.",
		},
		en = {
			q = "Why does my whisper not arrive?",
			a = "Check the name: in WoW: Forever characters have a two-part name, and you often need the full name. Easiest is to right-click the name in chat and choose Whisper. You cannot whisper players of the other faction.",
		},
	},
	{
		id = "social-other-faction-language",
		de = {
			q = "Warum verstehe ich die andere Fraktion nicht?",
			a = "Allianz und Horde sprechen verschiedene Sprachen, im Chat erscheint nur Kauderwelsch. Verständigen könnt ihr euch nur mit Gesten und Emotes.",
		},
		en = {
			q = "Why can I not understand the other faction?",
			a = "Alliance and Horde speak different languages; their chat shows up as gibberish. You can only communicate with gestures and emotes.",
		},
	},
	{
		id = "social-emotes",
		de = {
			q = "Wie benutze ich Emotes?",
			a = "Gib zum Beispiel /winken, /tanzen, /verbeugen oder /lachen ein (im englischen Client /wave, /dance, /bow, /laugh). Mit einem Ziel richtet sich das Emote an diese Figur. Es macht das Spiel lebendiger und ist im Rollenspiel-Regelwerk sehr beliebt.",
		},
		en = {
			q = "How do I use emotes?",
			a = "Type, for example, /wave, /dance, /bow or /laugh. With a target selected the emote is aimed at that character. It makes the game livelier and is popular on the Roleplaying rule set.",
		},
	},
	{
		id = "social-afk",
		de = {
			q = "Wie zeige ich, dass ich nicht da bin?",
			a = "/afk markiert dich als abwesend, /dnd als „nicht stören“; Flüsternde bekommen dann eine Nachricht. Schreibst du wieder etwas oder bewegst dich, ist die Markierung weg.",
		},
		en = {
			q = "How do I show that I am away?",
			a = "/afk marks you as away, /dnd as do not disturb; people who whisper you get a message. Typing or moving again removes the flag.",
		},
	},
	{
		id = "social-roll",
		de = {
			q = "Wie würfle ich?",
			a = "/roll würfelt eine Zahl von 1 bis 100, die alle in der Nähe sehen. Das hilft, faire Entscheidungen zu treffen, etwa wer einen Gegenstand bekommt.",
		},
		en = {
			q = "How do I roll a die?",
			a = "/roll rolls a number from 1 to 100 that everyone nearby sees. It helps make fair decisions, for example who gets an item.",
		},
	},
	{
		id = "social-create-guild",
		de = {
			q = "Wie gründe ich eine Gilde?",
			a = "Kauf beim Gildenmeister in einer Hauptstadt eine Gildensatzung und sammle die nötigen Unterschriften anderer Spieler. Gib die Satzung dann beim Gildenmeister ab. Ab dann kannst du Mitglieder einladen und Ränge vergeben.",
		},
		en = {
			q = "How do I create a guild?",
			a = "Buy a guild charter from the guild master in a capital city and collect the required signatures from other players. Then turn the charter in to the guild master. After that you can invite members and assign ranks.",
		},
	},
	{
		id = "social-guild-commands",
		de = {
			q = "Wie schreibe ich in der Gilde, und wie verlasse ich sie?",
			a = "/g schreibt in den Gildenchat. Das Gildenfenster öffnest du über das Kontaktfenster oder die Menüleiste; dort siehst du alle Mitglieder. Verlassen kannst du die Gilde über das Gildenfenster oder mit /gquit.",
		},
		en = {
			q = "How do I chat in my guild, and how do I leave it?",
			a = "/g writes in guild chat. Open the guild window from the social window or the menu bar to see all members. Leave the guild from the guild window or with /gquit.",
		},
	},
	{
		id = "social-report",
		de = {
			q = "Wie melde ich einen Spieler?",
			a = "Rechtsklick auf seinen Namen oder sein Porträt und „Melden“, dann den Grund wählen. Gold-Spam, Beleidigungen, Betrug und Bots solltest du immer melden. Danach am besten ignorieren.",
		},
		en = {
			q = "How do I report a player?",
			a = "Right-click their name or portrait, choose Report and pick the reason. Always report gold spam, abuse, scams and bots. Then ignore them.",
		},
	},
	{
		id = "social-rp",
		de = {
			q = "Was muss ich auf einem Rollenspiel-Regelwerk beachten?",
			a = "Dort bleiben viele Spieler in ihrer Rolle: Namen passen zur Welt, und im öffentlichen Chat wird in der Rolle gesprochen. Außerhalb der Rolle schreibt man üblicherweise in Klammern oder im Flüstern. Sei rücksichtsvoll, dann hast du dort viel Spaß.",
		},
		en = {
			q = "What should I keep in mind on a Roleplaying rule set?",
			a = "Many players stay in character there: names fit the world, and public chat is spoken in character. Out-of-character talk usually goes in brackets or whispers. Be considerate and you will have a lot of fun there.",
		},
	},
})
