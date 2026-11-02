local _, ns = ...

-- FAQ: Combat and death. See Core/Faq.lua for the format.
ns.Faq.Add("combat", {
	{
		id = "combat-death",
		de = {
			q = "Was passiert, wenn ich sterbe?",
			a = "Lass deinen Geist frei und lauf als Geist zu deinem Körper zurück, um wiederbelebt zu werden. Alternativ holt dich der Geistheiler am Friedhof sofort zurück, dann verliert deine Ausrüstung aber Haltbarkeit und du bist eine Weile geschwächt.",
		},
		en = {
			q = "What happens when I die?",
			a = "Release your spirit and run back to your body as a ghost to be resurrected. Alternatively the spirit healer at the graveyard brings you back right away, but your gear loses durability and you are weakened for a while.",
		},
	},
	{
		id = "combat-die-less",
		de = {
			q = "Wie sterbe ich seltener?",
			a = "Kämpf gegen einen Gegner nach dem anderen und lock ihn von seinen Freunden weg; in WoW: Forever können schon zwei Gegner gleichzeitig zu viel sein. Prüf vor dem Angriff die Stufe des Gegners, iss und trink zwischen den Kämpfen und achte auf Patrouillen. Läuft ein Kampf schief, flieh den Weg zurück, den du gekommen bist.",
		},
		en = {
			q = "How do I die less often?",
			a = "Fight one enemy at a time and pull them away from their friends; even two enemies at once can be too much in WoW: Forever. Check the enemy level before attacking, eat and drink between fights and keep an eye on patrols. If a fight goes wrong, run back the way you came.",
		},
	},
	{
		id = "combat-level-colors",
		de = {
			q = "Was bedeuten die Farben der Gegnerstufen?",
			a = "Die Stufe im Zielfenster ist wie Questnamen gefärbt: Grau bringt keine Erfahrung, Grün ist leicht, Gelb ebenbürtig, Orange schwer und Rot sehr gefährlich. Ein Totenkopf heißt, der Gegner ist weit über dir oder ein Elite-Boss: Allein lieber Abstand halten.",
		},
		en = {
			q = "What do the colours of enemy levels mean?",
			a = "The level in the target frame is coloured like quest names: grey gives no experience, green is easy, yellow is even, orange is hard and red is very dangerous. A skull means the enemy is far above you or an elite boss: stay away when alone.",
		},
	},
	{
		id = "combat-name-colors",
		de = {
			q = "Warum sind Namen rot, gelb oder grün?",
			a = "Rot heißt feindlich: Der Gegner greift dich an, wenn du ihm zu nahe kommst. Gelb ist neutral und wehrt sich nur, wenn du angreifst. Grün ist freundlich.",
		},
		en = {
			q = "Why are names red, yellow or green?",
			a = "Red means hostile: it attacks you when you get too close. Yellow is neutral and only fights back when you attack it. Green is friendly.",
		},
	},
	{
		id = "combat-repair",
		de = {
			q = "Wie repariere ich meine Ausrüstung?",
			a = "Ausrüstung nutzt sich im Kampf und beim Sterben ab. Viele Händler, vor allem Rüstungs- und Waffenschmiede, reparieren sie: Sprich sie an und nutze den Amboss-Knopf im Händlerfenster.",
		},
		en = {
			q = "How do I repair my gear?",
			a = "Gear wears down in combat and when you die. Many vendors, especially armour and weapon smiths, repair it: talk to them and use the anvil button in the vendor window.",
		},
	},
})
