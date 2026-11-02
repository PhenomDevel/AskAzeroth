local _, ns = ...

-- FAQ: Quests. See Core/Faq.lua for the format.
ns.Faq.Add("quest", {
	{
		id = "quest-symbols",
		de = {
			q = "Was bedeuten die Symbole über den Figuren?",
			a = "Ein gelbes Ausrufezeichen ist eine Quest zum Annehmen, ein gelbes Fragezeichen eine Quest zum Abgeben. Ein graues Ausrufezeichen heißt, die Quest ist noch zu schwer für dich, ein graues Fragezeichen eine angenommene, aber noch nicht erledigte Quest.",
		},
		en = {
			q = "What do the symbols above characters mean?",
			a = "A yellow exclamation mark is a quest you can accept, a yellow question mark one you can turn in. A grey exclamation mark means the quest is still too hard for you, a grey question mark a quest you accepted but have not finished yet.",
		},
	},
	{
		id = "quest-colors",
		de = {
			q = "Was bedeutet die Farbe eines Questnamens?",
			a = "Sie vergleicht die Stufe der Quest mit deiner. Grau liegt weit unter dir und bringt kaum Erfahrung, Grün ist leicht, Gelb passt zu deiner Stufe, Orange ist schwer und Rot sehr gefährlich. Rote Quests machst du am besten in einer Gruppe oder ein paar Stufen später.",
		},
		en = {
			q = "What does the colour of a quest name mean?",
			a = "It compares the quest level with yours. Grey is far below you and gives little experience, green is easy, yellow fits your level, orange is hard and red is very dangerous. Red quests are best done with a group or a few levels later.",
		},
	},
	{
		id = "quest-find-objective",
		de = {
			q = "Ich finde ein Questziel nicht. Was kann ich tun?",
			a = "Lies den Questtext im Questlog (Taste L) noch einmal: Meist steht dort eine Richtung oder ein Ort. Schau auf die Weltkarte (Taste M) und die Gebietsnamen. Wenn du weiter feststeckst, frag hier und nenne Quest und Gebiet.",
		},
		en = {
			q = "I cannot find a quest objective. What can I do?",
			a = "Read the quest text in the quest log (L key) again: it usually names a direction or a place. Look at the world map (M key) and the zone names. If you are still stuck, ask here and name the quest and the zone.",
		},
	},
	{
		id = "quest-item-drop",
		de = {
			q = "Warum droppt der Questgegenstand nicht?",
			a = "Oft tragen nur bestimmte Gegner den Gegenstand, und das auch nur mit einer gewissen Chance, es kann also ein paar Versuche dauern. Du musst die Quest im Questlog haben. Hat ein anderer Spieler den Gegner zuerst angegriffen, gehört die Beute ihm: Ladet euch in eine Gruppe ein, dann zählt es für beide.",
		},
		en = {
			q = "Why does the quest item not drop?",
			a = "Often only certain enemies carry the item, and only with a chance, so it can take a few kills. You must have the quest in your log. If someone else attacked the enemy first, the loot is theirs: invite them to a group so you both get credit.",
		},
	},
	{
		id = "quest-abandon",
		de = {
			q = "Kann ich eine Quest abbrechen?",
			a = "Ja: Wähl sie im Questlog aus und klick auf „Abbrechen“. Die meisten Quests kannst du später beim selben Auftraggeber wieder annehmen. So machst du auch Platz, wenn dein Questlog voll ist.",
		},
		en = {
			q = "Can I abandon a quest?",
			a = "Yes: select it in the quest log and choose Abandon. Most quests can be picked up again from the same character later. Abandoning frees up a slot when your quest log is full.",
		},
	},
	{
		id = "quest-out-of-quests",
		de = {
			q = "Mir sind die Quests ausgegangen. Wohin jetzt?",
			a = "Such dir Gebiete, die zu deiner Stufe passen: Die Weltkarte zeigt den Stufenbereich, wenn du mit der Maus über ein Gebiet fährst. In jedem Ort gibt es Auftraggeber, und Gastwirte und Wachen schicken dich zu weiteren Orten. Auch Dungeons in deinem Stufenbereich haben Quests mit guten Belohnungen. Wenn du unsicher bist, frag hier und nenne Stufe und Fraktion.",
		},
		en = {
			q = "I ran out of quests. Where do I go now?",
			a = "Look for zones that fit your level: the world map shows the level range when you hover over a zone. Every town has quest givers, and innkeepers and guards point you to other places. Dungeons in your level range have quests with good rewards, too. If you are unsure, ask here with your level and faction.",
		},
	},
})
