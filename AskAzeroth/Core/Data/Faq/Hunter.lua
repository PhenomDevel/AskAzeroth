local _, ns = ...

-- FAQ: Hunter. See Core/Faq.lua for the format.
ns.Faq.Add("hunter", {
	{
		id = "hunter-tame-learn",
		de = {
			q = "Wann kann ich als Jäger ein Tier zähmen?",
			a = "Ab Stufe 10. Sprich deinen Jägerlehrer an: Er gibt dir eine kurze Questreihe, in der du „Wildtier zähmen“ lernst. Bis dahin kämpfst du allein, danach ist dein Tier dein wichtigster Begleiter.",
		},
		en = {
			q = "When can I tame a pet as a hunter?",
			a = "From level 10. Talk to your hunter trainer: they give you a short quest chain in which you learn Tame Beast. Until then you fight alone; after that your pet is your most important companion.",
		},
	},
	{
		id = "hunter-tame-how",
		de = {
			q = "Wie zähme ich ein Tier?",
			a = "Wähl ein Wildtier als Ziel, das höchstens deine Stufe hat, und wirk „Wildtier zähmen“. Der Zauber dauert ein paar Sekunden, in denen dich das Tier angreift; wirst du unterbrochen, versuch es noch einmal. Danach gehört das Tier dir und erscheint mit eigenem Porträt unter deinem.",
		},
		en = {
			q = "How do I tame a pet?",
			a = "Target a beast that is at most your level and cast Tame Beast. The cast takes a few seconds during which the beast attacks you; if it gets interrupted, try again. Afterwards the beast is yours and shows up with its own portrait below yours.",
		},
	},
	{
		id = "hunter-tame-which",
		de = {
			q = "Welche Tiere kann ich zähmen?",
			a = "Wildtiere wie Wölfe, Katzen, Eber, Bären, Spinnen, Raptoren oder Vögel, sofern sie nicht über deiner Stufe sind. Humanoide, Untote, Elementare und Elite-Gegner gehen nicht. Ob ein Tier zähmbar ist, siehst du daran, dass „Wildtier zähmen“ es als Ziel annimmt.",
		},
		en = {
			q = "Which beasts can I tame?",
			a = "Beasts such as wolves, cats, boars, bears, spiders, raptors or birds, as long as they are not above your level. Humanoids, undead, elementals and elite enemies cannot be tamed. If Tame Beast accepts the target, it can be tamed.",
		},
	},
	{
		id = "hunter-tame-fail",
		de = {
			q = "Warum klappt das Zähmen nicht?",
			a = "Häufige Gründe: Das Tier ist über deiner Stufe, es ist kein Wildtier oder ein Elite-Gegner, du hast schon ein Tier dabei, oder der Zauber wurde unterbrochen. Schick dein aktuelles Tier vorher weg oder bring es zum Stallmeister.",
		},
		en = {
			q = "Why does taming not work?",
			a = "Common reasons: the beast is above your level, it is not a beast or it is elite, you already have a pet with you, or the cast was interrupted. Dismiss your current pet first or leave it at the stable master.",
		},
	},
	{
		id = "hunter-pet-family",
		de = {
			q = "Welches Tier ist das beste?",
			a = "Es kommt auf den Zweck an. Katzen und Raptoren machen viel Schaden, Eber, Bären und Gorillas halten mehr aus und eignen sich gut, wenn dein Tier die Gegner beschäftigen soll. Am Anfang ist jedes Tier eine große Hilfe, nimm ruhig eines, das dir gefällt.",
		},
		en = {
			q = "Which pet is the best?",
			a = "It depends on what you need. Cats and raptors deal a lot of damage; boars, bears and gorillas can take more hits and are good when your pet should keep enemies busy. Early on any pet is a big help, so pick one you like.",
		},
	},
	{
		id = "hunter-pet-feed",
		de = {
			q = "Wie füttere ich mein Tier?",
			a = "Mit „Tier füttern“: Wirk die Fähigkeit und klick dann auf ein passendes Nahrungsmittel in deinen Taschen. Das Tier frisst ein paar Sekunden lang und wird dabei zufriedener. Füttern geht nur außerhalb des Kampfes.",
		},
		en = {
			q = "How do I feed my pet?",
			a = "With Feed Pet: cast the ability, then click a suitable food in your bags. The pet eats for a few seconds and becomes happier. You can only feed it out of combat.",
		},
	},
	{
		id = "hunter-pet-diet",
		de = {
			q = "Was frisst mein Tier?",
			a = "Jede Tierart hat ihre Vorlieben: Fleisch, Fisch, Brot, Käse, Obst oder Pilze. Fahr mit der Maus über das Porträt deines Tiers oder schau im Tierfenster nach, was es frisst. Nimm Nahrung, die zu seiner Stufe passt: Zu niedrigstufiges Futter mag es nicht.",
		},
		en = {
			q = "What does my pet eat?",
			a = "Every pet family has its own diet: meat, fish, bread, cheese, fruit or fungus. Hover over your pet's portrait or check the pet window to see what it eats. Use food that fits its level: it refuses food that is far too low.",
		},
	},
	{
		id = "hunter-pet-happiness",
		de = {
			q = "Was bedeutet das Gesicht am Tierporträt?",
			a = "Es zeigt die Zufriedenheit deines Tiers: grün ist zufrieden, gelb geht so, rot ist unglücklich. Ein unglückliches Tier macht weniger Schaden. Füttere es regelmäßig, dann bleibt es grün.",
		},
		en = {
			q = "What does the face on my pet's portrait mean?",
			a = "It shows your pet's happiness: green is happy, yellow is content, red is unhappy. An unhappy pet deals less damage. Feed it regularly and it stays green.",
		},
	},
	{
		id = "hunter-pet-change",
		de = {
			q = "Wie wechsle ich mein Tier?",
			a = "Bring dein aktuelles Tier zu einem Stallmeister (meist beim Gasthaus) und lass es dort, dann kannst du ein neues zähmen. Später holst du es dort wieder ab. Willst du ein Tier gar nicht behalten, lass es über das Rechtsklick-Menü seines Porträts frei; das lässt sich nicht rückgängig machen.",
		},
		en = {
			q = "How do I change my pet?",
			a = "Take your current pet to a stable master (usually near the inn) and leave it there, then tame a new one. You can pick it up again later. If you do not want to keep a pet at all, abandon it from the right-click menu of its portrait; this cannot be undone.",
		},
	},
	{
		id = "hunter-pet-stable",
		de = {
			q = "Was macht der Stallmeister?",
			a = "Er bewahrt Tiere auf, die du gerade nicht dabeihast. Plätze im Stall kosten einmalig etwas Gold. So kannst du zum Beispiel ein Tier für Dungeons und eines zum Leveln behalten.",
		},
		en = {
			q = "What does the stable master do?",
			a = "They keep pets you do not have with you right now. Stable slots cost a one-time fee. That way you can keep, for example, one pet for dungeons and one for levelling.",
		},
	},
	{
		id = "hunter-pet-call",
		de = {
			q = "Mein Tier ist weg. Wie hole ich es zurück?",
			a = "Mit „Tier rufen“ kommt es wieder, wenn du es weggeschickt hast oder nach Reittier, Flug oder Ladebildschirm verschwunden ist. Ist es gestorben, belebst du es mit „Tier wiederbeleben“ wieder. Beide Fähigkeiten findest du im Zauberbuch.",
		},
		en = {
			q = "My pet is gone. How do I get it back?",
			a = "Call Pet brings it back if you dismissed it or it vanished after a mount, a flight or a loading screen. If it died, use Revive Pet. You find both in your spellbook.",
		},
	},
	{
		id = "hunter-pet-heal",
		de = {
			q = "Wie heile ich mein Tier?",
			a = "Mit „Tier heilen“: Das heilt dein Tier über ein paar Sekunden, solange du still stehst und die Verbindung hältst. Außerhalb des Kampfes regeneriert es auch von selbst, und Füttern hilft ebenfalls.",
		},
		en = {
			q = "How do I heal my pet?",
			a = "With Mend Pet: it heals your pet over a few seconds while you keep channelling. Out of combat it also regenerates on its own, and feeding helps too.",
		},
	},
	{
		id = "hunter-pet-modes",
		de = {
			q = "Mein Tier greift alles an. Wie stelle ich das ab?",
			a = "Über die Tierleiste über deinen Aktionsleisten: „Aggressiv“ greift alles in der Nähe an, „Defensiv“ nur, was dich oder das Tier angreift, „Passiv“ nichts von selbst. Für den Anfang ist „Defensiv“ die sicherste Wahl. Mit „Angreifen“ schickst du es gezielt auf dein Ziel.",
		},
		en = {
			q = "My pet attacks everything. How do I stop that?",
			a = "Use the pet bar above your action bars: Aggressive attacks everything nearby, Defensive only what attacks you or the pet, Passive nothing on its own. Defensive is the safest choice to start with. Use Attack to send it at your target.",
		},
	},
	{
		id = "hunter-pet-abilities",
		de = {
			q = "Wie lernt mein Tier neue Fähigkeiten?",
			a = "Manche Fähigkeiten bringt dir ein Tierausbilder in den Städten bei, andere lernst du, indem du ein Tier zähmst, das sie schon beherrscht, und eine Weile mit ihm kämpfst. Danach kannst du sie über „Tierausbildung“ deinen anderen Tieren beibringen.",
		},
		en = {
			q = "How does my pet learn new abilities?",
			a = "Some abilities are taught by pet trainers in the cities; others you learn by taming a beast that already knows them and fighting with it for a while. You can then teach them to your other pets through Beast Training.",
		},
	},
	{
		id = "hunter-pet-growl",
		de = {
			q = "Was muss ich mit meinem Tier im Dungeon beachten?",
			a = "Schalte „Knurren“ auf der Tierleiste ab (Rechtsklick auf das Symbol), sonst zieht dein Tier dem Tank die Gegner weg. Stell das Tier auf „Defensiv“ oder „Passiv“ und schick es nur auf das Ziel des Tanks.",
		},
		en = {
			q = "What should I watch out for with my pet in a dungeon?",
			a = "Turn off Growl on the pet bar (right-click its icon), or your pet pulls enemies away from the tank. Set the pet to Defensive or Passive and only send it at the tank's target.",
		},
	},
	{
		id = "hunter-ammo",
		de = {
			q = "Brauche ich als Jäger Munition?",
			a = "Ja. Bögen und Armbrüste verschießen Pfeile, Schusswaffen Kugeln. Munition kaufst du bei Gemischtwaren- und Waffenhändlern; ein Köcher oder Munitionsbeutel macht deine Schüsse schneller. Nimm immer genug mit, ohne Munition kannst du nicht schießen.",
		},
		en = {
			q = "Do I need ammunition as a hunter?",
			a = "Yes. Bows and crossbows shoot arrows, guns shoot bullets. You buy ammunition at general goods and weapon vendors; a quiver or ammo pouch makes your shots faster. Always carry enough: without ammunition you cannot shoot.",
		},
	},
	{
		id = "hunter-dead-zone",
		de = {
			q = "Warum kann ich auf kurze Distanz nicht schießen?",
			a = "Fernkampf braucht ein paar Meter Abstand. Steht ein Gegner direkt vor dir, kämpfst du mit deiner Nahkampfwaffe, etwa mit „Raptorstoß“ und „Zurechtstutzen“, das ihn verlangsamt. Danach gehst du ein paar Schritte weg und schießt weiter, während dein Tier ihn beschäftigt.",
		},
		en = {
			q = "Why can I not shoot at close range?",
			a = "Ranged attacks need a few metres of distance. If an enemy stands right in front of you, use your melee weapon, for example Raptor Strike and Wing Clip, which slows it. Then step away and keep shooting while your pet keeps it busy.",
		},
	},
	{
		id = "hunter-aspects",
		de = {
			q = "Welchen Aspekt soll ich benutzen?",
			a = "Im Kampf meist „Aspekt des Falken“ für mehr Fernkampfschaden, auf niedrigen Stufen „Aspekt des Affen“, wenn du oft im Nahkampf landest. „Aspekt des Geparden“ macht dich zum Reisen schneller, aber jeder Treffer benommen; im Kampf abschalten. Es ist immer nur ein Aspekt aktiv.",
		},
		en = {
			q = "Which aspect should I use?",
			a = "In combat usually Aspect of the Hawk for more ranged damage; at low levels Aspect of the Monkey if you often end up in melee. Aspect of the Cheetah makes you faster for travel, but every hit dazes you, so turn it off in combat. Only one aspect is active at a time.",
		},
	},
	{
		id = "hunter-mark",
		de = {
			q = "Wofür ist „Mal des Jägers“?",
			a = "Es markiert ein Ziel, sodass es für dich sichtbar bleibt und mehr Schaden von Fernkampfangriffen erleidet. Setz es zu Beginn jedes längeren Kampfes; in der Gruppe hilft es allen Fernkämpfern.",
		},
		en = {
			q = "What is Hunter's Mark for?",
			a = "It marks a target so it stays visible to you and takes more damage from ranged attacks. Use it at the start of every longer fight; in a group it helps all ranged attackers.",
		},
	},
	{
		id = "hunter-tracking",
		de = {
			q = "Wie finde ich Tiere oder Gegner auf der Minikarte?",
			a = "Jäger haben Aufspürfähigkeiten wie „Wildtiere aufspüren“ oder „Humanoide aufspüren“. Die gewählte Art erscheint als Punkte auf der Minikarte, so findest du Questgegner oder Tiere zum Zähmen viel schneller. Es ist immer nur eine Aufspürart aktiv.",
		},
		en = {
			q = "How do I find beasts or enemies on the minimap?",
			a = "Hunters have tracking abilities such as Track Beasts or Track Humanoids. The chosen type shows up as dots on the minimap, which makes quest enemies or beasts to tame much easier to find. Only one tracking type is active at a time.",
		},
	},
	{
		id = "hunter-feign-death",
		de = {
			q = "Was bringt „Totstellen“?",
			a = "Du stellst dich tot, und die meisten Gegner verlieren das Interesse an dir. So rettest du dich aus einem verlorenen Kampf oder lässt in der Gruppe die Gegner wieder zum Tank laufen. Steh danach erst auf, wenn die Gegner weg sind.",
		},
		en = {
			q = "What is Feign Death good for?",
			a = "You pretend to be dead and most enemies lose interest in you. That saves you from a lost fight, or lets enemies go back to the tank in a group. Only get up once the enemies have left.",
		},
	},
	{
		id = "hunter-traps",
		de = {
			q = "Wie benutze ich Fallen?",
			a = "Fallen legst du vor dir auf den Boden, sie lösen aus, wenn ein Gegner hineinläuft. Die „Eiskältefalle“ friert einen Gegner eine Weile ein, ideal, wenn zwei auf einmal kommen. Leg die Falle vor dem Kampf und lass den Gegner hineinlaufen, während dein Tier den anderen festhält.",
		},
		en = {
			q = "How do I use traps?",
			a = "You place traps on the ground in front of you, and they trigger when an enemy walks in. Freezing Trap freezes an enemy for a while, ideal when two come at once. Lay the trap before the fight, then let the enemy run into it while your pet holds the other one.",
		},
	},
	{
		id = "hunter-stats",
		de = {
			q = "Welche Werte und Waffen sind für Jäger gut?",
			a = "Beweglichkeit ist dein wichtigster Wert: mehr Fernkampfschaden, kritische Treffer und Ausweichen. Danach Ausdauer und Intelligenz für Mana. Deine Fernkampfwaffe (Bogen, Armbrust oder Schusswaffe) zählt viel mehr als die Nahkampfwaffe.",
		},
		en = {
			q = "Which stats and weapons are good for hunters?",
			a = "Agility is your most important stat: more ranged damage, critical strikes and dodge. After that stamina, and intellect for mana. Your ranged weapon (bow, crossbow or gun) matters far more than your melee weapon.",
		},
	},
	{
		id = "hunter-talents",
		de = {
			q = "Welche Talentbäume haben Jäger?",
			a = "Tierherrschaft stärkt vor allem dein Tier und ist beim Leveln sehr angenehm. Treffsicherheit erhöht deinen eigenen Fernkampfschaden. Überleben bringt Fallen, Nahkampf und Zähigkeit. Für den Einstieg ist Tierherrschaft die einfachste Wahl.",
		},
		en = {
			q = "Which talent trees do hunters have?",
			a = "Beast Mastery mostly strengthens your pet and is very comfortable for levelling. Marksmanship raises your own ranged damage. Survival brings traps, melee and toughness. Beast Mastery is the easiest choice to start with.",
		},
	},
	{
		id = "hunter-mana",
		de = {
			q = "Mir geht ständig das Mana aus. Was tun?",
			a = "Nutz deine Schüsse gezielt und lass dein Tier einen Teil der Arbeit machen. Zwischen den Kämpfen trinken, und Intelligenz auf der Ausrüstung hilft. „Aspekt des Falken“ statt teurer Schüsse bei schwachen Gegnern spart viel Mana.",
		},
		en = {
			q = "I keep running out of mana. What can I do?",
			a = "Use your shots on purpose and let your pet do part of the work. Drink between fights; intellect on your gear helps. Against weak enemies, auto shots with Aspect of the Hawk instead of expensive shots save a lot of mana.",
		},
	},
})
