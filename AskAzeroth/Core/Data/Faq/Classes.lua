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
	{
		id = "class-easy-beginner",
		de = {
			q = "Welche Klasse ist für Anfänger am einfachsten?",
			a = "Jäger und Hexenmeister leveln allein sehr entspannt, weil ihr Begleiter Gegner beschäftigt. Paladine sind dank Heilung und schwerer Rüstung schwer zu besiegen. Krieger und Schurken brauchen mehr Übung, belohnen sie aber mit viel Spielspaß.",
		},
		en = {
			q = "Which class is easiest for beginners?",
			a = "Hunters and warlocks level alone very comfortably because their pet keeps enemies busy. Paladins are hard to kill thanks to healing and heavy armour. Warriors and rogues take more practice but reward it with a lot of fun.",
		},
	},
	{
		id = "class-resources",
		de = {
			q = "Was sind Mana, Wut und Energie?",
			a = "Die Ressource für deine Fähigkeiten. Mana haben Zauberklassen und Hybride; es regeneriert langsam und mit Trinken. Wut haben Krieger (und Druiden als Bär), sie entsteht im Kampf. Energie haben Schurken (und Druiden als Katze), sie füllt sich schnell von selbst.",
		},
		en = {
			q = "What are mana, rage and energy?",
			a = "The resource for your abilities. Casters and hybrids use mana, which regenerates slowly and with drinking. Warriors (and druids in Bear Form) use rage, built in combat. Rogues (and druids in Cat Form) use energy, which refills quickly on its own.",
		},
	},
	{
		id = "class-spell-cost",
		de = {
			q = "Warum kostet das Lernen von Zaubern Gold?",
			a = "Jeder neue Zauber und Rang kostet beim Lehrer etwas Gold, später mehr. Plane etwas Gold dafür ein und kauf zuerst die Fähigkeiten, die du am meisten nutzt.",
		},
		en = {
			q = "Why does learning spells cost gold?",
			a = "Every new spell and rank costs some gold at the trainer, more later on. Budget some gold for it and buy the abilities you use most first.",
		},
	},
	{
		id = "class-talent-reset",
		de = {
			q = "Wie setze ich meine Talente zurück?",
			a = "Dein Klassenlehrer setzt deine Talente gegen Gebühr zurück; jedes weitere Mal wird es teurer, mit der Zeit sinkt der Preis wieder. Danach verteilst du alle Punkte neu.",
		},
		en = {
			q = "How do I reset my talents?",
			a = "Your class trainer resets your talents for a fee; it gets more expensive each time and slowly drops again over time. Then you spend all points again.",
		},
	},
	{
		id = "class-dual-spec",
		de = {
			q = "Wie funktioniert die Dualspezialisierung?",
			a = "Ab Stufe 40 kannst du eine zweite Talentverteilung freischalten und zwischen beiden wechseln, etwa eine zum Leveln und eine für Gruppen. Gewechselt wird außerhalb des Kampfes über das Talentfenster. So musst du die Talente nicht ständig zurücksetzen.",
		},
		en = {
			q = "How does dual specialisation work?",
			a = "From level 40 you can unlock a second talent setup and switch between both, for example one for levelling and one for groups. You switch out of combat from the talent window. That way you do not have to reset your talents all the time.",
		},
	},
	{
		id = "class-weapon-skills",
		de = {
			q = "Warum verfehle ich mit meiner neuen Waffe so oft?",
			a = "Jede Waffenart hat eine eigene Fertigkeit, die mit dem Benutzen steigt. Mit einer neuen Waffenart verfehlst du anfangs öfter. Kämpf eine Weile damit, dann steigt die Fertigkeit; im Charakterfenster siehst du den Stand.",
		},
		en = {
			q = "Why do I miss so often with my new weapon?",
			a = "Every weapon type has its own skill that rises with use. With a new weapon type you miss more often at first. Fight with it for a while and the skill goes up; the character window shows where you are.",
		},
	},
	{
		id = "class-weapon-master",
		de = {
			q = "Wie lerne ich eine neue Waffenart?",
			a = "Bei Waffenmeistern in den Hauptstädten, gegen etwas Gold. Jeder Waffenmeister lehrt nur bestimmte Waffen, und nicht jede Klasse kann jede Waffe lernen. Frag eine Stadtwache nach dem Weg.",
		},
		en = {
			q = "How do I learn a new weapon type?",
			a = "From weapon masters in the capital cities, for some gold. Each weapon master only teaches certain weapons, and not every class can learn every weapon. Ask a city guard for directions.",
		},
	},
	{
		id = "class-racials",
		de = {
			q = "Was sind Volksfähigkeiten?",
			a = "Jedes Volk hat eigene Fähigkeiten, in WoW: Forever zwei aktive und zwei passive. Du findest sie im Zauberbuch. Leg die aktiven auf deine Leiste, sie helfen oft genau im richtigen Moment.",
		},
		en = {
			q = "What are racial abilities?",
			a = "Every race has its own abilities, in WoW: Forever two active and two passive ones. You find them in your spellbook. Put the active ones on your bar; they often help at just the right moment.",
		},
	},
	{
		id = "class-hybrid",
		de = {
			q = "Was ist eine Hybridklasse?",
			a = "Eine Klasse, die mehrere Rollen übernehmen kann, etwa Paladin, Schamane oder Druide: Schaden, Heilung und teils Tanken. Sie sind vielseitig, glänzen aber meist erst mit den passenden Talenten in einer Rolle.",
		},
		en = {
			q = "What is a hybrid class?",
			a = "A class that can fill several roles, such as paladin, shaman or druid: damage, healing and sometimes tanking. They are versatile but usually shine in one role with the matching talents.",
		},
	},
	{
		id = "class-buffs-others",
		de = {
			q = "Darf ich andere Spieler buffen?",
			a = "Ja, gern: Buffs wie Seelenstärke, Arkane Intelligenz oder Mal der Wildnis auf Fremde zu legen, ist eine nette Geste und üblich. Frag in Gruppen, wer welchen Buff verteilt.",
		},
		en = {
			q = "Can I buff other players?",
			a = "Yes, please: putting buffs like Fortitude, Arcane Intellect or Mark of the Wild on strangers is a kind and common gesture. In groups, ask who hands out which buff.",
		},
	},
	{
		id = "class-spec-for-dungeons",
		de = {
			q = "Brauche ich für Dungeons andere Talente?",
			a = "Für Schaden meist nicht. Willst du tanken oder heilen, helfen die passenden Talente sehr. Mit der Dualspezialisierung ab Stufe 40 hast du beides; davor kommst du mit deiner Leveling-Verteilung in den meisten Dungeons gut zurecht.",
		},
		en = {
			q = "Do I need different talents for dungeons?",
			a = "For damage usually not. If you want to tank or heal, the matching talents help a lot. With dual specialisation from level 40 you have both; before that your levelling setup works well for most dungeons.",
		},
	},
})
