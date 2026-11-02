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
	{
		id = "prof-where-learn",
		de = {
			q = "Wo lerne ich Berufe?",
			a = "Bei Berufslehrern. In den Hauptstädten gibt es Lehrer für jeden Beruf, in kleineren Orten oft für einige. Frag eine Stadtwache nach dem Weg, sie markiert den Lehrer auf deiner Karte. Die erste Stufe eines Berufs kostet nur wenig Gold.",
		},
		en = {
			q = "Where do I learn professions?",
			a = "From profession trainers. The capital cities have a trainer for every profession, smaller towns often for some. Ask a city guard for directions, they mark the trainer on your map. The first rank of a profession costs very little.",
		},
	},
	{
		id = "prof-list",
		de = {
			q = "Welche Berufe gibt es?",
			a = "Sammelberufe: Bergbau, Kräuterkunde und Kürschnerei. Herstellungsberufe: Alchemie, Schmiedekunst, Ingenieurskunst, Lederverarbeitung, Schneiderei und Verzauberkunst. Dazu die Nebenberufe Kochen, Angeln und Erste Hilfe, die jeder zusätzlich lernen kann.",
		},
		en = {
			q = "Which professions are there?",
			a = "Gathering: mining, herbalism and skinning. Crafting: alchemy, blacksmithing, engineering, leatherworking, tailoring and enchanting. Plus the secondary professions cooking, fishing and first aid, which everyone can learn on top.",
		},
	},
	{
		id = "prof-beginner-choice",
		de = {
			q = "Welche Berufe sind für Anfänger gut?",
			a = "Zwei Sammelberufe wie Kräuterkunde und Bergbau bringen beim Leveln das meiste Gold, weil du die Rohstoffe im Auktionshaus verkaufst. Willst du dir lieber selbst etwas herstellen, nimm einen Sammelberuf und den passenden Herstellungsberuf. Du kannst später jederzeit wechseln.",
		},
		en = {
			q = "Which professions are good for beginners?",
			a = "Two gathering professions such as herbalism and mining earn the most gold while levelling, because you sell the materials in the auction house. If you would rather make things yourself, take a gathering profession and the matching crafting one. You can switch later at any time.",
		},
	},
	{
		id = "prof-ranks",
		de = {
			q = "Warum steigt mein Beruf nicht mehr?",
			a = "Jeder Rang hat eine Obergrenze, zum Beispiel 75 für Lehrling. Geh zu deinem Lehrer und lern den nächsten Rang, sobald du die Grenze erreichst. Manche Ränge setzen auch eine bestimmte Charakterstufe voraus; der Lehrer sagt dir, was fehlt.",
		},
		en = {
			q = "Why does my profession skill not go up any more?",
			a = "Every rank has a cap, for example 75 for Apprentice. Visit your trainer and learn the next rank once you reach it. Some ranks also need a certain character level; the trainer tells you what is missing.",
		},
	},
	{
		id = "prof-tools",
		de = {
			q = "Welche Werkzeuge brauche ich?",
			a = "Bergbau braucht eine Spitzhacke, Kürschnerei ein Kürschnermesser, Schmiedekunst einen Schmiedehammer und Angeln eine Angelrute. Verzauberer brauchen eine Verzauberungsrute, Ingenieure später einen Schraubenschlüssel. Werkzeuge gibt es bei Handwerkswarenhändlern, meist direkt neben dem Lehrer.",
		},
		en = {
			q = "Which tools do I need?",
			a = "Mining needs a mining pick, skinning a skinning knife, blacksmithing a blacksmith hammer and fishing a fishing pole. Enchanters need a runed rod, engineers later an arclight spanner. Trade supplies vendors sell them, usually right next to the trainer.",
		},
	},
	{
		id = "prof-recipes",
		de = {
			q = "Wo bekomme ich neue Rezepte?",
			a = "Die meisten lernst du beim Lehrer. Weitere verkaufen Händler in bestimmten Orten, andere findest du als Beute bei Gegnern oder im Auktionshaus. WoW: Forever bringt viele neue Rezepte, frag ruhig, wo ein bestimmtes zu finden ist.",
		},
		en = {
			q = "Where do I get new recipes?",
			a = "Most are taught by your trainer. Others are sold by vendors in certain towns, dropped by enemies or found in the auction house. WoW: Forever adds many new recipes, so feel free to ask where a specific one comes from.",
		},
	},
	{
		id = "prof-recipe-colors",
		de = {
			q = "Was bedeuten die Farben im Berufefenster?",
			a = "Sie zeigen, wie wahrscheinlich ein Fertigkeitspunkt ist: Orange bringt immer einen, Gelb meistens, Grün selten, Grau nie. Stell also möglichst orange und gelbe Rezepte her, wenn du deinen Beruf steigern willst.",
		},
		en = {
			q = "What do the colours in the profession window mean?",
			a = "They show how likely a skill point is: orange always gives one, yellow usually, green rarely, grey never. So craft orange and yellow recipes when you want to raise your skill.",
		},
	},
	{
		id = "prof-node-skill",
		de = {
			q = "Warum kann ich dieses Vorkommen nicht abbauen?",
			a = "Jedes Erzvorkommen, Kraut und jede Tierhaut braucht eine Mindestfertigkeit. Fahr mit der Maus darüber: Steht die Fertigkeit rot im Tooltip, ist deine noch zu niedrig. Sammle erst einfachere Vorkommen, bis du sie erreichst.",
		},
		en = {
			q = "Why can I not gather this node?",
			a = "Every ore vein, herb and hide needs a minimum skill. Hover over it: if the skill in the tooltip is red, yours is still too low. Gather easier nodes until you reach it.",
		},
	},
	{
		id = "prof-smelting",
		de = {
			q = "Wie mache ich aus Erz Barren?",
			a = "Mit Bergbau lernst du „Verhütten“. Stell dich an eine Schmiede, wie es sie in Städten und vielen Dörfern gibt, öffne den Beruf und verhütte dein Erz zu Barren. Barren brauchen Schmiede und Ingenieure, und sie lassen sich oft besser verkaufen.",
		},
		en = {
			q = "How do I turn ore into bars?",
			a = "Mining teaches you Smelting. Stand next to a forge, found in cities and many villages, open the profession and smelt your ore into bars. Blacksmiths and engineers need bars, and they often sell better too.",
		},
	},
	{
		id = "prof-anvil-forge",
		de = {
			q = "Warum kann ich als Schmied nichts herstellen?",
			a = "Die meisten Schmiederezepte brauchen einen Amboss in der Nähe und einen Schmiedehammer in deinen Taschen. Ambosse stehen meist neben Schmieden in Städten und Dörfern. Fehlt etwas, steht es rot im Rezept.",
		},
		en = {
			q = "Why can I not craft anything as a blacksmith?",
			a = "Most blacksmithing recipes need an anvil nearby and a blacksmith hammer in your bags. Anvils usually stand next to forges in cities and villages. Anything missing is shown in red in the recipe.",
		},
	},
	{
		id = "prof-skinning",
		de = {
			q = "Wie funktioniert Kürschnerei?",
			a = "Töte ein Wildtier, plündere es und klick die Leiche danach noch einmal an, um ihr die Haut abzuziehen. Du brauchst ein Kürschnermesser in den Taschen. Leder und Häute verwendet die Lederverarbeitung.",
		},
		en = {
			q = "How does skinning work?",
			a = "Kill a beast, loot it, then click the corpse again to skin it. You need a skinning knife in your bags. Leatherworking uses the leather and hides.",
		},
	},
	{
		id = "prof-enchanting-disenchant",
		de = {
			q = "Woher bekomme ich Verzauberungsmaterial?",
			a = "Verzauberer zerlegen grüne und bessere Gegenstände mit „Entzaubern“ in Staub, Essenzen und Splitter. Alles Grüne, das du nicht brauchst, ist also wertvolles Material. Seelengebundene Gegenstände kannst du ebenfalls entzaubern.",
		},
		en = {
			q = "Where do I get enchanting materials?",
			a = "Enchanters break green and better items into dust, essences and shards with Disenchant. Every green item you do not need is valuable material. You can disenchant soulbound items too.",
		},
	},
	{
		id = "prof-enchant-gear",
		de = {
			q = "Wie verzaubere ich Ausrüstung?",
			a = "Öffne Verzauberkunst, wähl eine Verzauberung und klick dann auf den Gegenstand. Für andere Spieler verzauberst du über das Handelsfenster: Sie legen den Gegenstand in das untere Feld, das nicht gehandelt wird. Eine neue Verzauberung ersetzt die alte.",
		},
		en = {
			q = "How do I enchant gear?",
			a = "Open enchanting, choose an enchantment, then click the item. For other players you enchant through the trade window: they put the item into the bottom slot, which is not traded. A new enchantment replaces the old one.",
		},
	},
	{
		id = "prof-engineering",
		de = {
			q = "Was bringt Ingenieurskunst?",
			a = "Ingenieure bauen Sprengstoffe, Zielfernrohre, Schutzbrillen, Gadgets und Spielzeug. Viele Dinge können nur Ingenieure selbst benutzen. Der Beruf ist teuer, macht aber viel Spaß und hilft auch im PvP.",
		},
		en = {
			q = "What is engineering good for?",
			a = "Engineers build explosives, scopes, goggles, gadgets and toys. Many of these can only be used by engineers. The profession is expensive but a lot of fun, and it helps in PvP too.",
		},
	},
	{
		id = "prof-alchemy",
		de = {
			q = "Was bringt Alchemie?",
			a = "Alchemisten brauen Heil- und Manatränke, Elixiere für mehr Werte und später Fläschchen für Schlachtzüge. Die Kräuter kommen aus der Kräuterkunde. Tränke verkaufen sich immer gut.",
		},
		en = {
			q = "What is alchemy good for?",
			a = "Alchemists brew healing and mana potions, elixirs for more stats and later flasks for raids. The herbs come from herbalism. Potions always sell well.",
		},
	},
	{
		id = "prof-tailoring",
		de = {
			q = "Was bringt Schneiderei?",
			a = "Schneider nähen Stoffrüstung und Taschen. Den Stoff bringen Humanoide als Beute mit, du brauchst also keinen Sammelberuf. Taschen sind bei allen Spielern gefragt.",
		},
		en = {
			q = "What is tailoring good for?",
			a = "Tailors sew cloth armour and bags. Humanoid enemies drop the cloth, so you do not need a gathering profession. Bags are always in demand.",
		},
	},
	{
		id = "prof-first-aid",
		de = {
			q = "Wie funktioniert Erste Hilfe?",
			a = "Erste Hilfe macht aus Stoff Verbände, mit denen du dich oder andere außerhalb und im Kampf heilst. Den Lehrer findest du in den Städten. Nach einem Verband musst du kurz warten, bis du den nächsten benutzen kannst. Für Klassen ohne Heilung sehr nützlich.",
		},
		en = {
			q = "How does first aid work?",
			a = "First aid turns cloth into bandages that heal you or others, in or out of combat. Trainers are in the cities. After a bandage you have to wait a moment before using the next one. Very useful for classes without healing.",
		},
	},
	{
		id = "prof-cooking",
		de = {
			q = "Wofür ist Kochen gut?",
			a = "Gekochtes Essen heilt und gibt oft zusätzlich Werte für eine Weile; in WoW: Forever gibt selbst gekochtes Essen außerdem etwas mehr Erfahrung. Zum Kochen brauchst du ein Feuer in der Nähe, etwa ein Lagerfeuer, das du selbst entzünden kannst. Fleisch bringen viele Tiere mit.",
		},
		en = {
			q = "What is cooking good for?",
			a = "Cooked food heals and often gives extra stats for a while; in WoW: Forever, home-cooked food also gives a little more experience. You need a fire nearby, for example a campfire you light yourself. Many beasts drop meat.",
		},
	},
	{
		id = "prof-fishing",
		de = {
			q = "Wie angle ich?",
			a = "Leg eine Angelrute an, stell dich ans Wasser und benutze „Angeln“. Wenn der Schwimmer plätschert und abtaucht, klick ihn an. In höherstufigen Gebieten brauchst du mehr Fertigkeit, sonst entkommen dir die Fische. Fisch kannst du kochen oder verkaufen.",
		},
		en = {
			q = "How do I fish?",
			a = "Equip a fishing pole, stand by the water and use Fishing. When the bobber splashes and dips, click it. Higher-level zones need more skill, otherwise the fish get away. You can cook or sell your fish.",
		},
	},
	{
		id = "prof-camping",
		de = {
			q = "Was ist Camping?",
			a = "Camping ist neu in WoW: Forever: Du stellst Lagerfeuer und weitere Objekte in der Welt auf, deren Buffs auch andere Spieler in der Nähe bekommen. Erste Objekte gibt es früh, bessere über Baupläne, die Bosse in Dungeons fallen lassen.",
		},
		en = {
			q = "What is camping?",
			a = "Camping is new in WoW: Forever: you place campfires and other objects in the world, and nearby players get their buffs too. The first objects come early, better ones from blueprints that dungeon bosses drop.",
		},
	},
	{
		id = "prof-unlearn",
		de = {
			q = "Wie verlerne ich einen Beruf?",
			a = "Im Berufefenster gibt es eine Möglichkeit zum Verlernen. Dein ganzer Fortschritt und alle Rezepte in diesem Beruf gehen dabei verloren, also überleg es dir gut. Danach kannst du beim Lehrer einen anderen Beruf lernen.",
		},
		en = {
			q = "How do I unlearn a profession?",
			a = "The profession window has an option to unlearn it. All your progress and recipes in that profession are lost, so think it over. Afterwards you can learn another profession at a trainer.",
		},
	},
	{
		id = "prof-crafting-orders",
		de = {
			q = "Wie lasse ich mir etwas herstellen?",
			a = "Frag im Handelskanal oder in deiner Gilde nach einem Handwerker mit dem Rezept. Meist bringst du die Materialien mit und gibst ein Trinkgeld. Den Handel macht ihr über das Handelsfenster: Rechtsklick auf den Spieler und „Handeln“.",
		},
		en = {
			q = "How do I get something crafted for me?",
			a = "Ask in the trade channel or your guild for a crafter with the recipe. Usually you bring the materials and give a tip. Do the exchange through the trade window: right-click the player and choose Trade.",
		},
	},
})
