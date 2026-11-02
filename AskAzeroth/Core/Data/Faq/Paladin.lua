local _, ns = ...

-- FAQ: Paladin. See Core/Faq.lua for the format.
ns.Faq.Add("paladin", {
	{
		id = "paladin-seals",
		de = {
			q = "Wie funktionieren Siegel?",
			a = "Ein Siegel liegt eine Weile auf dir und verstärkt deine Nahkampfschläge, zum Beispiel „Siegel der Rechtschaffenheit“ mit zusätzlichem Heiligschaden. Es ist immer nur ein Siegel aktiv. Halte eines aufrecht, solange du kämpfst.",
		},
		en = {
			q = "How do seals work?",
			a = "A seal stays on you for a while and empowers your melee attacks, for example Seal of Righteousness with extra Holy damage. Only one seal is active at a time. Keep one up whenever you fight.",
		},
	},
	{
		id = "paladin-judgement",
		de = {
			q = "Was macht „Richturteil“?",
			a = "„Richturteil“ entlädt dein aktives Siegel auf den Gegner: Es macht Schaden oder legt einen Effekt auf ihn, und das Siegel verschwindet. Danach setzt du ein neues Siegel. Das Wechselspiel aus Siegel und Richturteil ist der Kern deines Kampfes.",
		},
		en = {
			q = "What does Judgement do?",
			a = "Judgement unleashes your active seal on the enemy: it deals damage or puts an effect on it, and the seal is used up. Then you apply a new seal. Alternating seal and Judgement is the core of your fighting.",
		},
	},
	{
		id = "paladin-blessings",
		de = {
			q = "Welchen Segen soll ich benutzen?",
			a = "Für Nahkämpfer „Segen der Macht“ (mehr Angriffskraft), für Heiler und Zauberer „Segen der Weisheit“ (Mana-Regeneration). Segen halten einige Minuten; leg sie auch auf deine Gruppe. Auf jedem Ziel kann von dir nur ein Segen liegen.",
		},
		en = {
			q = "Which blessing should I use?",
			a = "For melee, Blessing of Might (more attack power); for healers and casters, Blessing of Wisdom (mana regeneration). Blessings last a few minutes; put them on your group too. Each target can only have one blessing from you.",
		},
	},
	{
		id = "paladin-auras",
		de = {
			q = "Welche Aura soll ich anhaben?",
			a = "Auren wirken auf dich und deine Gruppe in der Nähe. „Aura der Hingabe“ erhöht die Rüstung und ist beim Leveln die sicherste Wahl, „Aura der Vergeltung“ fügt Angreifern Schaden zu. Es ist immer nur eine Aura von dir aktiv.",
		},
		en = {
			q = "Which aura should I use?",
			a = "Auras affect you and your nearby group. Devotion Aura increases armour and is the safest choice while levelling; Retribution Aura damages attackers. Only one of your auras is active at a time.",
		},
	},
	{
		id = "paladin-healing",
		de = {
			q = "Wie heile ich als Paladin?",
			a = "„Heiliges Licht“ heilt viel, braucht aber Zeit, „Lichtblitz“ heilt weniger, dafür schnell und günstig. In der Gruppe heilst du am besten mit dem kleinsten Zauber, der reicht, damit dein Mana hält.",
		},
		en = {
			q = "How do I heal as a paladin?",
			a = "Holy Light heals a lot but takes time; Flash of Light heals less but fast and cheaply. In a group, use the smallest heal that does the job so your mana lasts.",
		},
	},
	{
		id = "paladin-lay-on-hands",
		de = {
			q = "Was ist „Handauflegung“?",
			a = "Ein Notfallzauber mit langer Abklingzeit: Er heilt ein Ziel vollständig, verbraucht aber dein ganzes Mana. Heb ihn dir für Momente auf, in denen du oder ein Gruppenmitglied sonst sterben würde.",
		},
		en = {
			q = "What is Lay on Hands?",
			a = "An emergency spell with a long cooldown: it fully heals a target but uses all your mana. Save it for moments when you or a party member would otherwise die.",
		},
	},
	{
		id = "paladin-bubble",
		de = {
			q = "Wie rette ich mich als Paladin aus einem verlorenen Kampf?",
			a = "„Göttlicher Schutz“ und später „Gottesschild“ machen dich kurz unverwundbar. Heil dich in der Zeit oder lauf weg. Danach kannst du eine Weile keine solche Schutzfähigkeit mehr benutzen.",
		},
		en = {
			q = "How do I save myself from a lost fight as a paladin?",
			a = "Divine Protection and later Divine Shield make you briefly invulnerable. Heal yourself during that time or run away. Afterwards you cannot use such a protection again for a while.",
		},
	},
	{
		id = "paladin-stun",
		de = {
			q = "Wie unterbreche ich Gegner?",
			a = "„Hammer der Gerechtigkeit“ betäubt einen Gegner für ein paar Sekunden. Nutz das, um einen gefährlichen Zauber zu verhindern, einen fliehenden Gegner aufzuhalten oder dir Zeit für eine Heilung zu verschaffen.",
		},
		en = {
			q = "How do I stop enemies?",
			a = "Hammer of Justice stuns an enemy for a few seconds. Use it to stop a dangerous spell, hold a fleeing enemy or buy time for a heal.",
		},
	},
	{
		id = "paladin-resurrect",
		de = {
			q = "Wie belebe ich andere Spieler wieder?",
			a = "Mit „Erlösung“, die du über eine Klassenquest bei deinem Lehrer bekommst, sobald du die Stufe erreichst. Sie geht nur außerhalb des Kampfes und kostet viel Mana. In Gruppen ist das eine große Hilfe.",
		},
		en = {
			q = "How do I resurrect other players?",
			a = "With Redemption, which you get from a class quest at your trainer once you reach the level. It only works out of combat and costs a lot of mana. A big help in groups.",
		},
	},
	{
		id = "paladin-cleanse",
		de = {
			q = "Kann ich Gifte und Krankheiten entfernen?",
			a = "Ja: „Läutern“ entfernt Gifte und Krankheiten, das spätere „Reinigung des Glaubens“ zusätzlich Magie. Schau auf die Symbole am Gruppenfenster und entferne gefährliche Effekte, besonders in Dungeons.",
		},
		en = {
			q = "Can I remove poisons and diseases?",
			a = "Yes: Purify removes poisons and diseases, the later Cleanse also removes magic. Watch the icons on the party frames and remove dangerous effects, especially in dungeons.",
		},
	},
	{
		id = "paladin-mana",
		de = {
			q = "Mir geht als Paladin ständig das Mana aus.",
			a = "Spar Mana, indem du nicht für jeden Kampf neue Segen und Siegel verteilst, wenn die alten noch halten. Kämpf mit Waffe, statt viel zu heilen, und trink zwischen den Kämpfen. Intelligenz und Willenskraft auf der Ausrüstung helfen.",
		},
		en = {
			q = "I keep running out of mana as a paladin.",
			a = "Save mana by not renewing blessings and seals for every fight while the old ones still last. Fight with your weapon instead of healing a lot, and drink between fights. Intellect and spirit on your gear help.",
		},
	},
	{
		id = "paladin-tanking",
		de = {
			q = "Kann ein Paladin tanken?",
			a = "Ja, mit Schild und dem Schutz-Talentbaum. „Zorn der Gerechtigkeit“ erhöht deine Bedrohung durch Heiligzauber, „Weihe“ trifft alle Gegner um dich. Gerade gegen mehrere Gegner ist ein Paladin ein guter Tank.",
		},
		en = {
			q = "Can a paladin tank?",
			a = "Yes, with a shield and the Protection talent tree. Righteous Fury increases the threat of your Holy spells, Consecration hits all enemies around you. Paladins are good tanks especially against several enemies.",
		},
	},
	{
		id = "paladin-undead",
		de = {
			q = "Gegen welche Gegner sind Paladine stark?",
			a = "Gegen Untote und Dämonen: „Exorzismus“ und einige Talente machen gegen sie viel mehr Schaden. In Gebieten und Dungeons voller Untoter bist du deshalb besonders nützlich.",
		},
		en = {
			q = "Which enemies are paladins strong against?",
			a = "Undead and demons: Exorcism and some talents deal much more damage to them. That makes you especially useful in zones and dungeons full of undead.",
		},
	},
	{
		id = "paladin-stats",
		de = {
			q = "Welche Werte sind für Paladine wichtig?",
			a = "Zum Leveln Stärke und Ausdauer, dazu etwas Intelligenz für Mana. Als Heiler Intelligenz und Heilung, als Tank Ausdauer, Rüstung und Verteidigung. Eine starke Zweihandwaffe macht das Leveln deutlich schneller.",
		},
		en = {
			q = "Which stats matter for paladins?",
			a = "For levelling strength and stamina, plus some intellect for mana. As a healer intellect and healing, as a tank stamina, armour and defence. A strong two-handed weapon makes levelling much faster.",
		},
	},
	{
		id = "paladin-armor",
		de = {
			q = "Welche Rüstung tragen Paladine?",
			a = "Am Anfang Kettenrüstung, ab Stufe 40 Platte. Schilde kannst du von Anfang an tragen. Als Heiler darfst du auch leichtere Rüstung mit Intelligenz nehmen, wenn sie bessere Werte hat.",
		},
		en = {
			q = "What armour do paladins wear?",
			a = "Mail at first, plate from level 40. You can use shields from the start. As a healer you can also wear lighter armour with intellect if its stats are better.",
		},
	},
	{
		id = "paladin-talents",
		de = {
			q = "Welche Talentbäume haben Paladine?",
			a = "Heilig für Heilung, Schutz zum Tanken und Vergeltung für Schaden mit Zweihandwaffen. Zum Leveln ist Vergeltung am schnellsten. Ab Stufe 40 kannst du per Dualspezialisierung zum Beispiel Heilig für Gruppen dazunehmen.",
		},
		en = {
			q = "Which talent trees do paladins have?",
			a = "Holy for healing, Protection for tanking and Retribution for damage with two-handed weapons. Retribution is fastest for levelling. From level 40, dual specialisation lets you add, for example, Holy for groups.",
		},
	},
	{
		id = "paladin-rotation",
		de = {
			q = "Wie kämpfe ich als Paladin beim Leveln?",
			a = "Aura an, Segen der Macht auf dich, Siegel setzen, angreifen. Im Kampf „Richturteil“ benutzen und gleich ein neues Siegel setzen. Bei wenig Gesundheit heilst du dich mit Lichtblitz oder Heiligem Licht und kämpfst weiter.",
		},
		en = {
			q = "How do I fight as a paladin while levelling?",
			a = "Aura on, Blessing of Might on yourself, apply a seal, attack. In the fight, use Judgement and re-apply a seal right away. When your health is low, heal yourself with Flash of Light or Holy Light and keep fighting.",
		},
	},
})
