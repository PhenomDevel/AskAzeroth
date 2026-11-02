local _, ns = ...

-- FAQ: Travel. See Core/Faq.lua for the format.
ns.Faq.Add("travel", {
	{
		id = "travel-faster",
		de = {
			q = "Wie reise ich schneller?",
			a = "Dein Ruhestein bringt dich zum gewählten Gasthaus zurück; beim Gastwirt legst du es fest. Flugmeister fliegen dich zu Orten, deren Flugpunkt du schon entdeckt hast, also sprich jeden Flugmeister an, an dem du vorbeikommst.",
		},
		en = {
			q = "How do I travel faster?",
			a = "Your hearthstone takes you back to your chosen inn; set it at the innkeeper. Flight masters fly you to places whose flight point you have already discovered, so talk to every flight master you pass.",
		},
	},
	{
		id = "travel-mount",
		de = {
			q = "Wann bekomme ich ein Reittier?",
			a = "Ab einer bestimmten Stufe bringt dir der Reitlehrer deines Volkes das Reiten bei, und in WoW: Forever bekommst du mit der Fertigkeit gleich ein Reittier dazu. Leg beim Leveln etwas Gold dafür zur Seite. Fliegen gibt es in WoW: Forever nicht.",
		},
		en = {
			q = "When do I get a mount?",
			a = "From a certain level the riding trainer of your race teaches you riding, and in WoW: Forever you get a mount together with the skill. Save some gold for it while levelling. There is no flying in WoW: Forever.",
		},
	},
	{
		id = "travel-continents",
		de = {
			q = "Wie komme ich auf einen anderen Kontinent?",
			a = "Die Allianz reist mit dem Schiff, zum Beispiel ab dem Hafen von Menethil, die Horde mit dem Zeppelin, zum Beispiel ab Orgrimmar oder Unterstadt. Die Tiefenbahn verbindet Sturmwind und Eisenschmiede. Wenn du die nächste Station nicht kennst, frag hier.",
		},
		en = {
			q = "How do I get to another continent?",
			a = "The Alliance travels by ship, for example from Menethil Harbor, the Horde by zeppelin, for example from Orgrimmar or the Undercity. The Deeprun Tram connects Stormwind and Ironforge. Ask here if you do not know the next stop.",
		},
	},
	{
		id = "travel-cities",
		de = {
			q = "Wie finde ich mich in einer Stadt zurecht?",
			a = "Sprich eine Stadtwache an und frag nach dem Weg: Sie markiert Lehrer, Bank, Auktionshaus, Gasthaus und mehr auf deiner Karte. Die Weltkarte (Taste M) zeigt, wo du bist.",
		},
		en = {
			q = "How do I find my way around a city?",
			a = "Talk to a city guard and ask for directions: they mark trainers, the bank, the auction house, the inn and more on your map. The world map (M key) shows where you are.",
		},
	},
	{
		id = "travel-flight-points",
		de = {
			q = "Wie schalte ich neue Flugrouten frei?",
			a = "Sprich jeden Flugmeister an, an dem du vorbeikommst: Dann ist sein Flugpunkt entdeckt. Fliegen kannst du nur zwischen Punkten, die du schon entdeckt hast. Jeder Flug kostet etwas Gold, je nach Entfernung.",
		},
		en = {
			q = "How do I unlock new flight paths?",
			a = "Talk to every flight master you pass: that discovers their flight point. You can only fly between points you have discovered. Each flight costs some gold depending on the distance.",
		},
	},
	{
		id = "travel-hearth-cooldown",
		de = {
			q = "Warum kann ich meinen Ruhestein nicht benutzen?",
			a = "Der Ruhestein hat eine Abklingzeit; fahr mit der Maus darüber, um die Restzeit zu sehen. Außerdem geht er nicht im Kampf und wird unterbrochen, wenn du dich bewegst. Wirf ihn nicht weg.",
		},
		en = {
			q = "Why can I not use my hearthstone?",
			a = "The hearthstone has a cooldown; hover over it to see the time left. It also does not work in combat and is interrupted if you move. Do not throw it away.",
		},
	},
	{
		id = "travel-lost-hearthstone",
		de = {
			q = "Ich habe meinen Ruhestein verloren.",
			a = "Sprich einen Gastwirt an: Er gibt dir einen neuen, wenn du keinen mehr hast.",
		},
		en = {
			q = "I lost my hearthstone.",
			a = "Talk to an innkeeper: they give you a new one if you do not have one any more.",
		},
	},
	{
		id = "travel-boats",
		de = {
			q = "Wie benutze ich Schiffe und Zeppeline?",
			a = "Geh auf den Steg oder Turm und warte, bis das Schiff oder der Zeppelin anlegt, dann lauf an Bord. Bleib während der Fahrt drauf, bis er am Ziel angelegt hat. Achte auf das richtige Ziel; an manchen Orten fahren mehrere Verbindungen ab.",
		},
		en = {
			q = "How do I use boats and zeppelins?",
			a = "Go to the dock or tower and wait until the boat or zeppelin arrives, then walk on board. Stay on until it has docked at the destination. Check the destination; some places have several connections.",
		},
	},
	{
		id = "travel-mount-indoors",
		de = {
			q = "Warum kann ich hier nicht aufsitzen?",
			a = "In Gebäuden, Höhlen und Dungeons kannst du meist nicht reiten, und im Kampf auch nicht. Geh nach draußen oder warte, bis der Kampf vorbei ist.",
		},
		en = {
			q = "Why can I not mount here?",
			a = "You usually cannot ride inside buildings, caves and dungeons, and not in combat either. Go outside or wait until the fight is over.",
		},
	},
	{
		id = "travel-zone-levels",
		de = {
			q = "Welche Gebiete passen zu meiner Stufe?",
			a = "Fahr auf der Weltkarte mit der Maus über ein Gebiet: Dann siehst du seinen Stufenbereich. Gebiete deutlich über deiner Stufe sind gefährlich, weit darunter bringen sie kaum Erfahrung. Frag hier ruhig nach dem nächsten Gebiet für deine Fraktion.",
		},
		en = {
			q = "Which zones fit my level?",
			a = "Hover over a zone on the world map to see its level range. Zones far above your level are dangerous, far below give little experience. Feel free to ask here for the next zone for your faction.",
		},
	},
	{
		id = "travel-new-zones",
		de = {
			q = "Welche neuen Gebiete gibt es in WoW: Forever?",
			a = "Zum Start kommen unter anderem Zephras Isle, die Riverglades, Shen'dralar und der Berg Hyjal dazu, dazu über tausend neue Quests. Wo sie liegen und für welche Stufen sie sind, zeigt dir die Weltkarte; frag hier, wenn du den Weg suchst.",
		},
		en = {
			q = "Which new zones does WoW: Forever have?",
			a = "At launch, among others, Zephras Isle, the Riverglades, Shen'dralar and Mount Hyjal join, plus over a thousand new quests. The world map shows where they are and for which levels; ask here if you need directions.",
		},
	},
	{
		id = "travel-stuck",
		de = {
			q = "Mein Charakter steckt fest. Was tun?",
			a = "Benutz deinen Ruhestein. Ist er gerade nicht bereit, findest du im Hilfemenü des Spiels eine Option für festsitzende Charaktere. Im Notfall hilft auch, absichtlich zu sterben und am Friedhof wiederbelebt zu werden.",
		},
		en = {
			q = "My character is stuck. What do I do?",
			a = "Use your hearthstone. If it is on cooldown, the game's help menu has an option for stuck characters. In an emergency, dying on purpose and resurrecting at the graveyard also works.",
		},
	},
	{
		id = "travel-portals-mages",
		de = {
			q = "Kann ich mich von einem Magier teleportieren lassen?",
			a = "Ja, Magier ab Stufe 40 öffnen Portale in die Hauptstädte ihrer Fraktion. In großen Städten bieten viele das gegen ein kleines Trinkgeld an; frag im Chat.",
		},
		en = {
			q = "Can a mage teleport me?",
			a = "Yes, mages from level 40 open portals to their faction's capital cities. In big cities many offer this for a small tip; ask in chat.",
		},
	},
	{
		id = "travel-graveyards",
		de = {
			q = "Warum lande ich nach dem Tod so weit weg?",
			a = "Als Geist erscheinst du auf dem nächsten Friedhof. In manchen Gebieten liegt der weit weg. Merk dir, wo die Friedhöfe in deinem Gebiet sind, und kämpf nicht an Stellen, von denen der Rückweg sehr lang ist.",
		},
		en = {
			q = "Why do I end up so far away after dying?",
			a = "As a ghost you appear at the nearest graveyard. In some zones that is far away. Remember where the graveyards in your zone are, and avoid fighting where the way back is very long.",
		},
	},
})
