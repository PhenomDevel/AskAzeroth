local _, ns = ...

-- FAQ: Groups and dungeons. See Core/Faq.lua for the format.
ns.Faq.Add("group", {
	{
		id = "group-find",
		de = {
			q = "Wie finde ich eine Gruppe für einen Dungeon?",
			a = "Nutze die Gruppensuche: Stell deine eigene Gruppe ein oder bewirb dich bei einer, der Anführer lädt von Hand ein. Einen automatischen Dungeonfinder gibt es in WoW: Forever nicht. Fragen im Chat oder in deiner Gilde klappt auch. Sag, welchen Dungeon du machen willst und welche Rolle du spielst (Tank, Heiler oder Schaden), und klärt die Beuteregeln vor dem Start.",
		},
		en = {
			q = "How do I find a group for a dungeon?",
			a = "Use the group finder: list your own group or apply to one, the leader invites players by hand. There is no automatic Dungeon Finder in WoW: Forever. Asking in the chat or your guild works, too. Say which dungeon you want and which role you play (tank, healer or damage), and agree on loot rules before you start.",
		},
	},
	{
		id = "group-first-dungeon",
		de = {
			q = "Was sollte ich vor meinem ersten Dungeon wissen?",
			a = "Sag, dass du neu bist, die meisten Gruppen erklären gern. Lass den Tank die Gegner anlocken, greif sein Ziel an und halte dich aus Kämpfen raus, die die Gruppe nicht begonnen hat. Kontrolleffekte wie Verwandlung, Kopfnuss oder Fesseln sind wichtig, denn Dungeons passen sich nicht an deine Stufe an.",
		},
		en = {
			q = "What should I know before my first dungeon?",
			a = "Say that you are new, most groups gladly explain. Let the tank pull, attack the tank's target and stay out of fights the group has not started. Crowd control such as sheep, sap or shackle matters, because dungeons do not scale to your level.",
		},
	},
	{
		id = "group-loot",
		de = {
			q = "Wie wird Beute in der Gruppe verteilt?",
			a = "Bei vielen Gegenständen würfeln alle auf Bedarf, Gier oder Passen. Wähl Bedarf nur, wenn dein Charakter den Gegenstand wirklich nutzt, sonst Gier. Frag lieber nach, bevor du auf etwas Bedarf würfelst, das auch andere brauchen könnten.",
		},
		en = {
			q = "How does loot work in a group?",
			a = "For many items everyone rolls Need, Greed or Pass. Choose Need only if your character will really use the item, otherwise Greed. Ask before rolling Need on items others might want as well.",
		},
	},
	{
		id = "group-invite",
		de = {
			q = "Wie lade ich jemanden in meine Gruppe ein?",
			a = "Klick mit der rechten Maustaste auf den Namen im Chat oder auf das Porträt und wähl „Einladen“. Danach erscheinen links die Gruppenfenster.",
		},
		en = {
			q = "How do I invite someone to my group?",
			a = "Right-click their name in the chat or their portrait and choose Invite. Your party frames then appear on the left.",
		},
	},
	{
		id = "group-raid",
		de = {
			q = "Was ist ein Schlachtzug?",
			a = "Ein Schlachtzug (Raid) ist ein Dungeon für eine große Gruppe auf Höchststufe. WoW: Forever startet mit Schlachtzügen für 10, 20 und 40 Spieler. Die meisten gehen mit ihrer Gilde in Schlachtzüge.",
		},
		en = {
			q = "What is a raid?",
			a = "A raid is a dungeon for a large group at the maximum level. WoW: Forever starts with raids for 10, 20 and 40 players. Most players raid with their guild.",
		},
	},
	{
		id = "group-finder-playstyle",
		de = {
			q = "Was bedeuten die Spielstile in der Gruppensuche?",
			a = "Gruppen geben an, wie sie spielen wollen, etwa zum Lernen, entspannt oder ehrgeizig. Als Anfänger such dir eine Gruppe zum Lernen oder eine entspannte; dort ist niemand sauer, wenn etwas schiefgeht.",
		},
		en = {
			q = "What do the playstyles in the group finder mean?",
			a = "Groups say how they want to play, for example learning, relaxed or competitive. As a beginner, look for a learning or relaxed group; nobody minds there if something goes wrong.",
		},
	},
	{
		id = "group-finder-list",
		de = {
			q = "Wie stelle ich selbst eine Gruppe in die Gruppensuche?",
			a = "Öffne die Gruppensuche, wähl den Dungeon und beschreib kurz, was du suchst, zum Beispiel „Heiler und Tank gesucht“. Bewerbungen nimmst du an, indem du die Spieler einlädst. Als Anführer wartest du nicht auf andere, das spart viel Zeit.",
		},
		en = {
			q = "How do I list my own group in the group finder?",
			a = "Open the group finder, choose the dungeon and briefly describe what you need, for example \"looking for healer and tank\". Accept applicants by inviting them. As the leader you are not waiting on anyone, which saves a lot of time.",
		},
	},
	{
		id = "group-size",
		de = {
			q = "Wie viele Spieler braucht ein Dungeon?",
			a = "Fünf: in der Regel ein Tank, ein Heiler und drei Schadensklassen. Achte darauf, dass jemand Gegner kontrollieren kann, etwa mit Verwandlung oder Kopfnuss, das macht vieles leichter.",
		},
		en = {
			q = "How many players does a dungeon need?",
			a = "Five: usually one tank, one healer and three damage dealers. Make sure someone can control enemies, for example with Polymorph or Sap, which makes a lot easier.",
		},
	},
	{
		id = "group-dungeon-xp",
		de = {
			q = "Lohnen sich Dungeons zum Leveln?",
			a = "Ja, vor allem wegen der Quests: In WoW: Forever geben Gegner im Dungeon weniger Erfahrung, Dungeonquests beim ersten Abschluss aber deutlich mehr. Dazu kommt gute Beute. Sammle die Quests vorher ein.",
		},
		en = {
			q = "Are dungeons worth it for levelling?",
			a = "Yes, mainly for the quests: in WoW: Forever enemies in dungeons give less experience, but dungeon quests give much more the first time you complete them. Plus good loot. Collect the quests beforehand.",
		},
	},
	{
		id = "group-entrance",
		de = {
			q = "Wo ist der Eingang zum Dungeon?",
			a = "Dungeons haben einen leuchtenden Eingang irgendwo in der Welt, oft in einer Höhle oder Ruine. Die Weltkarte zeigt sie meist mit einem eigenen Symbol. Frag in der Gruppe, wer den Weg kennt, oder hier.",
		},
		en = {
			q = "Where is the dungeon entrance?",
			a = "Dungeons have a glowing entrance somewhere in the world, often in a cave or ruin. The world map usually shows them with their own icon. Ask your group who knows the way, or ask here.",
		},
	},
	{
		id = "group-markers",
		de = {
			q = "Was bedeuten Totenkopf, Kreuz und Mond über Gegnern?",
			a = "Das sind Zielmarkierungen, die Tank oder Anführer setzen. Meist heißt Totenkopf „zuerst töten“, Kreuz „danach“ und Mond oder ein anderes Symbol „kontrollieren“ (etwa Verwandlung). Fragt vor dem Kampf kurz, was gilt.",
		},
		en = {
			q = "What do the skull, cross and moon above enemies mean?",
			a = "Those are target markers set by the tank or leader. Usually skull means kill first, cross next, and moon or another symbol means crowd control (for example Polymorph). Agree on it briefly before the fight.",
		},
	},
	{
		id = "group-wipe",
		de = {
			q = "Die ganze Gruppe ist gestorben. Was nun?",
			a = "Das passiert jedem. Lasst alle eure Geister frei und lauft zum Eingang. Wer wiederbeleben kann, belebt zuerst die anderen Heiler und Wiederbeleber. Besprecht kurz, was schiefging, bevor ihr den nächsten Versuch startet.",
		},
		en = {
			q = "The whole group died. What now?",
			a = "It happens to everyone. Everyone releases their spirit and runs to the entrance. Whoever can resurrect first brings back other healers and resurrecters. Talk briefly about what went wrong before trying again.",
		},
	},
	{
		id = "group-leave",
		de = {
			q = "Wie verlasse ich eine Gruppe?",
			a = "Rechtsklick auf dein eigenes Porträt und „Gruppe verlassen“. Sag vorher kurz Bescheid, wenn du gehst, besonders mitten im Dungeon.",
		},
		en = {
			q = "How do I leave a group?",
			a = "Right-click your own portrait and choose Leave Group. Let the others know before you go, especially in the middle of a dungeon.",
		},
	},
	{
		id = "group-loot-method",
		de = {
			q = "Wer legt die Beuteregeln fest?",
			a = "Der Gruppenanführer, über das Menü seines Porträts. Üblich ist, dass bei guten Gegenständen gewürfelt wird und einfache automatisch verteilt werden. Seid ihr unsicher, besprecht es vor dem ersten Kampf.",
		},
		en = {
			q = "Who sets the loot rules?",
			a = "The group leader, from their portrait menu. Usually players roll on good items and simple ones are handed out automatically. If you are unsure, agree on it before the first fight.",
		},
	},
	{
		id = "group-lockout",
		de = {
			q = "Kann ich einen Dungeon gleich noch einmal machen?",
			a = "Dungeons lassen sich zurücksetzen, sodass alle Gegner wieder da sind; das macht der Anführer, wenn alle draußen sind. Schlachtzüge haben dagegen eine Sperre und gehen nur einmal pro Zurücksetzungszeitraum.",
		},
		en = {
			q = "Can I run a dungeon again right away?",
			a = "Dungeons can be reset so all enemies are back; the leader does it when everyone is outside. Raids, on the other hand, have a lockout and can only be done once per reset period.",
		},
	},
	{
		id = "group-raid-forever",
		de = {
			q = "Welche Schlachtzüge gibt es zum Start?",
			a = "WoW: Forever startet unter anderem mit Barrow Deeps für 10 Spieler, dem Hyjalgipfel für 20 und einem überarbeiteten Onyxia für 40. Weltbuffs wirken in Schlachtzügen nicht. Für Schlachtzüge brauchst du die Höchststufe und meist eine Gilde.",
		},
		en = {
			q = "Which raids are there at launch?",
			a = "WoW: Forever starts with, among others, Barrow Deeps for 10 players, Hyjal Summit for 20 and a revamped Onyxia for 40. World buffs do not work inside raids. For raids you need the maximum level and usually a guild.",
		},
	},
	{
		id = "group-raid-convert",
		de = {
			q = "Wie mache ich aus meiner Gruppe einen Schlachtzug?",
			a = "Als Anführer über das Menü deines Porträts „In Schlachtzug umwandeln“. Danach können mehr als fünf Spieler beitreten. In einer Schlachtzugsgruppe zählen viele normale Quests nicht mehr.",
		},
		en = {
			q = "How do I turn my group into a raid?",
			a = "As leader, choose Convert to Raid from your portrait menu. Then more than five players can join. In a raid group many normal quests no longer count.",
		},
	},
	{
		id = "group-new-player",
		de = {
			q = "Ich bin neu und habe Angst, Fehler zu machen.",
			a = "Sag zu Beginn, dass du neu bist; die meisten Spieler helfen gern. Halte dich an den Tank, greif sein Ziel an und frag, wenn du etwas nicht verstehst. Fehler gehören dazu, und mit AskAzeroth kannst du jederzeit nachfragen.",
		},
		en = {
			q = "I am new and afraid of making mistakes.",
			a = "Say at the start that you are new; most players gladly help. Stick with the tank, attack their target and ask when something is unclear. Mistakes are part of it, and with AskAzeroth you can ask any time.",
		},
	},
})
