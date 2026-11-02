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
	{
		id = "combat-elite",
		de = {
			q = "Was ist ein Elite-Gegner?",
			a = "Elite-Gegner haben einen goldenen Drachen am Porträt und sind viel stärker als normale Gegner derselben Stufe. Allein ist das meist zu viel; nimm eine Gruppe mit oder komm ein paar Stufen später wieder. In Dungeons sind fast alle Gegner Elite.",
		},
		en = {
			q = "What is an elite enemy?",
			a = "Elite enemies have a golden dragon around their portrait and are much stronger than normal enemies of the same level. Alone that is usually too much; bring a group or come back a few levels later. In dungeons almost every enemy is elite.",
		},
	},
	{
		id = "combat-aggro-range",
		de = {
			q = "Warum greifen mich Gegner aus der Ferne an?",
			a = "Feindliche Gegner bemerken dich, wenn du ihnen zu nahe kommst; je höher ihre Stufe im Vergleich zu deiner, desto früher. Lauf um Gruppen herum, achte auf Patrouillen und zieh Gegner mit einem Fernkampfangriff einzeln zu dir.",
		},
		en = {
			q = "Why do enemies attack me from far away?",
			a = "Hostile enemies notice you when you get too close; the higher their level compared to yours, the sooner. Walk around groups, watch for patrols and pull enemies one at a time with a ranged attack.",
		},
	},
	{
		id = "combat-adds-flee",
		de = {
			q = "Warum läuft der Gegner bei wenig Gesundheit weg?",
			a = "Manche Gegner fliehen kurz vor dem Tod und holen Verstärkung. Halte sie mit Verlangsamungen oder Betäubungen auf, oder mach genug Schaden, bevor sie weit kommen. Kämpfe nie direkt neben anderen Gegnern.",
		},
		en = {
			q = "Why does the enemy run away at low health?",
			a = "Some enemies flee shortly before dying and bring help. Stop them with slows or stuns, or deal enough damage before they get far. Never fight right next to other enemies.",
		},
	},
	{
		id = "combat-evade",
		de = {
			q = "Warum heißt es „Entkommen“ und der Gegner heilt sich?",
			a = "Wenn du einen Gegner zu weit von seinem Ort wegziehst oder ihn nicht erreichen kannst, läuft er zurück, wird unverwundbar und heilt sich voll. Kämpf in der Nähe seines Startpunkts und such dir eine Stelle, an die er herankommt.",
		},
		en = {
			q = "Why does it say Evade and the enemy heals up?",
			a = "If you pull an enemy too far from its spot, or it cannot reach you, it runs back, becomes immune and heals to full. Fight near where it started and pick a spot it can reach.",
		},
	},
	{
		id = "combat-corpse-run",
		de = {
			q = "Ich finde meine Leiche nicht. Was tun?",
			a = "Als Geist zeigt dir die Minikarte einen Pfeil zu deiner Leiche, und auf der Weltkarte ist sie markiert. Nähere dich ihr, bis „Wiederbeleben“ erscheint. Such dir eine sichere Stelle, sonst stirbst du gleich wieder.",
		},
		en = {
			q = "I cannot find my corpse. What do I do?",
			a = "As a ghost, the minimap shows an arrow to your corpse, and it is marked on the world map. Get close until the resurrect button appears. Pick a safe spot, or you die again right away.",
		},
	},
	{
		id = "combat-res-sickness",
		de = {
			q = "Was ist Wiederbelebungsnachwirkung?",
			a = "Lässt du dich vom Geistheiler wiederbeleben, sind deine Werte eine Weile stark gesenkt und deine Ausrüstung verliert zusätzlich Haltbarkeit. Auf sehr niedrigen Stufen ist das egal, später lohnt sich fast immer der Weg zur Leiche.",
		},
		en = {
			q = "What is resurrection sickness?",
			a = "If the spirit healer resurrects you, your stats are greatly reduced for a while and your gear loses extra durability. At very low levels it hardly matters; later, running back to your corpse is almost always worth it.",
		},
	},
	{
		id = "combat-die-in-dungeon",
		de = {
			q = "Ich bin im Dungeon gestorben. Wie komme ich zurück?",
			a = "Lass deinen Geist frei und lauf zum Eingang des Dungeons; dort wirst du wiederbelebt. Hat jemand in der Gruppe einen Wiederbelebungszauber, warte lieber auf ihn, das spart Zeit.",
		},
		en = {
			q = "I died in a dungeon. How do I get back?",
			a = "Release your spirit and run to the dungeon entrance; you are resurrected there. If someone in the group can resurrect, wait for them instead, it saves time.",
		},
	},
	{
		id = "combat-durability",
		de = {
			q = "Warum ist meine Ausrüstung rot?",
			a = "Rote Ausrüstung ist kaputt und gibt keine Werte mehr; gelb heißt, sie ist fast kaputt. Das Symbol neben der Minikarte zeigt es an. Lass sie bei einem Händler mit Reparatur-Knopf instand setzen.",
		},
		en = {
			q = "Why is my gear red?",
			a = "Red gear is broken and gives no stats any more; yellow means it is almost broken. The figure near the minimap shows it. Have it repaired at a vendor with the repair button.",
		},
	},
	{
		id = "combat-breath",
		de = {
			q = "Was ist der Balken beim Tauchen?",
			a = "Unter Wasser zeigt ein Balken deinen Atem. Läuft er ab, verlierst du schnell Gesundheit, also tauch rechtzeitig auf. In sehr tiefem Wasser fern der Küste erscheint ein Erschöpfungsbalken; schwimm dann zurück ans Ufer.",
		},
		en = {
			q = "What is the bar when I dive?",
			a = "Underwater, a bar shows your breath. When it runs out you lose health quickly, so come up in time. In very deep water far from the coast a fatigue bar appears; swim back to shore then.",
		},
	},
	{
		id = "combat-dazed",
		de = {
			q = "Warum bin ich plötzlich langsam?",
			a = "Wirst du beim Weglaufen von hinten getroffen, kannst du „benommen“ werden und läufst kurz langsamer. Daher kommt man vor Gegnern schwer davon. Flieh lieber früh, nicht erst bei fast leerer Gesundheit.",
		},
		en = {
			q = "Why am I suddenly slow?",
			a = "If you get hit from behind while running away, you can become dazed and run slower for a moment. That is why escaping enemies is hard. Run early, not when your health is almost gone.",
		},
	},
	{
		id = "combat-debuffs",
		de = {
			q = "Was bedeuten die Symbole an meinem Porträt?",
			a = "Oben rechts siehst du deine Effekte: nützliche Buffs und schädliche Debuffs wie Gifte, Flüche oder Krankheiten. Fahr mit der Maus darüber für Details. Manche Klassen können schädliche Effekte entfernen, frag in der Gruppe danach.",
		},
		en = {
			q = "What do the icons near my portrait mean?",
			a = "At the top right you see your effects: helpful buffs and harmful debuffs like poisons, curses or diseases. Hover over them for details. Some classes can remove harmful effects, ask your group.",
		},
	},
	{
		id = "combat-threat",
		de = {
			q = "Warum greift mich der Gegner an und nicht den Tank?",
			a = "Gegner greifen an, wer die meiste Bedrohung erzeugt hat; Schaden und Heilung erzeugen Bedrohung. Lass dem Tank einen Moment Vorsprung und greif sein Ziel an. Reißt du den Gegner trotzdem, lauf zum Tank, statt wegzulaufen.",
		},
		en = {
			q = "Why does the enemy attack me and not the tank?",
			a = "Enemies attack whoever generated the most threat; damage and healing create threat. Give the tank a head start and attack their target. If you still pull the enemy, run to the tank instead of away.",
		},
	},
	{
		id = "combat-grey-name",
		de = {
			q = "Warum ist der Name eines Gegners grau?",
			a = "Ein anderer Spieler hat ihn zuerst angegriffen; Beute und Questfortschritt gehören ihm. Such dir einen anderen Gegner oder bildet eine Gruppe, damit es für beide zählt.",
		},
		en = {
			q = "Why is an enemy's name grey?",
			a = "Another player attacked it first; the loot and quest credit are theirs. Pick another enemy or form a group so it counts for both of you.",
		},
	},
	{
		id = "combat-pvp-flag",
		de = {
			q = "Warum greift mich ein Spieler der anderen Fraktion an?",
			a = "Du bist für PvP markiert: auf PvP-Regelwerken in vielen Gebieten automatisch, sonst, wenn du selbst einen Spieler oder Wachen der anderen Fraktion angreifst. Auf dem normalen Regelwerk kannst du PvP meiden, solange du dich nicht markierst.",
		},
		en = {
			q = "Why does a player of the other faction attack me?",
			a = "You are flagged for PvP: on PvP rule sets automatically in many zones, otherwise when you attack a player or guards of the other faction yourself. On the normal rule set you can avoid PvP as long as you do not flag yourself.",
		},
	},
})
