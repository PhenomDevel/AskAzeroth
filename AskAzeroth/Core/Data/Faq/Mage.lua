local _, ns = ...

-- FAQ: Mage. See Core/Faq.lua for the format.
ns.Faq.Add("mage", {
	{
		id = "mage-conjure",
		de = {
			q = "Muss ich als Magier Essen und Wasser kaufen?",
			a = "Nein: Mit „Essen herbeizaubern“ und „Wasser herbeizaubern“ machst du dir beides selbst, kostenlos. Lern beim Lehrer immer den neuesten Rang, dann passt es zu deiner Stufe. Gruppenmitgliedern gibst du Wasser über das Handelsfenster.",
		},
		en = {
			q = "Do I need to buy food and water as a mage?",
			a = "No: Conjure Food and Conjure Water make both for free. Learn the newest rank from your trainer so it matches your level. Give water to party members through the trade window.",
		},
	},
	{
		id = "mage-leveling",
		de = {
			q = "Wie kämpfe ich als Magier beim Leveln?",
			a = "Rüstung und „Arkane Intelligenz“ an, mit „Frostblitz“ oder „Feuerball“ eröffnen und weiterzaubern, bis der Gegner fällt. Kommt er zu nah, friert ihn „Frostnova“ fest, du gehst ein paar Schritte weg und zauberst weiter. Den Rest erledigt der Zauberstab.",
		},
		en = {
			q = "How do I fight as a mage while levelling?",
			a = "Armour and Arcane Intellect on, open with Frostbolt or Fireball and keep casting until the enemy falls. If it gets close, Frost Nova freezes it, you step away and keep casting. Finish with your wand.",
		},
	},
	{
		id = "mage-kiting",
		de = {
			q = "Ein Gegner steht direkt vor mir. Was tun?",
			a = "„Frostnova“ friert alle Gegner um dich fest. Geh ein paar Schritte weg oder benutze „Blinzeln“, das dich nach vorn teleportiert, und zauber dann weiter. „Frostblitz“ verlangsamt den Gegner, sodass er dich schwerer erreicht.",
		},
		en = {
			q = "An enemy is right in front of me. What do I do?",
			a = "Frost Nova freezes all enemies around you. Walk a few steps away or use Blink, which teleports you forward, then keep casting. Frostbolt slows the enemy so it reaches you more slowly.",
		},
	},
	{
		id = "mage-polymorph",
		de = {
			q = "Wie benutze ich „Verwandlung“?",
			a = "Sie verwandelt einen Humanoiden oder ein Wildtier in ein Schaf, das eine Weile nichts tut und sich dabei heilt. So kämpfst du gegen zwei Gegner nacheinander. Schaden weckt das Schaf auf, also nicht treffen. In Dungeons ist Verwandlung eine deiner wichtigsten Aufgaben.",
		},
		en = {
			q = "How do I use Polymorph?",
			a = "It turns a humanoid or beast into a sheep that does nothing for a while and heals in the meantime. That lets you fight two enemies one after the other. Damage wakes the sheep, so do not hit it. In dungeons, Polymorph is one of your most important jobs.",
		},
	},
	{
		id = "mage-armor",
		de = {
			q = "Welche Rüstung soll ich als Magier nutzen?",
			a = "Zuerst „Frostrüstung“, später „Eisrüstung“: mehr Rüstung, und Nahkämpfer werden verlangsamt. Später kommt „Magische Rüstung“ für mehr Mana-Regeneration. Es ist immer nur eine aktiv; erneuere sie, wenn sie ausläuft.",
		},
		en = {
			q = "Which armour spell should I use as a mage?",
			a = "First Frost Armor, later Ice Armor: more armour, and melee attackers are slowed. Later comes Mage Armor for more mana regeneration. Only one is active at a time; renew it when it runs out.",
		},
	},
	{
		id = "mage-arcane-intellect",
		de = {
			q = "Was macht „Arkane Intelligenz“?",
			a = "Sie erhöht die Intelligenz und damit das Mana des Ziels. Leg sie auf dich und alle Gruppenmitglieder mit Mana. Sie hält eine ganze Weile.",
		},
		en = {
			q = "What does Arcane Intellect do?",
			a = "It increases the target's intellect and therefore mana. Put it on yourself and every party member who uses mana. It lasts quite a while.",
		},
	},
	{
		id = "mage-counterspell",
		de = {
			q = "Wie unterbreche ich Zauber?",
			a = "Mit „Gegenzauber“: Er unterbricht den Zauber, und der Gegner kann diese Zauberschule eine Weile nicht nutzen. Ideal gegen Heiler und Zauberwirker.",
		},
		en = {
			q = "How do I interrupt spells?",
			a = "With Counterspell: it interrupts the cast, and the enemy cannot use that school of magic for a while. Ideal against healers and casters.",
		},
	},
	{
		id = "mage-aoe",
		de = {
			q = "Wie besiege ich viele Gegner auf einmal?",
			a = "Mit Flächenzaubern wie „Arkane Explosion“ (um dich herum) und „Blizzard“ (an einen Ort). Zusammen mit „Frostnova“ kannst du ganze Gruppen schwacher Gegner besiegen. Übe das erst mit wenigen Gegnern; es kostet viel Mana und braucht Übung.",
		},
		en = {
			q = "How do I defeat many enemies at once?",
			a = "With area spells like Arcane Explosion (around you) and Blizzard (at a location). Combined with Frost Nova, you can defeat whole packs of weak enemies. Practise with a few enemies first; it costs a lot of mana and takes practice.",
		},
	},
	{
		id = "mage-teleport",
		de = {
			q = "Wie teleportiere ich mich in eine Stadt?",
			a = "Ab etwa Stufe 20 lernst du beim Lehrer „Teleportieren“ in die Hauptstädte deiner Fraktion. Du brauchst dafür eine „Rune der Teleportation“, die Händler für Reagenzien verkaufen. Ab etwa Stufe 40 kommen Portale für die ganze Gruppe dazu, die „Rune der Portale“ brauchen.",
		},
		en = {
			q = "How do I teleport to a city?",
			a = "From about level 20 your trainer teaches Teleport to your faction's capital cities. It needs a Rune of Teleportation, sold by reagent vendors. From about level 40, portals for the whole group follow, which need a Rune of Portals.",
		},
	},
	{
		id = "mage-portals-for-others",
		de = {
			q = "Kann ich anderen Spielern Portale anbieten?",
			a = "Ja, ab Stufe 40. Viele Magier bieten in Hauptstädten Portale gegen ein Trinkgeld an; das deckt die Runenkosten und bringt etwas Gold. Lade den Spieler in eine Gruppe ein und öffne das Portal.",
		},
		en = {
			q = "Can I offer portals to other players?",
			a = "Yes, from level 40. Many mages offer portals in capital cities for a tip; it covers the rune cost and earns some gold. Invite the player to a group and open the portal.",
		},
	},
	{
		id = "mage-mana",
		de = {
			q = "Mir geht als Magier ständig das Mana aus.",
			a = "Erledige schwache Gegner mit dem Zauberstab, nutze niedrigere Ränge gegen leichte Gegner und trink nach jedem größeren Kampf. „Hervorrufung“ füllt dein Mana schnell auf, hat aber eine lange Abklingzeit. Später helfen herbeigezauberte Manasteine.",
		},
		en = {
			q = "I keep running out of mana as a mage.",
			a = "Finish weak enemies with your wand, use lower ranks against easy enemies and drink after every bigger fight. Evocation refills your mana quickly but has a long cooldown. Later, conjured mana gems help.",
		},
	},
	{
		id = "mage-escape",
		de = {
			q = "Wie rette ich mich als Magier?",
			a = "„Frostnova“ und „Blinzeln“ bringen Abstand, „Manaschild“ fängt Schaden mit deinem Mana ab. Mit Talenten bekommst du „Eisblock“, der dich kurz unverwundbar macht. Lauf weg, bevor es zu spät ist, Magier halten wenig aus.",
		},
		en = {
			q = "How do I save myself as a mage?",
			a = "Frost Nova and Blink create distance, Mana Shield absorbs damage with your mana. With talents you get Ice Block, which makes you briefly invulnerable. Run before it is too late, mages cannot take many hits.",
		},
	},
	{
		id = "mage-decurse",
		de = {
			q = "Kann ich Flüche entfernen?",
			a = "Ja, mit „Geringen Fluch aufheben“. Magier und Druiden sind die Klassen, die Flüche entfernen können, das ist in manchen Dungeons sehr wichtig. Achte auf die Symbole am Gruppenfenster.",
		},
		en = {
			q = "Can I remove curses?",
			a = "Yes, with Remove Lesser Curse. Mages and druids are the classes that can remove curses, which matters a lot in some dungeons. Watch the icons on the party frames.",
		},
	},
	{
		id = "mage-slow-fall",
		de = {
			q = "Was bringt „Langsamer Fall“?",
			a = "Du schwebst sanft zu Boden und nimmst keinen Fallschaden. Praktisch für Abkürzungen von Klippen oder Brücken. Du kannst es auch auf andere wirken; es braucht ein günstiges Reagenz.",
		},
		en = {
			q = "What is Slow Fall good for?",
			a = "You float gently to the ground and take no fall damage. Handy for shortcuts off cliffs or bridges. You can cast it on others too; it needs a cheap reagent.",
		},
	},
	{
		id = "mage-stats",
		de = {
			q = "Welche Werte sind für Magier wichtig?",
			a = "Intelligenz für mehr Mana und kritische Zaubertreffer, Ausdauer für Gesundheit, Willenskraft für Regeneration. Später zählt Zauberschaden viel. Ein guter Zauberstab macht beim Leveln einen großen Unterschied.",
		},
		en = {
			q = "Which stats matter for mages?",
			a = "Intellect for more mana and spell crits, stamina for health, spirit for regeneration. Later, spell damage matters a lot. A good wand makes a big difference while levelling.",
		},
	},
	{
		id = "mage-gear",
		de = {
			q = "Welche Rüstung und Waffen nutzen Magier?",
			a = "Stoff. Als Waffen Stäbe, Schwerter und Dolche, dazu ein Zauberstab im Fernkampfplatz. Die Nahkampfwaffe zählt nur für ihre Werte, nicht zum Zuschlagen.",
		},
		en = {
			q = "What armour and weapons do mages use?",
			a = "Cloth. Weapons: staves, swords and daggers, plus a wand in the ranged slot. Your melee weapon only counts for its stats, not for hitting things.",
		},
	},
	{
		id = "mage-talents",
		de = {
			q = "Welche Talentbäume haben Magier?",
			a = "Arkan verbessert Mana und arkane Zauber, Feuer macht großen Schaden mit Feuerzaubern, Frost bringt mehr Kontrolle und Sicherheit mit Verlangsamung und Eisblock. Zum Leveln ist Frost für Anfänger am einfachsten.",
		},
		en = {
			q = "Which talent trees do mages have?",
			a = "Arcane improves mana and Arcane spells, Fire deals big damage with fire spells, Frost brings more control and safety with slows and Ice Block. Frost is the easiest for beginners to level with.",
		},
	},
})
