local _, ns = ...

-- Built-in FAQ, English (PLAN.md, section 3). cat is a category key from
-- Categories.lua. Plain text only: no "|" escape sequences.
ns.FAQ = ns.FAQ or {}

ns.FAQ.en = {
	{
		cat = "misc",
		q = "How do I ask a question with AskAzeroth?",
		a = "Open the window with /aa or the minimap button, click \"Ask a question\" on the Questions page, pick a category and write a short summary. Experienced players who use the addon see your question and answer in its thread. You get a notification for every answer.",
	},
	{
		cat = "misc",
		q = "Why did my question disappear?",
		a = "Questions only stay in the public list for a while: 2 hours without answers, 45 minutes after the last answer, 10 minutes after you mark it as solved. Your own questions and all their answers stay under \"My questions\".",
	},
	{
		cat = "misc",
		q = "How do I keep a helpful answer?",
		a = "Click the note icon next to an answer to pin it. Pinned answers are saved on your computer together with their question and never expire. You find them on the Pinned page.",
	},
	{
		cat = "misc",
		q = "What is mentor mode?",
		a = "Players who like to help turn on mentor mode in the settings. They are notified about new questions and can choose the categories and classes they want to hear about.",
	},
	{
		cat = "class",
		q = "Where do I learn new spells and abilities?",
		a = "Visit your class trainer. Trainers are in the starting areas and in the cities, and they have new ranks and spells for you every few levels. A guard can show you the way: ask any city guard for directions.",
	},
	{
		cat = "class",
		q = "What are talents?",
		a = "Talent points let you specialize your class. You get your first one at level 10 and one more with each level after that. Open the talent window from the menu bar or with the key N. Trainers can reset your talents for a fee.",
	},
	{
		cat = "quest",
		q = "What do the symbols above the characters mean?",
		a = "A yellow exclamation mark means a quest to accept, a yellow question mark a quest to hand in. A grey exclamation mark means the quest is still too high for you, a grey question mark a quest you have accepted but not finished yet.",
	},
	{
		cat = "quest",
		q = "I can't find a quest objective. What can I do?",
		a = "Read the quest text in the quest log (key L) again: it usually names a direction or a place. Look at the world map (key M) and the zone names. If you are still stuck, ask here and name the quest and the zone.",
	},
	{
		cat = "misc",
		q = "What is rested experience?",
		a = "While you are logged out or resting in an inn or a city, your character builds up rested experience. Killing monsters then gives extra experience until the bonus is used up. Your experience bar turns blue while you have it.",
	},
	{
		cat = "misc",
		q = "What happens when I die?",
		a = "Release your spirit and run back to your body as a ghost to come back to life. Alternatively, a spirit healer at the graveyard can bring you back right away, but your equipment loses durability and you are weakened for a while.",
	},
	{
		cat = "misc",
		q = "How do I repair my equipment?",
		a = "Equipment wears out when you fight and die. Many vendors, mostly armor and weapon smiths, can repair it: talk to them and use the anvil button in the vendor window.",
	},
	{
		cat = "misc",
		q = "How do I travel faster?",
		a = "Your hearthstone takes you back to the inn you chose; talk to an innkeeper to set it. Flight masters fly you between places whose flight point you have already discovered, so talk to every flight master you pass.",
	},
	{
		cat = "prof",
		q = "How do I learn a profession?",
		a = "Profession trainers in the cities and villages teach you. You can learn two main professions, for example mining and blacksmithing, or herbalism and alchemy. Cooking, fishing and first aid can be learned in addition.",
	},
	{
		cat = "prof",
		q = "How do I get more bag space?",
		a = "Buy bags from vendors (often the general goods or trade goods vendor), from tailors or at the auction house in the big cities. Each bag goes into one of the bag slots next to your backpack.",
	},
	{
		cat = "dungeon",
		q = "How do I find a group for a dungeon?",
		a = "Ask in the LookingForGroup or General chat channels, or in your guild. Tell others which dungeon you want to do and which role you play (tank, healer or damage). Talk about loot rules before you start.",
	},
	{
		cat = "ui",
		q = "Which keys open the most important windows?",
		a = "By default: M world map, L quest log, P spellbook, N talents, C character, B bags, O social and guild. You can change them in the game menu under Key Bindings.",
	},
}
