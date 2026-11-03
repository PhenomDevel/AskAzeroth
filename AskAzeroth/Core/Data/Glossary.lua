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
		fr = {
			term = "Aggro",
			alt = { "menace" },
			def = "À quel point un ennemi veut vous attaquer. Celui qui a le plus d'aggro est attaqué. Les dégâts et les soins génèrent de l'aggro ; le tank la garde avec des provocations et des dégâts réguliers.",
		},
		es = {
			term = "Aggro",
			alt = { "amenaza" },
			def = "Cuánto quiere atacarte un enemigo. Quien tiene más aggro es atacado. El daño y la sanación generan aggro; el tanque la mantiene con provocaciones y daño constante.",
		},
		it = {
			term = "Aggro",
			alt = { "minaccia" },
			def = "Quanto un nemico vuole attaccarti. Chi ha più aggro viene attaccato. Danni e cure generano aggro; il tank la tiene su di sé con provocazioni e danni costanti.",
		},
		ru = {
			term = "Агро",
			alt = { "угроза", "aggro" },
			def = "Насколько сильно враг хочет вас атаковать. Атакуют того, у кого больше всего агро. Урон и лечение создают агро; танк удерживает его провокациями и постоянным уроном.",
		},
		pt = {
			term = "Aggro",
			alt = { "ameaça" },
			def = "O quanto um inimigo quer atacar você. Quem tem mais aggro é atacado. Dano e cura geram aggro; o tanque o mantém com provocações e dano constante.",
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
		fr = {
			term = "Tank",
			def = "Le rôle qui retient l'attention des ennemis et encaisse les coups, en général un guerrier, un druide en forme d'ours ou un paladin.",
		},
		es = {
			term = "Tanque",
			alt = { "tank" },
			def = "El rol que atrae la atención de los enemigos y recibe los golpes, normalmente un guerrero, un druida en forma de oso o un paladín.",
		},
		it = {
			term = "Tank",
			def = "Il ruolo che attira l'attenzione dei nemici e incassa i colpi, di solito un guerriero, un druido in forma d'orso o un paladino.",
		},
		ru = {
			term = "Танк",
			alt = { "tank" },
			def = "Роль, которая держит внимание врагов и принимает удары на себя, обычно воин, друид в облике медведя или паладин.",
		},
		pt = {
			term = "Tanque",
			alt = { "tank" },
			def = "O papel que prende a atenção dos inimigos e aguenta os golpes, normalmente um guerreiro, um druida em forma de urso ou um paladino.",
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
		fr = {
			term = "Soigneur",
			alt = { "heal" },
			def = "Le rôle qui garde le groupe en vie : prêtres, druides, chamans et paladins.",
		},
		es = {
			term = "Sanador",
			alt = { "healer", "heal" },
			def = "El rol que mantiene vivo al grupo: sacerdotes, druidas, chamanes y paladines.",
		},
		it = {
			term = "Curatore",
			alt = { "healer", "heal" },
			def = "Il ruolo che tiene in vita il gruppo: sacerdoti, druidi, sciamani e paladini.",
		},
		ru = {
			term = "Хил",
			alt = { "лекарь", "хилер", "healer" },
			def = "Роль, которая сохраняет группе жизнь: жрецы, друиды, шаманы и паладины.",
		},
		pt = {
			term = "Curador",
			alt = { "healer", "heal" },
			def = "O papel que mantém o grupo vivo: sacerdotes, druidas, xamãs e paladinos.",
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
		fr = {
			term = "DPS",
			alt = { "DD" },
			def = "Dégâts par seconde ; dans le chat, souvent le rôle qui inflige les dégâts, par opposition au tank et au soigneur.",
		},
		es = {
			term = "DPS",
			alt = { "DD" },
			def = "Daño por segundo; en el chat suele ser el rol que hace el daño, frente al tanque y al sanador.",
		},
		it = {
			term = "DPS",
			alt = { "DD" },
			def = "Danni al secondo; in chat di solito il ruolo che fa i danni, in contrapposizione a tank e curatore.",
		},
		ru = {
			term = "ДД",
			alt = { "DPS", "дпс", "DD" },
			def = "Урон в секунду; в чате обычно роль, которая наносит урон, в отличие от танка и хила.",
		},
		pt = {
			term = "DPS",
			alt = { "DD" },
			def = "Dano por segundo; no chat, geralmente o papel que causa o dano, em oposição a tanque e curador.",
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
		fr = {
			term = "DoT",
			alt = { "dégâts sur la durée" },
			def = "Dégâts sur la durée : un effet qui inflige des dégâts encore et encore pendant quelques secondes, comme les poisons ou Corruption.",
		},
		es = {
			term = "DoT",
			alt = { "daño en el tiempo" },
			def = "Daño en el tiempo: un efecto que hace daño una y otra vez durante unos segundos, como los venenos o Corrupción.",
		},
		it = {
			term = "DoT",
			alt = { "danni nel tempo" },
			def = "Danni nel tempo: un effetto che infligge danni ripetutamente per alcuni secondi, come i veleni o Corruzione.",
		},
		ru = {
			term = "ДоТ",
			alt = { "DoT", "периодический урон" },
			def = "Периодический урон: эффект, который снова и снова наносит урон в течение нескольких секунд, например яды или Порча.",
		},
		pt = {
			term = "DoT",
			alt = { "dano ao longo do tempo" },
			def = "Dano ao longo do tempo: um efeito que causa dano repetidamente por alguns segundos, como venenos ou Corrupção.",
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
		fr = {
			term = "HoT",
			alt = { "soins sur la durée" },
			def = "Soins sur la durée : un effet qui soigne encore et encore pendant quelques secondes, comme Rénovation ou Récupération.",
		},
		es = {
			term = "HoT",
			alt = { "sanación en el tiempo" },
			def = "Sanación en el tiempo: un efecto que sana una y otra vez durante unos segundos, como Renovar o Rejuvenecimiento.",
		},
		it = {
			term = "HoT",
			alt = { "cure nel tempo" },
			def = "Cure nel tempo: un effetto che cura ripetutamente per alcuni secondi, come Rinnovamento o Ringiovanimento.",
		},
		ru = {
			term = "ХоТ",
			alt = { "HoT", "периодическое лечение" },
			def = "Периодическое лечение: эффект, который снова и снова лечит в течение нескольких секунд, например Обновление или Омоложение.",
		},
		pt = {
			term = "HoT",
			alt = { "cura ao longo do tempo" },
			def = "Cura ao longo do tempo: um efeito que cura repetidamente por alguns segundos, como Renovar ou Rejuvenescer.",
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
		fr = {
			term = "AoE",
			alt = { "zone d'effet" },
			def = "Zone d'effet : une attaque ou un sort qui touche toutes les cibles d'une zone. « Pull AoE » veut dire rassembler beaucoup d'ennemis et les vaincre ensemble.",
		},
		es = {
			term = "AoE",
			alt = { "área de efecto" },
			def = "Área de efecto: un ataque o hechizo que golpea a todos los objetivos de una zona. «Pull de AoE» significa juntar muchos enemigos y derrotarlos a la vez.",
		},
		it = {
			term = "AoE",
			alt = { "ad area" },
			def = "Ad area: un attacco o incantesimo che colpisce tutti i bersagli in una zona. «Pull AoE» significa radunare molti nemici e sconfiggerli insieme.",
		},
		ru = {
			term = "АоЕ",
			alt = { "AoE" },
			def = "Удар по области: атака или заклинание по всем целям в зоне. «АоЕ-пулл» значит собрать много врагов и убить их вместе.",
		},
		pt = {
			term = "AoE",
			alt = { "área de efeito" },
			def = "Área de efeito: um ataque ou feitiço que atinge todos os alvos de uma área. «Pull de AoE» significa juntar muitos inimigos e derrotá-los juntos.",
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
		fr = {
			term = "CC",
			def = "Contrôle de foule : des capacités qui sortent un ennemi du combat pendant un moment, comme Métamorphose, Assommer, Peur ou Piège givrant. Ne frappez pas un ennemi contrôlé, sinon il se réveille.",
		},
		es = {
			term = "CC",
			alt = { "control de masas" },
			def = "Control de masas: habilidades que sacan a un enemigo del combate un rato, como Polimorfia, Aporrear, Miedo o Trampa congelante. No golpees a un enemigo controlado o se despertará.",
		},
		it = {
			term = "CC",
			alt = { "crowd control" },
			def = "Crowd control: abilità che tolgono un nemico dal combattimento per un po', come Metamorfosi, Tramortire, Paura o Trappola Congelante. Non colpire un nemico controllato, altrimenti si risveglia.",
		},
		ru = {
			term = "Контроль",
			alt = { "CC" },
			def = "Контроль: способности, которые на время выводят врага из боя, например Превращение, Ошеломление, Страх или Замораживающая ловушка. Не бейте врага под контролем, иначе он очнётся.",
		},
		pt = {
			term = "CC",
			alt = { "controle de grupo" },
			def = "Controle de grupo: habilidades que tiram um inimigo da luta por um tempo, como Metamorfose, Aturdir, Medo ou Armadilha Congelante. Não bata em um inimigo controlado, senão ele acorda.",
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
		fr = {
			term = "Kiting",
			alt = { "kite" },
			def = "Garder un ennemi à distance tout en l'attaquant : le ralentir, s'éloigner, attaquer à nouveau. Typique des chasseurs et des mages.",
		},
		es = {
			term = "Kitear",
			alt = { "kiting", "kite" },
			def = "Mantener a un enemigo a distancia mientras lo atacas: ralentizarlo, alejarte y volver a atacar. Típico de cazadores y magos.",
		},
		it = {
			term = "Kiting",
			alt = { "kite", "kitare" },
			def = "Tenere un nemico a distanza mentre lo attacchi: rallentarlo, allontanarti, attaccare di nuovo. Tipico di cacciatori e maghi.",
		},
		ru = {
			term = "Кайт",
			alt = { "kite", "кайтить" },
			def = "Держать врага на расстоянии и атаковать: замедлить, отойти, снова ударить. Типично для охотников и магов.",
		},
		pt = {
			term = "Kitar",
			alt = { "kiting", "kite" },
			def = "Manter um inimigo à distância enquanto o ataca: deixá-lo lento, se afastar e atacar de novo. Típico de caçadores e magos.",
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
		fr = {
			term = "Pull",
			alt = { "puller" },
			def = "Attaquer un ennemi ou un groupe pour lancer le combat. En donjon, c'est en général le tank qui pull.",
		},
		es = {
			term = "Pull",
			alt = { "pullear" },
			def = "Atacar a un enemigo o a un grupo para empezar el combate. En las mazmorras suele pullear el tanque.",
		},
		it = {
			term = "Pull",
			alt = { "pullare" },
			def = "Attaccare un nemico o un gruppo per iniziare il combattimento. Nelle spedizioni di solito pulla il tank.",
		},
		ru = {
			term = "Пулл",
			alt = { "pull", "пулить" },
			def = "Атаковать врага или группу, чтобы начать бой. В подземельях обычно пулит танк.",
		},
		pt = {
			term = "Pull",
			alt = { "puxar" },
			def = "Atacar um inimigo ou um grupo para começar a luta. Nas masmorras, normalmente quem puxa é o tanque.",
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
		fr = {
			term = "Add",
			alt = { "adds" },
			def = "Un ennemi qui rejoint un combat par surprise, par exemple un garde proche ou un serviteur invoqué.",
		},
		es = {
			term = "Add",
			alt = { "adds" },
			def = "Un enemigo que se une a un combate de forma inesperada, por ejemplo un guardia cercano o un ayudante invocado.",
		},
		it = {
			term = "Add",
			alt = { "adds" },
			def = "Un nemico che si unisce a un combattimento all'improvviso, per esempio una guardia vicina o un servitore evocato.",
		},
		ru = {
			term = "Адд",
			alt = { "add", "адды" },
			def = "Враг, который неожиданно вступает в бой, например стражник рядом или призванный помощник.",
		},
		pt = {
			term = "Add",
			alt = { "adds" },
			def = "Um inimigo que entra numa luta de surpresa, por exemplo um guarda próximo ou um ajudante invocado.",
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
		fr = {
			term = "OOM",
			alt = { "plus de mana" },
			def = "Out of mana : plus de mana. Les soigneurs l'écrivent quand le groupe doit attendre qu'ils aient bu.",
		},
		es = {
			term = "OOM",
			alt = { "sin maná" },
			def = "Out of mana: sin maná. Los sanadores lo escriben cuando el grupo debe esperar a que beban.",
		},
		it = {
			term = "OOM",
			alt = { "senza mana" },
			def = "Out of mana: niente mana. I curatori lo scrivono quando il gruppo deve aspettare che abbiano bevuto.",
		},
		ru = {
			term = "ООМ",
			alt = { "OOM", "нет маны" },
			def = "Out of mana: мана кончилась. Хилы пишут это, когда группе нужно подождать, пока они попьют.",
		},
		pt = {
			term = "OOM",
			alt = { "sem mana" },
			def = "Out of mana: sem mana. Curadores escrevem isso quando o grupo deve esperar até eles beberem.",
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
		fr = {
			term = "Proc",
			alt = { "procs" },
			def = "Un effet qui se déclenche tout seul avec une certaine chance, par exemple grâce à une arme ou un talent.",
		},
		es = {
			term = "Proc",
			alt = { "procs" },
			def = "Un efecto que se activa solo con cierta probabilidad, por ejemplo por un arma o un talento.",
		},
		it = {
			term = "Proc",
			alt = { "procs" },
			def = "Un effetto che si attiva da solo con una certa probabilità, per esempio grazie a un'arma o a un talento.",
		},
		ru = {
			term = "Прок",
			alt = { "proc", "проки" },
			def = "Эффект, который срабатывает сам с определённым шансом, например от оружия или таланта.",
		},
		pt = {
			term = "Proc",
			alt = { "procs" },
			def = "Um efeito que dispara sozinho com certa chance, por exemplo por causa de uma arma ou de um talento.",
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
		fr = {
			term = "Buff",
			alt = { "buffs" },
			def = "Un effet positif sur vous, comme Mot de pouvoir : Robustesse ou Bénédiction de puissance. Vos buffs s'affichent en haut à droite à côté de la minicarte.",
		},
		es = {
			term = "Buff",
			alt = { "buffs" },
			def = "Un efecto positivo sobre ti, como Palabra de poder: entereza o Bendición de poderío. Tus buffs aparecen arriba a la derecha junto al minimapa.",
		},
		it = {
			term = "Buff",
			alt = { "buffs" },
			def = "Un effetto positivo su di te, come Parola del Potere: Vigore o Benedizione della Potenza. I tuoi buff si vedono in alto a destra accanto alla minimappa.",
		},
		ru = {
			term = "Бафф",
			alt = { "buff", "баффы" },
			def = "Положительный эффект на вас, например Слово силы: Стойкость или Благословение могущества. Ваши баффы видны справа вверху рядом с миникартой.",
		},
		pt = {
			term = "Buff",
			alt = { "buffs" },
			def = "Um efeito positivo em você, como Palavra de Poder: Fortitude ou Bênção do Poder. Seus buffs aparecem no canto superior direito, ao lado do minimapa.",
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
		fr = {
			term = "Debuff",
			alt = { "debuffs" },
			def = "Un effet négatif sur vous ou un ennemi, comme un poison, une malédiction ou un ralentissement.",
		},
		es = {
			term = "Debuff",
			alt = { "debuffs" },
			def = "Un efecto negativo sobre ti o un enemigo, como un veneno, una maldición o una ralentización.",
		},
		it = {
			term = "Debuff",
			alt = { "debuffs" },
			def = "Un effetto negativo su di te o su un nemico, come un veleno, una maledizione o un rallentamento.",
		},
		ru = {
			term = "Дебафф",
			alt = { "debuff", "дебаффы" },
			def = "Отрицательный эффект на вас или на враге, например яд, проклятие или замедление.",
		},
		pt = {
			term = "Debuff",
			alt = { "debuffs" },
			def = "Um efeito negativo em você ou num inimigo, como veneno, maldição ou lentidão.",
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
		fr = {
			term = "Cooldown",
			alt = { "CD", "temps de recharge" },
			def = "Le temps d'attente avant qu'une capacité soit de nouveau prête. « En CD » veut dire qu'elle se recharge.",
		},
		es = {
			term = "Cooldown",
			alt = { "CD", "tiempo de reutilización" },
			def = "El tiempo de espera hasta que una habilidad vuelve a estar lista. «En CD» significa que se está recargando.",
		},
		it = {
			term = "Cooldown",
			alt = { "CD", "tempo di recupero" },
			def = "L'attesa finché un'abilità è di nuovo pronta. «In CD» significa che si sta ricaricando.",
		},
		ru = {
			term = "Кулдаун",
			alt = { "CD", "КД", "откат" },
			def = "Время ожидания, пока способность снова будет готова. «В КД» значит, что она перезаряжается.",
		},
		pt = {
			term = "Cooldown",
			alt = { "CD", "tempo de recarga" },
			def = "O tempo de espera até uma habilidade ficar pronta de novo. «Em CD» significa que está recarregando.",
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
		fr = {
			term = "GCD",
			alt = { "temps de recharge global" },
			def = "Temps de recharge global : la courte pause d'environ une seconde après presque chaque capacité, pendant laquelle aucune autre ne peut être utilisée.",
		},
		es = {
			term = "GCD",
			alt = { "tiempo de reutilización global" },
			def = "Tiempo de reutilización global: la pausa corta de un segundo más o menos tras casi cada habilidad, durante la cual no se puede usar otra.",
		},
		it = {
			term = "GCD",
			alt = { "tempo di recupero globale" },
			def = "Tempo di recupero globale: la breve pausa di circa un secondo dopo quasi ogni abilità, durante la quale non se ne può usare un'altra.",
		},
		ru = {
			term = "ГКД",
			alt = { "GCD", "глобальный кулдаун" },
			def = "Глобальное время восстановления: короткая пауза около секунды почти после каждой способности, во время которой нельзя применить другую.",
		},
		pt = {
			term = "GCD",
			alt = { "tempo de recarga global" },
			def = "Tempo de recarga global: a pausa curta de mais ou menos um segundo depois de quase toda habilidade, durante a qual não dá para usar outra.",
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
		fr = {
			term = "Crit",
			alt = { "coup critique" },
			def = "Un coup critique inflige beaucoup plus de dégâts ou de soins que d'habitude.",
		},
		es = {
			term = "Crítico",
			alt = { "crit", "golpe crítico" },
			def = "Un golpe crítico hace mucho más daño o sanación de lo normal.",
		},
		it = {
			term = "Critico",
			alt = { "crit", "colpo critico" },
			def = "Un colpo critico infligge molti più danni o cure del normale.",
		},
		ru = {
			term = "Крит",
			alt = { "crit", "критический удар" },
			def = "Критический удар наносит гораздо больше урона или лечения, чем обычно.",
		},
		pt = {
			term = "Crítico",
			alt = { "crit", "acerto crítico" },
			def = "Um acerto crítico causa muito mais dano ou cura que o normal.",
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
		fr = {
			term = "Taunt",
			alt = { "provocation" },
			def = "Une capacité de tank qui force un ennemi à attaquer le tank.",
		},
		es = {
			term = "Taunt",
			alt = { "provocar" },
			def = "Una habilidad de tanque que obliga a un enemigo a atacar al tanque.",
		},
		it = {
			term = "Taunt",
			alt = { "provocazione" },
			def = "Un'abilità da tank che costringe un nemico ad attaccare il tank.",
		},
		ru = {
			term = "Таунт",
			alt = { "taunt", "провокация" },
			def = "Способность танка, которая заставляет врага атаковать танка.",
		},
		pt = {
			term = "Taunt",
			alt = { "provocar" },
			def = "Uma habilidade de tanque que obriga um inimigo a atacar o tanque.",
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
		fr = {
			term = "Wipe",
			alt = { "wipé" },
			def = "Tout le groupe meurt. Ensuite, tout le monde revient en fantôme et réessaie.",
		},
		es = {
			term = "Wipe",
			alt = { "wipear" },
			def = "Muere todo el grupo. Luego todos vuelven como espíritus y lo intentan de nuevo.",
		},
		it = {
			term = "Wipe",
			alt = { "wipare" },
			def = "Muore tutto il gruppo. Poi tutti tornano come spiriti e riprovano.",
		},
		ru = {
			term = "Вайп",
			alt = { "wipe" },
			def = "Погибает вся группа. Потом все бегут назад в виде духов и пробуют снова.",
		},
		pt = {
			term = "Wipe",
			alt = { "wipar" },
			def = "O grupo inteiro morre. Depois todos voltam como espíritos e tentam de novo.",
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
		fr = {
			term = "Rez",
			alt = { "résurrection" },
			def = "Être ramené à la vie par un joueur : prêtres, paladins et chamans peuvent ressusciter, les druides même en combat. « Rez svp » veut dire : ressuscitez-moi, s'il vous plaît.",
		},
		es = {
			term = "Rez",
			alt = { "resucitar" },
			def = "Que un jugador te devuelva la vida: sacerdotes, paladines y chamanes pueden resucitar, los druidas incluso en combate. «Rez pls» significa: resucítame, por favor.",
		},
		it = {
			term = "Rez",
			alt = { "resurrezione" },
			def = "Essere riportati in vita da un giocatore: sacerdoti, paladini e sciamani possono resuscitare, i druidi persino in combattimento. «Rez pls» significa: resuscitami, per favore.",
		},
		ru = {
			term = "Рес",
			alt = { "rez", "воскрешение" },
			def = "Когда игрок возвращает вас к жизни: жрецы, паладины и шаманы умеют воскрешать, друиды даже в бою. «Рес плз» значит: воскресите меня, пожалуйста.",
		},
		pt = {
			term = "Rez",
			alt = { "ressuscitar" },
			def = "Ser trazido de volta à vida por um jogador: sacerdotes, paladinos e xamãs podem ressuscitar, druidas até em combate. «Rez pls» significa: me ressuscita, por favor.",
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
		fr = {
			term = "Interruption",
			alt = { "kick" },
			def = "Arrêter l'incantation d'un ennemi, par exemple avec Coup de pied, Horion de terre ou Volée de coups. « Kick » dans le chat veut souvent dire cela.",
		},
		es = {
			term = "Interrumpir",
			alt = { "kick" },
			def = "Detener el lanzamiento de un hechizo enemigo, por ejemplo con Patada, Choque de tierra o Zurrar. «Kick» en el chat suele significar esto.",
		},
		it = {
			term = "Interruzione",
			alt = { "kick" },
			def = "Fermare il lancio di un incantesimo nemico, per esempio con Calcio, Scossa Terrestre o Colpo di Pugno. «Kick» in chat di solito significa questo.",
		},
		ru = {
			term = "Прерывание",
			alt = { "kick", "кик", "сбить каст" },
			def = "Остановить чтение заклинания врага, например Пинком, Земным шоком или Зуботычиной. «Кик» в чате обычно значит именно это.",
		},
		pt = {
			term = "Interromper",
			alt = { "kick", "cortar cast" },
			def = "Parar a conjuração de um feitiço inimigo, por exemplo com Chute, Choque Terreno ou Murro. «Kick» no chat costuma significar isso.",
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
		fr = {
			term = "Stun",
			alt = { "étourdissement" },
			def = "Un effet qui empêche la cible d'agir pendant un court moment.",
		},
		es = {
			term = "Stun",
			alt = { "aturdimiento" },
			def = "Un efecto que deja al objetivo sin poder actuar durante un momento.",
		},
		it = {
			term = "Stun",
			alt = { "stordimento" },
			def = "Un effetto che lascia il bersaglio incapace di agire per poco tempo.",
		},
		ru = {
			term = "Стан",
			alt = { "stun", "оглушение" },
			def = "Эффект, после которого цель ненадолго не может ничего делать.",
		},
		pt = {
			term = "Stun",
			alt = { "atordoamento" },
			def = "Um efeito que deixa o alvo sem poder agir por um curto tempo.",
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
		fr = {
			term = "Root",
			alt = { "immobilisation" },
			def = "Un effet qui bloque la cible sur place : elle peut encore attaquer et lancer des sorts, mais pas bouger. Exemples : Sarments, Nova de givre.",
		},
		es = {
			term = "Root",
			alt = { "enraizar" },
			def = "Un efecto que deja al objetivo clavado en el sitio: aún puede atacar y lanzar hechizos, pero no moverse. Ejemplos: Raíces enredadoras, Nova de Escarcha.",
		},
		it = {
			term = "Root",
			alt = { "immobilizzazione" },
			def = "Un effetto che tiene il bersaglio fermo: può ancora attaccare e lanciare incantesimi, ma non muoversi. Esempi: Radici Stritolanti, Nova di Gelo.",
		},
		ru = {
			term = "Рут",
			alt = { "root", "обездвиживание" },
			def = "Эффект, который удерживает цель на месте: она может атаковать и колдовать, но не двигаться. Примеры: Гнев деревьев, Кольцо льда.",
		},
		pt = {
			term = "Root",
			alt = { "enraizar" },
			def = "Um efeito que prende o alvo no lugar: ele ainda pode atacar e conjurar, mas não se mexer. Exemplos: Raízes Emaranhadas, Nova Congelante.",
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
		fr = {
			term = "Sheep",
			alt = { "Métamorphose" },
			def = "La Métamorphose du mage : l'ennemi devient un mouton pendant un moment. « Sheep lune » veut dire métamorphoser la cible marquée d'une lune.",
		},
		es = {
			term = "Sheep",
			alt = { "Polimorfia", "oveja" },
			def = "La Polimorfia del mago: el enemigo se convierte en oveja durante un rato. «Sheep luna» significa polimorfiar al objetivo con la marca de luna.",
		},
		it = {
			term = "Sheep",
			alt = { "Metamorfosi" },
			def = "La Metamorfosi del mago: il nemico diventa una pecora per un po'. «Sheep luna» significa trasformare il bersaglio con il segno della luna.",
		},
		ru = {
			term = "Овца",
			alt = { "sheep", "Превращение", "шип" },
			def = "Превращение мага: враг на время становится овцой. «Овца на луну» значит превратить цель с меткой луны.",
		},
		pt = {
			term = "Sheep",
			alt = { "Metamorfose", "ovelha" },
			def = "A Metamorfose do mago: o inimigo vira uma ovelha por um tempo. «Sheep na lua» significa transformar o alvo marcado com a lua.",
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
		fr = {
			term = "Sap",
			alt = { "Assommer" },
			def = "Assommer du voleur : met un ennemi hors de combat pendant un moment, utilisé avant le début du combat.",
		},
		es = {
			term = "Sap",
			alt = { "Aporrear" },
			def = "El Aporrear del pícaro: deja fuera de combate a un enemigo un rato; se usa antes de empezar la pelea.",
		},
		it = {
			term = "Sap",
			alt = { "Tramortire" },
			def = "Il Tramortire del ladro: mette fuori gioco un nemico per un po', si usa prima che inizi il combattimento.",
		},
		ru = {
			term = "Сап",
			alt = { "sap", "Ошеломление" },
			def = "Ошеломление разбойника: на время выводит врага из строя, применяется до начала боя.",
		},
		pt = {
			term = "Sap",
			alt = { "Aturdir" },
			def = "O Aturdir do ladino: tira um inimigo de ação por um tempo, usado antes de a luta começar.",
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
		fr = {
			term = "LoS",
			alt = { "ligne de vue" },
			def = "Ligne de vue : les sorts ont besoin d'une vue dégagée sur la cible. « Pull LoS » veut dire se cacher derrière un angle pour que les ennemis viennent à vous.",
		},
		es = {
			term = "LoS",
			alt = { "línea de visión" },
			def = "Línea de visión: los hechizos necesitan ver bien al objetivo. «Pull con LoS» significa esconderse tras una esquina para que los enemigos vengan a ti.",
		},
		it = {
			term = "LoS",
			alt = { "linea di vista" },
			def = "Linea di vista: gli incantesimi richiedono una visuale libera sul bersaglio. «Pull LoS» significa mettersi dietro un angolo perché i nemici vengano da te.",
		},
		ru = {
			term = "ЛоС",
			alt = { "LoS", "линия обзора" },
			def = "Линия обзора: заклинаниям нужна свободная видимость цели. «Пулл за угол» значит спрятаться за угол, чтобы враги пришли к вам.",
		},
		pt = {
			term = "LoS",
			alt = { "linha de visão" },
			def = "Linha de visão: feitiços precisam de visão livre do alvo. «Pull de LoS» significa se esconder atrás de um canto para os inimigos virem até você.",
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
		fr = {
			term = "Pat",
			alt = { "patrouille" },
			def = "Un ennemi ou un groupe qui suit un trajet fixe. Les pats rejoignent souvent un combat par surprise.",
		},
		es = {
			term = "Pat",
			alt = { "patrulla" },
			def = "Un enemigo o grupo que recorre una ruta fija. Las patrullas suelen unirse a un combate por sorpresa.",
		},
		it = {
			term = "Pat",
			alt = { "pattuglia" },
			def = "Un nemico o un gruppo che percorre un percorso fisso. Le pattuglie spesso si uniscono a un combattimento all'improvviso.",
		},
		ru = {
			term = "Пат",
			alt = { "pat", "патруль" },
			def = "Враг или группа, идущие по постоянному маршруту. Патрули часто неожиданно вступают в бой.",
		},
		pt = {
			term = "Pat",
			alt = { "patrulha" },
			def = "Um inimigo ou grupo que segue uma rota fixa. Patrulhas costumam entrar numa luta de surpresa.",
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
		fr = {
			term = "Respawn",
			alt = { "repop" },
			def = "Les ennemis vaincus et les ressources récoltées réapparaissent au bout d'un moment.",
		},
		es = {
			term = "Respawn",
			def = "Los enemigos derrotados y los recursos recogidos vuelven a aparecer al cabo de un rato.",
		},
		it = {
			term = "Respawn",
			def = "I nemici sconfitti e le risorse raccolte ricompaiono dopo un po'.",
		},
		ru = {
			term = "Респ",
			alt = { "respawn", "респаун" },
			def = "Убитые враги и собранные ресурсы через некоторое время появляются снова.",
		},
		pt = {
			term = "Respawn",
			def = "Inimigos derrotados e recursos coletados voltam depois de um tempo.",
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
		fr = {
			term = "Mob",
			alt = { "mobs" },
			def = "Un ennemi contrôlé par l'ordinateur.",
		},
		es = {
			term = "Mob",
			alt = { "mobs" },
			def = "Un enemigo controlado por el ordenador.",
		},
		it = {
			term = "Mob",
			alt = { "mobs" },
			def = "Un nemico controllato dal computer.",
		},
		ru = {
			term = "Моб",
			alt = { "mob", "мобы" },
			def = "Враг, которым управляет компьютер.",
		},
		pt = {
			term = "Mob",
			alt = { "mobs" },
			def = "Um inimigo controlado pelo computador.",
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
		fr = {
			term = "Élite",
			def = "Un ennemi particulièrement fort avec un dragon doré autour de son portrait. Les quêtes élites demandent en général un groupe.",
		},
		es = {
			term = "Élite",
			def = "Un enemigo especialmente fuerte con un dragón dorado en su retrato. Las misiones de élite suelen necesitar grupo.",
		},
		it = {
			term = "Élite",
			alt = { "elite" },
			def = "Un nemico particolarmente forte con un drago dorato sul ritratto. Le missioni élite di solito richiedono un gruppo.",
		},
		ru = {
			term = "Элита",
			alt = { "elite", "элитный" },
			def = "Особенно сильный враг с золотым драконом вокруг портрета. Для элитных заданий обычно нужна группа.",
		},
		pt = {
			term = "Elite",
			def = "Um inimigo especialmente forte, com um dragão dourado no retrato. Missões de elite normalmente precisam de grupo.",
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
		fr = {
			term = "Trash",
			def = "Les groupes d'ennemis normaux d'un donjon ou d'un raid, entre les boss.",
		},
		es = {
			term = "Trash",
			def = "Los grupos normales de enemigos de una mazmorra o banda, entre los jefes.",
		},
		it = {
			term = "Trash",
			def = "I normali gruppi di nemici di una spedizione o incursione, tra un boss e l'altro.",
		},
		ru = {
			term = "Треш",
			alt = { "trash" },
			def = "Обычные группы врагов в подземелье или рейде между боссами.",
		},
		pt = {
			term = "Trash",
			def = "Os grupos normais de inimigos de uma masmorra ou raide, entre os chefes.",
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
		fr = {
			term = "LFG",
			alt = { "cherche groupe" },
			def = "Looking for group : je cherche un groupe. Souvent avec un objectif, comme « LFG Mortemines ».",
		},
		es = {
			term = "LFG",
			alt = { "busco grupo" },
			def = "Looking for group: busco grupo. A menudo con un objetivo, como «LFG Minas de la Muerte».",
		},
		it = {
			term = "LFG",
			alt = { "cerco gruppo" },
			def = "Looking for group: cerco un gruppo. Spesso con un obiettivo, come «LFG Miniere della Morte».",
		},
		ru = {
			term = "LFG",
			alt = { "ищу группу" },
			def = "Looking for group: ищу группу. Часто с целью, например «LFG Мертвые копи».",
		},
		pt = {
			term = "LFG",
			alt = { "procuro grupo" },
			def = "Looking for group: procuro grupo. Muitas vezes com um objetivo, como «LFG Minas Mortas».",
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
		fr = {
			term = "LFM",
			def = "Looking for more : le groupe cherche d'autres joueurs, souvent avec un rôle, comme « LFM heal ».",
		},
		es = {
			term = "LFM",
			def = "Looking for more: el grupo busca más jugadores, a menudo con un rol, como «LFM healer».",
		},
		it = {
			term = "LFM",
			def = "Looking for more: il gruppo cerca altri giocatori, spesso con un ruolo, come «LFM healer».",
		},
		ru = {
			term = "LFM",
			def = "Looking for more: группе нужны ещё игроки, часто с ролью, например «LFM хил».",
		},
		pt = {
			term = "LFM",
			def = "Looking for more: o grupo procura mais jogadores, muitas vezes com um papel, como «LFM healer».",
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
		fr = {
			term = "Besoin/Cupidité",
			alt = { "need", "greed" },
			def = "Lors d'un jet pour du butin : Besoin si vous utiliserez l'objet vous-même, Cupidité si vous voulez seulement le vendre. Besoin passe toujours avant Cupidité.",
		},
		es = {
			term = "Necesidad/Codicia",
			alt = { "need", "greed" },
			def = "Al tirar dados por botín: Necesidad si vas a usar el objeto tú, Codicia si solo quieres venderlo. Necesidad siempre gana a Codicia.",
		},
		it = {
			term = "Necessità/Avidità",
			alt = { "need", "greed" },
			def = "Quando si tira per il bottino: Necessità se userai l'oggetto, Avidità se vuoi solo venderlo. Necessità vince sempre su Avidità.",
		},
		ru = {
			term = "Нужно/Не откажусь",
			alt = { "need", "greed", "нид", "грид" },
			def = "При розыгрыше добычи: «Нужно», если вы сами будете использовать предмет, «Не откажусь», если хотите только продать. «Нужно» всегда важнее.",
		},
		pt = {
			term = "Necessidade/Ganância",
			alt = { "need", "greed" },
			def = "Ao rolar dados por saque: Necessidade se você vai usar o item, Ganância se só quer vendê-lo. Necessidade sempre vence Ganância.",
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
		fr = {
			term = "Ninja",
			alt = { "ninjaté" },
			def = "Quelqu'un qui prend du butin auquel il n'a pas droit selon les règles du groupe, par exemple en faisant Besoin sur un objet qu'il ne peut pas utiliser.",
		},
		es = {
			term = "Ninja",
			alt = { "ninjear" },
			def = "Alguien que se lleva botín que no le corresponde según las reglas del grupo, por ejemplo tirando Necesidad por algo que no puede usar.",
		},
		it = {
			term = "Ninja",
			alt = { "ninjare" },
			def = "Chi prende bottino che secondo le regole del gruppo non gli spetta, per esempio tirando Necessità su qualcosa che non può usare.",
		},
		ru = {
			term = "Ниндзя",
			alt = { "ninja" },
			def = "Тот, кто забирает добычу, на которую по правилам группы не имеет права, например бросает «Нужно» на то, чем не может пользоваться.",
		},
		pt = {
			term = "Ninja",
			alt = { "ninjar" },
			def = "Alguém que pega saque a que não tem direito pelas regras do grupo, por exemplo rolando Necessidade em algo que não pode usar.",
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
		fr = {
			term = "Inv",
			def = "Invitation : invitez-moi dans le groupe, s'il vous plaît.",
		},
		es = {
			term = "Inv",
			def = "Invitación: invítame al grupo, por favor.",
		},
		it = {
			term = "Inv",
			def = "Invito: invitami nel gruppo, per favore.",
		},
		ru = {
			term = "Инв",
			alt = { "inv", "инвайт" },
			def = "Приглашение: пригласите меня в группу, пожалуйста.",
		},
		pt = {
			term = "Inv",
			def = "Convite: me convida para o grupo, por favor.",
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
		fr = {
			term = "AFK",
			def = "Away from keyboard : pas devant l'ordinateur pour le moment.",
		},
		es = {
			term = "AFK",
			def = "Away from keyboard: no estoy delante del ordenador ahora mismo.",
		},
		it = {
			term = "AFK",
			def = "Away from keyboard: non sono al computer in questo momento.",
		},
		ru = {
			term = "АФК",
			alt = { "AFK" },
			def = "Away from keyboard: сейчас не у компьютера.",
		},
		pt = {
			term = "AFK",
			def = "Away from keyboard: não estou no computador agora.",
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
		fr = {
			term = "BRB",
			def = "Be right back : je reviens tout de suite.",
		},
		es = {
			term = "BRB",
			def = "Be right back: vuelvo enseguida.",
		},
		it = {
			term = "BRB",
			def = "Be right back: torno subito.",
		},
		ru = {
			term = "BRB",
			def = "Be right back: сейчас вернусь.",
		},
		pt = {
			term = "BRB",
			def = "Be right back: volto já.",
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
		fr = {
			term = "TY",
			alt = { "thx" },
			def = "Merci.",
		},
		es = {
			term = "TY",
			alt = { "thx" },
			def = "Gracias.",
		},
		it = {
			term = "TY",
			alt = { "thx", "grz" },
			def = "Grazie.",
		},
		ru = {
			term = "TY",
			alt = { "thx", "спс", "пасиб" },
			def = "Спасибо.",
		},
		pt = {
			term = "TY",
			alt = { "thx", "vlw", "obg" },
			def = "Obrigado.",
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
		fr = {
			term = "GZ",
			alt = { "grats" },
			def = "Félicitations, par exemple pour un nouveau niveau ou un bon butin.",
		},
		es = {
			term = "GZ",
			alt = { "grats", "felis" },
			def = "Felicidades, por ejemplo por un nivel nuevo o un buen botín.",
		},
		it = {
			term = "GZ",
			alt = { "grats" },
			def = "Congratulazioni, per esempio per un nuovo livello o un bel bottino.",
		},
		ru = {
			term = "GZ",
			alt = { "grats", "грац", "поздравляю" },
			def = "Поздравление, например с новым уровнем или хорошей добычей.",
		},
		pt = {
			term = "GZ",
			alt = { "grats" },
			def = "Parabéns, por exemplo por um nível novo ou um bom saque.",
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
		fr = {
			term = "Ding",
			def = "Je viens d'atteindre un nouveau niveau.",
		},
		es = {
			term = "Ding",
			def = "Acabo de subir de nivel.",
		},
		it = {
			term = "Ding",
			def = "Ho appena raggiunto un nuovo livello.",
		},
		ru = {
			term = "Динг",
			alt = { "ding", "ап" },
			def = "Я только что получил новый уровень.",
		},
		pt = {
			term = "Ding",
			def = "Acabei de subir de nível.",
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
		fr = {
			term = "WTS/WTB",
			def = "Want to sell / want to buy : offres dans le canal Commerce. WTT veut dire échange.",
		},
		es = {
			term = "WTS/WTB",
			def = "Want to sell / want to buy: ofertas en el canal de comercio. WTT significa intercambio.",
		},
		it = {
			term = "WTS/WTB",
			def = "Want to sell / want to buy: offerte nel canale Commercio. WTT significa scambio.",
		},
		ru = {
			term = "WTS/WTB",
			alt = { "продам", "куплю" },
			def = "Want to sell / want to buy: предложения в канале «Торговля». WTT значит обмен.",
		},
		pt = {
			term = "WTS/WTB",
			def = "Want to sell / want to buy: ofertas no canal de comércio. WTT significa troca.",
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
		fr = {
			term = "PST",
			alt = { "/w" },
			def = "Please send tell : chuchotez-moi. /w nom envoie un message privé.",
		},
		es = {
			term = "PST",
			alt = { "/w", "susurro" },
			def = "Please send tell: susúrrame. /w nombre envía un susurro.",
		},
		it = {
			term = "PST",
			alt = { "/w" },
			def = "Please send tell: sussurrami. /w nome invia un sussurro.",
		},
		ru = {
			term = "PST",
			alt = { "/w", "пм" },
			def = "Please send tell: напишите мне шёпотом. /w имя отправляет личное сообщение.",
		},
		pt = {
			term = "PST",
			alt = { "/w" },
			def = "Please send tell: me sussurre. /w nome envia um sussurro.",
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
		fr = {
			term = "MJ",
			alt = { "GM" },
			def = "Maître de jeu : un employé de Blizzard qui aide en cas de problème. Dans le chat, GM veut parfois dire aussi maître de guilde.",
		},
		es = {
			term = "MJ",
			alt = { "GM", "maestro de juego" },
			def = "Maestro de juego: un empleado de Blizzard que ayuda con problemas. En el chat, GM a veces también significa maestro de hermandad.",
		},
		it = {
			term = "GM",
			alt = { "game master" },
			def = "Game master: un dipendente Blizzard che aiuta con i problemi. In chat GM a volte significa anche capo della gilda.",
		},
		ru = {
			term = "ГМ",
			alt = { "GM", "гейм-мастер" },
			def = "Гейм-мастер: сотрудник Blizzard, который помогает с проблемами. В чате ГМ иногда значит и глава гильдии.",
		},
		pt = {
			term = "GM",
			alt = { "mestre de jogo" },
			def = "Mestre de jogo: um funcionário da Blizzard que ajuda com problemas. No chat, GM às vezes também significa líder de guilda.",
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
		fr = {
			term = "PUG",
			alt = { "pick-up" },
			def = "Pick-up group : un groupe de joueurs qui ne se connaissaient pas avant, pas d'une guilde.",
		},
		es = {
			term = "PUG",
			alt = { "pick-up" },
			def = "Pick-up group: un grupo de jugadores que no se conocían antes, no de una hermandad.",
		},
		it = {
			term = "PUG",
			alt = { "pick-up" },
			def = "Pick-up group: un gruppo di giocatori che non si conoscevano prima, non di una gilda.",
		},
		ru = {
			term = "ПУГ",
			alt = { "PUG", "рандом" },
			def = "Pick-up group: группа игроков, которые раньше не были знакомы, не из гильдии.",
		},
		pt = {
			term = "PUG",
			alt = { "pick-up" },
			def = "Pick-up group: um grupo de jogadores que não se conheciam antes, não de uma guilda.",
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
		fr = {
			term = "RP",
			alt = { "jeu de rôle" },
			def = "Jeu de rôle : parler et agir comme le ferait votre personnage.",
		},
		es = {
			term = "RP",
			def = "Rol: hablar y actuar como lo haría tu personaje.",
		},
		it = {
			term = "RP",
			alt = { "gioco di ruolo" },
			def = "Gioco di ruolo: parlare e agire come farebbe il tuo personaggio.",
		},
		ru = {
			term = "РП",
			alt = { "RP", "ролевая игра" },
			def = "Ролевая игра: говорить и действовать так, как это сделал бы ваш персонаж.",
		},
		pt = {
			term = "RP",
			alt = { "interpretação" },
			def = "Interpretação: falar e agir como o seu personagem faria.",
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
		fr = {
			term = "BoP",
			alt = { "Lié quand ramassé", "Bénédiction de protection" },
			def = "Deux sens : « lié quand ramassé », lié à vous dès que vous le ramassez et non échangeable. Ou le sort de paladin Bénédiction de protection.",
		},
		es = {
			term = "BoP",
			alt = { "Se liga al recogerlo", "Bendición de protección" },
			def = "Dos significados: «se liga al recogerlo», ligado a ti al saquearlo y no se puede comerciar. O el hechizo de paladín Bendición de protección.",
		},
		it = {
			term = "BoP",
			alt = { "Si vincola alla raccolta", "Benedizione della Protezione" },
			def = "Due significati: «si vincola alla raccolta», vincolato a te quando lo raccogli e non scambiabile. Oppure l'incantesimo del paladino Benedizione della Protezione.",
		},
		ru = {
			term = "BoP",
			alt = { "Становится персональным при получении", "Благословение защиты" },
			def = "Два значения: «становится персональным при получении», привязывается к вам, когда вы его подбираете, и передать его нельзя. Или заклинание паладина Благословение защиты.",
		},
		pt = {
			term = "BoP",
			alt = { "Vinculado ao pegar", "Bênção de Proteção" },
			def = "Dois sentidos: «vinculado ao pegar», ligado a você quando você o saqueia e não pode ser trocado. Ou o feitiço de paladino Bênção de Proteção.",
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
		fr = {
			term = "BoE",
			alt = { "Lié quand équipé" },
			def = "Lié quand équipé : échangeable tant que personne ne l'a équipé. Ensuite, il est lié à ce personnage.",
		},
		es = {
			term = "BoE",
			alt = { "Se liga al equiparlo" },
			def = "Se liga al equiparlo: se puede comerciar hasta que alguien se lo equipa. Después queda ligado a ese personaje.",
		},
		it = {
			term = "BoE",
			alt = { "Si vincola all'equipaggiamento" },
			def = "Si vincola all'equipaggiamento: scambiabile finché qualcuno non lo indossa. Dopo è vincolato a quel personaggio.",
		},
		ru = {
			term = "BoE",
			alt = { "Становится персональным при надевании" },
			def = "Становится персональным при надевании: можно передать, пока кто-то не надел предмет. После этого он привязан к этому персонажу.",
		},
		pt = {
			term = "BoE",
			alt = { "Vinculado ao equipar" },
			def = "Vinculado ao equipar: pode ser trocado até alguém equipá-lo. Depois fica ligado a esse personagem.",
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
		fr = {
			term = "Soulbound",
			alt = { "lié à l'âme" },
			def = "Un objet lié (« Lié » dans l'infobulle) appartient à votre personnage. Vous ne pouvez ni l'échanger ni l'envoyer, seulement le vendre ou le détruire.",
		},
		es = {
			term = "Soulbound",
			alt = { "ligado al alma" },
			def = "Un objeto ligado («Ligado» en su descripción) pertenece a tu personaje. No puedes comerciarlo ni enviarlo por correo, solo venderlo o destruirlo.",
		},
		it = {
			term = "Soulbound",
			def = "Un oggetto vincolato appartiene al tuo personaggio. Non puoi scambiarlo né spedirlo, solo venderlo o distruggerlo.",
		},
		ru = {
			term = "Персональный",
			alt = { "soulbound", "привязан" },
			def = "Персональный предмет принадлежит вашему персонажу. Его нельзя передать или отправить почтой, только продать или уничтожить.",
		},
		pt = {
			term = "Soulbound",
			def = "Um item vinculado pertence ao seu personagem. Você não pode trocá-lo nem enviá-lo pelo correio, só vender ou destruir.",
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
		fr = {
			term = "Épique",
			alt = { "violet", "épix" },
			def = "La qualité d'objet la plus rare, en violet. En dessous : rare (bleu), inhabituel (vert), courant (blanc) et médiocre (gris).",
		},
		es = {
			term = "Épico",
			alt = { "morado", "épica" },
			def = "La calidad de objeto más rara, en morado. Por debajo: raro (azul), poco común (verde), común (blanco) y pobre (gris).",
		},
		it = {
			term = "Epico",
			alt = { "viola" },
			def = "La qualità degli oggetti più rara, in viola. Sotto ci sono raro (blu), non comune (verde), comune (bianco) e scadente (grigio).",
		},
		ru = {
			term = "Эпик",
			alt = { "epic", "фиолетовый" },
			def = "Самое редкое качество предметов, фиолетовое. Ниже идут редкое (синее), необычное (зелёное), обычное (белое) и низкое (серое).",
		},
		pt = {
			term = "Épico",
			alt = { "roxo" },
			def = "A qualidade de item mais rara, em roxo. Abaixo vêm raro (azul), incomum (verde), comum (branco) e inferior (cinza).",
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
		fr = {
			term = "Gris",
			alt = { "camelote" },
			def = "Les objets gris servent uniquement à être vendus à un marchand.",
		},
		es = {
			term = "Gris",
			alt = { "basura" },
			def = "Los objetos grises solo sirven para venderlos a un vendedor.",
		},
		it = {
			term = "Grigio",
			alt = { "cianfrusaglie" },
			def = "Gli oggetti grigi servono solo da vendere a un mercante.",
		},
		ru = {
			term = "Серое",
			alt = { "хлам" },
			def = "Серые предметы годятся только на продажу торговцу.",
		},
		pt = {
			term = "Cinza",
			alt = { "lixo" },
			def = "Itens cinza servem só para vender a um vendedor.",
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
		fr = {
			term = "Marchand",
			alt = { "vendor" },
			def = "Un PNJ qui achète et vend des objets. « Vendor » veut dire le vendre à un marchand.",
		},
		es = {
			term = "Vendedor",
			alt = { "vendor" },
			def = "Un PNJ que compra y vende objetos. «Vendorearlo» significa venderlo a un vendedor.",
		},
		it = {
			term = "Mercante",
			alt = { "vendor" },
			def = "Un PNG che compra e vende oggetti. «Vendorare» significa venderlo a un mercante.",
		},
		ru = {
			term = "Торговец",
			alt = { "вендор" },
			def = "NPC, который покупает и продаёт предметы. «Сдать вендору» значит продать торговцу.",
		},
		pt = {
			term = "Vendedor",
			alt = { "vendor" },
			def = "Um PNJ que compra e vende itens. «Vendorar» significa vender a um vendedor.",
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
		fr = {
			term = "HV",
			alt = { "AH", "Hôtel des ventes" },
			def = "Hôtel des ventes : là où les joueurs achètent et vendent des objets. Chaque capitale en a un.",
		},
		es = {
			term = "AH",
			alt = { "Casa de subastas", "subasta" },
			def = "Casa de subastas: donde los jugadores compran y venden objetos. Cada capital tiene una.",
		},
		it = {
			term = "AH",
			alt = { "Casa d'Aste" },
			def = "Casa d'Aste: dove i giocatori comprano e vendono oggetti. Ogni capitale ne ha una.",
		},
		ru = {
			term = "Аук",
			alt = { "AH", "Аукцион" },
			def = "Аукцион: место, где игроки покупают и продают предметы. Он есть в каждой столице.",
		},
		pt = {
			term = "AH",
			alt = { "Casa de Leilões" },
			def = "Casa de Leilões: onde os jogadores compram e vendem itens. Toda capital tem uma.",
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
		fr = {
			term = "Compos",
			alt = { "mats" },
			def = "Matériaux pour un métier, comme du minerai, du tissu ou des herbes. « Vos compos » veut dire que vous apportez les ingrédients.",
		},
		es = {
			term = "Mats",
			def = "Materiales para una profesión, como mineral, tela o hierbas. «Tus mats» significa que pones tú los ingredientes.",
		},
		it = {
			term = "Mats",
			def = "Materiali per una professione, come minerale, stoffa o erbe. «Mats tuoi» significa che porti tu gli ingredienti.",
		},
		ru = {
			term = "Маты",
			alt = { "mats", "реагенты" },
			def = "Материалы для профессии, например руда, ткань или травы. «Ваши маты» значит, что ингредиенты приносите вы.",
		},
		pt = {
			term = "Mats",
			def = "Materiais para uma profissão, como minério, tecido ou ervas. «Seus mats» significa que você traz os ingredientes.",
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
		fr = {
			term = "Sacs",
			def = "Les sacs agrandissent votre inventaire. Vous avez quatre emplacements de sac à côté de votre sac à dos. Les tailleurs en fabriquent, les marchands en vendent des petits.",
		},
		es = {
			term = "Bolsas",
			def = "Las bolsas amplían tu inventario. Tienes cuatro huecos de bolsa junto a tu mochila. Los sastres las fabrican y los vendedores venden algunas pequeñas.",
		},
		it = {
			term = "Borse",
			def = "Le borse ampliano il tuo inventario. Hai quattro spazi per borse accanto allo zaino. I sarti le fabbricano, i mercanti ne vendono di piccole.",
		},
		ru = {
			term = "Сумки",
			def = "Сумки увеличивают инвентарь. Рядом с рюкзаком у вас четыре ячейки для сумок. Их шьют портные, маленькие продают торговцы.",
		},
		pt = {
			term = "Bolsas",
			def = "Bolsas aumentam seu inventário. Você tem quatro espaços de bolsa ao lado da mochila. Alfaiates as fabricam, vendedores vendem as pequenas.",
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
		fr = {
			term = "Durabilité",
			alt = { "réparer" },
			def = "Votre équipement s'use, surtout quand vous mourez. Une fois rouge, il ne fonctionne plus. Un forgeron ou un armurier le répare contre de l'or.",
		},
		es = {
			term = "Durabilidad",
			alt = { "reparar" },
			def = "Tu equipo se desgasta, sobre todo al morir. Cuando está en rojo deja de funcionar. Un herrero o armero lo repara a cambio de oro.",
		},
		it = {
			term = "Durabilità",
			alt = { "riparare" },
			def = "Il tuo equipaggiamento si consuma, soprattutto quando muori. Quando è rosso smette di funzionare. Un fabbro o un armaiolo lo ripara in cambio di oro.",
		},
		ru = {
			term = "Прочность",
			alt = { "починка" },
			def = "Снаряжение изнашивается, особенно когда вы умираете. Когда оно красное, оно перестаёт работать. Кузнец или оружейник чинит его за золото.",
		},
		pt = {
			term = "Durabilidade",
			alt = { "consertar" },
			def = "Seu equipamento se desgasta, principalmente quando você morre. Quando fica vermelho, para de funcionar. Um ferreiro ou armeiro conserta por ouro.",
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
		fr = {
			term = "Talents",
			alt = { "points de talent" },
			def = "À partir du niveau 10, vous gagnez un point de talent par niveau pour orienter votre classe. « Build » ou « spé » désigne la façon dont vous les avez dépensés.",
		},
		es = {
			term = "Talentos",
			alt = { "puntos de talento" },
			def = "Desde el nivel 10 ganas un punto de talento por nivel para orientar tu clase. «Build» o «spec» es cómo los has repartido.",
		},
		it = {
			term = "Talenti",
			alt = { "punti talento" },
			def = "Dal livello 10 ottieni un punto talento per livello per far crescere la tua classe in una direzione. «Build» o «spec» indica come li hai spesi.",
		},
		ru = {
			term = "Таланты",
			alt = { "очки талантов" },
			def = "С 10-го уровня вы получаете одно очко таланта за уровень, чтобы развивать класс в выбранном направлении. «Билд» или «спек» значит, как вы их распределили.",
		},
		pt = {
			term = "Talentos",
			alt = { "pontos de talento" },
			def = "A partir do nível 10 você ganha um ponto de talento por nível para desenvolver sua classe numa direção. «Build» ou «spec» é como você os distribuiu.",
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
		fr = {
			term = "Spé",
			alt = { "spécialisation", "respé" },
			def = "L'orientation de vos talents, comme mage feu ou guerrier protection. « Respé » veut dire réinitialiser ses talents.",
		},
		es = {
			term = "Spec",
			alt = { "especialización", "respec" },
			def = "La orientación de tus talentos, como mago de fuego o guerrero protección. «Respec» significa reiniciar los talentos.",
		},
		it = {
			term = "Spec",
			alt = { "specializzazione", "respec" },
			def = "La direzione dei tuoi talenti, come mago del fuoco o guerriero protezione. «Respec» significa azzerare i talenti.",
		},
		ru = {
			term = "Спек",
			alt = { "spec", "специализация", "респек" },
			def = "Направление ваших талантов, например маг огня или воин защиты. «Респек» значит сбросить таланты.",
		},
		pt = {
			term = "Spec",
			alt = { "especialização", "respec" },
			def = "A direção dos seus talentos, como mago de fogo ou guerreiro proteção. «Respec» significa redefinir os talentos.",
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
		fr = {
			term = "Double spé",
			alt = { "double spécialisation" },
			def = "Deux configurations de talents entre lesquelles vous pouvez changer, par exemple dégâts et soins.",
		},
		es = {
			term = "Doble especialización",
			alt = { "dual spec" },
			def = "Dos configuraciones de talentos entre las que puedes cambiar, por ejemplo daño y sanación.",
		},
		it = {
			term = "Doppia specializzazione",
			alt = { "dual spec" },
			def = "Due configurazioni di talenti tra cui passare, per esempio danni e cure.",
		},
		ru = {
			term = "Двойная специализация",
			alt = { "дуалспек", "dual spec" },
			def = "Два набора талантов, между которыми можно переключаться, например урон и лечение.",
		},
		pt = {
			term = "Especialização dupla",
			alt = { "dual spec" },
			def = "Duas configurações de talentos entre as quais você pode trocar, por exemplo dano e cura.",
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
		fr = {
			term = "Reposé",
			alt = { "bonus de repos" },
			def = "Se déconnecter dans une auberge ou une ville accumule de l'expérience de repos. Elle double l'expérience gagnée sur les ennemis jusqu'à épuisement.",
		},
		es = {
			term = "Descansado",
			alt = { "experiencia de descanso" },
			def = "Desconectarte en una posada o una ciudad acumula experiencia de descanso. Duplica la experiencia de los enemigos hasta que se gasta.",
		},
		it = {
			term = "Riposato",
			alt = { "esperienza di riposo" },
			def = "Disconnettersi in una locanda o in città accumula esperienza di riposo. Raddoppia l'esperienza dai nemici finché non si esaurisce.",
		},
		ru = {
			term = "Отдых",
			alt = { "бонус отдыха" },
			def = "Если выйти из игры в таверне или городе, накапливается бонус отдыха. Он удваивает опыт за врагов, пока не закончится.",
		},
		pt = {
			term = "Descansado",
			alt = { "bônus de descanso" },
			def = "Sair do jogo numa estalagem ou numa cidade acumula experiência de descanso. Ela dobra a experiência dos inimigos até acabar.",
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
		fr = {
			term = "XP",
			alt = { "expérience" },
			def = "Points d'expérience. Assez d'entre eux vous font passer au niveau suivant.",
		},
		es = {
			term = "XP",
			alt = { "experiencia", "EXP" },
			def = "Puntos de experiencia. Con suficientes subes al siguiente nivel.",
		},
		it = {
			term = "PE",
			alt = { "XP", "esperienza" },
			def = "Punti esperienza. Con abbastanza punti passi al livello successivo.",
		},
		ru = {
			term = "Опыт",
			alt = { "XP", "экспа" },
			def = "Очки опыта. Когда их достаточно, вы получаете следующий уровень.",
		},
		pt = {
			term = "XP",
			alt = { "experiência" },
			def = "Pontos de experiência. Com pontos suficientes você sobe de nível.",
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
		fr = {
			term = "Pierre de foyer",
			alt = { "HS" },
			def = "Vous ramène à l'auberge où vous l'avez liée. Elle a un long temps de recharge.",
		},
		es = {
			term = "Piedra de hogar",
			alt = { "HS" },
			def = "Te lleva a la posada donde la vinculaste. Tiene un tiempo de reutilización largo.",
		},
		it = {
			term = "Pietra del Ritorno",
			alt = { "HS" },
			def = "Ti riporta alla locanda in cui l'hai impostata. Ha un lungo tempo di recupero.",
		},
		ru = {
			term = "Камень возвращения",
			alt = { "HS", "хс" },
			def = "Переносит вас в таверну, где вы его привязали. У него долгое время восстановления.",
		},
		pt = {
			term = "Pedra de Regresso",
			alt = { "HS" },
			def = "Leva você à estalagem onde você a definiu. Tem um tempo de recarga longo.",
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
		fr = {
			term = "Point de vol",
			alt = { "maître de vol" },
			def = "Un endroit d'où vous volez vers d'autres points de vol connus contre de l'or. Parlez une fois à chaque maître de vol pour le débloquer.",
		},
		es = {
			term = "Punto de vuelo",
			alt = { "maestro de vuelo" },
			def = "Un lugar desde el que vuelas a otros puntos de vuelo conocidos a cambio de oro. Habla una vez con cada maestro de vuelo para desbloquearlo.",
		},
		it = {
			term = "Punto di volo",
			alt = { "maestro di volo" },
			def = "Un luogo da cui voli verso altri punti di volo conosciuti in cambio di oro. Parla una volta con ogni maestro di volo per sbloccarlo.",
		},
		ru = {
			term = "Точка полётов",
			alt = { "распорядитель полётов" },
			def = "Место, откуда вы за золото летите к другим известным точкам полётов. Поговорите один раз с каждым распорядителем полётов, чтобы открыть её.",
		},
		pt = {
			term = "Ponto de voo",
			alt = { "mestre de voo" },
			def = "Um lugar de onde você voa para outros pontos de voo conhecidos por ouro. Fale uma vez com cada mestre de voo para liberá-lo.",
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
		fr = {
			term = "Cimetière",
			alt = { "GY", "gardien des âmes" },
			def = "Quand vous mourez, vous apparaissez en fantôme au cimetière le plus proche. Retournez à votre corps, ou laissez le gardien des âmes vous ressusciter, avec le mal de résurrection.",
		},
		es = {
			term = "Cementerio",
			alt = { "GY", "ángel de la resurrección" },
			def = "Al morir apareces como espíritu en el cementerio más cercano. Vuelve a tu cadáver o deja que el ángel de la resurrección te resucite, entonces con mal de resurrección.",
		},
		it = {
			term = "Cimitero",
			alt = { "GY", "guaritore degli spiriti" },
			def = "Quando muori compari come spirito al cimitero più vicino. Torna al tuo cadavere o fatti resuscitare dal guaritore degli spiriti, poi con la debolezza da resurrezione.",
		},
		ru = {
			term = "Кладбище",
			alt = { "GY", "целитель душ" },
			def = "После смерти вы появляетесь духом на ближайшем кладбище. Вернитесь к телу или дайте целителю душ воскресить вас, тогда со слабостью после воскрешения.",
		},
		pt = {
			term = "Cemitério",
			alt = { "GY", "curandeiro espiritual" },
			def = "Quando morre, você aparece como espírito no cemitério mais próximo. Volte ao seu corpo ou deixe o curandeiro espiritual ressuscitar você, aí com o mal da ressurreição.",
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
		fr = {
			term = "Monture",
			alt = { "mount" },
			def = "Un animal que vous chevauchez pour voyager plus vite. Il vous faut la compétence de monte et la monture elle-même.",
		},
		es = {
			term = "Montura",
			alt = { "mount" },
			def = "Un animal que montas para viajar más rápido. Necesitas la habilidad de equitación y la propia montura.",
		},
		it = {
			term = "Cavalcatura",
			alt = { "mount" },
			def = "Un animale che cavalchi per viaggiare più in fretta. Ti servono l'abilità di cavalcare e la cavalcatura stessa.",
		},
		ru = {
			term = "Маунт",
			alt = { "mount", "ездовое животное" },
			def = "Животное, на котором вы ездите, чтобы путешествовать быстрее. Нужны навык верховой езды и само ездовое животное.",
		},
		pt = {
			term = "Montaria",
			alt = { "mount" },
			def = "Um animal que você monta para viajar mais rápido. Você precisa da perícia de montaria e da própria montaria.",
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
		fr = {
			term = "Donneur de quêtes",
			def = "Les PNJ avec un point d'exclamation jaune ont une quête pour vous ; un point d'interrogation jaune veut dire que vous y rendez une quête.",
		},
		es = {
			term = "Instructor de misiones",
			def = "Los PNJ con un signo de exclamación amarillo tienen una misión para ti; un signo de interrogación amarillo significa que entregas allí una misión.",
		},
		it = {
			term = "Datore di missioni",
			def = "I PNG con un punto esclamativo giallo hanno una missione per te; un punto interrogativo giallo significa che lì consegni una missione.",
		},
		ru = {
			term = "Квестодатель",
			alt = { "квестгивер" },
			def = "NPC с жёлтым восклицательным знаком дают вам задание; жёлтый вопросительный знак значит, что там вы сдаёте задание.",
		},
		pt = {
			term = "Doador de missões",
			def = "PNJs com um ponto de exclamação amarelo têm uma missão para você; um ponto de interrogação amarelo significa que você entrega uma missão ali.",
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
		fr = {
			term = "Quête de classe",
			def = "Une quête réservée à votre classe qui donne souvent une nouvelle capacité, comme les postures du guerrier, l'apprivoisement du chasseur ou les totems du chaman.",
		},
		es = {
			term = "Misión de clase",
			def = "Una misión solo para tu clase que a menudo da una habilidad nueva, como las actitudes del guerrero, domesticar del cazador o los tótems del chamán.",
		},
		it = {
			term = "Missione di classe",
			def = "Una missione solo per la tua classe che spesso dà una nuova abilità, come le posture del guerriero, l'addomesticamento del cacciatore o i totem dello sciamano.",
		},
		ru = {
			term = "Классовое задание",
			alt = { "классовый квест" },
			def = "Задание только для вашего класса, которое часто даёт новую способность, например стойки воина, приручение у охотника или тотемы шамана.",
		},
		pt = {
			term = "Missão de classe",
			def = "Uma missão só para a sua classe que muitas vezes dá uma habilidade nova, como as posturas do guerreiro, a domesticação do caçador ou os totens do xamã.",
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
		fr = {
			term = "Compétence d'arme",
			alt = { "maître d'armes" },
			def = "Chaque type d'arme a sa propre compétence qui augmente à l'usage. Les maîtres d'armes des capitales enseignent de nouveaux types d'armes.",
		},
		es = {
			term = "Habilidad con armas",
			alt = { "maestro de armas" },
			def = "Cada tipo de arma tiene su propia habilidad, que sube al usarla. Los maestros de armas de las capitales enseñan tipos de armas nuevos.",
		},
		it = {
			term = "Abilità con le armi",
			alt = { "maestro d'armi" },
			def = "Ogni tipo di arma ha una propria abilità che sale usandola. I maestri d'armi delle capitali insegnano nuovi tipi di armi.",
		},
		ru = {
			term = "Навык владения оружием",
			alt = { "мастер оружия" },
			def = "У каждого типа оружия свой навык, который растёт при использовании. Новым типам оружия учат мастера оружия в столицах.",
		},
		pt = {
			term = "Perícia com armas",
			alt = { "mestre de armas" },
			def = "Cada tipo de arma tem sua própria perícia, que sobe com o uso. Mestres de armas nas capitais ensinam tipos de arma novos.",
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
		fr = {
			term = "Maître de classe",
			def = "Des PNJ qui vous apprennent de nouveaux sorts ou rangs de métier contre de l'or. Passez voir votre maître de classe tous les deux niveaux.",
		},
		es = {
			term = "Instructor de clase",
			def = "PNJ que te enseñan hechizos nuevos o rangos de profesión a cambio de oro. Visita a tu instructor de clase cada dos niveles.",
		},
		it = {
			term = "Istruttore di classe",
			def = "PNG che ti insegnano nuovi incantesimi o gradi di professione in cambio di oro. Passa dal tuo istruttore di classe ogni due livelli.",
		},
		ru = {
			term = "Учитель",
			alt = { "тренер", "классовый учитель" },
			def = "NPC, которые за золото учат новым заклинаниям или ступеням профессий. Заходите к учителю класса каждые два уровня.",
		},
		pt = {
			term = "Instrutor de classe",
			def = "PNJs que ensinam feitiços novos ou níveis de profissão por ouro. Visite seu instrutor de classe a cada dois níveis.",
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
		fr = {
			term = "PvP",
			alt = { "joueur contre joueur", "PvE" },
			def = "Joueur contre joueur : combattre d'autres joueurs. PvE veut dire combattre des ennemis contrôlés par l'ordinateur.",
		},
		es = {
			term = "JcJ",
			alt = { "PvP", "JcE", "PvE" },
			def = "Jugador contra jugador: luchar contra otros jugadores. JcE (PvE) significa luchar contra enemigos controlados por el ordenador.",
		},
		it = {
			term = "PvP",
			alt = { "giocatore contro giocatore", "PvE" },
			def = "Giocatore contro giocatore: combattere altri giocatori. PvE significa combattere nemici controllati dal computer.",
		},
		ru = {
			term = "PvP",
			alt = { "ПвП", "PvE", "ПвЕ" },
			def = "Игрок против игрока: бой с другими игроками. PvE значит бой с врагами, которыми управляет компьютер.",
		},
		pt = {
			term = "PvP",
			alt = { "jogador contra jogador", "PvE" },
			def = "Jogador contra jogador: lutar contra outros jogadores. PvE significa lutar contra inimigos controlados pelo computador.",
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
		fr = {
			term = "Gank",
			alt = { "ganker", "camping" },
			def = "Un joueur bien plus fort de l'autre faction vous attaque par surprise. « Camper » veut dire tuer quelqu'un encore et encore dès qu'il revient à la vie.",
		},
		es = {
			term = "Gankear",
			alt = { "gank", "ganker", "campear" },
			def = "Un jugador mucho más fuerte de la otra facción te ataca por sorpresa. «Campear» significa matar a alguien una y otra vez en cuanto vuelve a la vida.",
		},
		it = {
			term = "Gank",
			alt = { "ganker", "camping" },
			def = "Un giocatore molto più forte dell'altra fazione ti attacca a sorpresa. «Campare» significa uccidere qualcuno ancora e ancora appena torna in vita.",
		},
		ru = {
			term = "Ганк",
			alt = { "gank", "ганкер", "кемпинг" },
			def = "Гораздо более сильный игрок другой фракции внезапно нападает на вас. «Кемпить» значит убивать кого-то снова и снова, как только он оживает.",
		},
		pt = {
			term = "Gank",
			alt = { "ganker", "campar" },
			def = "Um jogador muito mais forte da outra facção ataca você de surpresa. «Campar» significa matar alguém de novo e de novo assim que ele volta à vida.",
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
		fr = {
			term = "Mana",
			def = "La ressource des lanceurs de sorts. Rechargez-la hors combat en buvant ou simplement en attendant.",
		},
		es = {
			term = "Maná",
			def = "El recurso de los lanzadores de hechizos. Recupéralo fuera de combate bebiendo o simplemente esperando.",
		},
		it = {
			term = "Mana",
			def = "La risorsa degli incantatori. Ricaricala fuori dal combattimento bevendo o semplicemente aspettando.",
		},
		ru = {
			term = "Мана",
			def = "Ресурс заклинателей. Восполняйте её вне боя питьём или просто ожиданием.",
		},
		pt = {
			term = "Mana",
			def = "O recurso de quem conjura feitiços. Recupere fora de combate bebendo ou só esperando.",
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
		fr = {
			term = "Rage",
			def = "La ressource des guerriers et des druides en forme d'ours. Elle monte avec les dégâts infligés et subis.",
		},
		es = {
			term = "Ira",
			def = "El recurso de guerreros y druidas en forma de oso. Sube con el daño que haces y recibes.",
		},
		it = {
			term = "Ira",
			def = "La risorsa di guerrieri e druidi in forma d'orso. Sale con i danni che infliggi e subisci.",
		},
		ru = {
			term = "Ярость",
			def = "Ресурс воинов и друидов в облике медведя. Накапливается от нанесённого и полученного урона.",
		},
		pt = {
			term = "Raiva",
			def = "O recurso de guerreiros e druidas em forma de urso. Sobe com o dano que você causa e recebe.",
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
		fr = {
			term = "Énergie",
			def = "La ressource des voleurs et des druides en forme de félin. Elle se recharge vite toute seule.",
		},
		es = {
			term = "Energía",
			def = "El recurso de pícaros y druidas en forma felina. Se recarga rápido por sí sola.",
		},
		it = {
			term = "Energia",
			def = "La risorsa di ladri e druidi in forma felina. Si ricarica velocemente da sola.",
		},
		ru = {
			term = "Энергия",
			def = "Ресурс разбойников и друидов в облике кошки. Быстро восстанавливается сама.",
		},
		pt = {
			term = "Energia",
			def = "O recurso de ladinos e druidas em forma felina. Recarrega rápido sozinha.",
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
		fr = {
			term = "Pala",
			alt = { "Paladin" },
			def = "Abréviation de paladin.",
		},
		es = {
			term = "Pala",
			alt = { "Paladín" },
			def = "Abreviatura de paladín.",
		},
		it = {
			term = "Pala",
			alt = { "Paladino" },
			def = "Abbreviazione di paladino.",
		},
		ru = {
			term = "Пал",
			alt = { "пала", "Паладин" },
			def = "Сокращение от «паладин».",
		},
		pt = {
			term = "Pala",
			alt = { "Paladino" },
			def = "Abreviação de paladino.",
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
		fr = {
			term = "Démo",
			alt = { "Démoniste", "lock" },
			def = "Abréviation de démoniste.",
		},
		es = {
			term = "Brujo",
			alt = { "lock" },
			def = "Brujo; en inglés suele abreviarse lock (de warlock).",
		},
		it = {
			term = "Lock",
			alt = { "Stregone" },
			def = "Abbreviazione inglese di stregone (warlock).",
		},
		ru = {
			term = "Лок",
			alt = { "lock", "Чернокнижник", "варлок" },
			def = "Сокращение от «чернокнижник» (warlock).",
		},
		pt = {
			term = "Lock",
			alt = { "Bruxo" },
			def = "Abreviação inglesa de bruxo (warlock).",
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
		fr = {
			term = "Chamy",
			alt = { "Chaman", "sham" },
			def = "Abréviation de chaman.",
		},
		es = {
			term = "Chami",
			alt = { "Chamán", "sham" },
			def = "Abreviatura de chamán.",
		},
		it = {
			term = "Sciama",
			alt = { "Sciamano", "sham" },
			def = "Abbreviazione di sciamano.",
		},
		ru = {
			term = "Шам",
			alt = { "Шаман", "sham" },
			def = "Сокращение от «шаман».",
		},
		pt = {
			term = "Xama",
			alt = { "Xamã", "sham" },
			def = "Abreviação de xamã.",
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
		fr = {
			term = "Hunt",
			alt = { "Chasseur" },
			def = "Abréviation de chasseur.",
		},
		es = {
			term = "Hunt",
			alt = { "Cazador" },
			def = "Abreviatura de cazador.",
		},
		it = {
			term = "Hunt",
			alt = { "Cacciatore" },
			def = "Abbreviazione di cacciatore.",
		},
		ru = {
			term = "Хант",
			alt = { "hunt", "Охотник" },
			def = "Сокращение от «охотник» (hunter).",
		},
		pt = {
			term = "Hunt",
			alt = { "Caçador" },
			def = "Abreviação de caçador.",
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
		fr = {
			term = "War",
			alt = { "Guerrier", "warri" },
			def = "Abréviation de guerrier.",
		},
		es = {
			term = "Warri",
			alt = { "Guerrero", "war" },
			def = "Abreviatura de guerrero.",
		},
		it = {
			term = "Warri",
			alt = { "Guerriero", "war" },
			def = "Abbreviazione di guerriero.",
		},
		ru = {
			term = "Вар",
			alt = { "Воин", "warri" },
			def = "Сокращение от «воин» (warrior).",
		},
		pt = {
			term = "Warri",
			alt = { "Guerreiro", "war" },
			def = "Abreviação de guerreiro.",
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
		fr = {
			term = "SW",
			def = "Hurlevent, la capitale des humains.",
		},
		es = {
			term = "SW",
			def = "Ventormenta, la capital de los humanos.",
		},
		it = {
			term = "SW",
			def = "Roccavento, la capitale degli umani.",
		},
		ru = {
			term = "SW",
			alt = { "Штормград" },
			def = "Штормград, столица людей.",
		},
		pt = {
			term = "SW",
			def = "Ventobravo, a capital dos humanos.",
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
		fr = {
			term = "IF",
			def = "Forgefer, la capitale des nains et des gnomes.",
		},
		es = {
			term = "IF",
			def = "Forjaz, la capital de enanos y gnomos.",
		},
		it = {
			term = "IF",
			def = "Forgiardente, la capitale di nani e gnomi.",
		},
		ru = {
			term = "IF",
			alt = { "Стальгорн" },
			def = "Стальгорн, столица дворфов и гномов.",
		},
		pt = {
			term = "IF",
			def = "Altaforja, a capital de anões e gnomos.",
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
		fr = {
			term = "Darna",
			def = "Darnassus, la capitale des elfes de la nuit.",
		},
		es = {
			term = "Darn",
			def = "Darnassus, la capital de los elfos de la noche.",
		},
		it = {
			term = "Darn",
			def = "Darnassus, la capitale degli elfi della notte.",
		},
		ru = {
			term = "Дарн",
			alt = { "Дарнас" },
			def = "Дарнас, столица ночных эльфов.",
		},
		pt = {
			term = "Darn",
			def = "Darnassus, a capital dos elfos noturnos.",
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
		fr = {
			term = "Orgri",
			alt = { "Org" },
			def = "Orgrimmar, la capitale des orcs et des trolls.",
		},
		es = {
			term = "Orgri",
			alt = { "Org" },
			def = "Orgrimmar, la capital de orcos y trols.",
		},
		it = {
			term = "Orgri",
			alt = { "Org" },
			def = "Orgrimmar, la capitale di orchi e troll.",
		},
		ru = {
			term = "Орг",
			alt = { "Org", "Оргриммар" },
			def = "Оргриммар, столица орков и троллей.",
		},
		pt = {
			term = "Org",
			def = "Orgrimmar, a capital de orcs e trolls.",
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
		fr = {
			term = "UC",
			alt = { "Fossoyeuse" },
			def = "Fossoyeuse, la capitale des morts-vivants.",
		},
		es = {
			term = "UC",
			alt = { "Entrañas" },
			def = "Entrañas, la capital de los no-muertos.",
		},
		it = {
			term = "UC",
			alt = { "Sepulcride" },
			def = "Sepulcride, la capitale dei non morti.",
		},
		ru = {
			term = "UC",
			alt = { "Подгород" },
			def = "Подгород, столица нежити.",
		},
		pt = {
			term = "UC",
			alt = { "Cidade Baixa" },
			def = "Cidade Baixa, a capital dos mortos-vivos.",
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
		fr = {
			term = "TB",
			def = "Les Pitons-du-Tonnerre, la capitale des taurens.",
		},
		es = {
			term = "TB",
			def = "Cima del Trueno, la capital de los tauren.",
		},
		it = {
			term = "TB",
			def = "Picco del Tuono, la capitale dei tauren.",
		},
		ru = {
			term = "TB",
			alt = { "Громовой Утёс" },
			def = "Громовой Утёс, столица тауренов.",
		},
		pt = {
			term = "TB",
			def = "Penhasco do Trovão, a capital dos taurens.",
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
		fr = {
			term = "BB",
			def = "Baie-du-Butin, la ville portuaire neutre au sud de Strangleronce.",
		},
		es = {
			term = "BB",
			def = "Bahía del Botín, el puerto neutral al sur de la Vega de Tuercespina.",
		},
		it = {
			term = "BB",
			def = "Baia del Bottino, il porto neutrale nel sud di Rovotorto.",
		},
		ru = {
			term = "BB",
			alt = { "Пиратская Бухта" },
			def = "Пиратская Бухта, нейтральный портовый город на юге Тернистой долины.",
		},
		pt = {
			term = "BB",
			def = "Angra do Butim, o porto neutro no sul da Selva do Espinhaço.",
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
		fr = {
			term = "XRoads",
			def = "La Croisée, dans les Tarides, une ville importante de la Horde.",
		},
		es = {
			term = "XRoads",
			def = "El Cruce, en Los Baldíos, un pueblo importante de la Horda.",
		},
		it = {
			term = "XRoads",
			def = "Crocevia, nelle Savane, un importante insediamento dell'Orda.",
		},
		ru = {
			term = "XRoads",
			alt = { "Перекрёсток" },
			def = "Перекрёсток в Степях, важное поселение Орды.",
		},
		pt = {
			term = "XRoads",
			def = "A Encruzilhada, nos Sertões, um povoado importante da Horda.",
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
		fr = {
			term = "RFC",
			def = "Abréviation du Gouffre de Ragefeu (Orgrimmar).",
		},
		es = {
			term = "RFC",
			def = "Abreviatura de Sima Ígnea (Orgrimmar).",
		},
		it = {
			term = "RFC",
			def = "Abbreviazione di Voragine Ardente (Orgrimmar).",
		},
		ru = {
			term = "RFC",
			alt = { "ОП" },
			def = "Сокращение от «Огненная пропасть» (Оргриммар).",
		},
		pt = {
			term = "RFC",
			def = "Abreviação de Cavernas Ígneas (Orgrimmar).",
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
		fr = {
			term = "DM",
			def = "Abréviation des Mortemines (Marche de l'Ouest) ou de Hache-Tripes (Féralas), selon le niveau.",
		},
		es = {
			term = "DM",
			def = "Abreviatura de Las Minas de la Muerte (Páramos de Poniente) o de La Masacre (Feralas), según el nivel.",
		},
		it = {
			term = "DM",
			def = "Abbreviazione di Miniere della Morte (Marche Occidentali) o Maglio Infausto (Feralas), a seconda del livello.",
		},
		ru = {
			term = "DM",
			def = "Сокращение от «Мёртвые копи» (Западный Край) или «Забытый город» (Фералас), в зависимости от уровня.",
		},
		pt = {
			term = "DM",
			def = "Abreviação de Minas Mortas (Cerros d'Oeste) ou Gládio Cruel (Feralas), dependendo do nível.",
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
		fr = {
			term = "WC",
			def = "Abréviation des Cavernes des lamentations (Les Tarides).",
		},
		es = {
			term = "WC",
			def = "Abreviatura de Cuevas de los Lamentos (Los Baldíos).",
		},
		it = {
			term = "WC",
			def = "Abbreviazione di Caverne dei Lamenti (Savane).",
		},
		ru = {
			term = "WC",
			alt = { "ПС" },
			def = "Сокращение от «Пещеры Стенаний» (Степи).",
		},
		pt = {
			term = "WC",
			def = "Abreviação de Caverna Ululante (Sertões).",
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
		fr = {
			term = "SFK",
			def = "Abréviation du Donjon d'Ombrecroc (Forêt des Pins-Argentés).",
		},
		es = {
			term = "SFK",
			def = "Abreviatura de Castillo de Colmillo Oscuro (Bosque de Argénteos).",
		},
		it = {
			term = "SFK",
			def = "Abbreviazione di Forte di Zanna d'Ombra (Foresta di Pinargento).",
		},
		ru = {
			term = "SFK",
			def = "Сокращение от «Крепость Тёмного Клыка» (Серебряный бор).",
		},
		pt = {
			term = "SFK",
			def = "Abreviação de Bastilha da Presa Negra (Floresta de Pinhaprata).",
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
		fr = {
			term = "BFD",
			def = "Abréviation des Profondeurs de Brassenoire (Orneval).",
		},
		es = {
			term = "BFD",
			def = "Abreviatura de Cavernas de Brazanegra (Vallefresno).",
		},
		it = {
			term = "BFD",
			def = "Abbreviazione di Abissi di Fondocupo (Valtetra).",
		},
		ru = {
			term = "BFD",
			def = "Сокращение от «Непроглядная Пучина» (Ясеневый лес).",
		},
		pt = {
			term = "BFD",
			def = "Abreviação de Profundezas Negras (Vale Gris).",
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
		fr = {
			term = "SM",
			def = "Abréviation du Monastère écarlate (Clairières de Tirisfal), avec quatre ailes.",
		},
		es = {
			term = "SM",
			def = "Abreviatura de Monasterio Escarlata (Claros de Tirisfal), con cuatro alas.",
		},
		it = {
			term = "SM",
			def = "Abbreviazione di Monastero Scarlatto (Radure di Tirisfal), con quattro ali.",
		},
		ru = {
			term = "SM",
			alt = { "Монастырь" },
			def = "Сокращение от «Монастырь Алого ордена» (Тирисфальские леса), с четырьмя крыльями.",
		},
		pt = {
			term = "SM",
			def = "Abreviação de Monastério Escarlate (Clareiras de Tirisfal), com quatro alas.",
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
		fr = {
			term = "BRD",
			def = "Abréviation des Profondeurs de Rochenoire (Mont Rochenoire).",
		},
		es = {
			term = "BRD",
			def = "Abreviatura de Profundidades de Roca Negra (Montaña Roca Negra).",
		},
		it = {
			term = "BRD",
			def = "Abbreviazione di Profondità di Roccianera (Massiccio Roccianera).",
		},
		ru = {
			term = "BRD",
			alt = { "ГЧГ" },
			def = "Сокращение от «Глубины Чёрной горы» (Чёрная гора).",
		},
		pt = {
			term = "BRD",
			def = "Abreviação de Abismo Rocha Negra (Montanha Rocha Negra).",
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
		fr = {
			term = "UBRS/LBRS",
			def = "Abréviation du sommet et de la base du pic Rochenoire.",
		},
		es = {
			term = "UBRS/LBRS",
			def = "Abreviatura de la parte superior e inferior de la Cumbre de Roca Negra.",
		},
		it = {
			term = "UBRS/LBRS",
			def = "Abbreviazione della parte superiore e inferiore del Bastione di Roccianera.",
		},
		ru = {
			term = "UBRS/LBRS",
			def = "Сокращение от верхней и нижней части Пика Чёрной горы.",
		},
		pt = {
			term = "UBRS/LBRS",
			def = "Abreviação da parte superior e inferior do Pico da Rocha Negra.",
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
		fr = {
			term = "Strat",
			def = "Abréviation de Stratholme (Maleterres de l'est).",
		},
		es = {
			term = "Strat",
			def = "Abreviatura de Stratholme (Tierras de la Peste del Este).",
		},
		it = {
			term = "Strat",
			def = "Abbreviazione di Stratholme (Terre Infette Orientali).",
		},
		ru = {
			term = "Страт",
			alt = { "Strat" },
			def = "Сокращение от «Стратхольм» (Восточные Чумные земли).",
		},
		pt = {
			term = "Strat",
			def = "Abreviação de Stratholme (Terras Pestilentas Orientais).",
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
		fr = {
			term = "Scholo",
			def = "Abréviation de Scholomance (Maleterres de l'ouest).",
		},
		es = {
			term = "Scholo",
			def = "Abreviatura de Scholomance (Tierras de la Peste del Oeste).",
		},
		it = {
			term = "Scholo",
			def = "Abbreviazione di Scholomance (Terre Infette Occidentali).",
		},
		ru = {
			term = "Шоло",
			alt = { "Scholo" },
			def = "Сокращение от «Некроситет» (Западные Чумные земли).",
		},
		pt = {
			term = "Scholo",
			def = "Abreviação de Scolomântia (Terras Pestilentas Ocidentais).",
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
		fr = {
			term = "Ony",
			def = "Abréviation du Repaire d'Onyxia, un raid pour 40 joueurs.",
		},
		es = {
			term = "Ony",
			def = "Abreviatura de Guarida de Onyxia, una banda para 40 jugadores.",
		},
		it = {
			term = "Ony",
			def = "Abbreviazione di Antro di Onyxia, un'incursione per 40 giocatori.",
		},
		ru = {
			term = "Ony",
			alt = { "Оня" },
			def = "Сокращение от «Логово Ониксии», рейд на 40 игроков.",
		},
		pt = {
			term = "Ony",
			def = "Abreviação de Covil da Onyxia, uma raide para 40 jogadores.",
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
		fr = {
			term = "MT",
			alt = { "main tank", "OT", "off-tank" },
			def = "Main tank : le tank qui tient le boss ou les ennemis les plus importants. L'off-tank (OT) prend les ennemis en plus ou remplace le main tank s'il meurt.",
		},
		es = {
			term = "MT",
			alt = { "main tank", "OT", "off-tank" },
			def = "Main tank: el tanque que aguanta al jefe o a los enemigos más importantes. El off-tank (OT) se ocupa de los enemigos extra o le sustituye si muere.",
		},
		it = {
			term = "MT",
			alt = { "main tank", "OT", "off-tank" },
			def = "Main tank: il tank che tiene il boss o i nemici più importanti. L'off-tank (OT) prende i nemici in più o subentra se il main tank muore.",
		},
		ru = {
			term = "МТ",
			alt = { "MT", "main tank", "OT", "офф-танк" },
			def = "Главный танк: танк, который держит босса или самых важных врагов. Офф-танк (OT) берёт дополнительных врагов или заменяет главного танка, если тот погиб.",
		},
		pt = {
			term = "MT",
			alt = { "main tank", "OT", "off-tank" },
			def = "Main tank: o tanque que segura o chefe ou os inimigos mais importantes. O off-tank (OT) pega os inimigos extras ou assume se o main tank morrer.",
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
		fr = {
			term = "CàC",
			alt = { "mêlée", "melee" },
			def = "Corps à corps : les joueurs qui se battent juste à côté de l'ennemi, comme les voleurs, les guerriers ou les druides en forme de félin. À l'opposé, les casters et les distances attaquent de loin.",
		},
		es = {
			term = "Melee",
			alt = { "cuerpo a cuerpo" },
			def = "Jugadores que luchan pegados al enemigo, como pícaros, guerreros o druidas en forma felina. Lo contrario son los casters y los jugadores a distancia.",
		},
		it = {
			term = "Melee",
			alt = { "corpo a corpo" },
			def = "Giocatori che combattono a contatto con il nemico, come ladri, guerrieri o druidi in forma felina. Il contrario sono caster e giocatori a distanza.",
		},
		ru = {
			term = "Мили",
			alt = { "melee", "ближний бой" },
			def = "Игроки, которые сражаются вплотную к врагу, например разбойники, воины или друиды в облике кошки. Противоположность: кастеры и бойцы дальнего боя.",
		},
		pt = {
			term = "Melee",
			alt = { "corpo a corpo" },
			def = "Jogadores que lutam colados no inimigo, como ladinos, guerreiros ou druidas em forma felina. O oposto são casters e jogadores à distância.",
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
		fr = {
			term = "Caster",
			def = "Les joueurs qui lancent surtout des sorts, comme les mages, les démonistes ou les prêtres. « Distance » désigne tous ceux qui attaquent de loin, donc casters et chasseurs.",
		},
		es = {
			term = "Caster",
			def = "Jugadores que lanzan sobre todo hechizos, como magos, brujos o sacerdotes. «Rango» son todos los que atacan a distancia, es decir casters y cazadores.",
		},
		it = {
			term = "Caster",
			alt = { "ranged" },
			def = "Giocatori che lanciano soprattutto incantesimi, come maghi, stregoni o sacerdoti. «Ranged» indica tutti quelli che attaccano a distanza, quindi caster e cacciatori.",
		},
		ru = {
			term = "Кастер",
			alt = { "caster", "ренж" },
			def = "Игроки, которые в основном читают заклинания, например маги, чернокнижники или жрецы. «Ренж» — все, кто атакует издалека, то есть кастеры и охотники.",
		},
		pt = {
			term = "Caster",
			alt = { "ranged" },
			def = "Jogadores que conjuram principalmente feitiços, como magos, bruxos ou sacerdotes. «Ranged» são todos que atacam de longe, ou seja casters e caçadores.",
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
		fr = {
			term = "Raid",
			def = "Un groupe de plus de cinq joueurs, et les grandes instances prévues pour ces groupes. Raider veut dire y aller avec un groupe de raid.",
		},
		es = {
			term = "Banda",
			alt = { "raid" },
			def = "Un grupo de más de cinco jugadores, y las grandes instancias hechas para esos grupos. Raidear significa ir allí con una banda.",
		},
		it = {
			term = "Raid",
			alt = { "incursione" },
			def = "Un gruppo di più di cinque giocatori, e le grandi istanze pensate per questi gruppi. Raidare significa andarci con un'incursione.",
		},
		ru = {
			term = "Рейд",
			alt = { "raid" },
			def = "Группа больше чем из пяти игроков, а также большие подземелья для таких групп. «Рейдить» значит ходить туда с рейдом.",
		},
		pt = {
			term = "Raide",
			alt = { "raid" },
			def = "Um grupo com mais de cinco jogadores, e as grandes instâncias feitas para esses grupos. Raidar significa ir até lá com uma raide.",
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
		fr = {
			term = "RL",
			alt = { "raid leader" },
			def = "Raid leader : la personne qui mène le raid, explique les stratégies et distribue le butin. Dans le chat, RL peut aussi vouloir dire « real life », la vie hors du jeu.",
		},
		es = {
			term = "RL",
			alt = { "raid leader", "líder de banda" },
			def = "Líder de banda: la persona que dirige la banda, explica las tácticas y reparte el botín. En el chat RL también puede ser «real life», la vida fuera del juego.",
		},
		it = {
			term = "RL",
			alt = { "raid leader" },
			def = "Raid leader: chi guida l'incursione, spiega le tattiche e distribuisce il bottino. In chat RL può anche significare «real life», la vita fuori dal gioco.",
		},
		ru = {
			term = "РЛ",
			alt = { "RL", "рейд-лидер" },
			def = "Рейд-лидер: тот, кто ведёт рейд, объясняет тактику и распределяет добычу. В чате RL может значить и «реальная жизнь», жизнь вне игры.",
		},
		pt = {
			term = "RL",
			alt = { "raid leader", "líder de raide" },
			def = "Líder de raide: quem conduz a raide, explica as táticas e distribui o saque. No chat, RL também pode significar «real life», a vida fora do jogo.",
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
		fr = {
			term = "Premade",
			def = "Un groupe qui s'est organisé à l'avance pour jouer ensemble, par exemple une guilde. À l'opposé, un PUG est un groupe de joueurs qui ne se connaissent pas.",
		},
		es = {
			term = "Premade",
			def = "Un grupo que ha quedado antes para jugar juntos, por ejemplo de una hermandad. Lo contrario es un PUG, un grupo de jugadores que no se conocen.",
		},
		it = {
			term = "Premade",
			def = "Un gruppo che si è organizzato prima per giocare insieme, per esempio da una gilda. Il contrario è un PUG, un gruppo di giocatori che non si conoscono.",
		},
		ru = {
			term = "Премейд",
			alt = { "premade" },
			def = "Группа, которая договорилась играть вместе заранее, например из гильдии. Противоположность: ПУГ, группа незнакомых игроков.",
		},
		pt = {
			term = "Premade",
			def = "Um grupo que combinou antes de jogar junto, por exemplo de uma guilda. O oposto é um PUG, um grupo de jogadores que não se conhecem.",
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
		fr = {
			term = "Outil LFG",
			alt = { "recherche de groupe", "LFD" },
			def = "La recherche de groupe du jeu : inscrivez votre groupe avec son objectif et les rôles recherchés, ou regardez qui cherche déjà. Beaucoup l'appellent aussi Dungeon Finder ou LFD.",
		},
		es = {
			term = "Herramienta LFG",
			alt = { "buscador de grupos", "LFD" },
			def = "El buscador de grupos del juego: anuncia tu grupo con su objetivo y los roles que buscas, o mira quién está buscando ya. Muchos lo llaman también Dungeon Finder o LFD.",
		},
		it = {
			term = "Strumento LFG",
			alt = { "ricerca gruppo", "LFD" },
			def = "La ricerca di gruppo del gioco: inserisci il tuo gruppo con obiettivo e ruoli cercati, oppure guarda chi sta già cercando. Molti lo chiamano anche Dungeon Finder o LFD.",
		},
		ru = {
			term = "LFG-инструмент",
			alt = { "поиск группы", "LFD" },
			def = "Поиск группы в игре: разместите свою группу с целью и нужными ролями или посмотрите, кто уже ищет. Многие называют его также Dungeon Finder или LFD.",
		},
		pt = {
			term = "Ferramenta LFG",
			alt = { "localizador de grupos", "LFD" },
			def = "O localizador de grupos do jogo: anuncie seu grupo com o objetivo e os papéis que procura, ou veja quem já está procurando. Muitos também chamam de Dungeon Finder ou LFD.",
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
		fr = {
			term = "Instance",
			alt = { "ini" },
			def = "Un donjon ou un raid où votre groupe a sa propre copie. Les autres joueurs dehors ne vous y voient pas.",
		},
		es = {
			term = "Instancia",
			alt = { "ini" },
			def = "Una mazmorra o banda en la que tu grupo tiene su propia copia. Los demás jugadores de fuera no os ven allí.",
		},
		it = {
			term = "Istanza",
			alt = { "ini" },
			def = "Una spedizione o incursione in cui il tuo gruppo ha una copia tutta sua. Gli altri giocatori fuori non vi vedono lì dentro.",
		},
		ru = {
			term = "Инст",
			alt = { "инстанс" },
			def = "Подземелье или рейд, где у вашей группы своя копия. Другие игроки снаружи вас там не видят.",
		},
		pt = {
			term = "Instância",
			alt = { "ini" },
			def = "Uma masmorra ou raide em que seu grupo tem uma cópia só sua. Os outros jogadores lá fora não veem vocês ali dentro.",
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
		fr = {
			term = "Boss",
			def = "Un ennemi particulièrement fort, surtout en donjon et en raid, avec ses propres capacités et un meilleur butin. Les ennemis entre les boss s'appellent le trash.",
		},
		es = {
			term = "Jefe",
			alt = { "boss" },
			def = "Un enemigo especialmente fuerte, sobre todo en mazmorras y bandas, con habilidades propias y mejor botín. Los enemigos entre jefes se llaman trash.",
		},
		it = {
			term = "Boss",
			def = "Un nemico particolarmente forte, soprattutto in spedizioni e incursioni, con abilità proprie e bottino migliore. I nemici in mezzo si chiamano trash.",
		},
		ru = {
			term = "Босс",
			alt = { "boss", "боссы" },
			def = "Особенно сильный враг, в основном в подземельях и рейдах, со своими способностями и лучшей добычей. Врагов между боссами называют трешем.",
		},
		pt = {
			term = "Chefe",
			alt = { "boss" },
			def = "Um inimigo especialmente forte, principalmente em masmorras e raides, com habilidades próprias e saque melhor. Os inimigos entre eles se chamam trash.",
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
		fr = {
			term = "ID",
			alt = { "reset" },
			def = "Verrouillage de raid : après avoir tué des boss, vous êtes lié à cette instance jusqu'au prochain reset. « ID libre » veut dire que vous pouvez encore venir. Un reset fait revenir tous les ennemis.",
		},
		es = {
			term = "ID",
			alt = { "reset", "bloqueo" },
			def = "Bloqueo de banda: tras matar jefes allí quedas ligado a esa instancia hasta el siguiente reinicio. «ID libre» significa que aún puedes ir. El reinicio hace que vuelvan todos los enemigos.",
		},
		it = {
			term = "ID",
			alt = { "reset" },
			def = "Blocco dell'incursione: dopo aver ucciso dei boss resti vincolato a quell'istanza fino al prossimo reset. «ID libero» significa che puoi ancora venire. Il reset fa tornare tutti i nemici.",
		},
		ru = {
			term = "КД рейда",
			alt = { "ID", "сейв", "ресет" },
			def = "Сохранение рейда: после убийства боссов вы привязаны к этому подземелью до следующего сброса. «Свободное КД» значит, что вы ещё можете пойти. После сброса все враги возвращаются.",
		},
		pt = {
			term = "ID",
			alt = { "reset" },
			def = "Bloqueio de raide: depois de matar chefes lá, você fica vinculado àquela instância até o próximo reset. «ID livre» significa que você ainda pode ir. O reset faz todos os inimigos voltarem.",
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
		fr = {
			term = "BiS",
			alt = { "best in slot" },
			def = "Best in slot : le meilleur objet que votre classe peut obtenir pour un emplacement. Les listes BiS changent avec les patchs, prenez-les comme une direction, pas une obligation.",
		},
		es = {
			term = "BiS",
			alt = { "best in slot" },
			def = "Best in slot: el mejor objeto que tu clase puede conseguir para una ranura. Las listas BiS cambian con los parches; tómalas como orientación, no como obligación.",
		},
		it = {
			term = "BiS",
			alt = { "best in slot" },
			def = "Best in slot: il miglior oggetto che la tua classe può ottenere per uno slot. Le liste BiS cambiano con le patch, prendile come direzione, non come obbligo.",
		},
		ru = {
			term = "BiS",
			alt = { "бис", "best in slot" },
			def = "Best in slot: лучший предмет, который ваш класс может получить для ячейки. Списки BiS меняются с патчами, так что воспринимайте их как ориентир, а не обязанность.",
		},
		pt = {
			term = "BiS",
			alt = { "best in slot" },
			def = "Best in slot: o melhor item que sua classe pode conseguir para um espaço. Listas de BiS mudam com os patches, então use como direção, não como obrigação.",
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
		fr = {
			term = "Stuff",
			alt = { "gear", "équipement" },
			def = "Votre équipement porté. « Regarder le stuff » veut dire que quelqu'un regarde ce que vous portez, par exemple avant un donjon.",
		},
		es = {
			term = "Gear",
			alt = { "equip" },
			def = "Los objetos que llevas equipados. «Mirar el equipo» significa que alguien mira lo que llevas, por ejemplo antes de una mazmorra.",
		},
		it = {
			term = "Gear",
			alt = { "equip" },
			def = "Gli oggetti che indossi. «Controllare il gear» significa che qualcuno guarda cosa indossi, per esempio prima di una spedizione.",
		},
		ru = {
			term = "Шмот",
			alt = { "gear", "эквип" },
			def = "Надетые на вас предметы. «Проверить шмот» значит посмотреть, что вы носите, например перед подземельем.",
		},
		pt = {
			term = "Gear",
			alt = { "equip" },
			def = "Os itens que você está usando. «Ver o gear» significa que alguém olha o que você veste, por exemplo antes de uma masmorra.",
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
		fr = {
			term = "DKP",
			def = "Dragon kill points : des points que certaines guildes donnent pour la participation aux raids. On les dépense pour enchérir sur le butin. C'est une règle de guilde, pas un système du jeu.",
		},
		es = {
			term = "DKP",
			def = "Dragon kill points: puntos que algunas hermandades dan por participar en bandas. Se gastan para pujar por botín. Es una regla de hermandad, no un sistema del juego.",
		},
		it = {
			term = "DKP",
			def = "Dragon kill points: punti che alcune gilde assegnano per la partecipazione alle incursioni. Si spendono per fare offerte sul bottino. È una regola di gilda, non un sistema del gioco.",
		},
		ru = {
			term = "DKP",
			alt = { "ДКП" },
			def = "Dragon kill points: очки, которые некоторые гильдии дают за участие в рейдах. Ими делают ставки на добычу. Это правило гильдии, а не система игры.",
		},
		pt = {
			term = "DKP",
			def = "Dragon kill points: pontos que algumas guildas dão pela participação em raides. Eles são gastos para dar lances no saque. É uma regra da guilda, não um sistema do jogo.",
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
		fr = {
			term = "Prio",
			alt = { "priorité" },
			def = "Priorité : qui passe en premier, comme « prio heal » pour le butin, ou quel ennemi vous attaquez d'abord.",
		},
		es = {
			term = "Prio",
			alt = { "prioridad" },
			def = "Prioridad: quién va primero, como «prio healer» en el botín, o a qué enemigo atacáis primero.",
		},
		it = {
			term = "Prio",
			alt = { "priorità" },
			def = "Priorità: chi viene prima, come «prio healer» sul bottino, o quale nemico attaccate per primo.",
		},
		ru = {
			term = "Прио",
			alt = { "prio", "приоритет" },
			def = "Приоритет: кто идёт первым, например «прио хилам» при добыче, или какого врага вы атакуете первым.",
		},
		pt = {
			term = "Prio",
			alt = { "prioridade" },
			def = "Prioridade: quem vem primeiro, como «prio healer» no saque, ou qual inimigo vocês atacam primeiro.",
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
		fr = {
			term = "BRez",
			alt = { "rez en combat" },
			def = "Une résurrection en plein combat, par exemple Renaissance du druide. La plupart des résurrections ne fonctionnent qu'hors combat.",
		},
		es = {
			term = "BRez",
			alt = { "rez en combate" },
			def = "Una resurrección en mitad del combate, por ejemplo Renacer del druida. La mayoría de resurrecciones solo funcionan fuera de combate.",
		},
		it = {
			term = "BRez",
			alt = { "rez in combattimento" },
			def = "Una resurrezione in pieno combattimento, per esempio Rinascita del druido. La maggior parte delle resurrezioni funziona solo fuori dal combattimento.",
		},
		ru = {
			term = "Боевой рес",
			alt = { "BRez", "брез" },
			def = "Воскрешение прямо в бою, например Возрождение друида. Большинство воскрешений работает только вне боя.",
		},
		pt = {
			term = "BRez",
			alt = { "rez em combate" },
			def = "Uma ressurreição no meio do combate, por exemplo Renascimento do druida. A maioria das ressurreições só funciona fora de combate.",
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
		fr = {
			term = "Dispel",
			alt = { "dissiper" },
			def = "Retirer un effet : malédictions, poisons, maladies ou magie nuisibles sur des alliés, ou buffs sur des ennemis. Ce que vous pouvez retirer dépend de votre classe.",
		},
		es = {
			term = "Dispel",
			alt = { "disipar" },
			def = "Quitar un efecto: maldiciones, venenos, enfermedades o magia dañinas de aliados, o buffs de enemigos. Lo que puedes quitar depende de tu clase.",
		},
		it = {
			term = "Dispel",
			alt = { "dissolvere" },
			def = "Rimuovere un effetto: maledizioni, veleni, malattie o magie dannose dagli alleati, o buff dai nemici. Cosa puoi rimuovere dipende dalla tua classe.",
		},
		ru = {
			term = "Диспел",
			alt = { "dispel", "рассеивание" },
			def = "Снять эффект: вредные проклятия, яды, болезни или магию с союзников либо баффы с врагов. Что можно снять, зависит от вашего класса.",
		},
		pt = {
			term = "Dispel",
			alt = { "dissipar" },
			def = "Remover um efeito: maldições, venenos, doenças ou magias nocivas de aliados, ou buffs de inimigos. O que você pode remover depende da sua classe.",
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
		fr = {
			term = "Farm",
			alt = { "farmer" },
			def = "Faire la même chose encore et encore pour récolter quelque chose, comme tuer des ennemis pour des matériaux, de l'or ou de la réputation. Pour l'expérience, on dit aussi grind.",
		},
		es = {
			term = "Farmear",
			alt = { "farmeo", "grindear" },
			def = "Hacer lo mismo una y otra vez para conseguir algo, como matar enemigos por materiales, oro o reputación. Grindear suele ser lo mismo para experiencia.",
		},
		it = {
			term = "Farmare",
			alt = { "farm", "grindare" },
			def = "Fare la stessa cosa ancora e ancora per raccogliere qualcosa, come uccidere nemici per materiali, oro o reputazione. Grindare di solito significa lo stesso per l'esperienza.",
		},
		ru = {
			term = "Фарм",
			alt = { "farm", "гринд", "фармить" },
			def = "Делать одно и то же снова и снова, чтобы что-то собрать, например убивать врагов ради материалов, золота или репутации. Гринд обычно то же самое ради опыта.",
		},
		pt = {
			term = "Farmar",
			alt = { "farm", "grindar" },
			def = "Fazer a mesma coisa de novo e de novo para juntar algo, como matar inimigos por materiais, ouro ou reputação. Grindar costuma ser o mesmo para experiência.",
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
		fr = {
			term = "Stack",
			def = "Une pile d'objets identiques dans un emplacement de sac, ou le nombre de fois qu'un effet est sur quelqu'un (« 5 stacks »). « Stack » en combat veut aussi dire : tout le monde se regroupe au même endroit.",
		},
		es = {
			term = "Stack",
			alt = { "stacks" },
			def = "Un montón de objetos iguales en un hueco de la bolsa, o cuántas veces está un efecto sobre alguien («5 stacks»). «Stackear» en combate también significa: todos se ponen en un mismo punto.",
		},
		it = {
			term = "Stack",
			alt = { "stacks" },
			def = "Una pila di oggetti uguali in uno spazio della borsa, o quante volte un effetto è su qualcuno («5 stack»). «Stackare» in combattimento significa anche: tutti si mettono nello stesso punto.",
		},
		ru = {
			term = "Стак",
			alt = { "stack", "стаки" },
			def = "Стопка одинаковых предметов в одной ячейке сумки или число наложений эффекта на ком-то («5 стаков»). «Встать в стак» в бою значит: все встают в одну точку.",
		},
		pt = {
			term = "Stack",
			alt = { "stacks" },
			def = "Uma pilha de itens iguais num espaço da bolsa, ou quantas vezes um efeito está em alguém («5 stacks»). «Stackar» em combate também significa: todos ficam no mesmo ponto.",
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
		fr = {
			term = "Transmo",
			alt = { "transmog", "transmogrification" },
			def = "Donner à un objet l'apparence d'un autre ; les caractéristiques restent les mêmes. Dans WoW: Forever, c'est facultatif et se fait chez le transmogrificateur.",
		},
		es = {
			term = "Transfiguración",
			alt = { "transmog" },
			def = "Dar a un objeto el aspecto de otro; las estadísticas siguen igual. En WoW: Forever es opcional y se hace con el transfigurador.",
		},
		it = {
			term = "Trasmogrificazione",
			alt = { "transmog" },
			def = "Dare a un oggetto l'aspetto di un altro; le statistiche restano uguali. In WoW: Forever è facoltativa e si fa dal trasmogrificatore.",
		},
		ru = {
			term = "Трансмог",
			alt = { "transmog", "трансмогрификация" },
			def = "Придать предмету облик другого; характеристики остаются прежними. В WoW: Forever это по желанию и делается у трансмогрификатора.",
		},
		pt = {
			term = "Transmog",
			alt = { "transmogrificação" },
			def = "Dar a um item a aparência de outro; os atributos continuam iguais. No WoW: Forever é opcional e feito com o transmogrificador.",
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
		fr = {
			term = "BG",
			alt = { "champ de bataille" },
			def = "Champ de bataille : une carte PvP où deux équipes s'affrontent pour des objectifs fixes, comme capturer des drapeaux ou tenir des points. Cela rapporte de l'honneur.",
		},
		es = {
			term = "BG",
			alt = { "campo de batalla" },
			def = "Campo de batalla: un mapa JcJ donde dos equipos luchan por objetivos fijos, como capturar banderas o mantener puntos. Da honor.",
		},
		it = {
			term = "BG",
			alt = { "campo di battaglia" },
			def = "Campo di battaglia: una mappa PvP in cui due squadre si scontrano per obiettivi fissi, come conquistare bandiere o tenere punti. Dà onore.",
		},
		ru = {
			term = "БГ",
			alt = { "BG", "поле боя" },
			def = "Поле боя: PvP-карта, где две команды сражаются за постоянные цели, например захватывают флаги или удерживают точки. Даёт очки чести.",
		},
		pt = {
			term = "BG",
			alt = { "campo de batalha" },
			def = "Campo de batalha: um mapa PvP em que duas equipes lutam por objetivos fixos, como capturar bandeiras ou segurar pontos. Dá honra.",
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
		fr = {
			term = "AV",
			def = "Abréviation de la vallée d'Alterac, un grand champ de bataille dans les montagnes d'Alterac.",
		},
		es = {
			term = "AV",
			def = "Abreviatura de Valle de Alterac, un gran campo de batalla en las Montañas de Alterac.",
		},
		it = {
			term = "AV",
			def = "Abbreviazione di Valle d'Alterac, un grande campo di battaglia nelle Montagne d'Alterac.",
		},
		ru = {
			term = "АВ",
			alt = { "AV", "Альтерак" },
			def = "Сокращение от «Альтеракская долина», большое поле боя в Альтеракских горах.",
		},
		pt = {
			term = "AV",
			def = "Abreviação de Vale Alterac, um grande campo de batalha nas Montanhas de Alterac.",
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
		fr = {
			term = "File d'attente",
			alt = { "queue" },
			def = "File d'attente, par exemple pour un champ de bataille ou à la connexion quand beaucoup de joueurs veulent entrer en même temps. « En file » veut dire inscrit et en attente.",
		},
		es = {
			term = "Cola",
			alt = { "queue" },
			def = "Una cola de espera, por ejemplo para un campo de batalla o al conectarse cuando muchos jugadores quieren entrar a la vez. «En cola» significa apuntado y esperando.",
		},
		it = {
			term = "Coda",
			alt = { "queue" },
			def = "Una coda d'attesa, per esempio per un campo di battaglia o all'accesso quando moltissimi giocatori vogliono entrare insieme. «In coda» significa iscritto e in attesa.",
		},
		ru = {
			term = "Очередь",
			alt = { "queue" },
			def = "Очередь ожидания, например на поле боя или при входе, когда очень много игроков хотят войти одновременно. «В очереди» значит записан и ждёшь.",
		},
		pt = {
			term = "Fila",
			alt = { "queue" },
			def = "Fila de espera, por exemplo para um campo de batalha ou ao entrar, quando muitos jogadores querem entrar ao mesmo tempo. «Na fila» significa inscrito e esperando.",
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
		fr = {
			term = "IC/HRP",
			alt = { "OOC", "HRP" },
			def = "En jeu de rôle : IC (in character) veut dire que vous parlez en tant que personnage ; HRP ou OOC, en tant que joueur. OOC peut aussi vouloir dire « hors combat ».",
		},
		es = {
			term = "IC/OOC",
			def = "En el rol: IC (in character) significa que hablas como tu personaje; OOC (out of character), como jugador. OOC también puede significar «fuera de combate».",
		},
		it = {
			term = "IC/OOC",
			def = "Nel gioco di ruolo: IC (in character) significa che parli come il tuo personaggio; OOC (out of character), come giocatore. OOC può anche significare «fuori dal combattimento».",
		},
		ru = {
			term = "IC/OOC",
			def = "В ролевой игре: IC (in character) значит, что вы говорите как персонаж; OOC (out of character) — как игрок. OOC может значить и «вне боя».",
		},
		pt = {
			term = "IC/OOC",
			def = "Na interpretação: IC (in character) significa que você fala como seu personagem; OOC (out of character), como jogador. OOC também pode significar «fora de combate».",
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
		fr = {
			term = "Main",
			alt = { "perso principal" },
			def = "Votre personnage principal, celui avec lequel vous jouez le plus. Vos autres personnages sont des rerolls.",
		},
		es = {
			term = "Main",
			alt = { "personaje principal" },
			def = "Tu personaje principal, el que más juegas. Tus otros personajes son alts.",
		},
		it = {
			term = "Main",
			alt = { "personaggio principale" },
			def = "Il tuo personaggio principale, quello con cui giochi di più. Gli altri personaggi sono alt.",
		},
		ru = {
			term = "Мейн",
			alt = { "main" },
			def = "Ваш основной персонаж, за которого вы играете больше всего. Остальные персонажи — твинки.",
		},
		pt = {
			term = "Main",
			alt = { "personagem principal" },
			def = "Seu personagem principal, o que você mais joga. Seus outros personagens são alts.",
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
		fr = {
			term = "Reroll",
			alt = { "alt", "twink" },
			def = "Un autre personnage à côté de votre main.",
		},
		es = {
			term = "Alt",
			alt = { "twink" },
			def = "Otro personaje además de tu main.",
		},
		it = {
			term = "Alt",
			alt = { "twink" },
			def = "Un altro personaggio oltre al tuo main.",
		},
		ru = {
			term = "Твинк",
			alt = { "alt", "twink" },
			def = "Ещё один персонаж помимо мейна.",
		},
		pt = {
			term = "Alt",
			alt = { "twink" },
			def = "Outro personagem além do seu main.",
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
		fr = {
			term = "PNJ",
			alt = { "NPC" },
			def = "Personnage non joueur : toute figure contrôlée par le jeu, comme les marchands, les maîtres ou les donneurs de quêtes. Les PNJ hostiles s'appellent en général des mobs.",
		},
		es = {
			term = "PNJ",
			alt = { "NPC" },
			def = "Personaje no jugador: cualquier figura que controla el juego, como vendedores, instructores o personajes que dan misiones. Los PNJ hostiles se suelen llamar mobs.",
		},
		it = {
			term = "PNG",
			alt = { "NPC" },
			def = "Personaggio non giocante: qualsiasi figura controllata dal gioco, come mercanti, istruttori o datori di missioni. I PNG ostili di solito si chiamano mob.",
		},
		ru = {
			term = "NPC",
			alt = { "НПС", "нпц" },
			def = "Неигровой персонаж: любая фигура, которой управляет игра, например торговцы, учителя или квестодатели. Враждебных NPC обычно называют мобами.",
		},
		pt = {
			term = "PNJ",
			alt = { "NPC" },
			def = "Personagem não jogador: qualquer figura controlada pelo jogo, como vendedores, instrutores ou doadores de missões. PNJs hostis costumam se chamar mobs.",
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
		fr = {
			term = "Popo",
			alt = { "potion", "pot" },
			def = "Une potion, comme une potion de soins ou de mana. Les potions partagent un temps de recharge, vous ne pouvez donc pas en boire plusieurs d'affilée.",
		},
		es = {
			term = "Poción",
			alt = { "pot", "poti" },
			def = "Una poción, como una de sanación o de maná. Las pociones comparten tiempo de reutilización, así que no puedes beber varias seguidas.",
		},
		it = {
			term = "Pozza",
			alt = { "pot", "pozione" },
			def = "Una pozione, come una di cura o di mana. Le pozioni condividono il tempo di recupero, quindi non puoi berne diverse una dopo l'altra.",
		},
		ru = {
			term = "Банка",
			alt = { "pot", "зелье" },
			def = "Зелье, например лечебное или зелье маны. У зелий общий откат, поэтому несколько подряд выпить нельзя.",
		},
		pt = {
			term = "Pot",
			alt = { "poção" },
			def = "Uma poção, como de cura ou de mana. Poções compartilham o tempo de recarga, então você não pode beber várias seguidas.",
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
		fr = {
			term = "Flacon",
			alt = { "flask" },
			def = "Une potion d'alchimie qui dure très longtemps et dont l'effet survit même à la mort. Surtout utilisée en raid.",
		},
		es = {
			term = "Frasco",
			alt = { "flask" },
			def = "Una poción de alquimia que dura mucho y cuyo efecto sobrevive incluso a la muerte. Se usa sobre todo en bandas.",
		},
		it = {
			term = "Tonico",
			alt = { "flask" },
			def = "Una pozione alchemica che dura molto a lungo e il cui effetto sopravvive persino alla morte. Usata soprattutto nelle incursioni.",
		},
		ru = {
			term = "Фласка",
			alt = { "flask", "настой" },
			def = "Очень долгое алхимическое зелье, действие которого сохраняется даже после смерти. Чаще всего используется в рейдах.",
		},
		pt = {
			term = "Frasco",
			alt = { "flask" },
			def = "Uma poção de alquimia que dura muito e cujo efeito sobrevive até à morte. Usada principalmente em raides.",
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
		fr = {
			term = "Pierre de soins",
			def = "Une pierre que les démonistes fabriquent et distribuent. Elle vous soigne instantanément.",
		},
		es = {
			term = "Piedra de salud",
			def = "Una piedra que los brujos crean y reparten. Te sana al instante.",
		},
		it = {
			term = "Pietra della Salute",
			def = "Una pietra che gli stregoni creano e distribuiscono. Ti cura all'istante.",
		},
		ru = {
			term = "Камень здоровья",
			alt = { "хилстоун" },
			def = "Камень, который создают и раздают чернокнижники. Он мгновенно лечит вас.",
		},
		pt = {
			term = "Pedra de Vida",
			def = "Uma pedra que os bruxos criam e distribuem. Ela cura você na hora.",
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
		fr = {
			term = "SS",
			alt = { "pierre d'âme" },
			def = "Pierre d'âme : un démoniste la place sur quelqu'un, qui peut alors se ressusciter après sa mort. En général sur le soigneur.",
		},
		es = {
			term = "SS",
			alt = { "piedra de alma" },
			def = "Piedra de alma: un brujo la pone sobre alguien, que así puede resucitarse tras morir. Normalmente sobre el sanador.",
		},
		it = {
			term = "SS",
			alt = { "pietra dell'anima" },
			def = "Pietra dell'anima: uno stregone la mette su qualcuno, che così può resuscitarsi dopo la morte. Di solito sul curatore.",
		},
		ru = {
			term = "Камень души",
			alt = { "SS", "соулстоун" },
			def = "Камень души: чернокнижник накладывает его на кого-то, и тот может воскресить себя после смерти. Обычно на хила.",
		},
		pt = {
			term = "SS",
			alt = { "pedra da alma" },
			def = "Pedra da alma: um bruxo a coloca em alguém, que então pode se ressuscitar depois de morrer. Normalmente no curador.",
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
		fr = {
			term = "Bijou",
			alt = { "trinket" },
			def = "Deux emplacements d'équipement pour des objets à effet spécial, souvent à utiliser avec un temps de recharge.",
		},
		es = {
			term = "Abalorio",
			alt = { "trinket" },
			def = "Dos ranuras de equipo para objetos con un efecto especial, a menudo uno que se usa con tiempo de reutilización.",
		},
		it = {
			term = "Monile",
			alt = { "trinket" },
			def = "Due spazi dell'equipaggiamento per oggetti con un effetto speciale, spesso da usare con un tempo di recupero.",
		},
		ru = {
			term = "Аксессуар",
			alt = { "trinket", "тринкет" },
			def = "Две ячейки снаряжения для предметов с особым эффектом, часто применяемым с временем восстановления.",
		},
		pt = {
			term = "Berloque",
			alt = { "trinket" },
			def = "Dois espaços de equipamento para itens com um efeito especial, muitas vezes de usar, com tempo de recarga.",
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
		fr = {
			term = "1M/2M",
			alt = { "1H", "2H", "une main", "deux mains" },
			def = "Arme à une main et à deux mains. Une arme à une main laisse une main libre pour un bouclier, un objet en main gauche ou une seconde arme ; une arme à deux mains demande les deux.",
		},
		es = {
			term = "1H/2H",
			alt = { "una mano", "dos manos" },
			def = "Arma de una mano y de dos manos. Las de una mano dejan libre una mano para un escudo, un objeto de mano izquierda o una segunda arma; las de dos manos ocupan ambas.",
		},
		it = {
			term = "1H/2H",
			alt = { "a una mano", "a due mani" },
			def = "Arma a una mano e a due mani. Le armi a una mano lasciano libera una mano per uno scudo, un oggetto secondario o una seconda arma; quelle a due mani occupano entrambe.",
		},
		ru = {
			term = "1H/2H",
			alt = { "одноручное", "двуручное" },
			def = "Одноручное и двуручное оружие. Одноручное оставляет свободной руку для щита, предмета в левую руку или второго оружия; двуручное занимает обе руки.",
		},
		pt = {
			term = "1H/2H",
			alt = { "uma mão", "duas mãos" },
			def = "Arma de uma mão e de duas mãos. As de uma mão deixam uma mão livre para escudo, item de mão secundária ou uma segunda arma; as de duas mãos ocupam as duas.",
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
		fr = {
			term = "Désenchanter",
			alt = { "DE", "dez" },
			def = "Les enchanteurs décomposent les objets verts et meilleurs en matériaux. « Quelqu'un peut dez ça ? » cherche un enchanteur.",
		},
		es = {
			term = "Desencantar",
			alt = { "DE" },
			def = "Los encantadores deshacen objetos verdes o mejores en materiales. «¿Alguien puede desencantar esto?» busca un encantador.",
		},
		it = {
			term = "Disincantare",
			alt = { "DE" },
			def = "Gli incantatori scompongono oggetti verdi o migliori in materiali. «Qualcuno può disincantare questo?» cerca un incantatore.",
		},
		ru = {
			term = "Распыление",
			alt = { "DE", "дизенчант" },
			def = "Зачарователи распыляют зелёные и лучшие предметы на материалы. «Кто может распылить?» значит, что нужен зачарователь.",
		},
		pt = {
			term = "Desencantar",
			alt = { "DE" },
			def = "Encantadores desfazem itens verdes ou melhores em materiais. «Alguém pode desencantar isso?» procura um encantador.",
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
		fr = {
			term = "Engi/LW",
			def = "Abréviations de métiers en anglais : Engi pour ingénierie, LW pour travail du cuir, Ench pour enchantement. Dans le chat allemand, VZ, Ingi et LV veulent dire la même chose.",
		},
		es = {
			term = "Engi/LW",
			def = "Abreviaturas de profesiones en inglés: Engi es ingeniería, LW peletería, Ench encantamiento. En el chat alemán, VZ, Ingi y LV significan lo mismo.",
		},
		it = {
			term = "Engi/LW",
			def = "Abbreviazioni inglesi delle professioni: Engi è ingegneria, LW conciatura, Ench incantamento. Nella chat tedesca VZ, Ingi e LV significano lo stesso.",
		},
		ru = {
			term = "Engi/LW",
			def = "Английские сокращения профессий: Engi — инженерное дело, LW — кожевничество, Ench — наложение чар. В немецком чате VZ, Ingi и LV значат то же самое.",
		},
		pt = {
			term = "Engi/LW",
			def = "Abreviações inglesas de profissões: Engi é engenharia, LW couraria, Ench encantamento. No chat alemão, VZ, Ingi e LV significam o mesmo.",
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
		fr = {
			term = "Stam/Str/Agi/Int",
			def = "Abréviations de caractéristiques : Stam ou endu pour Endurance, Str pour Force, Agi pour Agilité, Int pour Intelligence et Spi pour Esprit.",
		},
		es = {
			term = "Stam/Str/Agi/Int",
			def = "Abreviaturas de estadísticas: Stam es Aguante, Str Fuerza, Agi Agilidad, Int Intelecto y Spi Espíritu.",
		},
		it = {
			term = "Stam/Str/Agi/Int",
			def = "Abbreviazioni delle statistiche: Stam è Tempra, Str Forza, Agi Agilità, Int Intelletto e Spi Spirito.",
		},
		ru = {
			term = "Stam/Str/Agi/Int",
			alt = { "стамина", "агила", "инта" },
			def = "Сокращения характеристик: Stam (стамина) — выносливость, Str — сила, Agi (агила) — ловкость, Int (инта) — интеллект, Spi — дух.",
		},
		pt = {
			term = "Stam/Str/Agi/Int",
			def = "Abreviações de atributos: Stam é Vigor, Str Força, Agi Agilidade, Int Intelecto e Spi Espírito.",
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
		fr = {
			term = "Prot/Holy/Resto …",
			def = "Noms courts des spécialisations : Prot = Protection, Holy = Sacré, Resto = Restauration, Ele/Enh = Élémentaire/Amélioration, Ret = Vindicte, Destro/Affli = Destruction/Affliction, Disc = Discipline, BM/MM/SV = Maîtrise des bêtes/Précision/Survie.",
		},
		es = {
			term = "Prot/Holy/Resto …",
			def = "Nombres cortos de especializaciones: Prot = Protección, Holy = Sagrado, Resto = Restauración, Ele/Enh = Elemental/Mejora, Ret = Reprensión, Destro/Affli = Destrucción/Aflicción, Disc = Disciplina, BM/MM/SV = Dominio de bestias/Puntería/Supervivencia.",
		},
		it = {
			term = "Prot/Holy/Resto …",
			def = "Nomi brevi delle specializzazioni: Prot = Protezione, Holy = Sacro, Resto = Rigenerazione, Ele/Enh = Elementale/Potenziamento, Ret = Castigo, Destro/Affli = Distruzione/Afflizione, Disc = Disciplina, BM/MM/SV = Affinità Animale/Precisione/Sopravvivenza.",
		},
		ru = {
			term = "Prot/Holy/Resto …",
			def = "Короткие названия специализаций: Prot = Защита, Holy = Свет, Resto = Исцеление, Ele/Enh = Стихии/Совершенствование, Ret = Воздаяние, Destro/Affli = Разрушение/Колдовство, Disc = Послушание, BM/MM/SV = Повелитель зверей/Стрельба/Выживание.",
		},
		pt = {
			term = "Prot/Holy/Resto …",
			def = "Nomes curtos de especializações: Prot = Proteção, Holy = Sagrado, Resto = Restauração, Ele/Enh = Elemental/Aperfeiçoamento, Ret = Retribuição, Destro/Affli = Destruição/Suplício, Disc = Disciplina, BM/MM/SV = Domínio das Feras/Precisão/Sobrevivência.",
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
		fr = {
			term = "Dudu",
			def = "Surnom du druide dans le chat.",
		},
		es = {
			term = "Dudu",
			def = "Apodo del druida en el chat alemán.",
		},
		it = {
			term = "Dudu",
			def = "Soprannome del druido nella chat tedesca.",
		},
		ru = {
			term = "Друль",
			alt = { "дудка", "Dudu" },
			def = "Шуточное прозвище друида в чате.",
		},
		pt = {
			term = "Dudu",
			def = "Apelido do druida no chat alemão.",
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
		fr = {
			term = "Nerf",
			alt = { "OP" },
			def = "Un nerf est un affaiblissement par un patch ; l'inverse est un buff. Ce qui semble trop fort est dit OP (overpowered).",
		},
		es = {
			term = "Nerf",
			alt = { "OP", "chetado" },
			def = "Un nerf es un debilitamiento por un parche; lo contrario es un buff. Lo que parece demasiado fuerte se llama OP (overpowered).",
		},
		it = {
			term = "Nerf",
			alt = { "OP" },
			def = "Un nerf è un indebolimento con una patch; il contrario è un buff. Ciò che sembra troppo forte si dice OP (overpowered).",
		},
		ru = {
			term = "Нерф",
			alt = { "nerf", "OP", "имба" },
			def = "Нерф — ослабление патчем; противоположность — бафф. То, что кажется слишком сильным, называют имбой или OP (overpowered).",
		},
		pt = {
			term = "Nerf",
			alt = { "OP", "roubado" },
			def = "Um nerf é um enfraquecimento por um patch; o oposto é um buff. O que parece forte demais se chama OP (overpowered).",
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
		fr = {
			term = "Addon",
			def = "Une extension de l'interface du jeu créée par des joueurs, par exemple pour les sacs, les quêtes ou les alertes de combat. AskAzeroth est aussi un addon.",
		},
		es = {
			term = "Addon",
			def = "Una extensión de la interfaz del juego hecha por jugadores, por ejemplo para bolsas, misiones o avisos de combate. AskAzeroth también es un addon.",
		},
		it = {
			term = "Addon",
			def = "Un'estensione dell'interfaccia del gioco creata dai giocatori, per esempio per borse, missioni o avvisi di combattimento. Anche AskAzeroth è un addon.",
		},
		ru = {
			term = "Аддон",
			alt = { "addon", "аддоны" },
			def = "Расширение интерфейса игры, созданное игроками, например для сумок, заданий или предупреждений в бою. AskAzeroth тоже аддон.",
		},
		pt = {
			term = "Addon",
			def = "Uma extensão da interface do jogo feita por jogadores, por exemplo para bolsas, missões ou alertas de combate. O AskAzeroth também é um addon.",
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
		fr = {
			term = "UI",
			alt = { "interface" },
			def = "Interface utilisateur : les barres, fenêtres et la carte du jeu. « /reload » la recharge, par exemple après avoir changé d'addons.",
		},
		es = {
			term = "UI",
			alt = { "interfaz" },
			def = "Interfaz de usuario: las barras, ventanas y el mapa del juego. «/reload» la recarga, por ejemplo tras cambiar addons.",
		},
		it = {
			term = "UI",
			alt = { "interfaccia" },
			def = "Interfaccia utente: barre, finestre e mappa del gioco. «/reload» la ricarica, per esempio dopo aver cambiato addon.",
		},
		ru = {
			term = "UI",
			alt = { "интерфейс" },
			def = "Интерфейс пользователя: панели, окна и карта игры. «/reload» перезагружает его, например после смены аддонов.",
		},
		pt = {
			term = "UI",
			alt = { "interface" },
			def = "Interface do usuário: as barras, janelas e o mapa do jogo. «/reload» recarrega a interface, por exemplo depois de trocar addons.",
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
		fr = {
			term = "Ignorer",
			alt = { "ignore" },
			def = "Liste d'ignorés : vous ne voyez plus ces joueurs dans le chat, et ils ne peuvent ni vous chuchoter ni vous inviter. Clic droit sur le nom, puis Ignorer.",
		},
		es = {
			term = "Ignorar",
			alt = { "ignore" },
			def = "Lista de ignorados: ya no ves a esos jugadores en el chat y no pueden susurrarte ni invitarte. Clic derecho en el nombre y luego Ignorar.",
		},
		it = {
			term = "Ignora",
			alt = { "ignore" },
			def = "Lista degli ignorati: non vedi più questi giocatori in chat, e non possono sussurrarti né invitarti. Clic destro sul nome, poi Ignora.",
		},
		ru = {
			term = "Игнор",
			alt = { "ignore" },
			def = "Список игнорирования: вы больше не видите этих игроков в чате, а они не могут шептать вам или приглашать вас. Правый щелчок по имени, затем «Игнорировать».",
		},
		pt = {
			term = "Ignorar",
			alt = { "ignore" },
			def = "Lista de ignorados: você não vê mais esses jogadores no chat, e eles não podem sussurrar nem convidar você. Clique com o botão direito no nome e depois em Ignorar.",
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
		fr = {
			term = "Lag",
			alt = { "DC", "déco" },
			def = "Retard dû à une connexion lente : le jeu réagit en retard ou saccade. DC (disconnect) ou déco veut dire que la connexion a complètement coupé.",
		},
		es = {
			term = "Lag",
			alt = { "DC" },
			def = "Retraso por una conexión lenta: el juego reacciona tarde o va a tirones. DC (disconnect) significa que la conexión se ha cortado del todo.",
		},
		it = {
			term = "Lag",
			alt = { "DC" },
			def = "Ritardo dovuto a una connessione lenta: il gioco reagisce tardi o scatta. DC (disconnect) significa che la connessione è caduta del tutto.",
		},
		ru = {
			term = "Лаг",
			alt = { "lag", "DC", "дисконнект" },
			def = "Задержка из-за медленного соединения: игра реагирует поздно или дёргается. DC (дисконнект) значит, что соединение полностью оборвалось.",
		},
		pt = {
			term = "Lag",
			alt = { "DC" },
			def = "Atraso por uma conexão lenta: o jogo reage tarde ou trava. DC (disconnect) significa que a conexão caiu de vez.",
		},
	},
	-- Chat slang
	{
		id = "np",
		chat = { "np", "NP" },
		mark = false,
		de = { term = "np", def = "No problem: kein Problem, gern geschehen." },
		en = { term = "np", def = "No problem; you're welcome." },
		fr = { term = "np", def = "No problem : pas de problème, avec plaisir." },
		es = { term = "np", def = "No problem: no hay problema, de nada." },
		it = { term = "np", def = "No problem: nessun problema, figurati." },
		ru = { term = "np", alt = { "нзч", "не за что" }, def = "No problem: без проблем, не за что." },
		pt = { term = "np", def = "No problem: sem problema, de nada." },
	},
	{
		id = "wb",
		chat = { "wb", "WB" },
		mark = false,
		de = { term = "wb", def = "Welcome back: willkommen zurück, etwa wenn jemand wieder am Platz ist." },
		en = { term = "wb", def = "Welcome back, for example when someone returns to the keyboard." },
		fr = { term = "wb", def = "Welcome back : bon retour, par exemple quand quelqu'un revient devant son clavier." },
		es = { term = "wb", def = "Welcome back: bienvenido de nuevo, por ejemplo cuando alguien vuelve al teclado." },
		it = { term = "wb", def = "Welcome back: bentornato, per esempio quando qualcuno torna alla tastiera." },
		ru = { term = "wb", alt = { "с возвращением" }, def = "Welcome back: с возвращением, например когда кто-то вернулся к клавиатуре." },
		pt = { term = "wb", def = "Welcome back: bem-vindo de volta, por exemplo quando alguém volta ao teclado." },
	},
	{
		id = "omw",
		chat = { "omw", "OMW" },
		mark = false,
		de = { term = "omw", def = "On my way: bin unterwegs, komme gleich." },
		en = { term = "omw", def = "On my way." },
		fr = { term = "omw", def = "On my way : j'arrive, je suis en route." },
		es = { term = "omw", def = "On my way: voy de camino." },
		it = { term = "omw", def = "On my way: sto arrivando." },
		ru = { term = "omw", def = "On my way: уже иду." },
		pt = { term = "omw", def = "On my way: estou indo." },
	},
	{
		id = "mom",
		chat = { "sec", "1sec", "1 sec" },
		mark = false,
		de = { term = "sec", alt = { "mom" }, def = "One second bzw. Moment: kurz warten, bin gleich so weit." },
		en = { term = "sec", alt = { "1 sec" },
		fr = { term = "sec", alt = { "1 sec", "2 min" }, def = "Une seconde : attendez un instant, j'ai presque fini." },
		es = { term = "sec", alt = { "1 sec" }, def = "Un segundo: espera un momento, casi estoy." },
		it = { term = "sec", alt = { "1 sec" }, def = "Un secondo: aspetta un attimo, ho quasi finito." },
		ru = { term = "сек", alt = { "sec", "1 sec" }, def = "Секунду: подождите немного, почти готов." },
		pt = { term = "sec", alt = { "1 sec", "pera" }, def = "Um segundo: espera um pouco, já estou quase." }, def = "One second: wait a moment, almost ready." },
	},
	{
		id = "hf",
		chat = { "hf", "HF", "gl", "GL", "gl hf" },
		mark = false,
		de = { term = "hf", alt = { "gl" }, def = "Have fun: viel Spaß. Oft zusammen mit gl (good luck, viel Glück)." },
		en = { term = "hf", alt = { "gl" },
		fr = { term = "hf", alt = { "gl" }, def = "Have fun : amusez-vous bien, souvent avec gl (good luck, bonne chance)." },
		es = { term = "hf", alt = { "gl" }, def = "Have fun: pasadlo bien, a menudo junto con gl (good luck, buena suerte)." },
		it = { term = "hf", alt = { "gl" }, def = "Have fun: divertitevi, spesso insieme a gl (good luck, buona fortuna)." },
		ru = { term = "hf", alt = { "gl" }, def = "Have fun: удачи и веселья, часто вместе с gl (good luck, удачи)." },
		pt = { term = "hf", alt = { "gl" }, def = "Have fun: divirtam-se, muitas vezes junto com gl (good luck, boa sorte)." }, def = "Have fun, often together with gl (good luck)." },
	},
	{
		id = "gn8",
		chat = { "gn8", "GN8", "n8", "gn", "GN" },
		mark = false,
		de = { term = "gn8", alt = { "n8" }, def = "Gute Nacht." },
		en = { term = "gn", alt = { "gn8" },
		fr = { term = "gn", alt = { "bn", "bonne nuit" }, def = "Bonne nuit." },
		es = { term = "gn", alt = { "gn8" }, def = "Buenas noches." },
		it = { term = "gn", alt = { "gn8", "bn" }, def = "Buonanotte." },
		ru = { term = "gn", alt = { "спок", "споки" }, def = "Спокойной ночи." },
		pt = { term = "gn", alt = { "gn8", "bn" }, def = "Boa noite." }, def = "Good night." },
	},
	{
		id = "ka",
		chat = { "kA", "KA", "k.A." },
		mark = false,
		de = { term = "kA", def = "Keine Ahnung." },
		en = { term = "kA", def = "German chat short form for \"no idea\"." },
		fr = { term = "kA", def = "Abréviation allemande du chat pour « aucune idée »." },
		es = { term = "kA", def = "Abreviatura alemana del chat para «ni idea»." },
		it = { term = "kA", def = "Abbreviazione tedesca della chat per «non ne ho idea»." },
		ru = { term = "kA", def = "Немецкое сокращение в чате: «понятия не имею»." },
		pt = { term = "kA", def = "Abreviação alemã do chat para «não faço ideia»." },
	},
	{
		id = "sry",
		chat = { "sry", "Sry", "SRY" },
		mark = false,
		de = { term = "sry", def = "Sorry: Entschuldigung." },
		en = { term = "sry", def = "Sorry." },
		fr = { term = "sry", alt = { "dsl" }, def = "Sorry : désolé. En français, on écrit aussi dsl." },
		es = { term = "sry", alt = { "srry" }, def = "Sorry: perdón." },
		it = { term = "sry", def = "Sorry: scusa." },
		ru = { term = "sry", alt = { "сорян", "сори" }, def = "Sorry: извините." },
		pt = { term = "sry", alt = { "foi mal" }, def = "Sorry: desculpa." },
	},
	{
		id = "pls",
		chat = { "pls", "plz", "plx", "Pls", "Plz" },
		mark = false,
		de = { term = "pls", alt = { "plz" }, def = "Please: bitte." },
		en = { term = "pls", alt = { "plz" },
		fr = { term = "pls", alt = { "stp", "svp", "plz" }, def = "Please : s'il te plaît. En français, on écrit aussi stp ou svp." },
		es = { term = "pls", alt = { "plz", "porfa", "xfa" }, def = "Please: por favor. En español también se escribe porfa o xfa." },
		it = { term = "pls", alt = { "plz", "pf" }, def = "Please: per favore. In italiano si scrive anche pf." },
		ru = { term = "плз", alt = { "pls", "plz", "пж" }, def = "Please: пожалуйста." },
		pt = { term = "pls", alt = { "plz", "pfv", "pf" }, def = "Please: por favor. Em português também se escreve pfv." }, def = "Please." },
	},
	{
		id = "dnd",
		chat = { "DND", "dnd" },
		mark = false,
		de = { term = "DND", def = "Do not disturb: bitte nicht stören. Mit /dnd setzt du diesen Status selbst." },
		en = { term = "DND", def = "Do not disturb. Type /dnd to set this status yourself." },
		fr = { term = "DND", alt = { "NPD" }, def = "Do not disturb : ne pas déranger. Tapez /dnd pour activer ce statut vous-même." },
		es = { term = "DND", alt = { "No molestar" }, def = "Do not disturb: no molestar. Escribe /dnd para activar este estado tú mismo." },
		it = { term = "DND", alt = { "non disturbare" }, def = "Do not disturb: non disturbare. Scrivi /dnd per impostare tu stesso questo stato." },
		ru = { term = "DND", alt = { "не беспокоить" }, def = "Do not disturb: не беспокоить. Введите /dnd, чтобы самому включить этот статус." },
		pt = { term = "DND", alt = { "não perturbe" }, def = "Do not disturb: não perturbe. Digite /dnd para ativar esse status você mesmo." },
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
		fr = {
			term = "inc",
			def = "Incoming : des ennemis arrivent. Un avertissement au groupe, par exemple quand une patrouille ou un joueur de l'autre faction approche.",
		},
		es = {
			term = "inc",
			def = "Incoming: vienen enemigos. Un aviso al grupo, por ejemplo cuando se acerca una patrulla o un jugador de la otra facción.",
		},
		it = {
			term = "inc",
			def = "Incoming: arrivano nemici. Un avviso al gruppo, per esempio quando si avvicina una pattuglia o un giocatore dell'altra fazione.",
		},
		ru = {
			term = "inc",
			alt = { "инк" },
			def = "Incoming: идут враги. Предупреждение группе, например когда приближается патруль или игрок другой фракции.",
		},
		pt = {
			term = "inc",
			def = "Incoming: inimigos chegando. Um aviso ao grupo, por exemplo quando uma patrulha ou um jogador da outra facção se aproxima.",
		},
	},
	{
		id = "oor",
		chat = { "OOR", "oor" },
		mark = false,
		de = { term = "OOR", def = "Out of range: außer Reichweite, etwa wenn der Heiler dich nicht mehr erreicht." },
		en = { term = "OOR", def = "Out of range, for example when the healer can't reach you any more." },
		fr = { term = "OOR", def = "Out of range : hors de portée, par exemple quand le soigneur ne peut plus vous atteindre." },
		es = { term = "OOR", def = "Out of range: fuera de alcance, por ejemplo cuando el sanador ya no llega hasta ti." },
		it = { term = "OOR", def = "Out of range: fuori portata, per esempio quando il curatore non ti raggiunge più." },
		ru = { term = "OOR", def = "Out of range: вне досягаемости, например когда хил больше до вас не достаёт." },
		pt = { term = "OOR", def = "Out of range: fora de alcance, por exemplo quando o curador não alcança mais você." },
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
		fr = {
			term = "Noob",
			alt = { "newbie" },
			def = "À l'origine un nouveau joueur, mais dans le chat souvent une insulte. Être nouveau n'est pas une faute : tout le monde a commencé un jour, et avec AskAzeroth vous pouvez simplement demander.",
		},
		es = {
			term = "Noob",
			alt = { "newbie" },
			def = "En origen un jugador nuevo, pero en el chat a menudo un insulto. Ser nuevo no es ningún fallo: todos empezamos alguna vez, y con AskAzeroth puedes preguntar sin más.",
		},
		it = {
			term = "Noob",
			alt = { "niubbo", "newbie" },
			def = "In origine un giocatore nuovo, ma in chat spesso un insulto. Essere nuovi non è una colpa: tutti hanno iniziato una volta, e con AskAzeroth puoi semplicemente chiedere.",
		},
		ru = {
			term = "Нуб",
			alt = { "noob" },
			def = "Изначально новый игрок, но в чате часто оскорбление. Быть новичком не стыдно: все когда-то начинали, а в AskAzeroth можно просто спросить.",
		},
		pt = {
			term = "Noob",
			alt = { "newbie" },
			def = "Originalmente um jogador novo, mas no chat muitas vezes um insulto. Ser novo não é defeito: todo mundo começou um dia, e com o AskAzeroth você pode simplesmente perguntar.",
		},
	},
	-- Dungeons (the classic dungeons that are in WoW: Forever)
	{
		id = "gnomer",
		chat = { "Gnomer", "gnomer", "Gnomeregan" },
		mark = false,
		de = { term = "Gnomer", alt = { "Gnome" }, def = "Kürzel für Gnomeregan, Dungeon in Dun Morogh." },
		en = { term = "Gnomer", def = "Short for Gnomeregan, a dungeon in Dun Morogh." },
		fr = { term = "Gnomer", def = "Abréviation de Gnomeregan, un donjon à Dun Morogh." },
		es = { term = "Gnomer", def = "Abreviatura de Gnomeregan, una mazmorra en Dun Morogh." },
		it = { term = "Gnomer", def = "Abbreviazione di Gnomeregan, una spedizione a Dun Morogh." },
		ru = { term = "Гномреган", alt = { "Gnomer" }, def = "Сокращение от «Гномреган», подземелье в Дун Мороге." },
		pt = { term = "Gnomer", def = "Abreviação de Gnomeregan, uma masmorra em Dun Morogh." },
	},
	{
		id = "rfk",
		chat = { "RFK", "Kral" },
		mark = false,
		de = { term = "RFK", alt = { "Kral" }, def = "Kürzel für den Kral der Klingenhauer, Dungeon im Brachland." },
		en = { term = "RFK", def = "Short for Razorfen Kraul, a dungeon in the Barrens." },
		fr = { term = "RFK", alt = { "Kraal" }, def = "Abréviation du Kraal de Tranchebauge, un donjon dans les Tarides." },
		es = { term = "RFK", def = "Abreviatura de Horado Rajacieno, una mazmorra en Los Baldíos." },
		it = { term = "RFK", def = "Abbreviazione di Gineprai di Lamaspina, una spedizione nelle Savane." },
		ru = { term = "RFK", def = "Сокращение от «Лабиринты Иглошкурых», подземелье в Степях." },
		pt = { term = "RFK", def = "Abreviação de Razorfen Kraul, uma masmorra nos Sertões." },
	},
	{
		id = "rfd",
		chat = { "RFD" },
		mark = false,
		de = { term = "RFD", alt = { "Hügel" }, def = "Kürzel für die Hügel der Klingenhauer, Dungeon im Brachland." },
		en = { term = "RFD", def = "Short for Razorfen Downs, a dungeon in the Barrens." },
		fr = { term = "RFD", alt = { "Souilles" }, def = "Abréviation des Souilles de Tranchebauge, un donjon dans les Tarides." },
		es = { term = "RFD", def = "Abreviatura de Zahúrda Rajacieno, una mazmorra en Los Baldíos." },
		it = { term = "RFD", def = "Abbreviazione di Sotterranei di Lamaspina, una spedizione nelle Savane." },
		ru = { term = "RFD", def = "Сокращение от «Курганы Иглошкурых», подземелье в Степях." },
		pt = { term = "RFD", def = "Abreviação de Razorfen Downs, uma masmorra nos Sertões." },
	},
	{
		id = "stocks",
		chat = { "Stocks", "stocks", "Verlies" },
		mark = false,
		de = { term = "Verlies", alt = { "Stocks" }, def = "Das Verlies, Dungeon mitten in Sturmwind." },
		en = { term = "Stocks", def = "Short for The Stockade, a dungeon in the middle of Stormwind." },
		fr = { term = "Prison", alt = { "Stocks" }, def = "La Prison, un donjon en plein cœur de Hurlevent." },
		es = { term = "Las Mazmorras", alt = { "Stocks" }, def = "Las Mazmorras, una mazmorra en pleno centro de Ventormenta." },
		it = { term = "Segrete", alt = { "Stocks" }, def = "Le Segrete, una spedizione nel cuore di Roccavento." },
		ru = { term = "Тюрьма", alt = { "Stocks" }, def = "Тюрьма, подземелье в самом центре Штормграда." },
		pt = { term = "Cárcere", alt = { "Stocks" }, def = "O Cárcere, uma masmorra bem no centro de Ventobravo." },
	},
	{
		id = "ulda",
		chat = { "Ulda", "ulda", "Uldaman" },
		mark = false,
		de = { term = "Ulda", def = "Kürzel für Uldaman, Dungeon im Ödland." },
		en = { term = "Ulda", def = "Short for Uldaman, a dungeon in the Badlands." },
		fr = { term = "Ulda", def = "Abréviation d'Uldaman, un donjon dans les Terres ingrates." },
		es = { term = "Ulda", def = "Abreviatura de Uldaman, una mazmorra en Tierras Inhóspitas." },
		it = { term = "Ulda", def = "Abbreviazione di Uldaman, una spedizione nelle Maleterre." },
		ru = { term = "Ульда", alt = { "Ulda" }, def = "Сокращение от «Ульдаман», подземелье в Бесплодных землях." },
		pt = { term = "Ulda", def = "Abreviação de Uldaman, uma masmorra nos Ermos." },
	},
	{
		id = "zf",
		chat = { "ZF" },
		mark = false,
		de = { term = "ZF", def = "Kürzel für Zul'Farrak, Dungeon in Tanaris." },
		en = { term = "ZF", def = "Short for Zul'Farrak, a dungeon in Tanaris." },
		fr = { term = "ZF", def = "Abréviation de Zul'Farrak, un donjon en Tanaris." },
		es = { term = "ZF", def = "Abreviatura de Zul'Farrak, una mazmorra en Tanaris." },
		it = { term = "ZF", def = "Abbreviazione di Zul'Farrak, una spedizione a Tanaris." },
		ru = { term = "ZF", alt = { "ЗФ" }, def = "Сокращение от «Зул'Фаррак», подземелье в Танарисе." },
		pt = { term = "ZF", def = "Abreviação de Zul'Farrak, uma masmorra em Tanaris." },
	},
	{
		id = "mara",
		chat = { "Mara", "mara", "Maraudon" },
		mark = false,
		de = { term = "Mara", def = "Kürzel für Maraudon, Dungeon in Desolace." },
		en = { term = "Mara", def = "Short for Maraudon, a dungeon in Desolace." },
		fr = { term = "Mara", def = "Abréviation de Maraudon, un donjon en Désolace." },
		es = { term = "Mara", def = "Abreviatura de Maraudon, una mazmorra en Desolace." },
		it = { term = "Mara", def = "Abbreviazione di Maraudon, una spedizione a Desolanda." },
		ru = { term = "Мара", alt = { "Mara" }, def = "Сокращение от «Мародон», подземелье в Пустошах." },
		pt = { term = "Mara", def = "Abreviação de Maraudon, uma masmorra em Desolação." },
	},
	{
		id = "st",
		chat = { "ST" },
		mark = false,
		de = { term = "ST", alt = { "Tempel" }, def = "Kürzel für den Versunkenen Tempel (Tempel von Atal'Hakkar), Dungeon in den Sümpfen des Elends." },
		en = { term = "ST", def = "Short for the Sunken Temple (Temple of Atal'Hakkar), a dungeon in the Swamp of Sorrows." },
		fr = { term = "ST", def = "Abréviation du Temple englouti (temple d'Atal'Hakkar), un donjon dans le marais des Chagrins." },
		es = { term = "ST", def = "Abreviatura del Templo Sumergido (Templo de Atal'Hakkar), una mazmorra en el Pantano de las Penas." },
		it = { term = "ST", def = "Abbreviazione del Tempio Sommerso (Tempio di Atal'Hakkar), una spedizione nella Palude del Dolore." },
		ru = { term = "ST", alt = { "Затонувший храм" }, def = "Сокращение от «Затонувший храм» (храм Атал'Хаккара), подземелье в Болоте Печали." },
		pt = { term = "ST", def = "Abreviação do Templo Submerso (Templo de Atal'Hakkar), uma masmorra no Pântano das Mágoas." },
	},
})
