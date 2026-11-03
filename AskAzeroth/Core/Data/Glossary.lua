local _, ns = ...

-- Glossary entries (format: Core/Glossary.lua). Sorted by subject here;
-- the glossary view sorts them by term. Never change an id once released.
ns.Glossary.Add({
	{
		id = "aggro",
		chat = { "Aggro", "aggro" },
		faq = "combat-threat",
		de = {
			term = "Aggro",
			alt = { "Bedrohung" },
			def = "Wie sehr ein Gegner dich angreifen will. Wer die meiste Aggro hat, wird angegriffen. Schaden und Heilung erzeugen Aggro; der Tank hält sie mit Spott und viel Schaden auf sich.",
		},
		en = {
			term = "Aggro",
			alt = { "threat" },
			def = "How much an enemy wants to attack you. Whoever has the most aggro gets attacked. Damage and healing create aggro; the tank keeps it with taunts and steady damage.",
		},
	},
	{
		id = "tank",
		de = {
			term = "Tank",
			def = "Die Rolle, die Gegner auf sich zieht und den Schaden einsteckt, meist ein Krieger, Druide in Bärengestalt oder Paladin.",
		},
		en = {
			term = "Tank",
			def = "The role that holds the enemies' attention and takes the hits, usually a warrior, a druid in bear form or a paladin.",
		},
	},
	{
		id = "healer",
		de = {
			term = "Heiler",
			alt = { "Heal", "Heals" },
			def = "Die Rolle, die die Gruppe am Leben hält: Priester, Druiden, Schamanen und Paladine.",
		},
		en = {
			term = "Healer",
			def = "The role that keeps the group alive: priests, druids, shamans and paladins.",
		},
	},
	{
		id = "dps",
		chat = { "DPS", "DD", "dps" },
		de = {
			term = "DD",
			alt = { "DPS", "Schadensausteiler" },
			def = "Damage Dealer: die Rolle, die den Schaden macht. DPS heißt eigentlich \"Schaden pro Sekunde\", meint im Chat aber oft dasselbe.",
		},
		en = {
			term = "DPS",
			alt = { "damage dealer", "DD" },
			def = "Damage per second, in chat usually the role that deals the damage, as opposed to tank and healer.",
		},
	},
	{
		id = "dot",
		chat = { "DoT", "DOT", "DoTs", "dots" },
		de = {
			term = "DoT",
			alt = { "Schaden über Zeit" },
			def = "Damage over Time: ein Effekt, der über einige Sekunden immer wieder Schaden macht, etwa Gifte oder Verderbnis.",
		},
		en = {
			term = "DoT",
			alt = { "damage over time" },
			def = "Damage over time: an effect that deals damage again and again over a few seconds, such as poisons or Corruption.",
		},
	},
	{
		id = "hot",
		-- lower case is an everyday word (English "hot")
		lower = false,
		chat = { "HoT", "HOT", "HoTs" },
		de = {
			term = "HoT",
			alt = { "Heilung über Zeit" },
			def = "Heal over Time: ein Effekt, der über einige Sekunden immer wieder heilt, etwa Erneuerung oder Verjüngung.",
		},
		en = {
			term = "HoT",
			alt = { "heal over time" },
			def = "Heal over time: an effect that heals again and again over a few seconds, such as Renew or Rejuvenation.",
		},
	},
	{
		id = "aoe",
		chat = { "AoE", "AOE" },
		de = {
			term = "AoE",
			alt = { "Flächenschaden" },
			def = "Area of Effect: ein Angriff oder Zauber, der alle Ziele in einem Bereich trifft. \"AoE ziehen\" heißt, viele Gegner zu sammeln und gemeinsam zu besiegen.",
		},
		en = {
			term = "AoE",
			alt = { "area of effect" },
			def = "Area of effect: an attack or spell that hits every target in an area. \"AoE pulls\" means gathering many enemies and defeating them together.",
		},
	},
	{
		id = "cc",
		chat = { "CC" },
		de = {
			term = "CC",
			alt = { "Crowd Control" },
			def = "Crowd Control: Fähigkeiten, die einen Gegner eine Weile ausschalten, etwa Verwandlung, Kopfnuss, Furcht oder Eiskältefalle. Kontrollierte Gegner nicht angreifen, sonst wachen sie auf.",
		},
		en = {
			term = "CC",
			alt = { "crowd control" },
			def = "Crowd control: abilities that take an enemy out of the fight for a while, such as Polymorph, Sap, Fear or Freezing Trap. Do not hit a controlled enemy, or it wakes up.",
		},
	},
	{
		id = "kite",
		chat = { "kiten", "kite", "kiting" },
		de = {
			term = "Kiten",
			alt = { "Kite" },
			def = "Einen Gegner auf Abstand halten und dabei angreifen: verlangsamen, weglaufen, wieder angreifen. Typisch für Jäger und Magier.",
		},
		en = {
			term = "Kiting",
			alt = { "kite" },
			def = "Keeping an enemy at a distance while attacking it: slow it, move away, attack again. Typical for hunters and mages.",
		},
	},
	{
		id = "pull",
		chat = { "pullen", "pull" },
		mark = false,
		de = {
			term = "Pull",
			alt = { "pullen", "ziehen" },
			def = "Einen Gegner oder eine Gruppe angreifen, um den Kampf zu beginnen. In Dungeons pullt normalerweise der Tank.",
		},
		en = {
			term = "Pull",
			alt = { "pulling" },
			def = "Attacking an enemy or a pack to start the fight. In dungeons the tank usually pulls.",
		},
	},
	{
		id = "add",
		chat = { "Add", "Adds", "adds" },
		mark = false,
		de = {
			term = "Add",
			alt = { "Adds" },
			def = "Ein Gegner, der unerwartet zum Kampf dazukommt, etwa ein Wächter in der Nähe oder ein Herbeigerufener.",
		},
		en = {
			term = "Add",
			alt = { "adds" },
			def = "An enemy that joins a fight unexpectedly, for example a nearby guard or a summoned helper.",
		},
	},
	{
		id = "oom",
		chat = { "OOM", "oom" },
		de = {
			term = "OOM",
			alt = { "kein Mana" },
			def = "Out of Mana: kein Mana mehr. Heiler schreiben das, wenn die Gruppe warten soll, bis sie getrunken haben.",
		},
		en = {
			term = "OOM",
			alt = { "out of mana" },
			def = "Out of mana. Healers write it when the group should wait until they have had a drink.",
		},
	},
	{
		id = "proc",
		chat = { "Proc", "proc", "procs" },
		de = {
			term = "Proc",
			alt = { "procct" },
			def = "Ein Effekt, der mit einer gewissen Wahrscheinlichkeit von selbst auslöst, etwa durch eine Waffe oder ein Talent.",
		},
		en = {
			term = "Proc",
			alt = { "procs" },
			def = "An effect that triggers by itself with a certain chance, for example from a weapon or a talent.",
		},
	},
	{
		id = "buff",
		chat = { "Buff", "buff", "buffs" },
		de = {
			term = "Buff",
			alt = { "Stärkungszauber" },
			def = "Ein positiver Effekt auf dir, etwa Machtwort: Seelenstärke oder Segen der Macht. Buffs siehst du oben rechts neben der Minikarte.",
		},
		en = {
			term = "Buff",
			alt = { "buffs" },
			def = "A positive effect on you, such as Power Word: Fortitude or Blessing of Might. Your buffs show at the top right next to the minimap.",
		},
	},
	{
		id = "debuff",
		chat = { "Debuff", "debuff" },
		faq = "combat-debuffs",
		de = {
			term = "Debuff",
			alt = { "Schwächungszauber" },
			def = "Ein negativer Effekt auf dir oder einem Gegner, etwa Gift, Fluch oder Verlangsamung.",
		},
		en = {
			term = "Debuff",
			alt = { "debuffs" },
			def = "A negative effect on you or an enemy, such as a poison, a curse or a slow.",
		},
	},
	{
		id = "cooldown",
		chat = { "CD", "CDs" },
		de = {
			term = "Cooldown",
			alt = { "CD", "Abklingzeit" },
			def = "Die Wartezeit, bis eine Fähigkeit wieder bereit ist. \"Auf CD\" heißt, sie wird gerade wieder aufgeladen.",
		},
		en = {
			term = "Cooldown",
			alt = { "CD" },
			def = "The waiting time until an ability is ready again. \"On CD\" means it is recharging.",
		},
	},
	{
		id = "gcd",
		chat = { "GCD" },
		de = {
			term = "GCD",
			alt = { "globale Abklingzeit" },
			def = "Global Cooldown: die kurze Pause von etwa einer Sekunde nach fast jeder Fähigkeit, in der keine andere benutzt werden kann.",
		},
		en = {
			term = "GCD",
			alt = { "global cooldown" },
			def = "Global cooldown: the short pause of about a second after almost every ability, during which no other ability can be used.",
		},
	},
	{
		id = "crit",
		chat = { "Crit", "crit", "Krit", "krit" },
		de = {
			term = "Krit",
			alt = { "kritischer Treffer", "Crit" },
			def = "Ein kritischer Treffer macht deutlich mehr Schaden oder Heilung als normal.",
		},
		en = {
			term = "Crit",
			alt = { "critical hit" },
			def = "A critical hit deals much more damage or healing than normal.",
		},
	},
	{
		id = "taunt",
		chat = { "Taunt", "taunt" },
		de = {
			term = "Spott",
			alt = { "Taunt" },
			def = "Eine Tank-Fähigkeit, die einen Gegner zwingt, den Tank anzugreifen.",
		},
		en = {
			term = "Taunt",
			def = "A tank ability that forces an enemy to attack the tank.",
		},
	},
	{
		id = "wipe",
		chat = { "Wipe", "wipe" },
		faq = "combat-die-in-dungeon",
		de = {
			term = "Wipe",
			alt = { "wipen" },
			def = "Die ganze Gruppe stirbt. Danach laufen alle als Geist zurück und versuchen es noch einmal.",
		},
		en = {
			term = "Wipe",
			alt = { "wiped" },
			def = "The whole group dies. Then everybody runs back as a ghost and tries again.",
		},
	},
	{
		id = "rez",
		chat = { "Rez", "rez", "res" },
		de = {
			term = "Rez",
			alt = { "Res", "Wiederbelebung" },
			def = "Wiederbelebung durch einen Spieler: Priester, Paladine und Schamanen können Tote wiederbeleben, Druiden im Kampf. \"Rez pls\" heißt: Bitte belebe mich wieder.",
		},
		en = {
			term = "Rez",
			alt = { "res", "resurrect" },
			def = "Being brought back to life by a player: priests, paladins and shamans can resurrect, druids even in combat. \"Rez pls\" means: please resurrect me.",
		},
	},
	{
		id = "interrupt",
		chat = { "Kick", "kick", "Interrupt" },
		de = {
			term = "Unterbrechen",
			alt = { "Kick", "Interrupt" },
			def = "Einen Gegner beim Zaubern unterbrechen, etwa mit Tritt, Erdschock oder Zuschlagen. \"Kick\" im Chat meint meist das.",
		},
		en = {
			term = "Interrupt",
			alt = { "kick" },
			def = "Stopping an enemy's spell cast, for example with Kick, Earth Shock or Pummel. \"Kick\" in chat usually means this.",
		},
	},
	{
		id = "stun",
		chat = { "Stun", "stun" },
		de = {
			term = "Stun",
			alt = { "Betäubung" },
			def = "Ein Effekt, der das Ziel kurz handlungsunfähig macht.",
		},
		en = {
			term = "Stun",
			def = "An effect that leaves the target unable to act for a short time.",
		},
	},
	{
		id = "root",
		chat = { "Root", "root" },
		de = {
			term = "Root",
			alt = { "Bewegungsunfähigkeit" },
			def = "Ein Effekt, der das Ziel festhält: Es kann noch angreifen und zaubern, sich aber nicht bewegen. Beispiel: Wucherwurzeln, Frostnova.",
		},
		en = {
			term = "Root",
			def = "An effect that holds the target in place: it can still attack and cast, but not move. Examples: Entangling Roots, Frost Nova.",
		},
	},
	{
		id = "sheep",
		chat = { "sheep", "Sheep", "sheepen" },
		de = {
			term = "Sheep",
			alt = { "Schaf", "Verwandlung" },
			def = "Verwandlung des Magiers: Der Gegner wird kurz zum Schaf. \"Mond sheepen\" heißt, das Ziel mit dem Mond-Symbol zu verwandeln.",
		},
		en = {
			term = "Sheep",
			alt = { "Polymorph" },
			def = "The mage's Polymorph: the enemy turns into a sheep for a while. \"Sheep moon\" means polymorph the target with the moon marker.",
		},
	},
	{
		id = "sap",
		chat = { "Sap", "sap" },
		de = {
			term = "Sap",
			alt = { "Kopfnuss" },
			def = "Kopfnuss des Schurken: setzt einen Gegner außerhalb des Kampfes für eine Weile außer Gefecht.",
		},
		en = {
			term = "Sap",
			def = "The rogue's Sap: takes an enemy out of action for a while, used before the fight starts.",
		},
	},
	{
		id = "los",
		-- lower case is an everyday word (German "los")
		lower = false,
		chat = { "LoS", "LOS" },
		de = {
			term = "LoS",
			alt = { "Sichtlinie", "Line of Sight" },
			def = "Line of Sight: Zauber brauchen freie Sicht aufs Ziel. \"LoS ziehen\" heißt, hinter eine Ecke zu gehen, damit Gegner zu dir laufen müssen.",
		},
		en = {
			term = "LoS",
			alt = { "line of sight" },
			def = "Line of sight: spells need a clear view of the target. \"LoS pull\" means stepping behind a corner so that enemies have to come to you.",
		},
	},
	{
		id = "pat",
		chat = { "Pat", "pat", "Patrol", "patrol" },
		mark = false,
		de = {
			term = "Pat",
			alt = { "Patrouille" },
			def = "Ein Gegner oder eine Gruppe, die einen festen Weg abläuft. Pats kommen oft unerwartet in einen Kampf.",
		},
		en = {
			term = "Pat",
			alt = { "patrol" },
			def = "An enemy or a pack walking a fixed route. Pats often join a fight unexpectedly.",
		},
	},
	{
		id = "respawn",
		chat = { "Respawn", "respawn" },
		de = {
			term = "Respawn",
			alt = { "Wiedererscheinen" },
			def = "Besiegte Gegner und abgebaute Vorkommen erscheinen nach einer Weile wieder.",
		},
		en = {
			term = "Respawn",
			def = "Defeated enemies and gathered nodes come back after a while.",
		},
	},
	{
		id = "mob",
		chat = { "Mob", "mob", "Mobs", "mobs" },
		de = {
			term = "Mob",
			alt = { "Mobs" },
			def = "Ein computergesteuerter Gegner.",
		},
		en = {
			term = "Mob",
			alt = { "mobs" },
			def = "A computer-controlled enemy.",
		},
	},
	{
		id = "elite",
		faq = "combat-elite",
		de = {
			term = "Elite",
			alt = { "Elitegegner" },
			def = "Ein besonders starker Gegner mit goldenem Drachen am Porträt. Für Elitequests brauchst du meist eine Gruppe.",
		},
		en = {
			term = "Elite",
			def = "An especially strong enemy with a golden dragon on its portrait. Elite quests usually need a group.",
		},
	},
	{
		id = "trash",
		chat = { "Trash", "trash" },
		de = {
			term = "Trash",
			def = "Die normalen Gegnergruppen in einem Dungeon oder Schlachtzug zwischen den Bossen.",
		},
		en = {
			term = "Trash",
			def = "The regular enemy packs in a dungeon or raid between the bosses.",
		},
	},
	{
		id = "lfg",
		chat = { "LFG", "lfg" },
		faq = "group-find",
		de = {
			term = "LFG",
			alt = { "suche Gruppe" },
			def = "Looking for Group: Ich suche eine Gruppe. Oft mit Ziel, etwa \"LFG Todesminen\".",
		},
		en = {
			term = "LFG",
			alt = { "looking for group" },
			def = "Looking for group: I am looking for a group. Often with a goal, such as \"LFG Deadmines\".",
		},
	},
	{
		id = "lfm",
		chat = { "LFM", "lfm", "LF1M", "LF2M" },
		faq = "group-find",
		de = {
			term = "LFM",
			alt = { "suchen noch" },
			def = "Looking for More: Die Gruppe sucht noch Mitspieler, oft mit Rolle, etwa \"LFM Heiler\".",
		},
		en = {
			term = "LFM",
			alt = { "looking for more" },
			def = "Looking for more: the group needs more players, often with a role, such as \"LFM healer\".",
		},
	},
	{
		id = "need-greed",
		chat = { "Need", "need", "Greed", "greed" },
		de = {
			term = "Bedarf/Gier",
			def = "Beim Würfeln um Beute: Bedarf, wenn du den Gegenstand selbst benutzt, Gier, wenn du ihn nur verkaufen willst. Bedarf geht immer vor Gier.",
		},
		en = {
			term = "Need/Greed",
			def = "When rolling for loot: Need if you will use the item yourself, Greed if you only want to sell it. Need always wins over Greed.",
		},
	},
	{
		id = "ninja",
		chat = { "Ninja", "ninja" },
		de = {
			term = "Ninja",
			alt = { "ninjaen" },
			def = "Jemand, der Beute nimmt, die ihm nach den Gruppenregeln nicht zusteht, etwa mit Bedarf auf etwas, das er nicht braucht.",
		},
		en = {
			term = "Ninja",
			alt = { "ninjaed" },
			def = "Someone who takes loot they are not entitled to by the group's rules, such as rolling Need on something they cannot use.",
		},
	},
	{
		id = "inv",
		chat = { "inv", "Inv", "invite" },
		de = {
			term = "Inv",
			def = "Invite: Lade mich in die Gruppe ein.",
		},
		en = {
			term = "Inv",
			def = "Invite: please invite me to the group.",
		},
	},
	{
		id = "afk",
		chat = { "AFK", "afk" },
		de = {
			term = "AFK",
			def = "Away from Keyboard: gerade nicht am Rechner.",
		},
		en = {
			term = "AFK",
			alt = { "away from keyboard" },
			def = "Away from keyboard: not at the computer right now.",
		},
	},
	{
		id = "brb",
		chat = { "BRB", "brb" },
		de = {
			term = "BRB",
			alt = { "bin gleich zurück" },
			def = "Be right back: bin gleich wieder da.",
		},
		en = {
			term = "BRB",
			alt = { "be right back" },
			def = "Be right back.",
		},
	},
	{
		id = "ty",
		chat = { "TY", "ty", "thx", "THX" },
		de = {
			term = "TY",
			alt = { "THX" },
			def = "Thank you, thanks: danke.",
		},
		en = {
			term = "TY",
			alt = { "thx" },
			def = "Thank you.",
		},
	},
	{
		id = "gz",
		chat = { "GZ", "gz", "grats", "Grats" },
		de = {
			term = "GZ",
			alt = { "Grats", "Glückwunsch" },
			def = "Congratulations: Glückwunsch, etwa zum Stufenaufstieg oder zu guter Beute.",
		},
		en = {
			term = "GZ",
			alt = { "grats", "congrats" },
			def = "Congratulations, for example on a new level or good loot.",
		},
	},
	{
		id = "ding",
		chat = { "Ding", "ding", "DING" },
		mark = false,
		de = {
			term = "Ding",
			def = "Ich bin gerade eine Stufe aufgestiegen.",
		},
		en = {
			term = "Ding",
			def = "I just reached a new level.",
		},
	},
	{
		id = "wts-wtb",
		chat = { "WTS", "WTB", "WTT" },
		faq = "gold-trade-window",
		de = {
			term = "WTS/WTB",
			alt = { "verkaufe", "kaufe" },
			def = "Want to Sell / Want to Buy: Verkaufe / Kaufe. Handelsangebote im Handelskanal. WTT heißt tauschen.",
		},
		en = {
			term = "WTS/WTB",
			alt = { "want to sell", "want to buy" },
			def = "Want to sell / want to buy: trade offers in the trade channel. WTT means want to trade.",
		},
	},
	{
		id = "pst",
		chat = { "PST", "pst" },
		de = {
			term = "PST",
			alt = { "/w" },
			def = "Please send tell: Schreib mir eine Flüsternachricht. /w Name schickt eine.",
		},
		en = {
			term = "PST",
			alt = { "/w" },
			def = "Please send tell: whisper me. /w name sends one.",
		},
	},
	{
		id = "gm",
		chat = { "GM" },
		de = {
			term = "GM",
			alt = { "Spielleiter" },
			def = "Game Master: Mitarbeiter von Blizzard, der bei Problemen hilft. Im Chat meint GM manchmal auch den Gildenmeister.",
		},
		en = {
			term = "GM",
			alt = { "game master" },
			def = "Game master: a Blizzard employee who helps with problems. In chat GM sometimes also means guild master.",
		},
	},
	{
		id = "pug",
		chat = { "PUG", "pug", "PuG" },
		de = {
			term = "PUG",
			alt = { "Randomgruppe" },
			def = "Pick-up group: eine Gruppe aus Spielern, die sich vorher nicht kannten, statt aus der Gilde.",
		},
		en = {
			term = "PUG",
			alt = { "pick-up group" },
			def = "Pick-up group: a group of players who did not know each other before, not from a guild.",
		},
	},
	{
		id = "rp",
		chat = { "RP" },
		de = {
			term = "RP",
			alt = { "Rollenspiel" },
			def = "Role-Play: Rollenspiel, also so sprechen und handeln wie deine Spielfigur.",
		},
		en = {
			term = "RP",
			alt = { "role-play" },
			def = "Role-play: talking and acting as your character would.",
		},
	},
	{
		id = "bop",
		chat = { "BoP", "BOP" },
		de = {
			term = "BoP",
			alt = { "beim Aufheben gebunden", "Segen des Schutzes" },
			def = "Zwei Bedeutungen: \"Bind on Pickup\", also beim Aufheben an dich gebunden und nicht handelbar. Oder der Paladin-Zauber Segen des Schutzes.",
		},
		en = {
			term = "BoP",
			alt = { "bind on pickup", "Blessing of Protection" },
			def = "Two meanings: \"bind on pickup\", bound to you when you loot it and not tradable. Or the paladin spell Blessing of Protection.",
		},
	},
	{
		id = "boe",
		chat = { "BoE", "BOE" },
		de = {
			term = "BoE",
			alt = { "beim Anlegen gebunden" },
			def = "Bind on Equip: handelbar, bis jemand den Gegenstand anlegt. Danach ist er an diese Figur gebunden.",
		},
		en = {
			term = "BoE",
			alt = { "bind on equip" },
			def = "Bind on equip: tradable until someone equips the item. After that it is bound to that character.",
		},
	},
	{
		id = "soulbound",
		de = {
			term = "Seelengebunden",
			alt = { "gebunden" },
			def = "Ein gebundener Gegenstand gehört fest zu deiner Figur. Du kannst ihn nicht handeln oder verschicken, nur verkaufen oder zerstören.",
		},
		en = {
			term = "Soulbound",
			alt = { "bound" },
			def = "A bound item belongs to your character. You cannot trade or mail it, only sell or destroy it.",
		},
	},
	{
		id = "epic",
		chat = { "Epic", "epic", "Epix" },
		de = {
			term = "Episch",
			alt = { "Epic", "lila" },
			def = "Die seltenste Gegenstandsqualität, lila geschrieben. Darunter kommen selten (blau), ungewöhnlich (grün), gewöhnlich (weiß) und schlecht (grau).",
		},
		en = {
			term = "Epic",
			alt = { "purple" },
			def = "The rarest item quality, shown in purple. Below it come rare (blue), uncommon (green), common (white) and poor (grey).",
		},
	},
	{
		id = "grey",
		faq = "quest-grey-worth",
		mark = false,
		de = {
			term = "Grau",
			alt = { "Schrott", "Grauzeug" },
			def = "Graue Gegenstände sind nur zum Verkaufen beim Händler da.",
		},
		en = {
			term = "Grey",
			alt = { "junk", "vendor trash" },
			def = "Grey items are only for selling to a vendor.",
		},
	},
	{
		id = "vendor",
		chat = { "vendor", "vendorn", "Vendor" },
		mark = false,
		de = {
			term = "Händler",
			alt = { "Vendor" },
			def = "Ein NPC, der Gegenstände kauft und verkauft. \"Vendorn\" heißt, etwas an den Händler zu verkaufen.",
		},
		en = {
			term = "Vendor",
			alt = { "merchant" },
			def = "An NPC who buys and sells items. \"Vendor it\" means sell it to a merchant.",
		},
	},
	{
		id = "ah",
		-- lower case is an everyday word ("ah")
		lower = false,
		chat = { "AH" },
		de = {
			term = "AH",
			alt = { "Auktionshaus" },
			def = "Auktionshaus: Hier kaufen und verkaufen Spieler Gegenstände. Es gibt eins in jeder Hauptstadt.",
		},
		en = {
			term = "AH",
			alt = { "Auction House" },
			def = "Auction House: where players buy and sell items. Every capital city has one.",
		},
	},
	{
		id = "mats",
		chat = { "Mats", "mats" },
		de = {
			term = "Mats",
			def = "Materialien für einen Beruf, etwa Erz, Stoff oder Kräuter. \"Deine Mats\" heißt: Du bringst die Zutaten mit.",
		},
		en = {
			term = "Mats",
			def = "Materials for a profession, such as ore, cloth or herbs. \"Your mats\" means you bring the ingredients.",
		},
	},
	{
		id = "bags",
		faq = "gold-bags",
		mark = false,
		de = {
			term = "Taschen",
			alt = { "Bags" },
			def = "Taschen erweitern dein Inventar. Du hast vier Taschenplätze neben dem Rucksack. Schneider stellen sie her, Händler verkaufen kleine.",
		},
		en = {
			term = "Bags",
			def = "Bags extend your inventory. You have four bag slots next to your backpack. Tailors make them, vendors sell small ones.",
		},
	},
	{
		id = "durability",
		faq = "combat-durability",
		de = {
			term = "Haltbarkeit",
			alt = { "kaputt", "Reparatur" },
			def = "Deine Ausrüstung nutzt sich ab, vor allem beim Sterben. Ist sie rot, wirkt sie nicht mehr. Ein Schmied oder Rüstungsschmied repariert sie gegen Gold.",
		},
		en = {
			term = "Durability",
			alt = { "repair" },
			def = "Your gear wears out, especially when you die. Once it is red it stops working. A blacksmith or armorer repairs it for gold.",
		},
	},
	{
		id = "talents",
		faq = "class-talents",
		de = {
			term = "Talente",
			alt = { "Talentpunkte", "Skillung" },
			def = "Ab Stufe 10 bekommst du pro Stufe einen Talentpunkt, mit dem du deine Klasse in eine Richtung entwickelst. \"Skillung\" meint die Verteilung.",
		},
		en = {
			term = "Talents",
			alt = { "talent points" },
			def = "From level 10 you get one talent point per level to develop your class in a direction. \"Build\" or \"spec\" means how you spent them.",
		},
	},
	{
		id = "spec",
		chat = { "Spec", "spec", "respec", "Respec" },
		faq = "class-talent-reset",
		de = {
			term = "Spec",
			alt = { "Spezialisierung" },
			def = "Die Richtung deiner Talente, etwa Feuer-Magier oder Schutz-Krieger. \"Respec\" heißt, die Talente zurückzusetzen.",
		},
		en = {
			term = "Spec",
			alt = { "specialization", "respec" },
			def = "The direction of your talents, such as fire mage or protection warrior. \"Respec\" means resetting your talents.",
		},
	},
	{
		id = "dualspec",
		chat = { "Dualspec", "dualspec" },
		faq = "class-dual-spec",
		de = {
			term = "Dualspec",
			alt = { "Doppelspezialisierung" },
			def = "Zwei Talentverteilungen, zwischen denen du wechseln kannst, etwa Schaden und Heilung.",
		},
		en = {
			term = "Dual spec",
			alt = { "dualspec" },
			def = "Two talent setups you can switch between, for example damage and healing.",
		},
	},
	{
		id = "rested",
		chat = { "rested", "Rested" },
		de = {
			term = "Ruhebonus",
			def = "Wenn du in einem Gasthaus oder einer Stadt ausloggst, sammelst du Ruhebonus. Er verdoppelt die Erfahrung durch Gegner, bis er aufgebraucht ist.",
		},
		en = {
			term = "Rested",
			alt = { "rested XP" },
			def = "Logging out in an inn or a city builds up rested experience. It doubles the experience from enemies until it is used up.",
		},
	},
	{
		id = "xp",
		chat = { "XP", "EP" },
		de = {
			term = "EP",
			alt = { "XP", "Erfahrung" },
			def = "Erfahrungspunkte. Genug davon bringen dich eine Stufe höher.",
		},
		en = {
			term = "XP",
			alt = { "experience" },
			def = "Experience points. Enough of them take you to the next level.",
		},
	},
	{
		id = "hearthstone",
		chat = { "HS" },
		faq = "start-hearthstone-set",
		de = {
			term = "Ruhestein",
			alt = { "HS" },
			def = "Bringt dich zu dem Gasthaus, in dem du ihn gesetzt hast. Er hat eine lange Abklingzeit.",
		},
		en = {
			term = "Hearthstone",
			alt = { "HS" },
			def = "Takes you to the inn where you set it. It has a long cooldown.",
		},
	},
	{
		id = "fp",
		chat = { "FP" },
		de = {
			term = "Flugpunkt",
			alt = { "FP", "Greifenmeister", "Windreitermeister" },
			def = "Ein Ort, von dem du gegen Gold zu anderen bekannten Flugpunkten fliegen kannst. Sprich jeden Flugmeister einmal an, um ihn freizuschalten.",
		},
		en = {
			term = "Flight path",
			alt = { "FP", "flight master" },
			def = "A place from which you fly to other known flight paths for gold. Talk to each flight master once to unlock it.",
		},
	},
	{
		id = "gy",
		chat = { "GY" },
		faq = "combat-corpse-run",
		de = {
			term = "Friedhof",
			alt = { "GY", "Geistheiler" },
			def = "Wenn du stirbst, erscheinst du als Geist am nächsten Friedhof. Lauf zu deiner Leiche zurück oder lass dich vom Geistheiler wiederbeleben, dann mit Wiederbelebungsnachwirkungen.",
		},
		en = {
			term = "Graveyard",
			alt = { "GY", "spirit healer" },
			def = "When you die you appear as a ghost at the nearest graveyard. Run back to your corpse, or let the spirit healer resurrect you, then with resurrection sickness.",
		},
	},
	{
		id = "mount",
		chat = { "Mount", "mount" },
		faq = "travel-mount",
		de = {
			term = "Reittier",
			alt = { "Mount" },
			def = "Ein Tier, auf dem du schneller reist. Dafür brauchst du die Reitfertigkeit und das Reittier selbst.",
		},
		en = {
			term = "Mount",
			def = "An animal you ride to travel faster. You need the riding skill and the mount itself.",
		},
	},
	{
		id = "quest-giver",
		faq = "quest-symbols",
		de = {
			term = "Questgeber",
			alt = { "Ausrufezeichen" },
			def = "NPCs mit gelbem Ausrufezeichen haben eine Quest für dich, ein gelbes Fragezeichen heißt: Hier gibst du eine Quest ab.",
		},
		en = {
			term = "Quest giver",
			def = "NPCs with a yellow exclamation mark have a quest for you; a yellow question mark means you hand in a quest there.",
		},
	},
	{
		id = "class-quest",
		faq = "quest-class-quests",
		de = {
			term = "Klassenquest",
			def = "Eine Quest nur für deine Klasse, die oft eine neue Fähigkeit bringt, etwa Haltungen des Kriegers, das Begleiter-Zähmen des Jägers oder die Totems des Schamanen.",
		},
		en = {
			term = "Class quest",
			def = "A quest only for your class that often grants a new ability, such as warrior stances, the hunter's pet taming or the shaman's totems.",
		},
	},
	{
		id = "weapon-skill",
		faq = "class-weapon-master",
		de = {
			term = "Waffenfertigkeit",
			alt = { "Waffenmeister" },
			def = "Jede Waffenart hat eine eigene Fertigkeit, die beim Benutzen steigt. Neue Waffenarten lernst du beim Waffenmeister in den Hauptstädten.",
		},
		en = {
			term = "Weapon skill",
			alt = { "weapon master" },
			def = "Each weapon type has its own skill that rises as you use it. New weapon types are taught by weapon masters in the capital cities.",
		},
	},
	{
		id = "trainer",
		faq = "class-trainer",
		mark = false,
		de = {
			term = "Lehrer",
			alt = { "Trainer", "Klassenlehrer" },
			def = "NPCs, die dir gegen Gold neue Zauber oder Berufsränge beibringen. Besuche deinen Klassenlehrer alle zwei Stufen.",
		},
		en = {
			term = "Trainer",
			alt = { "class trainer" },
			def = "NPCs who teach you new spells or profession ranks for gold. Visit your class trainer every two levels.",
		},
	},
	{
		id = "pvp",
		chat = { "PvP", "PVP", "PvE", "PVE" },
		faq = "combat-pvp-flag",
		de = {
			term = "PvP",
			alt = { "Spieler gegen Spieler" },
			def = "Player versus Player: Kampf gegen andere Spieler. PvE heißt Kampf gegen computergesteuerte Gegner.",
		},
		en = {
			term = "PvP",
			alt = { "player versus player", "PvE" },
			def = "Player versus player: fighting other players. PvE means fighting computer-controlled enemies.",
		},
	},
	{
		id = "gank",
		chat = { "gank", "ganken", "Gank", "ganked" },
		de = {
			term = "Ganken",
			alt = { "Gank", "Ganker" },
			def = "Ein deutlich stärkerer Spieler der anderen Fraktion greift dich überraschend an. \"Campen\" heißt, jemanden immer wieder zu töten, sobald er wiederbelebt ist.",
		},
		en = {
			term = "Ganking",
			alt = { "gank", "ganker", "camping" },
			def = "A much stronger player of the other faction attacks you by surprise. \"Camping\" means killing someone again and again as soon as they come back to life.",
		},
	},
	{
		id = "mana",
		mark = false,
		de = {
			term = "Mana",
			def = "Die Kraftquelle der Zauberer. Mana füllst du außerhalb des Kampfes durch Trinken oder einfaches Warten auf.",
		},
		en = {
			term = "Mana",
			def = "The resource of spellcasters. Refill it out of combat by drinking or simply by waiting.",
		},
	},
	{
		id = "rage",
		mark = false,
		de = {
			term = "Wut",
			def = "Die Kraftquelle von Kriegern und Druiden in Bärengestalt. Sie steigt durch Schaden, den du machst und einsteckst.",
		},
		en = {
			term = "Rage",
			def = "The resource of warriors and druids in bear form. It builds up from damage you deal and take.",
		},
	},
	{
		id = "energy",
		mark = false,
		de = {
			term = "Energie",
			def = "Die Kraftquelle von Schurken und Druiden in Katzengestalt. Sie füllt sich schnell von selbst wieder auf.",
		},
		en = {
			term = "Energy",
			def = "The resource of rogues and druids in cat form. It refills quickly by itself.",
		},
	},
	{
		id = "pala",
		chat = { "Pala", "pala", "Pali", "pali" },
		mark = false,
		de = {
			term = "Pala",
			alt = { "Paladin" },
			def = "Kurz für Paladin.",
		},
		en = {
			term = "Pala",
			alt = { "Paladin" },
			def = "Short for paladin.",
		},
	},
	{
		id = "lock",
		chat = { "Lock", "lock" },
		mark = false,
		de = {
			term = "Lock",
			alt = { "Hexenmeister", "Warlock" },
			def = "Kurz für Hexenmeister (englisch Warlock).",
		},
		en = {
			term = "Lock",
			alt = { "Warlock" },
			def = "Short for warlock.",
		},
	},
	{
		id = "shammy",
		chat = { "Schami", "schami", "Shammy", "shammy", "Sham" },
		mark = false,
		de = {
			term = "Schami",
			alt = { "Schamane", "Sham" },
			def = "Kurz für Schamane.",
		},
		en = {
			term = "Shammy",
			alt = { "Shaman", "sham" },
			def = "Short for shaman.",
		},
	},
	{
		id = "hunt",
		chat = { "Hunt", "hunt", "Hunti" },
		mark = false,
		de = {
			term = "Hunt",
			alt = { "Jäger", "Hunter" },
			def = "Kurz für Jäger (englisch Hunter).",
		},
		en = {
			term = "Hunt",
			alt = { "Hunter" },
			def = "Short for hunter.",
		},
	},
	{
		id = "war",
		chat = { "Warri", "warri", "Warr", "warr" },
		mark = false,
		de = {
			term = "Warri",
			alt = { "Krieger", "Warrior" },
			def = "Kurz für Krieger (englisch Warrior).",
		},
		en = {
			term = "Warri",
			alt = { "Warrior", "war" },
			def = "Short for warrior.",
		},
	},
	{
		id = "sw",
		chat = { "SW" },
		mark = false,
		de = {
			term = "SW",
			def = "Sturmwind (englisch Stormwind), Hauptstadt der Menschen.",
		},
		en = {
			term = "SW",
			def = "Stormwind, the human capital city.",
		},
	},
	{
		id = "if",
		chat = { "IF" },
		mark = false,
		de = {
			term = "IF",
			def = "Eisenschmiede (englisch Ironforge), Hauptstadt der Zwerge und Gnome.",
		},
		en = {
			term = "IF",
			def = "Ironforge, capital city of dwarves and gnomes.",
		},
	},
	{
		id = "darn",
		chat = { "Darna", "Darn" },
		mark = false,
		de = {
			term = "Darna",
			def = "Darnassus, Hauptstadt der Nachtelfen.",
		},
		en = {
			term = "Darn",
			def = "Darnassus, the night elf capital city.",
		},
	},
	{
		id = "og",
		chat = { "OG", "Org", "Orgri" },
		mark = false,
		de = {
			term = "OG",
			def = "Orgrimmar, Hauptstadt der Orcs und Trolle.",
		},
		en = {
			term = "Org",
			def = "Orgrimmar, capital city of orcs and trolls.",
		},
	},
	{
		id = "uc",
		chat = { "UC" },
		mark = false,
		de = {
			term = "UC",
			def = "Unterstadt (englisch Undercity), Hauptstadt der Untoten.",
		},
		en = {
			term = "UC",
			def = "Undercity, the undead capital city.",
		},
	},
	{
		id = "tb",
		chat = { "TB" },
		mark = false,
		de = {
			term = "TB",
			def = "Donnerfels (englisch Thunder Bluff), Hauptstadt der Tauren.",
		},
		en = {
			term = "TB",
			def = "Thunder Bluff, the tauren capital city.",
		},
	},
	{
		id = "bb",
		chat = { "BB" },
		mark = false,
		de = {
			term = "BB",
			def = "Beutebucht (englisch Booty Bay), neutrale Hafenstadt im Süden des Schlingendorntals.",
		},
		en = {
			term = "BB",
			def = "Booty Bay, the neutral port town in the south of Stranglethorn Vale.",
		},
	},
	{
		id = "xroads",
		chat = { "XR", "Xroads", "XRoads", "Crossroads" },
		mark = false,
		de = {
			term = "XRoads",
			def = "Das Wegekreuz (englisch The Crossroads) im Brachland, wichtiger Ort der Horde.",
		},
		en = {
			term = "XRoads",
			def = "The Crossroads in the Barrens, an important Horde town.",
		},
	},
	{
		id = "rfc",
		chat = { "RFC" },
		mark = false,
		de = {
			term = "RFC",
			def = "Kürzel für Der Flammenschlund (Orgrimmar).",
		},
		en = {
			term = "RFC",
			def = "Short for Ragefire Chasm (Orgrimmar).",
		},
	},
	{
		id = "dm",
		chat = { "DM" },
		mark = false,
		de = {
			term = "DM",
			def = "Kürzel für Die Todesminen (Westfall) oder Düsterbruch (Feralas), je nach Stufe.",
		},
		en = {
			term = "DM",
			def = "Short for The Deadmines (Westfall) or Dire Maul (Feralas), depending on level.",
		},
	},
	{
		id = "wc",
		chat = { "WC" },
		mark = false,
		de = {
			term = "WC",
			def = "Kürzel für Die Höhlen des Wehklagens (Brachland).",
		},
		en = {
			term = "WC",
			def = "Short for Wailing Caverns (the Barrens).",
		},
	},
	{
		id = "sfk",
		chat = { "SFK", "BSF" },
		mark = false,
		de = {
			term = "SFK",
			def = "Kürzel für Burg Schattenfang (Silberwald).",
		},
		en = {
			term = "SFK",
			def = "Short for Shadowfang Keep (Silverpine Forest).",
		},
	},
	{
		id = "bfd",
		chat = { "BFD" },
		mark = false,
		de = {
			term = "BFD",
			def = "Kürzel für Die Tiefschwarze Grotte (Eschental).",
		},
		en = {
			term = "BFD",
			def = "Short for Blackfathom Deeps (Ashenvale).",
		},
	},
	{
		id = "sm",
		chat = { "SM" },
		mark = false,
		de = {
			term = "SM",
			def = "Kürzel für Das Scharlachrote Kloster (Tirisfal), mit vier Flügeln.",
		},
		en = {
			term = "SM",
			def = "Short for Scarlet Monastery (Tirisfal Glades), with four wings.",
		},
	},
	{
		id = "brd",
		chat = { "BRD", "BRT" },
		mark = false,
		de = {
			term = "BRD",
			def = "Kürzel für Die Schwarzfelstiefen (Schwarzfels).",
		},
		en = {
			term = "BRD",
			def = "Short for Blackrock Depths (Blackrock Mountain).",
		},
	},
	{
		id = "ubrs",
		chat = { "UBRS", "LBRS" },
		mark = false,
		de = {
			term = "UBRS/LBRS",
			def = "Kürzel für Die obere und untere Schwarzfelsspitze.",
		},
		en = {
			term = "UBRS/LBRS",
			def = "Short for Upper and Lower Blackrock Spire.",
		},
	},
	{
		id = "strat",
		chat = { "Strat", "strat", "Strath" },
		mark = false,
		de = {
			term = "Strat",
			def = "Kürzel für Stratholme (Östliche Pestländer).",
		},
		en = {
			term = "Strat",
			def = "Short for Stratholme (Eastern Plaguelands).",
		},
	},
	{
		id = "scholo",
		chat = { "Scholo", "scholo" },
		mark = false,
		de = {
			term = "Scholo",
			def = "Kürzel für Scholomance (Westliche Pestländer).",
		},
		en = {
			term = "Scholo",
			def = "Short for Scholomance (Western Plaguelands).",
		},
	},
	{
		id = "ony",
		chat = { "Ony", "ony" },
		mark = false,
		de = {
			term = "Ony",
			def = "Kürzel für Onyxias Hort, Schlachtzug für 40 Spieler.",
		},
		en = {
			term = "Ony",
			def = "Short for Onyxia's Lair, a 40-player raid.",
		},
	},
	-- Added after comparing with the German forum dictionary "Das WoW-Wörterbuch"
	-- (eu.forums.blizzard.com/de/wow/t/4538): only terms that fit WoW: Forever.
	-- Roles and group play
	{
		id = "mt",
		chat = { "MT", "OT", "Maintank", "Offtank" },
		mark = false,
		de = {
			term = "MT",
			alt = { "Maintank", "OT", "Offtank" },
			def = "Maintank: der Tank, der den Boss oder die wichtigsten Gegner hält. Der Offtank (OT) übernimmt Zusatzgegner oder springt ein, wenn der Maintank stirbt.",
		},
		en = {
			term = "MT",
			alt = { "main tank", "OT", "off-tank" },
			def = "Main tank: the tank who holds the boss or the most important enemies. The off-tank (OT) picks up extra enemies or takes over when the main tank dies.",
		},
	},
	{
		id = "melee",
		chat = { "Melee", "melee", "Meelee", "Nahkämpfer" },
		de = {
			term = "Melee",
			alt = { "Nahkämpfer" },
			def = "Wer im Nahkampf direkt am Gegner steht, etwa Schurken, Krieger oder Druiden in Katzengestalt. Gegenteil: Caster und Fernkämpfer, die aus der Entfernung angreifen.",
		},
		en = {
			term = "Melee",
			def = "Players who fight right next to the enemy, such as rogues, warriors or druids in cat form. The opposite are casters and ranged players who attack from a distance.",
		},
	},
	{
		id = "caster",
		chat = { "Caster", "caster", "Range", "Ranged", "ranged" },
		de = {
			term = "Caster",
			alt = { "Range", "Fernkämpfer" },
			def = "Wer vor allem Zauber wirkt, etwa Magier, Hexenmeister oder Priester. \"Range\" meint alle, die aus der Entfernung angreifen, also Caster und Jäger.",
		},
		en = {
			term = "Caster",
			alt = { "ranged" },
			def = "Players who mainly cast spells, such as mages, warlocks or priests. \"Ranged\" means everyone who attacks from a distance, so casters and hunters.",
		},
	},
	{
		id = "raid",
		chat = { "Raid", "raid", "raiden", "Raids" },
		faq = "group-raid",
		de = {
			term = "Raid",
			alt = { "Schlachtzug" },
			def = "Schlachtzug: eine Gruppe mit mehr als fünf Spielern, und die großen Instanzen für solche Gruppen. Raiden heißt, mit einem Schlachtzug dorthin zu gehen.",
		},
		en = {
			term = "Raid",
			def = "A group of more than five players, and the large instances made for such groups. Raiding means going there with a raid group.",
		},
	},
	{
		id = "rl",
		chat = { "RL", "Raidleiter", "Raidlead", "raidlead" },
		mark = false,
		de = {
			term = "RL",
			alt = { "Raidleiter" },
			def = "Raidleiter: wer den Schlachtzug führt, Taktiken erklärt und die Beute verteilt. Im Chat kann RL auch \"Real Life\" heißen, also das Leben außerhalb des Spiels.",
		},
		en = {
			term = "RL",
			alt = { "raid leader" },
			def = "Raid leader: the person who leads the raid, explains tactics and hands out loot. In chat RL can also mean \"real life\", life outside the game.",
		},
	},
	{
		id = "premade",
		chat = { "Premade", "premade" },
		de = {
			term = "Premade",
			def = "Eine Gruppe, die sich schon vorher verabredet hat, etwa aus einer Gilde. Gegenteil: PUG, eine Gruppe aus Spielern, die sich nicht kennen.",
		},
		en = {
			term = "Premade",
			def = "A group that arranged to play together beforehand, for example from a guild. The opposite is a PUG, a group of players who don't know each other.",
		},
	},
	{
		id = "lfd",
		chat = { "LFD", "Dungeonfinder", "Dungeonbrowser", "LFG-Tool", "LFG tool" },
		faq = "group-find",
		de = {
			term = "LFG-Tool",
			alt = { "Gruppensuche", "Dungeonfinder", "LFD" },
			def = "Die Gruppensuche im Spiel: Dort stellst du deine Gruppe mit Ziel und gesuchten Rollen ein oder schaust, wer schon sucht. Viele sagen auch Dungeonfinder oder LFD dazu.",
		},
		en = {
			term = "LFG tool",
			alt = { "group finder", "Dungeon Finder", "LFD" },
			def = "The game's group finder: list your group with its goal and the roles you need, or see who is already looking. Many players also call it Dungeon Finder or LFD.",
		},
	},
	{
		id = "instance",
		chat = { "Ini", "ini", "Inis", "Instanz" },
		de = {
			term = "Ini",
			alt = { "Instanz" },
			def = "Instanz: ein Dungeon oder Schlachtzug, in dem deine Gruppe eine eigene Kopie für sich hat. Andere Spieler draußen sehen euch dort nicht.",
		},
		en = {
			term = "Instance",
			alt = { "Ini" },
			def = "A dungeon or raid where your group gets its own copy. Other players outside don't see you in there.",
		},
	},
	{
		id = "boss",
		chat = { "Boss", "boss", "Bosse", "bosses" },
		de = {
			term = "Boss",
			alt = { "Bosse" },
			def = "Ein besonders starker Gegner, meist in Dungeons und Schlachtzügen, mit eigenen Fähigkeiten und besserer Beute. Die Gegner dazwischen heißen Trash.",
		},
		en = {
			term = "Boss",
			alt = { "bosses" },
			def = "A particularly strong enemy, mostly in dungeons and raids, with its own abilities and better loot. The enemies in between are called trash.",
		},
	},
	{
		id = "lockout",
		chat = { "ID", "IDs", "Reset", "reset" },
		faq = "group-lockout",
		mark = false,
		de = {
			term = "ID",
			alt = { "Raid-ID", "Reset" },
			def = "Sperre für einen Schlachtzug: Wer dort Bosse getötet hat, ist bis zum nächsten Reset an diese Instanz gebunden. \"Freie ID\" heißt, du kannst noch mit. Reset ist das Zurücksetzen, danach sind alle Gegner wieder da.",
		},
		en = {
			term = "ID",
			alt = { "lockout", "reset" },
			def = "A raid lockout: after killing bosses there you are saved to that instance until the next reset. \"Free ID\" means you can still join. A reset brings all enemies back.",
		},
	},
	{
		id = "bis",
		chat = { "BiS", "BIS" },
		lower = false,
		de = {
			term = "BiS",
			alt = { "Best in Slot" },
			def = "Best in Slot: der beste Gegenstand, den deine Klasse für einen Ausrüstungsplatz bekommen kann. BiS-Listen ändern sich mit Patches, also nimm sie als Richtung, nicht als Pflicht.",
		},
		en = {
			term = "BiS",
			alt = { "best in slot" },
			def = "Best in slot: the best item your class can get for an equipment slot. BiS lists change with patches, so treat them as a direction, not a must.",
		},
	},
	{
		id = "gear",
		chat = { "Gear", "gear", "Equip", "equip", "EQ" },
		faq = "class-equip",
		de = {
			term = "Gear",
			alt = { "Equip", "EQ", "Ausrüstung" },
			def = "Deine angelegte Ausrüstung. \"Gear checken\" heißt, jemand schaut sich an, was du trägst, etwa vor einem Dungeon.",
		},
		en = {
			term = "Gear",
			alt = { "equip", "EQ" },
			def = "Your equipped items. \"Checking gear\" means someone looks at what you wear, for example before a dungeon.",
		},
	},
	{
		id = "dkp",
		chat = { "DKP" },
		mark = false,
		de = {
			term = "DKP",
			def = "Dragon Kill Points: Punkte, die manche Gilden für Teilnahme am Schlachtzug vergeben. Mit den Punkten bietet man auf Beute. Das ist eine Gildenregel, kein Spielsystem.",
		},
		en = {
			term = "DKP",
			def = "Dragon kill points: points some guilds award for joining raids. Members spend them to bid on loot. It's a guild rule, not a game system.",
		},
	},
	{
		id = "prio",
		chat = { "Prio", "prio" },
		de = {
			term = "Prio",
			def = "Priorität: wer zuerst dran ist, etwa \"Prio auf Heiler\" bei Beute, oder welchen Gegner ihr zuerst angreift.",
		},
		en = {
			term = "Prio",
			alt = { "priority" },
			def = "Priority: who comes first, such as \"healer prio\" on loot, or which enemy you attack first.",
		},
	},
	{
		id = "brez",
		chat = { "BRez", "Brez", "brez", "Battle Rez" },
		faq = "druid-rebirth",
		mark = false,
		de = {
			term = "BRez",
			alt = { "Kampf-Rez" },
			def = "Wiederbelebung mitten im Kampf, etwa mit Wiedergeburt des Druiden. Die meisten Wiederbelebungen gehen nur außerhalb des Kampfes.",
		},
		en = {
			term = "BRez",
			alt = { "battle rez" },
			def = "A resurrection in the middle of combat, for example a druid's Rebirth. Most resurrections only work out of combat.",
		},
	},
	{
		id = "dispel",
		chat = { "Dispel", "dispel", "Dispell", "dispell", "decursen" },
		de = {
			term = "Dispel",
			alt = { "dispellen" },
			def = "Einen Effekt entfernen: schädliche Flüche, Gifte, Krankheiten oder Magie von Verbündeten, oder Stärkungen vom Gegner. Welche Art du entfernen kannst, hängt von deiner Klasse ab.",
		},
		en = {
			term = "Dispel",
			alt = { "decurse", "cleanse" },
			def = "Removing an effect: harmful curses, poisons, diseases or magic from allies, or buffs from enemies. Which kinds you can remove depends on your class.",
		},
	},
	{
		id = "farm",
		chat = { "farmen", "Farmen", "farming", "grinden", "grind" },
		de = {
			term = "Farmen",
			alt = { "Grinden" },
			def = "Immer wieder dasselbe tun, um etwas zu sammeln, etwa Gegner für Material, Gold oder Ruf töten. Grinden meint meist dasselbe für Erfahrung.",
		},
		en = {
			term = "Farming",
			alt = { "grinding" },
			def = "Doing the same thing again and again to collect something, such as killing enemies for materials, gold or reputation. Grinding usually means the same for experience.",
		},
	},
	{
		id = "stack",
		chat = { "Stack", "stack", "Stacks", "stacks", "stacken" },
		faq = "gold-stacks",
		de = {
			term = "Stack",
			alt = { "Stapel" },
			def = "Ein Stapel gleicher Gegenstände in einem Taschenplatz, oder wie oft ein Effekt auf jemandem liegt (\"5 Stacks\"). \"Stacken\" im Kampf heißt auch: alle stellen sich auf einen Punkt.",
		},
		en = {
			term = "Stack",
			def = "A pile of identical items in one bag slot, or how many times an effect is on someone (\"5 stacks\"). \"Stack up\" in a fight also means: everyone stands on one spot.",
		},
	},
	{
		id = "transmog",
		chat = { "Transmog", "transmog", "Mog", "mog", "moggen" },
		faq = "start-transmog",
		de = {
			term = "Transmog",
			alt = { "moggen", "Transmogrifikation" },
			def = "Das Aussehen eines Gegenstands auf einen anderen übertragen, die Werte bleiben. In WoW: Forever ist das freiwillig und läuft über den Transmogrifizierer.",
		},
		en = {
			term = "Transmog",
			alt = { "mog", "transmogrification" },
			def = "Giving an item the look of another item; the stats stay the same. In WoW: Forever it is optional and done at the transmogrifier.",
		},
	},
	{
		id = "bg",
		chat = { "BG", "BGs" },
		mark = false,
		de = {
			term = "BG",
			alt = { "Schlachtfeld" },
			def = "Battleground: eine PvP-Karte, auf der zwei Teams mit festen Zielen gegeneinander kämpfen, etwa Flaggen erobern oder Punkte halten. Dafür gibt es Ehre.",
		},
		en = {
			term = "BG",
			alt = { "battleground" },
			def = "Battleground: a PvP map where two teams fight each other over fixed goals, such as capturing flags or holding points. It rewards honor.",
		},
	},
	{
		id = "av",
		chat = { "AV" },
		mark = false,
		de = {
			term = "AV",
			def = "Kürzel für Alteractal, ein großes Schlachtfeld im Alteracgebirge.",
		},
		en = {
			term = "AV",
			def = "Short for Alterac Valley, a large battleground in the Alterac Mountains.",
		},
	},
	{
		id = "queue",
		chat = { "Queue", "queue", "queuen" },
		de = {
			term = "Queue",
			alt = { "Warteschlange" },
			def = "Warteschlange, etwa für ein Schlachtfeld oder beim Einloggen, wenn sehr viele Spieler gleichzeitig wollen. \"In der Queue\" heißt: angemeldet und warten.",
		},
		en = {
			term = "Queue",
			def = "A waiting line, for example for a battleground or at login when very many players want in at once. \"In queue\" means signed up and waiting.",
		},
	},
	{
		id = "ic-ooc",
		chat = { "IC", "OOC", "ooc" },
		faq = "social-rp",
		mark = false,
		de = {
			term = "IC/OOC",
			def = "Im Rollenspiel: In Character heißt, du sprichst als deine Figur; Out of Character, du sprichst als Spieler. OOC kann auch \"außerhalb des Kampfes\" heißen.",
		},
		en = {
			term = "IC/OOC",
			def = "In role-play: in character means you speak as your character; out of character, you speak as yourself. OOC can also mean \"out of combat\".",
		},
	},
	{
		id = "main",
		chat = { "Main", "Mainchar" },
		mark = false,
		de = {
			term = "Main",
			alt = { "Mainchar" },
			def = "Dein Hauptcharakter, mit dem du am meisten spielst. Die anderen Charaktere heißen Twinks.",
		},
		en = {
			term = "Main",
			def = "Your main character, the one you play most. Your other characters are alts.",
		},
	},
	{
		id = "twink",
		chat = { "Twink", "twink", "Twinks", "alts" },
		faq = "start-alts",
		mark = false,
		de = {
			term = "Twink",
			alt = { "Alt" },
			def = "Ein weiterer Charakter neben deinem Main.",
		},
		en = {
			term = "Alt",
			alt = { "twink" },
			def = "Another character besides your main.",
		},
	},
	{
		id = "npc",
		chat = { "NPC", "NPCs" },
		de = {
			term = "NPC",
			def = "Non-Player Character: jede Figur, die vom Spiel gesteuert wird, etwa Händler, Lehrer oder Questgeber. Feindliche NPCs heißen meist Mobs.",
		},
		en = {
			term = "NPC",
			def = "Non-player character: any figure the game controls, such as vendors, trainers or quest givers. Hostile NPCs are usually called mobs.",
		},
	},
	-- Items and professions
	{
		id = "pot",
		chat = { "Pot", "pot", "Pots", "pots", "potten" },
		mark = false,
		de = {
			term = "Pot",
			alt = { "Trank" },
			def = "Ein Trank, etwa ein Heil- oder Manatrank. Tränke haben eine gemeinsame Abklingzeit, du kannst also nicht mehrere direkt hintereinander trinken.",
		},
		en = {
			term = "Pot",
			alt = { "potion" },
			def = "A potion, such as a healing or mana potion. Potions share a cooldown, so you can't drink several right after each other.",
		},
	},
	{
		id = "flask",
		chat = { "Flask", "flask", "Fläschchen" },
		de = {
			term = "Fläschchen",
			alt = { "Flask" },
			def = "Ein besonders langer Alchemie-Trank, dessen Wirkung auch den Tod übersteht. Wird meist im Schlachtzug benutzt.",
		},
		en = {
			term = "Flask",
			def = "A particularly long-lasting alchemy potion whose effect even survives death. Mostly used in raids.",
		},
	},
	{
		id = "healthstone",
		chat = { "Gesu", "gesu" },
		faq = "warlock-healthstone",
		mark = false,
		de = {
			term = "Gesu",
			alt = { "Gesundheitsstein" },
			def = "Gesundheitsstein: ein Stein, den Hexenmeister herstellen und verteilen. Er heilt dich sofort.",
		},
		en = {
			term = "Healthstone",
			def = "A stone that warlocks create and hand out. It heals you instantly.",
		},
	},
	{
		id = "soulstone",
		chat = { "SS", "Soulstone", "soulstone" },
		faq = "warlock-soulstone",
		mark = false,
		de = {
			term = "SS",
			alt = { "Seelenstein" },
			def = "Seelenstein: ein Hexenmeister legt ihn auf jemanden, der sich nach dem Tod selbst wiederbeleben kann. Meist auf den Heiler.",
		},
		en = {
			term = "SS",
			alt = { "soulstone" },
			def = "Soulstone: a warlock puts it on someone, who can then resurrect themselves after dying. Usually on the healer.",
		},
	},
	{
		id = "trinket",
		chat = { "Trinket", "trinket", "Trinkets", "trinkets" },
		de = {
			term = "Trinket",
			alt = { "Schmuckstück" },
			def = "Schmuckstück: zwei Ausrüstungsplätze für Gegenstände mit besonderer Wirkung, oft zum Benutzen mit Abklingzeit.",
		},
		en = {
			term = "Trinket",
			def = "Two equipment slots for items with a special effect, often one you use with a cooldown.",
		},
	},
	{
		id = "hand-weapons",
		chat = { "1H", "2H" },
		mark = false,
		de = {
			term = "1H/2H",
			alt = { "Einhand", "Zweihand" },
			def = "Einhand- und Zweihandwaffe. 1H-Waffen lassen eine Hand frei für Schild, Nebenhand oder eine zweite Waffe, 2H-Waffen brauchen beide Hände.",
		},
		en = {
			term = "1H/2H",
			alt = { "one-hand", "two-hand" },
			def = "One-hand and two-hand weapon. One-hand weapons leave a hand free for a shield, an off-hand item or a second weapon; two-hand weapons need both hands.",
		},
	},
	{
		id = "disenchant",
		chat = { "dissen", "Dissen", "entzen", "Entzen", "disenchant" },
		faq = "prof-enchanting-disenchant",
		mark = false,
		de = {
			term = "Dissen",
			alt = { "Entzaubern", "Entzen" },
			def = "Entzaubern: Verzauberer zerlegen grüne und bessere Gegenstände in Material. \"Kann das jemand dissen?\" fragt nach einem Verzauberer.",
		},
		en = {
			term = "DE",
			alt = { "disenchant" },
			def = "Disenchant: enchanters break green and better items into materials. \"Can someone DE this?\" asks for an enchanter.",
		},
	},
	{
		id = "prof-short",
		chat = { "VZ", "Ingi", "ingi", "LV", "Ench", "Engi", "engi", "LW" },
		faq = "prof-list",
		mark = false,
		de = {
			term = "VZ/Ingi/LV",
			def = "Kürzel für Berufe: VZ ist Verzauberkunst, Ingi Ingenieurskunst, LV Lederverarbeitung. BB kann Bergbau heißen, aber auch Beutebucht.",
		},
		en = {
			term = "Engi/LW",
			def = "Profession short forms: Engi is engineering, LW leatherworking, Ench enchanting. In German chat VZ, Ingi and LV mean the same.",
		},
	},
	-- Stats and specializations
	{
		id = "stats-short",
		chat = { "Stam", "stam", "Str", "str", "Agi", "agi", "Int", "Spi", "spi" },
		faq = "class-stats",
		mark = false,
		de = {
			term = "Stam/Str/Agi/Int",
			def = "Kürzel für Werte: Stam ist Ausdauer, Str Stärke, Agi Beweglichkeit, Int Intelligenz und Spi Willenskraft.",
		},
		en = {
			term = "Stam/Str/Agi/Int",
			def = "Short forms of stats: Stam is Stamina, Str Strength, Agi Agility, Int Intellect and Spi Spirit.",
		},
	},
	{
		id = "spec-short",
		chat = { "Prot", "prot", "Holy", "holy", "Resto", "resto", "Feral", "feral", "Ele", "ele", "Enh", "enh", "Enhancer", "Ret", "ret", "Retri", "Fury", "fury", "Furor", "Arms", "Destro", "destro", "Affli", "affli", "Diszi", "diszi", "Disc", "BM", "MM", "SV" },
		faq = "class-talents",
		mark = false,
		de = {
			term = "Prot/Holy/Resto …",
			def = "Kurznamen der Ausrichtungen: Prot = Schutz, Holy = Heilig, Resto = Wiederherstellung, Ele/Enh = Elementar/Verstärkung, Ret = Vergeltung, Fury/Arms = Furor/Waffen, Destro/Affli = Zerstörung/Gebrechen, Diszi = Disziplin, BM/MM/SV = Tierherrschaft/Treffsicherheit/Überleben.",
		},
		en = {
			term = "Prot/Holy/Resto …",
			def = "Short spec names: Prot = Protection, Resto = Restoration, Ele/Enh = Elemental/Enhancement, Ret = Retribution, Destro/Affli = Destruction/Affliction, Disc = Discipline, BM/MM/SV = Beast Mastery/Marksmanship/Survival.",
		},
	},
	{
		id = "dudu",
		chat = { "Dudu", "dudu", "Dudus" },
		mark = false,
		de = {
			term = "Dudu",
			alt = { "Druide" },
			def = "Spitzname für Druide.",
		},
		en = {
			term = "Dudu",
			def = "German chat nickname for druid.",
		},
	},
	{
		id = "nerf",
		chat = { "Nerf", "nerf", "generft", "nerfed", "OP", "imba" },
		mark = false,
		de = {
			term = "Nerf",
			alt = { "OP", "imba" },
			def = "Ein Nerf ist eine Abschwächung durch einen Patch, das Gegenteil heißt Buff. Was als zu stark gilt, nennen Spieler OP (overpowered) oder imba.",
		},
		en = {
			term = "Nerf",
			alt = { "OP" },
			def = "A nerf is a weakening by a patch; the opposite is a buff. Things that seem too strong are called OP (overpowered).",
		},
	},
	-- Interface
	{
		id = "addon",
		chat = { "Addon", "addon", "Addons", "addons", "AddOn" },
		faq = "ui-addons",
		-- the addon's own texts say "Addon" all the time
		mark = false,
		de = {
			term = "Addon",
			def = "Eine Erweiterung der Spieloberfläche von Spielern, etwa für Taschen, Quests oder Kampfwarnungen. AskAzeroth ist auch ein Addon.",
		},
		en = {
			term = "Addon",
			def = "A player-made extension of the game's interface, for bags, quests or combat warnings, for example. AskAzeroth is an addon too.",
		},
	},
	{
		id = "ui",
		chat = { "UI" },
		mark = false,
		de = {
			term = "UI",
			alt = { "Oberfläche" },
			def = "User Interface: die Spieloberfläche mit Leisten, Fenstern und Karte. \"/reload\" lädt sie neu, etwa nach dem Ändern von Addons.",
		},
		en = {
			term = "UI",
			alt = { "interface" },
			def = "User interface: the game's bars, windows and map. \"/reload\" reloads it, for example after changing addons.",
		},
	},
	{
		id = "ignore",
		chat = { "Igno", "igno", "ignore", "Ignore" },
		faq = "social-ignore",
		mark = false,
		de = {
			term = "Igno",
			alt = { "Ignorieren" },
			def = "Ignorierliste: Spieler darauf siehst du im Chat nicht mehr, und sie können dich nicht anflüstern oder einladen. Rechtsklick auf den Namen, dann Ignorieren.",
		},
		en = {
			term = "Ignore",
			def = "Ignore list: you no longer see these players in chat, and they can't whisper or invite you. Right-click the name, then Ignore.",
		},
	},
	{
		id = "lag",
		chat = { "Lag", "lag", "laggt", "lagt", "laggy", "DC" },
		mark = false,
		de = {
			term = "Lag",
			alt = { "DC" },
			def = "Verzögerung durch eine langsame Verbindung: das Spiel reagiert spät oder ruckelt. DC (Disconnect) heißt, die Verbindung ist ganz abgebrochen.",
		},
		en = {
			term = "Lag",
			alt = { "DC" },
			def = "Delay from a slow connection: the game reacts late or stutters. DC (disconnect) means the connection dropped completely.",
		},
	},
	-- Chat slang
	{
		id = "np",
		chat = { "np", "NP" },
		mark = false,
		de = { term = "np", def = "No problem: kein Problem, gern geschehen." },
		en = { term = "np", def = "No problem; you're welcome." },
	},
	{
		id = "wb",
		chat = { "wb", "WB" },
		mark = false,
		de = { term = "wb", def = "Welcome back: willkommen zurück, etwa wenn jemand wieder am Platz ist." },
		en = { term = "wb", def = "Welcome back, for example when someone returns to the keyboard." },
	},
	{
		id = "omw",
		chat = { "omw", "OMW" },
		mark = false,
		de = { term = "omw", def = "On my way: bin unterwegs, komme gleich." },
		en = { term = "omw", def = "On my way." },
	},
	{
		id = "mom",
		chat = { "sec", "1sec", "1 sec" },
		mark = false,
		de = { term = "sec", alt = { "mom" }, def = "One second bzw. Moment: kurz warten, bin gleich so weit." },
		en = { term = "sec", alt = { "1 sec" }, def = "One second: wait a moment, almost ready." },
	},
	{
		id = "hf",
		chat = { "hf", "HF", "gl", "GL", "gl hf" },
		mark = false,
		de = { term = "hf", alt = { "gl" }, def = "Have fun: viel Spaß. Oft zusammen mit gl (good luck, viel Glück)." },
		en = { term = "hf", alt = { "gl" }, def = "Have fun, often together with gl (good luck)." },
	},
	{
		id = "gn8",
		chat = { "gn8", "GN8", "n8", "gn", "GN" },
		mark = false,
		de = { term = "gn8", alt = { "n8" }, def = "Gute Nacht." },
		en = { term = "gn", alt = { "gn8" }, def = "Good night." },
	},
	{
		id = "ka",
		chat = { "kA", "KA", "k.A." },
		mark = false,
		de = { term = "kA", def = "Keine Ahnung." },
		en = { term = "kA", def = "German chat short form for \"no idea\"." },
	},
	{
		id = "sry",
		chat = { "sry", "Sry", "SRY" },
		mark = false,
		de = { term = "sry", def = "Sorry: Entschuldigung." },
		en = { term = "sry", def = "Sorry." },
	},
	{
		id = "pls",
		chat = { "pls", "plz", "plx", "Pls", "Plz" },
		mark = false,
		de = { term = "pls", alt = { "plz" }, def = "Please: bitte." },
		en = { term = "pls", alt = { "plz" }, def = "Please." },
	},
	{
		id = "dnd",
		chat = { "DND", "dnd" },
		mark = false,
		de = { term = "DND", def = "Do not disturb: bitte nicht stören. Mit /dnd setzt du diesen Status selbst." },
		en = { term = "DND", def = "Do not disturb. Type /dnd to set this status yourself." },
	},
	{
		id = "inc",
		chat = { "inc", "INC", "Inc" },
		mark = false,
		de = {
			term = "inc",
			def = "Incoming: Gegner kommen. Eine Warnung an die Gruppe, etwa wenn eine Patrouille oder ein Spieler der anderen Fraktion naht.",
		},
		en = {
			term = "inc",
			def = "Incoming: enemies are coming. A warning to the group, for example when a patrol or a player of the other faction approaches.",
		},
	},
	{
		id = "oor",
		chat = { "OOR", "oor" },
		mark = false,
		de = { term = "OOR", def = "Out of range: außer Reichweite, etwa wenn der Heiler dich nicht mehr erreicht." },
		en = { term = "OOR", def = "Out of range, for example when the healer can't reach you any more." },
	},
	{
		id = "noob",
		chat = { "Noob", "noob", "n00b", "Newbie", "newbie", "Noobs", "noobs" },
		mark = false,
		de = {
			term = "Noob",
			alt = { "Newbie" },
			def = "Eigentlich ein Neuling, im Chat aber oft abwertend gemeint. Neu sein ist kein Fehler: Jeder hat mal angefangen, und mit AskAzeroth kannst du einfach fragen.",
		},
		en = {
			term = "Noob",
			alt = { "newbie" },
			def = "Originally a new player, but in chat often meant as an insult. Being new is no fault: everyone started once, and with AskAzeroth you can simply ask.",
		},
	},
	-- Dungeons (the classic dungeons that are in WoW: Forever)
	{
		id = "gnomer",
		chat = { "Gnomer", "gnomer", "Gnomeregan" },
		mark = false,
		de = { term = "Gnomer", alt = { "Gnome" }, def = "Kürzel für Gnomeregan, Dungeon in Dun Morogh." },
		en = { term = "Gnomer", def = "Short for Gnomeregan, a dungeon in Dun Morogh." },
	},
	{
		id = "rfk",
		chat = { "RFK", "Kral" },
		mark = false,
		de = { term = "RFK", alt = { "Kral" }, def = "Kürzel für den Kral der Klingenhauer, Dungeon im Brachland." },
		en = { term = "RFK", def = "Short for Razorfen Kraul, a dungeon in the Barrens." },
	},
	{
		id = "rfd",
		chat = { "RFD" },
		mark = false,
		de = { term = "RFD", alt = { "Hügel" }, def = "Kürzel für die Hügel der Klingenhauer, Dungeon im Brachland." },
		en = { term = "RFD", def = "Short for Razorfen Downs, a dungeon in the Barrens." },
	},
	{
		id = "stocks",
		chat = { "Stocks", "stocks", "Verlies" },
		mark = false,
		de = { term = "Verlies", alt = { "Stocks" }, def = "Das Verlies, Dungeon mitten in Sturmwind." },
		en = { term = "Stocks", def = "Short for The Stockade, a dungeon in the middle of Stormwind." },
	},
	{
		id = "ulda",
		chat = { "Ulda", "ulda", "Uldaman" },
		mark = false,
		de = { term = "Ulda", def = "Kürzel für Uldaman, Dungeon im Ödland." },
		en = { term = "Ulda", def = "Short for Uldaman, a dungeon in the Badlands." },
	},
	{
		id = "zf",
		chat = { "ZF" },
		mark = false,
		de = { term = "ZF", def = "Kürzel für Zul'Farrak, Dungeon in Tanaris." },
		en = { term = "ZF", def = "Short for Zul'Farrak, a dungeon in Tanaris." },
	},
	{
		id = "mara",
		chat = { "Mara", "mara", "Maraudon" },
		mark = false,
		de = { term = "Mara", def = "Kürzel für Maraudon, Dungeon in Desolace." },
		en = { term = "Mara", def = "Short for Maraudon, a dungeon in Desolace." },
	},
	{
		id = "st",
		chat = { "ST" },
		mark = false,
		de = { term = "ST", alt = { "Tempel" }, def = "Kürzel für den Versunkenen Tempel (Tempel von Atal'Hakkar), Dungeon in den Sümpfen des Elends." },
		en = { term = "ST", def = "Short for the Sunken Temple (Temple of Atal'Hakkar), a dungeon in the Swamp of Sorrows." },
	},
})
