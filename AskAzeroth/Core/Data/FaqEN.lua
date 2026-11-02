local _, ns = ...

-- Built-in FAQ, English (PLAN.md, section 3). topic is a key from
-- FaqTopics.lua; entries are grouped by topic in display order. Plain
-- text only: no "|" escape sequences. Keep the content true for
-- WoW: Forever (level cap 60, rule sets, no flying, group finder without
-- automatic Dungeon Finder) and in step with FaqDE.lua.
ns.FAQ = ns.FAQ or {}

ns.FAQ.en = {
	-- AskAzeroth
	{
		topic = "addon",
		q = "How do I ask a question with AskAzeroth?",
		a = "Open the window with /aa or the minimap button, click \"Ask a question\" on the Questions page, pick a category and write a short summary. Experienced players who use the addon see your question and answer in its thread. You get a notification for every answer.",
	},
	{
		topic = "addon",
		q = "Who answers my questions?",
		a = "Other players who use AskAzeroth and read the same language, often in mentor mode. They are volunteers, not Blizzard staff, so an answer can take a few minutes. A clear summary with your level, zone and quest name gets the quickest help.",
	},
	{
		topic = "addon",
		q = "Which language should I ask in?",
		a = "Every language has its own channel, and only players who chose that language see your question. In the settings you pick which languages you read and which one new questions use; you can also change it in the ask dialog.",
	},
	{
		topic = "addon",
		q = "Why did my question disappear?",
		a = "Questions only stay in the public list for a while: 2 hours without answers, 45 minutes after the last answer, 10 minutes after you mark it as solved. Your own questions and all their answers stay under \"My questions\".",
	},
	{
		topic = "addon",
		q = "How do I keep a helpful answer?",
		a = "Click the note icon next to an answer to pin it. Pinned answers are saved on your computer together with their question and never expire. You find them on the Pinned page.",
	},
	{
		topic = "addon",
		q = "What is mentor mode?",
		a = "Players who like to help turn on mentor mode in the settings. They are notified about new questions and can choose the categories and classes they want to hear about.",
	},
	{
		topic = "addon",
		q = "What should I never post in a question?",
		a = "Never share your password, account email or authenticator codes, not even with someone claiming to be from Blizzard: Blizzard never asks for them in game. For account, payment or technical problems, contact Blizzard support through the Help button in the game menu.",
	},

	-- First steps
	{
		topic = "start",
		q = "What should I do first?",
		a = "Follow the quests in your starting zone: they teach the basics step by step and lead you to the next areas. Visit your class trainer every couple of levels, sell your junk to a vendor and take your time. Nobody expects you to know everything.",
	},
	{
		topic = "start",
		q = "Which class suits me?",
		a = "WoW: Forever has the nine classic classes: warrior, paladin, hunter, rogue, priest, shaman, mage, warlock and druid. Think about your role first: tanks hold enemies, healers keep the group alive, damage dealers defeat enemies. Hunters and warlocks have pets and are easy to level alone. Pick what looks fun, that matters most.",
	},
	{
		topic = "start",
		q = "Which rule set should I choose?",
		a = "Instead of realms you pick a rule set when you create your character. Normal is for playing together without forced PvP, PvP lets the other faction attack you in many zones, and Roleplaying is for players who stay in character. Hardcore, where death is final, follows later. You only group with players on the same rule set, so pick the one your friends use.",
	},
	{
		topic = "start",
		q = "What is the maximum level?",
		a = "Level 60, and it stays that way. New dungeons, raids, zones and the account-wide Legacy system bring progress without raising the level cap.",
	},
	{
		topic = "start",
		q = "What is rested experience?",
		a = "While you are logged out or rest in an inn or a city, your character builds up rested experience. Enemies then give extra experience until the bonus is used up. During that time the experience bar is blue.",
	},
	{
		topic = "start",
		q = "How do I get health and mana back quickly?",
		a = "Eat food for health and drink water for mana after a fight; you sit down while doing so and get back to full within a few seconds. Innkeepers and food vendors sell both, and mages can conjure them. Starting the next fight with full health and mana saves you many deaths.",
	},

	-- Quests
	{
		topic = "quest",
		q = "What do the symbols above characters mean?",
		a = "A yellow exclamation mark is a quest you can accept, a yellow question mark one you can turn in. A grey exclamation mark means the quest is still too hard for you, a grey question mark a quest you accepted but have not finished yet.",
	},
	{
		topic = "quest",
		q = "What does the colour of a quest name mean?",
		a = "It compares the quest level with yours. Grey is far below you and gives little experience, green is easy, yellow fits your level, orange is hard and red is very dangerous. Red quests are best done with a group or a few levels later.",
	},
	{
		topic = "quest",
		q = "I cannot find a quest objective. What can I do?",
		a = "Read the quest text in the quest log (L key) again: it usually names a direction or a place. Look at the world map (M key) and the zone names. If you are still stuck, ask here and name the quest and the zone.",
	},
	{
		topic = "quest",
		q = "Why does the quest item not drop?",
		a = "Often only certain enemies carry the item, and only with a chance, so it can take a few kills. You must have the quest in your log. If someone else attacked the enemy first, the loot is theirs: invite them to a group so you both get credit.",
	},
	{
		topic = "quest",
		q = "Can I abandon a quest?",
		a = "Yes: select it in the quest log and choose Abandon. Most quests can be picked up again from the same character later. Abandoning frees up a slot when your quest log is full.",
	},
	{
		topic = "quest",
		q = "I ran out of quests. Where do I go now?",
		a = "Look for zones that fit your level: the world map shows the level range when you hover over a zone. Every town has quest givers, and innkeepers and guards point you to other places. Dungeons in your level range have quests with good rewards, too. If you are unsure, ask here with your level and faction.",
	},

	-- Class and talents
	{
		topic = "class",
		q = "Where do I learn new spells and abilities?",
		a = "At your class trainer. Trainers are in the starting zones and in the cities, and every few levels they have new ranks and spells for you. Any city guard shows you the way if you ask.",
	},
	{
		topic = "class",
		q = "What are talents?",
		a = "Talent points let you specialise your class. You get your first point at level 10 and one more each level after that. Open the talent window from the menu bar or with the N key. From level 40 you can unlock a second talent setup (dual specialisation) and switch between them.",
	},
	{
		topic = "class",
		q = "Tank, healer or damage: what does that mean?",
		a = "These are the roles in a group. The tank keeps the enemies busy and takes the hits, the healer keeps everyone alive and the damage dealers defeat the enemies. Warriors, paladins and druids can tank; priests, paladins, shamans and druids can heal; every class can deal damage.",
	},
	{
		topic = "class",
		q = "Which stats matter for me?",
		a = "Strength helps warriors and paladins, agility rogues and hunters, intellect gives casters mana and spell power, stamina gives everyone health. Spirit speeds up health and mana regeneration. Compare the tooltips of two items before you decide.",
	},
	{
		topic = "class",
		q = "Why can I not equip an item?",
		a = "Red text in the tooltip shows what is missing: the required level, the armour type (cloth, leather, mail, plate) or the weapon type. Some weapon types can be learned at a weapon master in the big cities.",
	},
	{
		topic = "class",
		q = "How do I put spells on my action bar?",
		a = "Open the spellbook (P key) and drag a spell onto a free slot of your action bar. The number keys 1 to 0 then cast the spells in the first bar. New ranks of a spell usually replace the old one on the bar on their own.",
	},

	-- Combat and death
	{
		topic = "combat",
		q = "What happens when I die?",
		a = "Release your spirit and run back to your body as a ghost to be resurrected. Alternatively the spirit healer at the graveyard brings you back right away, but your gear loses durability and you are weakened for a while.",
	},
	{
		topic = "combat",
		q = "How do I die less often?",
		a = "Fight one enemy at a time and pull them away from their friends; even two enemies at once can be too much in WoW: Forever. Check the enemy level before attacking, eat and drink between fights and keep an eye on patrols. If a fight goes wrong, run back the way you came.",
	},
	{
		topic = "combat",
		q = "What do the colours of enemy levels mean?",
		a = "The level in the target frame is coloured like quest names: grey gives no experience, green is easy, yellow is even, orange is hard and red is very dangerous. A skull means the enemy is far above you or an elite boss: stay away when alone.",
	},
	{
		topic = "combat",
		q = "Why are names red, yellow or green?",
		a = "Red means hostile: it attacks you when you get too close. Yellow is neutral and only fights back when you attack it. Green is friendly.",
	},
	{
		topic = "combat",
		q = "How do I repair my gear?",
		a = "Gear wears down in combat and when you die. Many vendors, especially armour and weapon smiths, repair it: talk to them and use the anvil button in the vendor window.",
	},

	-- Travel
	{
		topic = "travel",
		q = "How do I travel faster?",
		a = "Your hearthstone takes you back to your chosen inn; set it at the innkeeper. Flight masters fly you to places whose flight point you have already discovered, so talk to every flight master you pass.",
	},
	{
		topic = "travel",
		q = "When do I get a mount?",
		a = "From a certain level the riding trainer of your race teaches you riding, and in WoW: Forever you get a mount together with the skill. Save some gold for it while levelling. There is no flying in WoW: Forever.",
	},
	{
		topic = "travel",
		q = "How do I get to another continent?",
		a = "The Alliance travels by ship, for example from Menethil Harbor, the Horde by zeppelin, for example from Orgrimmar or the Undercity. The Deeprun Tram connects Stormwind and Ironforge. Ask here if you do not know the next stop.",
	},
	{
		topic = "travel",
		q = "How do I find my way around a city?",
		a = "Talk to a city guard and ask for directions: they mark trainers, the bank, the auction house, the inn and more on your map. The world map (M key) shows where you are.",
	},

	-- Gold and trade
	{
		topic = "gold",
		q = "How do I earn gold?",
		a = "Sell grey items and things you do not need to a vendor, complete quests and sell gathered materials such as ore, herbs or leather in the auction house. Never buy gold from other sites: WoW: Forever punishes both buyers and sellers.",
	},
	{
		topic = "gold",
		q = "What do the colours of items mean?",
		a = "Grey is junk for the vendor, white is common, green uncommon, blue rare, purple epic and orange legendary. Higher quality usually means better stats.",
	},
	{
		topic = "gold",
		q = "What do \"Binds when picked up\" and \"Binds when equipped\" mean?",
		a = "Items that bind when picked up belong to you from the moment you loot them and cannot be traded. Items that bind when equipped can be traded or sold until you wear them once.",
	},
	{
		topic = "gold",
		q = "How does the auction house work?",
		a = "Auctioneers in the big cities let you buy and sell items with other players. When you list an item you pay a small deposit, which you lose if it does not sell. Compare prices before you list or buy.",
	},
	{
		topic = "gold",
		q = "How do I send mail?",
		a = "Use a mailbox, there is usually one next to an inn. You can send letters, items and gold to other characters, including your own alts on the same rule set and faction. Each letter costs a little postage.",
	},
	{
		topic = "gold",
		q = "How do I get more bag space?",
		a = "Bags are sold by vendors (often general goods or trade supplies vendors), by tailors or in the auction house of the big cities. Each bag goes into one of the bag slots next to your backpack. The bank in the capital cities stores even more.",
	},

	-- Professions
	{
		topic = "prof",
		q = "How do I learn a profession?",
		a = "Profession trainers in cities and towns teach you. You can learn two primary professions, for example mining and blacksmithing or herbalism and alchemy. Cooking, fishing and first aid come on top.",
	},
	{
		topic = "prof",
		q = "Which professions go well together?",
		a = "A gathering profession supplies a crafting one: mining for blacksmithing or engineering, herbalism for alchemy, skinning for leatherworking. Tailoring uses cloth from enemies and pairs well with enchanting. Two gathering professions earn the most gold.",
	},
	{
		topic = "prof",
		q = "How do I raise my profession skill?",
		a = "Recipe colours show how likely a skill point is: orange always, yellow often, green rarely, grey never. At certain skill levels your trainer teaches the next rank, which raises the maximum skill. Crafted food in WoW: Forever even gives a small experience bonus.",
	},
	{
		topic = "prof",
		q = "How do I find herbs and ore?",
		a = "Herbalism and mining come with a tracking ability that shows herbs or ore deposits on your minimap. Turn it on from the tracking button at the minimap. Each zone has deposits for a certain skill range.",
	},

	-- Groups and dungeons
	{
		topic = "group",
		q = "How do I find a group for a dungeon?",
		a = "Use the group finder: list your own group or apply to one, the leader invites players by hand. There is no automatic Dungeon Finder in WoW: Forever. Asking in the chat or your guild works, too. Say which dungeon you want and which role you play (tank, healer or damage), and agree on loot rules before you start.",
	},
	{
		topic = "group",
		q = "What should I know before my first dungeon?",
		a = "Say that you are new, most groups gladly explain. Let the tank pull, attack the tank's target and stay out of fights the group has not started. Crowd control such as sheep, sap or shackle matters, because dungeons do not scale to your level.",
	},
	{
		topic = "group",
		q = "How does loot work in a group?",
		a = "For many items everyone rolls Need, Greed or Pass. Choose Need only if your character will really use the item, otherwise Greed. Ask before rolling Need on items others might want as well.",
	},
	{
		topic = "group",
		q = "How do I invite someone to my group?",
		a = "Right-click their name in the chat or their portrait and choose Invite. Your party frames then appear on the left.",
	},
	{
		topic = "group",
		q = "What is a raid?",
		a = "A raid is a dungeon for a large group at the maximum level. WoW: Forever starts with raids for 10, 20 and 40 players. Most players raid with their guild.",
	},

	-- Chat and guild
	{
		topic = "social",
		q = "How do I use the chat?",
		a = "Press Enter, type your text and press Enter again. Commands change where it goes: /s say, /y yell, /p party, /g guild, /w Name whisper, /1 general channel of the zone. Reply to the last whisper with R.",
	},
	{
		topic = "social",
		q = "How do I find a guild?",
		a = "Guilds recruit in the chat channels of the cities, and the addon Guild Finder Forever lists guilds that are looking for members. Talk to a few officers before you join, and look for a guild that plays at the times you do.",
	},
	{
		topic = "social",
		q = "How do I add friends?",
		a = "Open the social window (O key), click Add Friend and enter the name. You can also right-click a player and add them from there.",
	},
	{
		topic = "social",
		q = "How do I deal with annoying players?",
		a = "Right-click their name and choose Ignore; in AskAzeroth you can also mark a player as ignored on the Players page. You can report abusive behaviour from the same menu.",
	},

	-- Interface
	{
		topic = "ui",
		q = "Which keys open the most important windows?",
		a = "By default: M world map, L quest log, P spellbook, N talents, C character, B bags, O friends and guild. You can change them under Key Bindings in the game menu.",
	},
	{
		topic = "ui",
		q = "How do I install addons?",
		a = "Use the CurseForge or Wago app, or unpack the addon folder into the AddOns folder of the WoW: Forever installation. On the character selection screen the AddOns button shows which addons are enabled.",
	},
	{
		topic = "ui",
		q = "My interface is acting up. What can I do?",
		a = "Type /reload to reload the interface; that fixes most glitches. If an addon causes errors, turn it off on the character selection screen under AddOns and try again.",
	},
}
