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
})
