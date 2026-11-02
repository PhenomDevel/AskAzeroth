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
	{
		id = "quest-log-full",
		de = {
			q = "Mein Questlog ist voll. Was tun?",
			a = "Das Questlog fasst nur eine begrenzte Zahl an Quests. Gib erledigte Quests ab und brich graue oder sehr alte Quests ab, die du nicht mehr machen willst. Danach kannst du neue annehmen.",
		},
		en = {
			q = "My quest log is full. What do I do?",
			a = "The quest log only holds a limited number of quests. Turn in finished quests and abandon grey or very old ones you no longer want. Then you can accept new ones.",
		},
	},
	{
		id = "quest-track",
		de = {
			q = "Wie behalte ich Questziele im Blick?",
			a = "Rechts am Bildschirm zeigt die Questliste deine verfolgten Quests mit ihrem Fortschritt. Im Questlog legst du fest, welche Quests dort erscheinen. So siehst du sofort, wie viele Gegner oder Gegenstände noch fehlen.",
		},
		en = {
			q = "How do I keep track of quest objectives?",
			a = "The quest tracker on the right of the screen shows your tracked quests and their progress. In the quest log you choose which quests appear there. That way you see right away how many enemies or items are still missing.",
		},
	},
	{
		id = "quest-share",
		de = {
			q = "Wie teile ich eine Quest mit meiner Gruppe?",
			a = "Wähl die Quest im Questlog aus und klick auf „Teilen“. Gruppenmitglieder, die sie annehmen können, bekommen sie angeboten. Gemeinsam erledigte Gegner zählen dann für alle.",
		},
		en = {
			q = "How do I share a quest with my group?",
			a = "Select the quest in the quest log and click Share. Party members who are eligible get it offered. Enemies killed together then count for everyone.",
		},
	},
	{
		id = "quest-group-credit",
		de = {
			q = "Zählen Gegner in der Gruppe für alle?",
			a = "Ja, für Quests mit Gegnern zählt jeder Gegner, den die Gruppe besiegt, für alle, die die Quest haben und in der Nähe sind. Bei Questgegenständen bekommt oft jeder seinen eigenen; manchmal muss jeder einzeln plündern.",
		},
		en = {
			q = "Do kills in a group count for everyone?",
			a = "Yes, for kill quests every enemy the group defeats counts for everyone nearby who has the quest. Quest items often drop for each player separately; sometimes everyone has to loot on their own.",
		},
	},
	{
		id = "quest-elite",
		de = {
			q = "Was bedeutet „Elite“ oder „Gruppe“ bei einer Quest?",
			a = "Solche Quests sind für mehrere Spieler gedacht, oft mit Elite-Gegnern, die viel stärker sind als normale. Such dir dafür eine Gruppe, zum Beispiel im Chat oder über die Gruppensuche. Allein lieber erst einige Stufen später.",
		},
		en = {
			q = "What does Elite or Group mean on a quest?",
			a = "Such quests are meant for several players, often with elite enemies that are much stronger than normal ones. Find a group for them, for example in chat or through the group finder. Alone, better wait a few levels.",
		},
	},
	{
		id = "quest-escort",
		de = {
			q = "Meine Begleitquest ist fehlgeschlagen. Was nun?",
			a = "Bei Begleitquests musst du eine Figur sicher an ihr Ziel bringen; stirbt sie, schlägt die Quest fehl. Brich die Quest im Questlog ab und nimm sie beim Auftraggeber erneut an, meist erscheint er nach kurzer Zeit wieder.",
		},
		en = {
			q = "My escort quest failed. What now?",
			a = "In escort quests you have to bring a character safely to its destination; if it dies, the quest fails. Abandon the quest in the quest log and accept it again from the quest giver, who usually reappears after a short while.",
		},
	},
	{
		id = "quest-timed",
		de = {
			q = "Warum läuft bei meiner Quest eine Zeit ab?",
			a = "Manche Quests haben ein Zeitlimit, das in der Questliste angezeigt wird. Läuft es ab, schlägt die Quest fehl. Bereite dich vor, bevor du sie annimmst, und brich sie sonst ab und nimm sie neu an.",
		},
		en = {
			q = "Why is there a timer on my quest?",
			a = "Some quests have a time limit shown in the quest tracker. If it runs out, the quest fails. Prepare before accepting it, otherwise abandon it and pick it up again.",
		},
	},
	{
		id = "quest-item-starts",
		de = {
			q = "Ein Gegenstand sagt „Beginnt eine Quest“. Was tun?",
			a = "Klick ihn in deinen Taschen mit der rechten Maustaste an. Dann öffnet sich die Quest, und du kannst sie annehmen. Solche Gegenstände bringen oft gute Belohnungen.",
		},
		en = {
			q = "An item says This Item Begins a Quest. What do I do?",
			a = "Right-click it in your bags. The quest opens and you can accept it. Such items often lead to good rewards.",
		},
	},
	{
		id = "quest-reward-choice",
		de = {
			q = "Welche Questbelohnung soll ich nehmen?",
			a = "Nimm, was deine Klasse am besten nutzen kann: passende Rüstungsart und Werte. Vergleich mit gedrückter Umschalttaste mit deiner Ausrüstung. Brauchst du nichts davon, nimm den Gegenstand, der beim Händler am meisten Gold bringt.",
		},
		en = {
			q = "Which quest reward should I take?",
			a = "Take what your class can use best: the right armour type and stats. Hold Shift to compare with your gear. If you need none of them, take the item that sells for the most gold.",
		},
	},
	{
		id = "quest-turn-in",
		de = {
			q = "Wo gebe ich meine Quest ab?",
			a = "Im Questtext steht, bei wem du die Quest abgibst; oft ist es der Auftraggeber selbst. Erledigte Quests zeigen ein gelbes Fragezeichen über der Figur. Auf der Karte findest du oft einen Hinweis, wohin du musst.",
		},
		en = {
			q = "Where do I turn in my quest?",
			a = "The quest text says who to turn it in to; often it is the quest giver. Finished quests show a yellow question mark above the character. The map often shows where you need to go.",
		},
	},
	{
		id = "quest-grey-worth",
		de = {
			q = "Lohnen sich graue Quests noch?",
			a = "Sie bringen kaum Erfahrung, aber noch Gold, Ruf und manchmal gute Gegenstände. Wenn sie auf deinem Weg liegen, mach sie mit; extra hinlaufen lohnt sich meist nicht.",
		},
		en = {
			q = "Are grey quests still worth doing?",
			a = "They give little experience but still gold, reputation and sometimes good items. If they are on your way, do them; travelling there just for them is usually not worth it.",
		},
	},
	{
		id = "quest-chains",
		de = {
			q = "Warum bekomme ich die nächste Quest nicht?",
			a = "Viele Quests sind Teil einer Reihe: Die nächste erscheint erst, wenn du die vorherige abgegeben hast, manchmal auch erst ab einer bestimmten Stufe. Schau, ob ein graues Ausrufezeichen eine Quest für später anzeigt.",
		},
		en = {
			q = "Why do I not get the next quest?",
			a = "Many quests are part of a chain: the next one only appears once you turned in the previous one, sometimes only from a certain level. Check whether a grey exclamation mark shows a quest for later.",
		},
	},
	{
		id = "quest-dungeon",
		de = {
			q = "Was sind Dungeonquests?",
			a = "Quests, deren Ziele in einem Dungeon liegen. Sammle sie, bevor du mit einer Gruppe hineingehst, und teile sie mit den anderen. In WoW: Forever bringen Dungeonquests beim ersten Abschluss besonders viel Erfahrung.",
		},
		en = {
			q = "What are dungeon quests?",
			a = "Quests whose objectives are inside a dungeon. Collect them before entering with a group, and share them with the others. In WoW: Forever, dungeon quests give extra experience the first time you complete them.",
		},
	},
	{
		id = "quest-reputation",
		de = {
			q = "Was bringt Ruf bei Fraktionen?",
			a = "Viele Quests geben Ruf bei einer Fraktion, etwa einer Stadt. Mit mehr Ruf bekommst du Rabatt bei deren Händlern und Zugang zu besonderen Belohnungen. Deinen Ruf siehst du im Charakterfenster.",
		},
		en = {
			q = "What does faction reputation do?",
			a = "Many quests give reputation with a faction, such as a city. More reputation brings discounts at their vendors and access to special rewards. You see your reputation in the character window.",
		},
	},
	{
		id = "quest-class-quests",
		de = {
			q = "Was sind Klassenquests?",
			a = "Quests, die nur deine Klasse bekommt, meist vom Klassenlehrer. Sie bringen wichtige Fähigkeiten, Begleiter oder Gegenstände. Sprich deinen Lehrer an, wenn du eine neue Stufe erreichst, damit du keine verpasst.",
		},
		en = {
			q = "What are class quests?",
			a = "Quests only your class gets, usually from your class trainer. They bring important abilities, pets or items. Talk to your trainer when you reach a new level so you do not miss any.",
		},
	},
	{
		id = "quest-npc-missing",
		de = {
			q = "Der Questgeber ist nicht da. Was tun?",
			a = "Manche Figuren laufen umher, erscheinen erst nach einer Weile wieder oder sind gerade in einer Begleitquest unterwegs. Warte ein paar Minuten am Ort. Hilft das nicht, frag hier und nenne Quest und Gebiet.",
		},
		en = {
			q = "The quest giver is not there. What do I do?",
			a = "Some characters walk around, respawn after a while or are currently on an escort with someone else. Wait a few minutes at the spot. If that does not help, ask here with the quest and the zone.",
		},
	},
})
