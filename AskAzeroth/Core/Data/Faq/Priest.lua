local _, ns = ...

-- FAQ: Priest. See Core/Faq.lua for the format.
ns.Faq.Add("priest", {
	{
		id = "priest-leveling",
		de = {
			q = "Wie kämpfe ich als Priester beim Leveln?",
			a = "Leg „Machtwort: Schild“ auf dich, eröffne mit „Göttliche Pein“ oder „Gedankenschlag“, setz „Schattenwort: Schmerz“ und schieß den Rest mit dem Zauberstab ab. So sparst du viel Mana. Bei wenig Gesundheit heilst du dich zwischendurch.",
		},
		en = {
			q = "How do I fight as a priest while levelling?",
			a = "Put Power Word: Shield on yourself, open with Smite or Mind Blast, apply Shadow Word: Pain and finish with your wand. That saves a lot of mana. Heal yourself when your health gets low.",
		},
	},
	{
		id = "priest-wand",
		de = {
			q = "Warum ist ein Zauberstab so wichtig?",
			a = "Zauberstäbe schießen ohne Mana. Priester, Magier und Hexenmeister erledigen damit schwache oder fast tote Gegner und sparen Mana für die wichtigen Zauber. Einen Zauberstab legst du in den Fernkampfplatz und benutzt ihn mit „Schießen“; Verzauberer stellen gute her.",
		},
		en = {
			q = "Why is a wand so important?",
			a = "Wands shoot without mana. Priests, mages and warlocks use them to finish weak or nearly dead enemies and save mana for important spells. Put the wand in your ranged slot and use it with Shoot; enchanters make good ones.",
		},
	},
	{
		id = "priest-shield",
		de = {
			q = "Warum kann ich „Machtwort: Schild“ nicht erneut wirken?",
			a = "Nach dem Schild bekommt das Ziel „Geschwächte Seele“ und kann eine Weile keinen neuen Schild erhalten. Das Symbol siehst du bei den Effekten des Ziels. Schilde also gezielt einsetzen, nicht auf alle gleichzeitig.",
		},
		en = {
			q = "Why can I not cast Power Word: Shield again?",
			a = "After the shield, the target gets Weakened Soul and cannot receive another shield for a while. You see the icon among the target's effects. So use shields on purpose, not on everyone at once.",
		},
	},
	{
		id = "priest-heals",
		de = {
			q = "Welchen Heilzauber nehme ich wann?",
			a = "„Erneuerung“ heilt über Zeit und ist gut für kleine Schäden. „Heilen“ (vorher „Geringes Heilen“) ist effizient, braucht aber Zeit. „Blitzheilung“ ist schnell, kostet aber viel Mana und ist für Notfälle. Wähl den kleinsten Zauber, der reicht.",
		},
		en = {
			q = "Which heal do I use when?",
			a = "Renew heals over time and is good for small damage. Heal (earlier Lesser Heal) is efficient but slow. Flash Heal is fast but expensive and meant for emergencies. Pick the smallest spell that does the job.",
		},
	},
	{
		id = "priest-ranks",
		de = {
			q = "Was bringen niedrige Ränge eines Heilzaubers?",
			a = "Niedrige Ränge heilen weniger, kosten aber auch viel weniger Mana. Wenn nur wenig Gesundheit fehlt, spart ein kleiner Rang viel Mana. Du findest alle Ränge im Zauberbuch und kannst sie einzeln auf die Leiste ziehen.",
		},
		en = {
			q = "What are low ranks of a heal good for?",
			a = "Low ranks heal less but cost far less mana. When only a little health is missing, a low rank saves a lot of mana. All ranks are in your spellbook and can be dragged onto your bar one by one.",
		},
	},
	{
		id = "priest-mana-regen",
		de = {
			q = "Wie regeneriere ich als Priester mehr Mana?",
			a = "Mana regeneriert schneller, wenn du ein paar Sekunden keinen Zauber wirkst; Willenskraft verstärkt das. Lass also zwischen den Zaubern Pausen, schieß mit dem Zauberstab und trink nach den Kämpfen.",
		},
		en = {
			q = "How do I regenerate more mana as a priest?",
			a = "Mana regenerates faster when you have not cast a spell for a few seconds; spirit increases that. So leave gaps between casts, use your wand and drink after fights.",
		},
	},
	{
		id = "priest-buffs",
		de = {
			q = "Welche Buffs hat ein Priester?",
			a = "„Machtwort: Seelenstärke“ erhöht die Ausdauer und gehört auf jedes Gruppenmitglied. „Inneres Feuer“ verstärkt deine Rüstung und deinen Schaden. Beide halten eine Weile; erneuere sie, bevor sie auslaufen.",
		},
		en = {
			q = "Which buffs does a priest have?",
			a = "Power Word: Fortitude increases stamina and belongs on every party member. Inner Fire boosts your armour and damage. Both last a while; renew them before they run out.",
		},
	},
	{
		id = "priest-fear",
		de = {
			q = "Wie werde ich Gegner los, die mich bedrängen?",
			a = "„Psychischer Schrei“ lässt Gegner in der Nähe kurz in Furcht davonlaufen. Pass auf, dass sie nicht weitere Gegner mitbringen. „Verblassen“ senkt deine Bedrohung, sodass Gegner in der Gruppe eher zum Tank zurückgehen.",
		},
		en = {
			q = "How do I get rid of enemies on top of me?",
			a = "Psychic Scream makes nearby enemies flee in fear for a short time. Watch that they do not bring more enemies. Fade lowers your threat, so in a group enemies are more likely to go back to the tank.",
		},
	},
	{
		id = "priest-resurrect",
		de = {
			q = "Wie belebe ich andere Spieler wieder?",
			a = "Mit „Auferstehung“, die du früh beim Lehrer lernst. Sie geht nur außerhalb des Kampfes. Als Heiler in der Gruppe sparst du allen den Weg vom Friedhof.",
		},
		en = {
			q = "How do I resurrect other players?",
			a = "With Resurrection, which you learn early from your trainer. It only works out of combat. As the group's healer you save everyone the run back from the graveyard.",
		},
	},
	{
		id = "priest-dispel",
		de = {
			q = "Wie entferne ich Flüche, Krankheiten und Magie?",
			a = "„Magiebannung“ entfernt schädliche Magie von Freunden und nützliche von Gegnern, „Krankheit heilen“ entfernt Krankheiten. Flüche und Gifte kann ein Priester nicht entfernen, dafür braucht es Magier, Druiden, Schamanen oder Paladine.",
		},
		en = {
			q = "How do I remove curses, diseases and magic?",
			a = "Dispel Magic removes harmful magic from friends and helpful magic from enemies; Cure Disease removes diseases. Priests cannot remove curses or poisons, that takes mages, druids, shamans or paladins.",
		},
	},
	{
		id = "priest-healer-dungeon",
		de = {
			q = "Wie heile ich in meinem ersten Dungeon?",
			a = "Konzentrier dich auf den Tank und heil den Rest nur, wenn nötig. Steh weit genug hinten, damit Gegner zuerst den Tank angreifen, und sag Bescheid, wenn dein Mana knapp wird. Schilde vor dem Kampf auf den Tank sind oft eine gute Idee.",
		},
		en = {
			q = "How do I heal my first dungeon?",
			a = "Focus on the tank and only heal the others when needed. Stand far enough back so enemies attack the tank first, and say when your mana is running low. A shield on the tank before the pull is often a good idea.",
		},
	},
	{
		id = "priest-shadowform",
		de = {
			q = "Was ist Schattengestalt?",
			a = "Ein Talent im Schattenbaum: Du verstärkst deinen Schattenschaden und erleidest weniger Schaden, kannst in der Gestalt aber nicht heilen. Viele Priester leveln als Schatten und heilen in Gruppen per Dualspezialisierung.",
		},
		en = {
			q = "What is Shadowform?",
			a = "A talent in the Shadow tree: it increases your Shadow damage and reduces the damage you take, but you cannot heal while in it. Many priests level as Shadow and heal in groups with dual specialisation.",
		},
	},
	{
		id = "priest-shackle",
		de = {
			q = "Was ist „Untote fesseln“?",
			a = "Damit hältst du einen untoten Gegner eine Weile fest, ohne dass er etwas tun kann. In Dungeons mit Untoten ist das eine wertvolle Kontrollfähigkeit. Schaden löst die Fessel.",
		},
		en = {
			q = "What is Shackle Undead?",
			a = "It holds an undead enemy in place for a while so it cannot act. In dungeons with undead it is a valuable crowd control. Damage breaks it.",
		},
	},
	{
		id = "priest-stats",
		de = {
			q = "Welche Werte sind für Priester wichtig?",
			a = "Intelligenz für mehr Mana, Willenskraft für Regeneration, Ausdauer für Gesundheit. Als Heiler zusätzlich Heilung, als Schatten Zauberschaden. Ein guter Zauberstab ist beim Leveln wichtiger als die Nahkampfwaffe.",
		},
		en = {
			q = "Which stats matter for priests?",
			a = "Intellect for more mana, spirit for regeneration, stamina for health. As a healer also healing power, as Shadow spell damage. A good wand matters more for levelling than your melee weapon.",
		},
	},
	{
		id = "priest-armor",
		de = {
			q = "Welche Rüstung und Waffen nutzen Priester?",
			a = "Stoff. Als Waffen Streitkolben, Dolche und Stäbe sowie einen Zauberstab im Fernkampfplatz. Schneider können dir passende Stoffteile herstellen.",
		},
		en = {
			q = "What armour and weapons do priests use?",
			a = "Cloth. Weapons: maces, daggers and staves, plus a wand in the ranged slot. Tailors can make cloth pieces for you.",
		},
	},
	{
		id = "priest-talents",
		de = {
			q = "Welche Talentbäume haben Priester?",
			a = "Disziplin verbessert Schilde, Mana und Buffs, Heilig stärkt deine Heilung, Schatten macht dich zur Schadensklasse mit Schattengestalt. Zum Leveln ist Schatten am schnellsten, für Gruppen Heilig oder Disziplin.",
		},
		en = {
			q = "Which talent trees do priests have?",
			a = "Discipline improves shields, mana and buffs, Holy strengthens your healing, Shadow turns you into a damage dealer with Shadowform. Shadow is fastest for levelling; Holy or Discipline for groups.",
		},
	},
	{
		id = "priest-mind-control",
		de = {
			q = "Was kann „Gedankenkontrolle“?",
			a = "Du übernimmst kurz die Kontrolle über einen humanoiden Gegner und kannst seine Fähigkeiten nutzen. Währenddessen stehst du still und bist verwundbar. Gut, um einen Gegner aus einer Gruppe herauszuholen oder in PvP Spieler vom Weg zu lenken.",
		},
		en = {
			q = "What can Mind Control do?",
			a = "You briefly take control of a humanoid enemy and can use its abilities. Meanwhile you stand still and are vulnerable. Good for pulling an enemy out of a group, or for moving players in PvP.",
		},
	},
})
