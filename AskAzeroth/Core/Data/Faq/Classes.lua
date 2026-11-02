local _, ns = ...

-- FAQ: Classes in general and talents. See Core/Faq.lua for the format.
ns.Faq.Add("class", {
	{
		id = "class-trainer",
		de = {
			q = "Wo lerne ich neue Zauber und Fähigkeiten?",
			a = "Beim Klassenlehrer. Lehrer gibt es in den Startgebieten und in den Städten, alle paar Stufen haben sie neue Ränge und Zauber für dich. Jede Stadtwache zeigt dir auf Nachfrage den Weg.",
		},
		en = {
			q = "Where do I learn new spells and abilities?",
			a = "At your class trainer. Trainers are in the starting zones and in the cities, and every few levels they have new ranks and spells for you. Any city guard shows you the way if you ask.",
		},
	},
	{
		id = "class-talents",
		de = {
			q = "Was sind Talente?",
			a = "Mit Talentpunkten spezialisierst du deine Klasse. Den ersten Punkt bekommst du auf Stufe 10, danach einen pro Stufe. Das Talentfenster öffnest du über die Menüleiste oder mit der Taste N. Ab Stufe 40 kannst du eine zweite Talentverteilung (Dualspezialisierung) freischalten und zwischen beiden wechseln.",
		},
		en = {
			q = "What are talents?",
			a = "Talent points let you specialise your class. You get your first point at level 10 and one more each level after that. Open the talent window from the menu bar or with the N key. From level 40 you can unlock a second talent setup (dual specialisation) and switch between them.",
		},
	},
	{
		id = "class-roles",
		de = {
			q = "Tank, Heiler oder Schaden: Was heißt das?",
			a = "Das sind die Rollen in einer Gruppe. Der Tank beschäftigt die Gegner und steckt die Treffer ein, der Heiler hält alle am Leben, und die Schadensklassen besiegen die Gegner. Krieger, Paladine und Druiden können tanken; Priester, Paladine, Schamanen und Druiden können heilen; Schaden machen alle Klassen.",
		},
		en = {
			q = "Tank, healer or damage: what does that mean?",
			a = "These are the roles in a group. The tank keeps the enemies busy and takes the hits, the healer keeps everyone alive and the damage dealers defeat the enemies. Warriors, paladins and druids can tank; priests, paladins, shamans and druids can heal; every class can deal damage.",
		},
	},
	{
		id = "class-stats",
		de = {
			q = "Welche Werte sind für mich wichtig?",
			a = "Stärke hilft Kriegern und Paladinen, Beweglichkeit Schurken und Jägern, Intelligenz gibt Zauberklassen Mana und Zaubermacht, Ausdauer gibt allen Gesundheit. Willenskraft beschleunigt die Regeneration von Gesundheit und Mana. Vergleich die Tooltips zweier Gegenstände, bevor du dich entscheidest.",
		},
		en = {
			q = "Which stats matter for me?",
			a = "Strength helps warriors and paladins, agility rogues and hunters, intellect gives casters mana and spell power, stamina gives everyone health. Spirit speeds up health and mana regeneration. Compare the tooltips of two items before you decide.",
		},
	},
	{
		id = "class-equip",
		de = {
			q = "Warum kann ich einen Gegenstand nicht anlegen?",
			a = "Roter Text im Tooltip zeigt, was fehlt: die nötige Stufe, die Rüstungsart (Stoff, Leder, Schwere Rüstung, Platte) oder die Waffenart. Manche Waffenarten kannst du bei einem Waffenmeister in den großen Städten lernen.",
		},
		en = {
			q = "Why can I not equip an item?",
			a = "Red text in the tooltip shows what is missing: the required level, the armour type (cloth, leather, mail, plate) or the weapon type. Some weapon types can be learned at a weapon master in the big cities.",
		},
	},
	{
		id = "class-action-bar",
		de = {
			q = "Wie lege ich Zauber auf die Aktionsleiste?",
			a = "Öffne das Zauberbuch (Taste P) und zieh einen Zauber auf einen freien Platz deiner Aktionsleiste. Mit den Zahlentasten 1 bis 0 wirkst du dann die Zauber der ersten Leiste. Neue Ränge eines Zaubers ersetzen den alten auf der Leiste meist von selbst.",
		},
		en = {
			q = "How do I put spells on my action bar?",
			a = "Open the spellbook (P key) and drag a spell onto a free slot of your action bar. The number keys 1 to 0 then cast the spells in the first bar. New ranks of a spell usually replace the old one on the bar on their own.",
		},
	},
})
