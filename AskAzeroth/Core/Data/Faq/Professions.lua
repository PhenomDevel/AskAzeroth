local _, ns = ...

-- FAQ: Professions. See Core/Faq.lua for the format.
ns.Faq.Add("prof", {
	{
		id = "prof-learn",
		de = {
			q = "Wie lerne ich einen Beruf?",
			a = "Berufslehrer in Städten und Dörfern bringen ihn dir bei. Du kannst zwei Hauptberufe lernen, zum Beispiel Bergbau und Schmiedekunst oder Kräuterkunde und Alchemie. Kochen, Angeln und Erste Hilfe gehen zusätzlich.",
		},
		en = {
			q = "How do I learn a profession?",
			a = "Profession trainers in cities and towns teach you. You can learn two primary professions, for example mining and blacksmithing or herbalism and alchemy. Cooking, fishing and first aid come on top.",
		},
	},
	{
		id = "prof-pairs",
		de = {
			q = "Welche Berufe passen zusammen?",
			a = "Ein Sammelberuf versorgt einen Herstellungsberuf: Bergbau für Schmiedekunst oder Ingenieurskunst, Kräuterkunde für Alchemie, Kürschnerei für Lederverarbeitung. Schneiderei nutzt Stoff von Gegnern und passt gut zu Verzauberkunst. Zwei Sammelberufe bringen das meiste Gold.",
		},
		en = {
			q = "Which professions go well together?",
			a = "A gathering profession supplies a crafting one: mining for blacksmithing or engineering, herbalism for alchemy, skinning for leatherworking. Tailoring uses cloth from enemies and pairs well with enchanting. Two gathering professions earn the most gold.",
		},
	},
	{
		id = "prof-skill-up",
		de = {
			q = "Wie steigere ich meine Berufsfertigkeit?",
			a = "Die Farbe eines Rezepts zeigt, wie wahrscheinlich ein Fertigkeitspunkt ist: Orange immer, Gelb oft, Grün selten, Grau nie. Ab bestimmten Fertigkeitswerten bringt dir dein Lehrer den nächsten Rang bei, der das Maximum anhebt. Selbst gekochtes Essen gibt in WoW: Forever sogar einen kleinen Erfahrungsbonus.",
		},
		en = {
			q = "How do I raise my profession skill?",
			a = "Recipe colours show how likely a skill point is: orange always, yellow often, green rarely, grey never. At certain skill levels your trainer teaches the next rank, which raises the maximum skill. Crafted food in WoW: Forever even gives a small experience bonus.",
		},
	},
	{
		id = "prof-gathering-tracking",
		de = {
			q = "Wie finde ich Kräuter und Erze?",
			a = "Kräuterkunde und Bergbau bringen eine Suchfähigkeit mit, die Kräuter oder Erzvorkommen auf deiner Minikarte zeigt. Du schaltest sie über den Verfolgungsknopf an der Minikarte ein. Jedes Gebiet hat Vorkommen für einen bestimmten Fertigkeitsbereich.",
		},
		en = {
			q = "How do I find herbs and ore?",
			a = "Herbalism and mining come with a tracking ability that shows herbs or ore deposits on your minimap. Turn it on from the tracking button at the minimap. Each zone has deposits for a certain skill range.",
		},
	},
})
