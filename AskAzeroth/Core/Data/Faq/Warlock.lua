local _, ns = ...

-- FAQ: Warlock. See Core/Faq.lua for the format.
ns.Faq.Add("warlock", {
	{
		id = "warlock-demons",
		de = {
			q = "Wie bekomme ich neue Dämonen?",
			a = "Den Wichtel hast du von Anfang an. Leerwandler, Sukkubus und Teufelsjäger bekommst du über Klassenquests, etwa ab Stufe 10, 20 und 30; dein Hexenmeisterlehrer schickt dich los. Danach beschwörst du sie über dein Zauberbuch.",
		},
		en = {
			q = "How do I get new demons?",
			a = "You have the Imp from the start. Voidwalker, Succubus and Felhunter come from class quests at about levels 10, 20 and 30; your warlock trainer sends you off. Then you summon them from your spellbook.",
		},
	},
	{
		id = "warlock-which-demon",
		de = {
			q = "Welchen Dämon soll ich benutzen?",
			a = "Beim Leveln meist den Leerwandler: Er hält die Gegner von dir fern und steckt viel ein. Der Wichtel macht Schaden aus der Ferne und gibt Ausdauer, gut in Gruppen. Der Sukkubus macht viel Schaden, der Teufelsjäger ist stark gegen Zauberwirker.",
		},
		en = {
			q = "Which demon should I use?",
			a = "While levelling usually the Voidwalker: it keeps enemies off you and takes a lot of hits. The Imp deals ranged damage and gives stamina, good in groups. The Succubus deals high damage, the Felhunter is strong against casters.",
		},
	},
	{
		id = "warlock-soul-shards",
		de = {
			q = "Was sind Seelensplitter?",
			a = "Seelensplitter brauchst du für die meisten Dämonenbeschwörungen, Gesundheitssteine und Seelensteine. Du bekommst sie, wenn ein Gegner, der Erfahrung gibt, stirbt, während „Seele entziehen“ auf ihm wirkt. Sammle immer ein paar auf Vorrat.",
		},
		en = {
			q = "What are soul shards?",
			a = "You need soul shards for most demon summons, healthstones and soulstones. You get one when an enemy that gives experience dies while Drain Soul is channelled on it. Always keep a few in stock.",
		},
	},
	{
		id = "warlock-shard-bag",
		de = {
			q = "Meine Taschen sind voller Seelensplitter. Was tun?",
			a = "Besorg dir eine Seelentasche: Schneider stellen sie her, oder du kaufst sie im Auktionshaus. In ihr liegen nur Seelensplitter, deine anderen Taschen bleiben frei. Mehr als 10 bis 20 Splitter brauchst du selten.",
		},
		en = {
			q = "My bags are full of soul shards. What do I do?",
			a = "Get a soul pouch: tailors make them, or buy one in the auction house. It only holds soul shards, so your other bags stay free. You rarely need more than 10 to 20 shards.",
		},
	},
	{
		id = "warlock-leveling",
		de = {
			q = "Wie kämpfe ich als Hexenmeister beim Leveln?",
			a = "Schick deinen Dämon vor, setz „Verderbnis“ und „Fluch der Pein“ und vielleicht „Feuerbrand“, dann „Schattenblitz“ oder den Zauberstab. Bei wenig Gesundheit hilft „Lebensentzug“. Gegen den letzten Rest „Seele entziehen“ für einen Splitter.",
		},
		en = {
			q = "How do I fight as a warlock while levelling?",
			a = "Send your demon in, apply Corruption and Curse of Agony and maybe Immolate, then Shadow Bolt or your wand. When your health is low, Drain Life helps. On the last bit, Drain Soul for a shard.",
		},
	},
	{
		id = "warlock-life-tap",
		de = {
			q = "Was ist „Aderlass“?",
			a = "„Aderlass“ wandelt Gesundheit in Mana um. Zusammen mit „Lebensentzug“ und Gesundheitssteinen musst du so viel seltener trinken. Pass nur auf, dass du nicht mit zu wenig Gesundheit in den nächsten Kampf gehst.",
		},
		en = {
			q = "What is Life Tap?",
			a = "Life Tap turns health into mana. Together with Drain Life and healthstones you need to drink far less often. Just make sure you do not start the next fight with too little health.",
		},
	},
	{
		id = "warlock-health-funnel",
		de = {
			q = "Wie heile ich meinen Dämon?",
			a = "Mit „Lebenslinie“: Du gibst deinem Dämon über ein paar Sekunden Gesundheit von dir ab. Außerhalb des Kampfes regeneriert er auch langsam von selbst. Stirbt er, beschwörst du ihn neu.",
		},
		en = {
			q = "How do I heal my demon?",
			a = "With Health Funnel: you transfer your own health to your demon over a few seconds. Out of combat it also regenerates slowly. If it dies, summon it again.",
		},
	},
	{
		id = "warlock-healthstone",
		de = {
			q = "Was sind Gesundheitssteine?",
			a = "Mit „Gesundheitsstein herstellen“ machst du aus einem Seelensplitter einen Stein, der dich sofort heilt. Gib auch deiner Gruppe welche, über das Handelsfenster. Ein Gesundheitsstein im Notfall rettet oft einen Kampf.",
		},
		en = {
			q = "What are healthstones?",
			a = "Create Healthstone turns a soul shard into a stone that heals you instantly. Give some to your group too, through the trade window. A healthstone in an emergency often saves a fight.",
		},
	},
	{
		id = "warlock-soulstone",
		de = {
			q = "Was ist ein Seelenstein?",
			a = "Ein Seelenstein, auf dich oder einen Heiler gelegt, erlaubt nach dem Tod die Wiederbelebung an Ort und Stelle. Leg ihn vor gefährlichen Kämpfen auf den Heiler der Gruppe. Er kostet einen Seelensplitter und hat eine lange Abklingzeit.",
		},
		en = {
			q = "What is a soulstone?",
			a = "A soulstone placed on yourself or a healer allows resurrecting on the spot after death. Put it on the group's healer before dangerous fights. It costs a soul shard and has a long cooldown.",
		},
	},
	{
		id = "warlock-summon",
		de = {
			q = "Wie hole ich Gruppenmitglieder zu mir?",
			a = "Mit dem „Ritual der Beschwörung“: Du und zwei weitere Gruppenmitglieder klicken das Portal an, und ein weiteres Gruppenmitglied wird zu euch geholt. Das kostet einen Seelensplitter, spart aber lange Wege, besonders vor Dungeons.",
		},
		en = {
			q = "How do I bring party members to me?",
			a = "With Ritual of Summoning: you and two other party members click the portal, and another party member is pulled to you. It costs a soul shard but saves long trips, especially before dungeons.",
		},
	},
	{
		id = "warlock-fear",
		de = {
			q = "Wie benutze ich „Furcht“?",
			a = "„Furcht“ lässt einen Gegner eine Weile in Panik davonlaufen. Gut, um Zeit für deine Zauber über Zeit zu gewinnen. Pass auf, dass er keine weiteren Gegner aufscheucht; in Dungeons ohne Absprache lieber nicht.",
		},
		en = {
			q = "How do I use Fear?",
			a = "Fear makes an enemy run away in panic for a while. Good for buying time while your damage over time ticks. Watch that it does not pull more enemies; in dungeons, do not use it without agreeing first.",
		},
	},
	{
		id = "warlock-voidwalker-tank",
		de = {
			q = "Wie hält mein Leerwandler die Gegner bei sich?",
			a = "Er nutzt „Qual“ automatisch, um Bedrohung aufzubauen. Gib ihm ein paar Sekunden, bevor du viel Schaden machst. In Gruppen schalte Qual auf der Tierleiste ab, damit er dem Tank nichts wegnimmt.",
		},
		en = {
			q = "How does my Voidwalker keep enemies on itself?",
			a = "It uses Torment automatically to build threat. Give it a few seconds before you deal a lot of damage. In groups, turn off Torment on the pet bar so it does not steal enemies from the tank.",
		},
	},
	{
		id = "warlock-armor",
		de = {
			q = "Welche Rüstung soll ich als Hexenmeister nutzen?",
			a = "„Dämonenhaut“ und später „Dämonenrüstung“ erhöhen Rüstung und Regeneration. Halte sie immer aktiv. Als Kleidung trägst du Stoff.",
		},
		en = {
			q = "Which armour spell should I use as a warlock?",
			a = "Demon Skin and later Demon Armor increase armour and regeneration. Keep them up at all times. You wear cloth.",
		},
	},
	{
		id = "warlock-banish",
		de = {
			q = "Was kann „Verbannen“?",
			a = "Damit hältst du einen Dämon oder ein Elementar eine Weile aus dem Kampf heraus; in der Zeit kann er nichts tun und nimmt keinen Schaden. In Dungeons mit solchen Gegnern ist das deine Kontrollaufgabe.",
		},
		en = {
			q = "What can Banish do?",
			a = "It removes a demon or elemental from the fight for a while; during that time it cannot act and takes no damage. In dungeons with such enemies, this is your crowd-control job.",
		},
	},
	{
		id = "warlock-unending-breath",
		de = {
			q = "Kann ich länger unter Wasser bleiben?",
			a = "Ja, mit „Unendlicher Atem“: Du und ein Gruppenmitglied könnt lange unter Wasser atmen. Praktisch für Quests unter Wasser.",
		},
		en = {
			q = "Can I stay underwater longer?",
			a = "Yes, with Unending Breath: you or a party member can breathe underwater for a long time. Handy for underwater quests.",
		},
	},
	{
		id = "warlock-stats",
		de = {
			q = "Welche Werte sind für Hexenmeister wichtig?",
			a = "Ausdauer ist für Hexenmeister besonders wertvoll, weil „Aderlass“ Gesundheit in Mana umwandelt. Dazu Intelligenz und Zauberschaden. Ein guter Zauberstab hilft beim Leveln sehr.",
		},
		en = {
			q = "Which stats matter for warlocks?",
			a = "Stamina is especially valuable for warlocks because Life Tap turns health into mana. Plus intellect and spell damage. A good wand helps a lot while levelling.",
		},
	},
	{
		id = "warlock-talents",
		de = {
			q = "Welche Talentbäume haben Hexenmeister?",
			a = "Gebrechen verstärkt Flüche und Schaden über Zeit und ist beim Leveln sehr beliebt, Dämonologie stärkt deine Dämonen, Zerstörung deine direkten Zauber wie Schattenblitz. Gebrechen oder Dämonologie sind für Anfänger am einfachsten.",
		},
		en = {
			q = "Which talent trees do warlocks have?",
			a = "Affliction strengthens curses and damage over time and is very popular for levelling, Demonology strengthens your demons, Destruction your direct spells like Shadow Bolt. Affliction or Demonology are the easiest for beginners.",
		},
	},
})
