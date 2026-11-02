local _, ns = ...

-- FAQ: Shaman. See Core/Faq.lua for the format.
ns.Faq.Add("shaman", {
	{
		id = "shaman-totem-items",
		de = {
			q = "Warum kann ich keine Totems aufstellen?",
			a = "Für jedes Element brauchst du ein Totem in deinen Taschen: Erd-, Feuer-, Wasser- und Lufttotem. Du bekommst sie über Klassenquests, wenn du die passende Stufe erreichst; dein Schamanenlehrer schickt dich los. Verlierst du eins, bekommst du beim Lehrer Ersatz.",
		},
		en = {
			q = "Why can I not drop totems?",
			a = "For each element you need a totem item in your bags: Earth, Fire, Water and Air Totem. You get them from class quests when you reach the right level; your shaman trainer sends you off. If you lose one, your trainer can replace it.",
		},
	},
	{
		id = "shaman-totems-how",
		de = {
			q = "Wie funktionieren Totems?",
			a = "Ein Totem steht eine Weile am Boden und wirkt auf dich und deine Gruppe in der Nähe, zum Beispiel mehr Rüstung, Stärke oder Mana-Regeneration. Von jedem Element kann nur ein Totem stehen. Läufst du weg, wirken sie nicht mehr; stell sie neu auf.",
		},
		en = {
			q = "How do totems work?",
			a = "A totem stands on the ground for a while and affects you and your nearby group, for example more armour, strength or mana regeneration. Only one totem per element can be active. If you move away they stop working, so drop them again.",
		},
	},
	{
		id = "shaman-totem-choice",
		de = {
			q = "Welche Totems sind beim Leveln gut?",
			a = "„Totem der Steinhaut“ oder „Totem der Erdstärke“ als Erde, „Totem der Verbrennung“ als Feuer für zusätzlichen Schaden. Totems kosten Mana, für schnelle Kämpfe gegen schwache Gegner lohnen sie sich oft nicht.",
		},
		en = {
			q = "Which totems are good while levelling?",
			a = "Stoneskin Totem or Strength of Earth Totem for earth, Searing Totem for fire for extra damage. Totems cost mana, so they are often not worth it for quick fights against weak enemies.",
		},
	},
	{
		id = "shaman-tremor",
		de = {
			q = "Wie schütze ich meine Gruppe vor Furcht?",
			a = "Mit „Totem des Erdstoßes“: Es befreit Gruppenmitglieder in der Nähe immer wieder von Furcht, Bezauberung und Schlaf. Stell es vor Kämpfen gegen Gegner auf, die Furcht wirken.",
		},
		en = {
			q = "How do I protect my group from fear?",
			a = "With Tremor Totem: it keeps freeing nearby party members from fear, charm and sleep. Drop it before fights against enemies that cast fear.",
		},
	},
	{
		id = "shaman-weapon-imbue",
		de = {
			q = "Was machen „Waffe des Felsbeißers“ und „Waffe der Flammenzunge“?",
			a = "Sie verzaubern deine Waffe eine Weile: Felsbeißer macht deine Schläge stärker und ist am Anfang die beste Wahl, Flammenzunge fügt Feuerschaden hinzu. Später kommen weitere Verzauberungen wie Windzorn dazu. Halte immer eine aktiv.",
		},
		en = {
			q = "What do Rockbiter Weapon and Flametongue Weapon do?",
			a = "They imbue your weapon for a while: Rockbiter strengthens your attacks and is the best choice early on, Flametongue adds fire damage. More imbues like Windfury come later. Always keep one active.",
		},
	},
	{
		id = "shaman-shocks",
		de = {
			q = "Wofür sind die Schocks?",
			a = "Schocks sind sofortige Zauber mit gemeinsamer Abklingzeit: „Erdschock“ unterbricht Zauber, „Flammenschock“ verbrennt über Zeit, „Frostschock“ verlangsamt. Nutz Erdschock gezielt gegen Heiler und Zauberwirker.",
		},
		en = {
			q = "What are the shocks for?",
			a = "Shocks are instant spells that share a cooldown: Earth Shock interrupts casts, Flame Shock burns over time, Frost Shock slows. Use Earth Shock on purpose against healers and casters.",
		},
	},
	{
		id = "shaman-leveling",
		de = {
			q = "Wie kämpfe ich als Schamane beim Leveln?",
			a = "Waffe verzaubern, „Blitzschlagschild“ an, mit „Blitzschlag“ eröffnen und dann mit Waffe und Schocks weiterkämpfen. Totems nur bei längeren Kämpfen. Bei wenig Gesundheit heilst du dich mit „Welle der Heilung“.",
		},
		en = {
			q = "How do I fight as a shaman while levelling?",
			a = "Imbue your weapon, turn on Lightning Shield, open with Lightning Bolt and then keep fighting with your weapon and shocks. Totems only for longer fights. Heal yourself with Healing Wave when your health gets low.",
		},
	},
	{
		id = "shaman-heals",
		de = {
			q = "Wie heile ich als Schamane?",
			a = "„Welle der Heilung“ heilt viel, braucht aber Zeit, „Geringe Welle der Heilung“ ist schneller. Später springt „Kettenheilung“ auf mehrere verletzte Ziele, ideal in Gruppen. „Totem des heilenden Flusses“ heilt die ganze Gruppe nebenbei.",
		},
		en = {
			q = "How do I heal as a shaman?",
			a = "Healing Wave heals a lot but takes time, Lesser Healing Wave is faster. Later, Chain Heal jumps to several injured targets, ideal in groups. Healing Stream Totem heals the whole group on the side.",
		},
	},
	{
		id = "shaman-ghost-wolf",
		de = {
			q = "Wie bekomme ich den Geisterwolf?",
			a = "Über eine Klassenquest um Stufe 20. Als Geisterwolf läufst du schneller, bis du ein Reittier hast; im Kampf ist er aber keine gute Idee. Er hilft auch, um aus einem verlorenen Kampf zu fliehen.",
		},
		en = {
			q = "How do I get Ghost Wolf?",
			a = "From a class quest around level 20. As a Ghost Wolf you run faster until you have a mount; it is not a good idea in combat though. It also helps to escape a lost fight.",
		},
	},
	{
		id = "shaman-reincarnation",
		de = {
			q = "Was ist Reinkarnation?",
			a = "Damit kannst du dich nach dem Tod selbst wiederbeleben, ohne zum Körper zu laufen. Du brauchst ein Ankh in den Taschen, das Händler für Reagenzien verkaufen, und die Fähigkeit hat eine lange Abklingzeit.",
		},
		en = {
			q = "What is Reincarnation?",
			a = "It lets you resurrect yourself after death without running back to your body. You need an Ankh in your bags, sold by reagent vendors, and it has a long cooldown.",
		},
	},
	{
		id = "shaman-astral-recall",
		de = {
			q = "Was ist „Astraler Rückruf“?",
			a = "Ein zweiter Ruhestein: Er bringt dich wie dein Ruhestein zu deinem Gasthaus, hat aber eine eigene Abklingzeit. So kannst du öfter zurückreisen.",
		},
		en = {
			q = "What is Astral Recall?",
			a = "A second hearthstone: it takes you to your inn like your hearthstone but has its own cooldown. That lets you travel back more often.",
		},
	},
	{
		id = "shaman-purge-cure",
		de = {
			q = "Was kann ein Schamane entfernen?",
			a = "„Gift heilen“ und „Krankheit heilen“ entfernen Gifte und Krankheiten bei Freunden. „Reinigen“ entfernt nützliche Magie von Gegnern, etwa Schilde oder Buffs.",
		},
		en = {
			q = "What can a shaman remove?",
			a = "Cure Poison and Cure Disease remove poisons and diseases from friends. Purge removes helpful magic from enemies, such as shields or buffs.",
		},
	},
	{
		id = "shaman-water",
		de = {
			q = "Kann ich unter Wasser atmen oder übers Wasser laufen?",
			a = "Ja, mit „Wasseratmung“ und „Wasserwandeln“, die du im Laufe der Stufen lernst. Beide brauchen ein Reagenz, das Händler verkaufen. Praktisch für Quests unter Wasser oder Abkürzungen über Seen.",
		},
		en = {
			q = "Can I breathe underwater or walk on water?",
			a = "Yes, with Water Breathing and Water Walking, which you learn as you level. Both need a reagent sold by vendors. Handy for underwater quests or shortcuts across lakes.",
		},
	},
	{
		id = "shaman-stats",
		de = {
			q = "Welche Werte sind für Schamanen wichtig?",
			a = "Als Verstärker Stärke, Beweglichkeit und Ausdauer, dazu etwas Intelligenz. Als Elementar Intelligenz und Zauberschaden, als Heiler Intelligenz und Heilung. Beim Leveln mit Waffe ist eine starke, langsame Waffe wichtig.",
		},
		en = {
			q = "Which stats matter for shamans?",
			a = "As Enhancement strength, agility and stamina, plus some intellect. As Elemental intellect and spell damage, as a healer intellect and healing. When levelling with your weapon, a strong, slow weapon matters.",
		},
	},
	{
		id = "shaman-armor",
		de = {
			q = "Welche Rüstung tragen Schamanen?",
			a = "Am Anfang Leder, ab Stufe 40 Kettenrüstung. Schilde kannst du von Anfang an tragen, das hilft beim Leveln viel. Als Waffen Streitkolben, Äxte, Stäbe, Faustwaffen und Dolche.",
		},
		en = {
			q = "What armour do shamans wear?",
			a = "Leather at first, mail from level 40. You can use shields from the start, which helps a lot while levelling. Weapons: maces, axes, staves, fist weapons and daggers.",
		},
	},
	{
		id = "shaman-talents",
		de = {
			q = "Welche Talentbäume haben Schamanen?",
			a = "Elementar stärkt deine Zauber wie Blitzschlag, Verstärkung deinen Nahkampf und ist beim Leveln sehr beliebt, Wiederherstellung deine Heilung. Mit der Dualspezialisierung ab Stufe 40 kannst du zum Beispiel Verstärkung und Wiederherstellung kombinieren.",
		},
		en = {
			q = "Which talent trees do shamans have?",
			a = "Elemental strengthens spells like Lightning Bolt, Enhancement your melee and is very popular for levelling, Restoration your healing. With dual specialisation from level 40 you can, for example, combine Enhancement and Restoration.",
		},
	},
	{
		id = "shaman-mana",
		de = {
			q = "Mir geht als Schamane ständig das Mana aus.",
			a = "Wirk nicht in jedem Kampf alle Totems und Schocks; ein Blitzschlag zum Eröffnen und dann Nahkampf spart viel Mana. „Totem der Manaquelle“ hilft in längeren Kämpfen und Gruppen. Trink zwischen den Kämpfen.",
		},
		en = {
			q = "I keep running out of mana as a shaman.",
			a = "Do not cast every totem and shock in every fight; a Lightning Bolt to open and then melee saves a lot of mana. Mana Spring Totem helps in longer fights and groups. Drink between fights.",
		},
	},
})
