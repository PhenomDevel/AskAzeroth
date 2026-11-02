local _, ns = ...

-- FAQ: Druid. See Core/Faq.lua for the format.
ns.Faq.Add("druid", {
	{
		id = "druid-forms",
		de = {
			q = "Wie bekomme ich die Druidengestalten?",
			a = "Über Klassenquests: Bärengestalt etwa ab Stufe 10, Wassergestalt ab 16. Katzengestalt (ab 20) und Reisegestalt (ab 30) lernst du beim Lehrer. Die Mondkingestalt gibt es über den Gleichgewicht-Talentbaum.",
		},
		en = {
			q = "How do I get the druid forms?",
			a = "Through class quests: Bear Form from about level 10, Aquatic Form from 16. Cat Form (from 20) and Travel Form (from 30) are taught by your trainer. Moonkin Form comes from the Balance talent tree.",
		},
	},
	{
		id = "druid-form-use",
		de = {
			q = "Welche Gestalt nehme ich wann?",
			a = "Bär zum Tanken und wenn viel Schaden auf dich zukommt, Katze für viel Schaden und Schleichen, Reisegestalt zum schnelleren Laufen draußen, Wassergestalt zum Schwimmen. In Gestalten kannst du nicht heilen oder die meisten Zauber wirken; dafür nimmst du deine normale Gestalt an.",
		},
		en = {
			q = "Which form do I use when?",
			a = "Bear for tanking and when a lot of damage comes your way, Cat for high damage and stealth, Travel Form to run faster outdoors, Aquatic Form for swimming. In forms you cannot heal or cast most spells; switch back to caster form for that.",
		},
	},
	{
		id = "druid-form-mana",
		de = {
			q = "Warum geht mir beim Gestaltwandeln das Mana aus?",
			a = "Jeder Wechsel in eine Gestalt kostet Mana. In Bär und Katze nutzt du Wut und Energie, dein Mana erholt sich aber nur langsam. Wechsle also nicht ständig, und heil dich am besten vor dem Kampf oder danach.",
		},
		en = {
			q = "Why do I run out of mana when shapeshifting?",
			a = "Every shift into a form costs mana. In Bear and Cat you use rage and energy, but your mana only recovers slowly. So do not switch all the time, and heal yourself before or after a fight.",
		},
	},
	{
		id = "druid-shift-snare",
		de = {
			q = "Kann ich mich mit Gestaltwandeln befreien?",
			a = "Ja: Ein Wechsel der Gestalt entfernt Verlangsamungen und Verwandlungen. Wirst du festgehalten, wechsle in die Katze oder Reisegestalt und lauf weg.",
		},
		en = {
			q = "Can I break free by shapeshifting?",
			a = "Yes: shifting forms removes slows and polymorph effects. If you are snared, shift into Cat or Travel Form and run.",
		},
	},
	{
		id = "druid-leveling",
		de = {
			q = "Wie kämpfe ich als Druide beim Leveln?",
			a = "Früh mit „Zorn“ und „Mondfeuer“ aus der Ferne, später meist in Bär- oder Katzengestalt im Nahkampf. Eröffne mit einem Zauber, wechsle dann die Gestalt. Nach dem Kampf heilst du dich in Normalgestalt mit „Verjüngung“ oder „Heilende Berührung“.",
		},
		en = {
			q = "How do I fight as a druid while levelling?",
			a = "Early on with Wrath and Moonfire from range, later mostly in Bear or Cat Form in melee. Open with a spell, then shift. After the fight, heal yourself in caster form with Rejuvenation or Healing Touch.",
		},
	},
	{
		id = "druid-cat",
		de = {
			q = "Wie spiele ich die Katzengestalt?",
			a = "In der Katze nutzt du Energie und Combopunkte wie ein Schurke. „Schleichen“ macht dich unsichtbar, „Krallenhieb“ und „Klaue“ bauen Punkte auf, „Wilder Biss“ und „Zerfetzen“ verbrauchen sie. Eröffne aus dem Schleichen von hinten.",
		},
		en = {
			q = "How do I play Cat Form?",
			a = "In Cat Form you use energy and combo points like a rogue. Prowl makes you stealthed, Rake and Claw build points, Ferocious Bite and Rip spend them. Open from Prowl from behind.",
		},
	},
	{
		id = "druid-bear",
		de = {
			q = "Wie tanke ich in Bärengestalt?",
			a = "Die Bärengestalt gibt viel Rüstung und Gesundheit und nutzt Wut. „Zermalmen“ macht viel Bedrohung, „Prankenhieb“ trifft mehrere Gegner, „Knurren“ zieht einen Gegner zu dir, „Demoralisierendes Gebrüll“ senkt ihren Schaden.",
		},
		en = {
			q = "How do I tank in Bear Form?",
			a = "Bear Form gives a lot of armour and health and uses rage. Maul creates a lot of threat, Swipe hits several enemies, Growl pulls an enemy to you, Demoralizing Roar lowers their damage.",
		},
	},
	{
		id = "druid-heals",
		de = {
			q = "Wie heile ich als Druide?",
			a = "„Verjüngung“ heilt über Zeit, „Nachwachsen“ heilt sofort etwas und dann über Zeit, „Heilende Berührung“ heilt viel, braucht aber lange. Leg Verjüngung früh auf den Tank und nutz Heilende Berührung, wenn viel fehlt.",
		},
		en = {
			q = "How do I heal as a druid?",
			a = "Rejuvenation heals over time, Regrowth heals a bit instantly and then over time, Healing Touch heals a lot but takes long. Put Rejuvenation on the tank early and use Healing Touch when a lot of health is missing.",
		},
	},
	{
		id = "druid-buffs",
		de = {
			q = "Welche Buffs hat ein Druide?",
			a = "„Mal der Wildnis“ erhöht alle Werte und Widerstände, leg es auf jedes Gruppenmitglied. „Dornen“ fügt Angreifern Schaden zu, ideal auf dem Tank. Beide halten eine ganze Weile.",
		},
		en = {
			q = "Which buffs does a druid have?",
			a = "Mark of the Wild increases all stats and resistances; put it on every party member. Thorns damages attackers, ideal on the tank. Both last quite a while.",
		},
	},
	{
		id = "druid-roots",
		de = {
			q = "Wie halte ich Gegner auf Abstand?",
			a = "„Wucherwurzeln“ halten einen Gegner draußen eine Weile fest. Er kann dabei noch zaubern oder zuschlagen, wenn du nah stehst, also geh auf Abstand. In Innenräumen wirkt der Zauber nicht.",
		},
		en = {
			q = "How do I keep enemies at a distance?",
			a = "Entangling Roots hold an enemy in place outdoors for a while. It can still cast or hit you if you stand close, so keep your distance. The spell does not work indoors.",
		},
	},
	{
		id = "druid-rebirth",
		de = {
			q = "Kann ich im Kampf wiederbeleben?",
			a = "Ja, mit „Wiedergeburt“: Sie belebt ein totes Gruppenmitglied auch mitten im Kampf wieder. Sie braucht ein Reagenz vom Händler und hat eine lange Abklingzeit, also setz sie gezielt ein, am besten auf Heiler oder Tank.",
		},
		en = {
			q = "Can I resurrect during combat?",
			a = "Yes, with Rebirth: it brings a dead party member back even mid-fight. It needs a reagent from a vendor and has a long cooldown, so use it on purpose, ideally on the healer or tank.",
		},
	},
	{
		id = "druid-innervate",
		de = {
			q = "Was macht „Anregen“?",
			a = "Es lässt das Mana eines Ziels eine Weile sehr schnell regenerieren. Gib es einem Heiler, dem das Mana ausgeht, oder dir selbst. Lange Abklingzeit, also gut überlegen.",
		},
		en = {
			q = "What does Innervate do?",
			a = "It makes a target's mana regenerate very quickly for a while. Give it to a healer running out of mana, or to yourself. It has a long cooldown, so use it wisely.",
		},
	},
	{
		id = "druid-cleanse",
		de = {
			q = "Was kann ein Druide entfernen?",
			a = "Flüche mit „Fluch aufheben“ und Gifte mit „Vergiftung heilen“. Krankheiten und Magie nicht. Achte in Dungeons auf die Symbole am Gruppenfenster.",
		},
		en = {
			q = "What can a druid remove?",
			a = "Curses with Remove Curse and poisons with Cure Poison. Not diseases or magic. In dungeons, watch the icons on the party frames.",
		},
	},
	{
		id = "druid-moonglade",
		de = {
			q = "Was ist „Teleportieren: Mondlichtung“?",
			a = "Druiden können sich zur Mondlichtung teleportieren, wo Druidenlehrer und Quests warten. Von dort fliegst du mit dem Flugmeister weiter. Praktisch, um schnell zum Lehrer zu kommen.",
		},
		en = {
			q = "What is Teleport: Moonglade?",
			a = "Druids can teleport to Moonglade, where druid trainers and quests are. From there you fly on with the flight master. Handy for reaching a trainer quickly.",
		},
	},
	{
		id = "druid-hibernate",
		de = {
			q = "Was kann „Winterschlaf“?",
			a = "Damit schickst du ein Wildtier oder einen Drachkin eine Weile schlafen. Schaden weckt ihn auf. In Dungeons mit solchen Gegnern ist das deine Kontrollaufgabe.",
		},
		en = {
			q = "What can Hibernate do?",
			a = "It puts a beast or dragonkin to sleep for a while. Damage wakes it up. In dungeons with such enemies, this is your crowd-control job.",
		},
	},
	{
		id = "druid-stats",
		de = {
			q = "Welche Werte sind für Druiden wichtig?",
			a = "Das hängt von der Rolle ab: Katze Beweglichkeit und Stärke, Bär Ausdauer, Rüstung und Beweglichkeit, Heiler und Mondkin Intelligenz, Willenskraft und Heilung oder Zauberschaden. In Gestalten zählt die Waffe kaum, Werte schon.",
		},
		en = {
			q = "Which stats matter for druids?",
			a = "It depends on the role: Cat agility and strength, Bear stamina, armour and agility, healer and Moonkin intellect, spirit and healing or spell damage. In forms your weapon barely matters, its stats do.",
		},
	},
	{
		id = "druid-gear",
		de = {
			q = "Welche Rüstung und Waffen nutzen Druiden?",
			a = "Leder und Stoff. Als Waffen Stäbe, Streitkolben, Dolche und Faustwaffen. Ein Schild ist nicht möglich, dafür kannst du einen Nebenhand-Gegenstand für Zauberwerte tragen.",
		},
		en = {
			q = "What armour and weapons do druids use?",
			a = "Leather and cloth. Weapons: staves, maces, daggers and fist weapons. Shields are not possible, but you can hold an off-hand item for spell stats.",
		},
	},
	{
		id = "druid-talents",
		de = {
			q = "Welche Talentbäume haben Druiden?",
			a = "Gleichgewicht stärkt deine Zauber und bringt die Mondkingestalt, Wilder Kampf verbessert Bär und Katze und ist beim Leveln sehr beliebt, Wiederherstellung stärkt deine Heilung. Mit der Dualspezialisierung ab Stufe 40 kannst du zum Beispiel Wilder Kampf und Wiederherstellung kombinieren.",
		},
		en = {
			q = "Which talent trees do druids have?",
			a = "Balance strengthens your spells and brings Moonkin Form, Feral Combat improves Bear and Cat and is very popular for levelling, Restoration strengthens your healing. With dual specialisation from level 40 you can, for example, combine Feral and Restoration.",
		},
	},
})
