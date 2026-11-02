local _, ns = ...

-- FAQ: Warrior. See Core/Faq.lua for the format.
ns.Faq.Add("warrior", {
	{
		id = "warrior-rage",
		de = {
			q = "Wie funktioniert Wut?",
			a = "Krieger haben kein Mana, sondern Wut. Sie entsteht, wenn du Schaden austeilst oder einsteckst, und baut sich außerhalb des Kampfes langsam ab. Du beginnst jeden Kampf also fast leer; „Sturmangriff“ gibt dir gleich zu Beginn etwas Wut.",
		},
		en = {
			q = "How does rage work?",
			a = "Warriors use rage instead of mana. You build it by dealing and taking damage, and it slowly drains out of combat. So you start every fight almost empty; Charge gives you some rage right at the start.",
		},
	},
	{
		id = "warrior-stances",
		de = {
			q = "Was sind Haltungen?",
			a = "Haltungen verändern, welche Fähigkeiten du nutzen kannst. In der Kampfhaltung kämpfst du anfangs, die Verteidigungshaltung ist zum Tanken, die Berserkerhaltung für viel Schaden. Beim Wechsel verlierst du einen Teil deiner Wut, also wechsle nicht ständig.",
		},
		en = {
			q = "What are stances?",
			a = "Stances change which abilities you can use. Battle Stance is where you start, Defensive Stance is for tanking, Berserker Stance for high damage. Switching costs part of your rage, so do not switch all the time.",
		},
	},
	{
		id = "warrior-stance-quests",
		de = {
			q = "Wie bekomme ich Verteidigungs- und Berserkerhaltung?",
			a = "Beide gibt es über Klassenquests: die Verteidigungshaltung ab etwa Stufe 10, die Berserkerhaltung ab etwa Stufe 30. Sprich deinen Kriegerlehrer an, wenn du die Stufe erreichst, er schickt dich auf den Weg.",
		},
		en = {
			q = "How do I get Defensive and Berserker Stance?",
			a = "Both come from class quests: Defensive Stance from about level 10, Berserker Stance from about level 30. Talk to your warrior trainer when you reach the level, they send you on your way.",
		},
	},
	{
		id = "warrior-opener",
		de = {
			q = "Wie fange ich einen Kampf als Krieger an?",
			a = "Mit „Sturmangriff“ aus einigen Metern Entfernung: Du stürmst zum Gegner, betäubst ihn kurz und bekommst Wut. Danach „Verwunden“ für Schaden über Zeit und „Heldenhafter Stoß“, wenn du genug Wut hast. Sturmangriff geht nur außerhalb des Kampfes.",
		},
		en = {
			q = "How do I start a fight as a warrior?",
			a = "With Charge from a few metres away: you rush to the enemy, stun it briefly and gain rage. Then Rend for damage over time and Heroic Strike when you have enough rage. Charge only works out of combat.",
		},
	},
	{
		id = "warrior-heroic-strike",
		de = {
			q = "Warum macht „Heldenhafter Stoß“ manchmal nichts?",
			a = "Er ersetzt deinen nächsten normalen Schlag, statt sofort zu treffen. Die Wut wird erst beim Schlag verbraucht. Drück ihn also nur, wenn du die Wut übrig hast, und nicht mehrmals hintereinander.",
		},
		en = {
			q = "Why does Heroic Strike sometimes do nothing right away?",
			a = "It replaces your next normal swing instead of hitting instantly. The rage is only spent when the swing lands. Press it when you have rage to spare, not several times in a row.",
		},
	},
	{
		id = "warrior-weapon-choice",
		de = {
			q = "Zweihandwaffe oder Waffe und Schild?",
			a = "Zum Leveln ist eine starke Zweihandwaffe meist am schnellsten, weil jeder Schlag viel Schaden macht. Waffe und Schild halten mehr aus und sind zum Tanken in Dungeons nötig. Trag ruhig beides in den Taschen und wechsle je nach Lage.",
		},
		en = {
			q = "Two-handed weapon or weapon and shield?",
			a = "For levelling, a strong two-handed weapon is usually fastest because every swing hits hard. Weapon and shield take more hits and are needed for tanking dungeons. Carry both in your bags and switch as needed.",
		},
	},
	{
		id = "warrior-tank-basics",
		de = {
			q = "Wie tanke ich als Krieger?",
			a = "Geh in die Verteidigungshaltung und trag einen Schild. „Rüstung zerreißen“ und „Heldenhafter Stoß“ erzeugen viel Bedrohung, „Donnerknall“ und „Demoralisierender Ruf“ helfen bei mehreren Gegnern. Markiere Ziele und lass der Gruppe einen Moment, bevor sie angreift.",
		},
		en = {
			q = "How do I tank as a warrior?",
			a = "Use Defensive Stance and wear a shield. Sunder Armor and Heroic Strike create a lot of threat, Thunder Clap and Demoralizing Shout help with several enemies. Mark targets and give the group a moment before it attacks.",
		},
	},
	{
		id = "warrior-taunt",
		de = {
			q = "Ein Gegner greift den Heiler an. Was tun?",
			a = "Benutze „Spott“ in der Verteidigungshaltung: Der Gegner greift dich sofort an. Danach musst du weiter Bedrohung aufbauen, sonst wendet er sich wieder ab. Spott hat eine Abklingzeit, also setz ihn gezielt ein.",
		},
		en = {
			q = "An enemy attacks the healer. What do I do?",
			a = "Use Taunt in Defensive Stance: the enemy attacks you right away. Then keep building threat, or it turns away again. Taunt has a cooldown, so use it on purpose.",
		},
	},
	{
		id = "warrior-execute",
		de = {
			q = "Wann benutze ich „Hinrichten“?",
			a = "Wenn der Gegner nur noch wenig Gesundheit hat, etwa unter 20 Prozent. Dann macht „Hinrichten“ sehr viel Schaden und nutzt deine übrige Wut. Es leuchtet auf deiner Leiste auf, sobald es geht.",
		},
		en = {
			q = "When do I use Execute?",
			a = "When the enemy is low on health, below about 20 percent. Execute then deals a lot of damage and uses up your spare rage. It lights up on your bar as soon as it is usable.",
		},
	},
	{
		id = "warrior-overpower",
		de = {
			q = "Was ist „Überwältigen“?",
			a = "Weicht ein Gegner deinem Angriff aus, kannst du in der Kampfhaltung kurz „Überwältigen“ einsetzen. Es kann nicht verfehlt werden und kostet wenig Wut. Achte darauf, wenn es aufleuchtet.",
		},
		en = {
			q = "What is Overpower?",
			a = "When an enemy dodges your attack, you can use Overpower in Battle Stance for a short time. It cannot miss and costs little rage. Watch for it lighting up.",
		},
	},
	{
		id = "warrior-hamstring",
		de = {
			q = "Ein Gegner flieht. Wie halte ich ihn auf?",
			a = "„Kniesehne“ verlangsamt ihn, sodass er nicht entkommt und keine Freunde holt. Gegner fliehen oft bei wenig Gesundheit, setz Kniesehne also früh genug.",
		},
		en = {
			q = "An enemy runs away. How do I stop it?",
			a = "Hamstring slows it, so it cannot escape and bring friends. Enemies often flee at low health, so apply Hamstring in time.",
		},
	},
	{
		id = "warrior-shouts",
		de = {
			q = "Wofür sind die Rufe?",
			a = "„Schlachtruf“ erhöht die Angriffskraft von dir und deiner Gruppe, halte ihn immer aktiv. „Demoralisierender Ruf“ senkt den Schaden der Gegner in der Nähe und hilft besonders beim Tanken.",
		},
		en = {
			q = "What are the shouts for?",
			a = "Battle Shout raises the attack power of you and your party; keep it up at all times. Demoralizing Shout lowers the damage of nearby enemies and helps especially when tanking.",
		},
	},
	{
		id = "warrior-downtime",
		de = {
			q = "Ich muss nach jedem Kampf lange essen. Ist das normal?",
			a = "Ja, Krieger können sich nicht selbst heilen. Iss nach den Kämpfen, lern Erste Hilfe für Verbände und nimm immer bessere Ausrüstung mit, besonders eine starke Waffe. Mit einem Heiler in der Gruppe levelst du deutlich schneller.",
		},
		en = {
			q = "I have to eat for ages after every fight. Is that normal?",
			a = "Yes, warriors cannot heal themselves. Eat after fights, learn first aid for bandages and keep upgrading your gear, especially your weapon. With a healer in your group you level much faster.",
		},
	},
	{
		id = "warrior-stats",
		de = {
			q = "Welche Werte sind für Krieger wichtig?",
			a = "Stärke für mehr Schaden, Ausdauer für mehr Gesundheit. Beweglichkeit hilft mit kritischen Treffern und Ausweichen. Als Tank zählen zusätzlich Rüstung, Verteidigung und Schildwerte. Intelligenz und Willenskraft brauchst du nicht.",
		},
		en = {
			q = "Which stats matter for warriors?",
			a = "Strength for damage, stamina for health. Agility helps with critical strikes and dodge. As a tank, armour, defence and shield stats matter too. You do not need intellect or spirit.",
		},
	},
	{
		id = "warrior-armor",
		de = {
			q = "Welche Rüstung tragen Krieger?",
			a = "Am Anfang Leder oder Kettenrüstung, ab Stufe 40 auch Platte. Nimm immer die schwerste Rüstung mit Stärke oder Ausdauer, die du findest. Waffen kannst du fast alle tragen; fehlende Waffenarten lernst du beim Waffenmeister.",
		},
		en = {
			q = "What armour do warriors wear?",
			a = "Leather or mail at first, plate from level 40. Always take the heaviest armour with strength or stamina you can find. You can use almost every weapon; missing weapon types are taught by weapon masters.",
		},
	},
	{
		id = "warrior-talents",
		de = {
			q = "Welche Talentbäume haben Krieger?",
			a = "Waffen setzt auf Zweihandwaffen und starke Einzelschläge und ist beim Leveln sehr beliebt. Furor macht viel Schaden mit zwei Waffen. Schutz ist der Baum zum Tanken. Mit der Dualspezialisierung ab Stufe 40 kannst du zum Beispiel Waffen zum Leveln und Schutz für Dungeons haben.",
		},
		en = {
			q = "Which talent trees do warriors have?",
			a = "Arms focuses on two-handed weapons and big single hits and is popular for levelling. Fury deals high damage with two weapons. Protection is the tanking tree. With dual specialisation from level 40 you can, for example, use Arms for levelling and Protection for dungeons.",
		},
	},
	{
		id = "warrior-aoe",
		de = {
			q = "Wie kämpfe ich gegen mehrere Gegner?",
			a = "„Donnerknall“ trifft und verlangsamt alle Gegner um dich, „Demoralisierender Ruf“ senkt ihren Schaden. Später kommen „Spalten“ und „Wirbelwind“ dazu. Zieh trotzdem möglichst nur so viele Gegner, wie du sicher schaffst.",
		},
		en = {
			q = "How do I fight several enemies?",
			a = "Thunder Clap hits and slows all enemies around you, Demoralizing Shout lowers their damage. Later Cleave and Whirlwind join in. Still, only pull as many enemies as you can safely handle.",
		},
	},
	{
		id = "warrior-intercept",
		de = {
			q = "Wie komme ich im Kampf schnell an einen Gegner?",
			a = "„Sturmangriff“ geht nur außerhalb des Kampfes. Im Kampf nutzt du in der Berserkerhaltung „Abfangen“, das dich ebenfalls zum Gegner bringt und ihn kurz betäubt.",
		},
		en = {
			q = "How do I reach an enemy quickly during a fight?",
			a = "Charge only works out of combat. In combat, use Intercept in Berserker Stance, which also takes you to the enemy and stuns it briefly.",
		},
	},
})
