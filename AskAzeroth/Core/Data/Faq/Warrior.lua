local _, ns = ...

-- FAQ: Warrior. See Core/Faq.lua for the format.
ns.Faq.Add("warrior", {
	{
		id = "warrior-rage",
		de = {
			q = "Wie funktioniert Wut?",
			a = "Krieger haben kein Mana, sondern Wut. Sie entsteht, wenn du Schaden austeilst oder einsteckst, und baut sich außerhalb des Kampfes langsam ab. Du beginnst jeden Kampf also fast leer; „Sturmangriff“ gibt dir gleich zu Beginn etwas Wut.",
		},
		en = {
			q = "How does rage work?",
			a = "Warriors use rage instead of mana. You build it by dealing and taking damage, and it slowly drains out of combat. So you start every fight almost empty; Charge gives you some rage right at the start.",
		},
		fr = {
			q = "Comment fonctionne la rage ?",
			a = "Les guerriers utilisent la rage au lieu du mana. Vous la générez en infligeant et en subissant des dégâts, et elle diminue lentement hors combat. Vous commencez donc chaque combat presque à vide ; Charge vous donne un peu de rage dès le début.",
		},
		es = {
			q = "¿Cómo funciona la ira?",
			a = "Los guerreros usan ira en lugar de maná. La generas al infligir y recibir daño, y se va vaciando lentamente fuera de combate. Por eso empiezas cada combate casi sin ira; Cargar te da algo de ira justo al principio.",
		},
		it = {
			q = "Come funziona l'ira?",
			a = "I guerrieri usano l'ira invece del mana. La accumuli infliggendo e subendo danni, e si svuota lentamente fuori dal combattimento. Così inizi ogni combattimento quasi a zero; Carica ti dà un po' d'ira subito all'inizio.",
		},
		ru = {
			q = "Как работает ярость?",
			a = "Воины используют ярость вместо маны. Она копится, когда вы наносите и получаете урон, а вне боя медленно убывает. Поэтому каждый бой вы начинаете почти с нуля; «Рывок» сразу даёт немного ярости.",
		},
		pt = {
			q = "Como funciona a raiva?",
			a = "Guerreiros usam raiva em vez de mana. Você a acumula causando e recebendo dano, e ela se esvai devagar fora de combate. Por isso você começa cada luta quase vazio; Investida dá um pouco de raiva logo no início.",
		},
	},
	{
		id = "warrior-stances",
		de = {
			q = "Was sind Haltungen?",
			a = "Haltungen verändern, welche Fähigkeiten du nutzen kannst. In der Kampfhaltung kämpfst du anfangs, die Verteidigungshaltung ist zum Tanken, die Berserkerhaltung für viel Schaden. Beim Wechsel verlierst du einen Teil deiner Wut, also wechsle nicht ständig.",
		},
		en = {
			q = "What are stances?",
			a = "Stances change which abilities you can use. Battle Stance is where you start, Defensive Stance is for tanking, Berserker Stance for high damage. Switching costs part of your rage, so do not switch all the time.",
		},
		fr = {
			q = "Que sont les postures ?",
			a = "Les postures changent les techniques que vous pouvez utiliser. Posture de combat est celle de départ, Posture défensive sert à tanker, Posture berserker à infliger de gros dégâts. Changer coûte une partie de votre rage, alors ne changez pas sans arrêt.",
		},
		es = {
			q = "¿Qué son las actitudes?",
			a = "Las actitudes cambian qué habilidades puedes usar. Actitud de batalla es la inicial, Actitud defensiva sirve para tanquear y Actitud rabiosa para hacer mucho daño. Cambiar cuesta parte de tu ira, así que no cambies constantemente.",
		},
		it = {
			q = "Che cosa sono le posture?",
			a = "Le posture cambiano le abilità che puoi usare. Postura da Battaglia è quella iniziale, Postura Difensiva serve per fare da tank, Postura del Berserker per danni elevati. Cambiare costa parte dell'ira, quindi non cambiare di continuo.",
		},
		ru = {
			q = "Что такое стойки?",
			a = "Стойки определяют, какие способности вам доступны. «Боевая стойка» — начальная, «Оборонительная стойка» для танкования, «Стойка берсерка» для большого урона. Смена стойки стоит части ярости, поэтому не переключайтесь постоянно.",
		},
		pt = {
			q = "O que são posturas?",
			a = "Posturas mudam quais habilidades você pode usar. Postura de Batalha é a inicial, Postura Defensiva serve para tanquear, Postura de Berserker para muito dano. Trocar custa parte da sua raiva, então não troque o tempo todo.",
		},
	},
	{
		id = "warrior-stance-quests",
		de = {
			q = "Wie bekomme ich Verteidigungs- und Berserkerhaltung?",
			a = "Beide gibt es über Klassenquests: die Verteidigungshaltung ab etwa Stufe 10, die Berserkerhaltung ab etwa Stufe 30. Sprich deinen Kriegerlehrer an, wenn du die Stufe erreichst, er schickt dich auf den Weg.",
		},
		en = {
			q = "How do I get Defensive and Berserker Stance?",
			a = "Both come from class quests: Defensive Stance from about level 10, Berserker Stance from about level 30. Talk to your warrior trainer when you reach the level, they send you on your way.",
		},
		fr = {
			q = "Comment obtenir Posture défensive et Posture berserker ?",
			a = "Les deux viennent de quêtes de classe : Posture défensive vers le niveau 10, Posture berserker vers le niveau 30. Parlez à votre maître des guerriers quand vous atteignez le niveau, il vous mettra sur la voie.",
		},
		es = {
			q = "¿Cómo consigo Actitud defensiva y Actitud rabiosa?",
			a = "Ambas vienen de misiones de clase: Actitud defensiva hacia el nivel 10 y Actitud rabiosa hacia el nivel 30. Habla con tu instructor de guerreros al alcanzar el nivel y te pondrá en camino.",
		},
		it = {
			q = "Come ottengo Postura Difensiva e Postura del Berserker?",
			a = "Entrambe arrivano da missioni di classe: Postura Difensiva verso il livello 10, Postura del Berserker verso il livello 30. Parla con il tuo istruttore dei guerrieri quando raggiungi il livello: ti indicherà la strada.",
		},
		ru = {
			q = "Как получить «Оборонительную стойку» и «Стойку берсерка»?",
			a = "Обе даются за классовые задания: «Оборонительная стойка» примерно с 10-го уровня, «Стойка берсерка» примерно с 30-го. Поговорите с наставником воинов, когда достигнете уровня, он отправит вас в путь.",
		},
		pt = {
			q = "Como consigo Postura Defensiva e Postura de Berserker?",
			a = "As duas vêm de missões de classe: Postura Defensiva por volta do nível 10, Postura de Berserker por volta do nível 30. Fale com o seu instrutor de guerreiros ao atingir o nível e ele mostrará o caminho.",
		},
	},
	{
		id = "warrior-opener",
		de = {
			q = "Wie fange ich einen Kampf als Krieger an?",
			a = "Mit „Sturmangriff“ aus einigen Metern Entfernung: Du stürmst zum Gegner, betäubst ihn kurz und bekommst Wut. Danach „Verwunden“ für Schaden über Zeit und „Heldenhafter Stoß“, wenn du genug Wut hast. Sturmangriff geht nur außerhalb des Kampfes.",
		},
		en = {
			q = "How do I start a fight as a warrior?",
			a = "With Charge from a few metres away: you rush to the enemy, stun it briefly and gain rage. Then Rend for damage over time and Heroic Strike when you have enough rage. Charge only works out of combat.",
		},
		fr = {
			q = "Comment commencer un combat en tant que guerrier ?",
			a = "Avec Charge, à quelques mètres de distance : vous foncez sur l'ennemi, l'étourdissez brièvement et gagnez de la rage. Ensuite Pourfendre pour des dégâts sur la durée, et Frappe héroïque quand vous avez assez de rage. Charge ne fonctionne qu'hors combat.",
		},
		es = {
			q = "¿Cómo empiezo un combate como guerrero?",
			a = "Con Cargar desde unos metros de distancia: te lanzas contra el enemigo, lo aturdes un momento y ganas ira. Luego Desgarrar para daño con el tiempo y Golpe heroico cuando tengas suficiente ira. Cargar solo funciona fuera de combate.",
		},
		it = {
			q = "Come inizio un combattimento da guerriero?",
			a = "Con Carica da qualche metro di distanza: ti lanci sul nemico, lo stordisci per un attimo e ottieni ira. Poi Lacerazione per danni nel tempo e Assalto Eroico quando hai abbastanza ira. Carica funziona solo fuori dal combattimento.",
		},
		ru = {
			q = "Как воину начинать бой?",
			a = "С «Рывка» с нескольких метров: вы бросаетесь к врагу, ненадолго оглушаете его и получаете ярость. Затем «Кровопускание» для урона со временем и «Удар героя», когда хватает ярости. «Рывок» работает только вне боя.",
		},
		pt = {
			q = "Como começo uma luta como guerreiro?",
			a = "Com Investida a alguns metros de distância: você avança no inimigo, atordoa-o por um instante e ganha raiva. Depois Dilacerar para dano ao longo do tempo e Golpe Heroico quando tiver raiva suficiente. Investida só funciona fora de combate.",
		},
	},
	{
		id = "warrior-heroic-strike",
		de = {
			q = "Warum macht „Heldenhafter Stoß“ manchmal nichts?",
			a = "Er ersetzt deinen nächsten normalen Schlag, statt sofort zu treffen. Die Wut wird erst beim Schlag verbraucht. Drück ihn also nur, wenn du die Wut übrig hast, und nicht mehrmals hintereinander.",
		},
		en = {
			q = "Why does Heroic Strike sometimes do nothing right away?",
			a = "It replaces your next normal swing instead of hitting instantly. The rage is only spent when the swing lands. Press it when you have rage to spare, not several times in a row.",
		},
		fr = {
			q = "Pourquoi Frappe héroïque ne fait-elle parfois rien tout de suite ?",
			a = "Elle remplace votre prochain coup normal au lieu de frapper instantanément. La rage n'est dépensée que lorsque le coup porte. Utilisez-la quand vous avez de la rage en trop, pas plusieurs fois de suite.",
		},
		es = {
			q = "¿Por qué Golpe heroico a veces no hace nada al momento?",
			a = "Sustituye tu siguiente golpe normal en lugar de golpear al instante. La ira solo se gasta cuando el golpe impacta. Púlsalo cuando te sobre ira, no varias veces seguidas.",
		},
		it = {
			q = "Perché a volte Assalto Eroico non fa nulla subito?",
			a = "Sostituisce il tuo prossimo colpo normale invece di colpire all'istante. L'ira si spende solo quando il colpo va a segno. Premilo quando hai ira in avanzo, non più volte di fila.",
		},
		ru = {
			q = "Почему «Удар героя» иногда срабатывает не сразу?",
			a = "Он заменяет ваш следующий обычный удар, а не бьёт мгновенно. Ярость тратится только когда удар проходит. Нажимайте его, когда ярости в избытке, а не несколько раз подряд.",
		},
		pt = {
			q = "Por que Golpe Heroico às vezes não faz nada na hora?",
			a = "Ele substitui o seu próximo golpe normal em vez de atingir na hora. A raiva só é gasta quando o golpe acerta. Use-o quando tiver raiva sobrando, não várias vezes seguidas.",
		},
	},
	{
		id = "warrior-weapon-choice",
		de = {
			q = "Zweihandwaffe oder Waffe und Schild?",
			a = "Zum Leveln ist eine starke Zweihandwaffe meist am schnellsten, weil jeder Schlag viel Schaden macht. Waffe und Schild halten mehr aus und sind zum Tanken in Dungeons nötig. Trag ruhig beides in den Taschen und wechsle je nach Lage.",
		},
		en = {
			q = "Two-handed weapon or weapon and shield?",
			a = "For levelling, a strong two-handed weapon is usually fastest because every swing hits hard. Weapon and shield take more hits and are needed for tanking dungeons. Carry both in your bags and switch as needed.",
		},
		fr = {
			q = "Arme à deux mains ou arme et bouclier ?",
			a = "Pour monter de niveau, une bonne arme à deux mains est généralement le plus rapide, car chaque coup frappe fort. L'arme et le bouclier encaissent mieux et sont nécessaires pour tanker les donjons. Gardez les deux dans vos sacs et changez selon le besoin.",
		},
		es = {
			q = "¿Arma a dos manos o arma y escudo?",
			a = "Para subir de nivel, una buena arma a dos manos suele ser lo más rápido, porque cada golpe pega fuerte. Arma y escudo aguantan más golpes y son necesarios para tanquear mazmorras. Lleva ambos en las bolsas y cambia según haga falta.",
		},
		it = {
			q = "Arma a due mani o arma e scudo?",
			a = "Per salire di livello, una buona arma a due mani di solito è la più veloce, perché ogni colpo picchia forte. Arma e scudo resistono di più e servono per fare da tank nelle spedizioni. Tieni entrambi nelle borse e cambia quando serve.",
		},
		ru = {
			q = "Двуручное оружие или оружие со щитом?",
			a = "Для прокачки обычно быстрее всего хорошее двуручное оружие: каждый удар бьёт сильно. Оружие со щитом выдерживает больше ударов и нужно для танкования в подземельях. Носите оба комплекта в сумках и меняйте по необходимости.",
		},
		pt = {
			q = "Arma de duas mãos ou arma e escudo?",
			a = "Para subir de nível, uma boa arma de duas mãos costuma ser o mais rápido, porque cada golpe bate forte. Arma e escudo aguentam mais golpes e são necessários para tanquear masmorras. Leve os dois nas bolsas e troque conforme precisar.",
		},
	},
	{
		id = "warrior-tank-basics",
		de = {
			q = "Wie tanke ich als Krieger?",
			a = "Geh in die Verteidigungshaltung und trag einen Schild. „Rüstung zerreißen“ und „Heldenhafter Stoß“ erzeugen viel Bedrohung, „Donnerknall“ und „Demoralisierender Ruf“ helfen bei mehreren Gegnern. Markiere Ziele und lass der Gruppe einen Moment, bevor sie angreift.",
		},
		en = {
			q = "How do I tank as a warrior?",
			a = "Use Defensive Stance and wear a shield. Sunder Armor and Heroic Strike create a lot of threat, Thunder Clap and Demoralizing Shout help with several enemies. Mark targets and give the group a moment before it attacks.",
		},
		fr = {
			q = "Comment tanker en tant que guerrier ?",
			a = "Utilisez Posture défensive et portez un bouclier. Fracasser armure et Frappe héroïque génèrent beaucoup de menace, Coup de tonnerre et Cri démoralisant aident contre plusieurs ennemis. Marquez les cibles et laissez un instant au groupe avant qu'il attaque.",
		},
		es = {
			q = "¿Cómo tanqueo como guerrero?",
			a = "Usa Actitud defensiva y lleva escudo. Hender armadura y Golpe heroico generan mucha amenaza; Atronar y Grito desmoralizador ayudan con varios enemigos. Marca objetivos y da al grupo un momento antes de que ataque.",
		},
		it = {
			q = "Come faccio da tank come guerriero?",
			a = "Usa Postura Difensiva e porta uno scudo. Fendi Armatura e Assalto Eroico generano molta minaccia, Tuonata e Urlo Demoralizzante aiutano contro più nemici. Marca i bersagli e lascia al gruppo un attimo prima che attacchi.",
		},
		ru = {
			q = "Как танковать воином?",
			a = "Используйте «Оборонительную стойку» и носите щит. «Раскол брони» и «Удар героя» создают много угрозы, «Удар грома» и «Деморализующий крик» помогают против нескольких врагов. Помечайте цели и давайте группе немного времени, прежде чем она атакует.",
		},
		pt = {
			q = "Como tanqueio como guerreiro?",
			a = "Use Postura Defensiva e um escudo. Fender Armadura e Golpe Heroico geram muita ameaça; Trovoada e Brado Desmoralizante ajudam contra vários inimigos. Marque os alvos e dê ao grupo um momento antes de atacar.",
		},
	},
	{
		id = "warrior-taunt",
		de = {
			q = "Ein Gegner greift den Heiler an. Was tun?",
			a = "Benutze „Spott“ in der Verteidigungshaltung: Der Gegner greift dich sofort an. Danach musst du weiter Bedrohung aufbauen, sonst wendet er sich wieder ab. Spott hat eine Abklingzeit, also setz ihn gezielt ein.",
		},
		en = {
			q = "An enemy attacks the healer. What do I do?",
			a = "Use Taunt in Defensive Stance: the enemy attacks you right away. Then keep building threat, or it turns away again. Taunt has a cooldown, so use it on purpose.",
		},
		fr = {
			q = "Un ennemi attaque le soigneur. Que faire ?",
			a = "Utilisez Provocation en Posture défensive : l'ennemi vous attaque immédiatement. Continuez ensuite à générer de la menace, sinon il repart. Provocation a un temps de recharge, utilisez-la à bon escient.",
		},
		es = {
			q = "Un enemigo ataca al sanador. ¿Qué hago?",
			a = "Usa Provocar en Actitud defensiva: el enemigo te ataca de inmediato. Luego sigue generando amenaza o volverá a marcharse. Provocar tiene tiempo de reutilización, así que úsalo con intención.",
		},
		it = {
			q = "Un nemico attacca il guaritore. Che cosa faccio?",
			a = "Usa Provocazione in Postura Difensiva: il nemico attacca subito te. Poi continua a generare minaccia, altrimenti si allontana di nuovo. Provocazione ha un tempo di recupero, quindi usala con criterio.",
		},
		ru = {
			q = "Враг атакует лекаря. Что делать?",
			a = "Используйте «Провокацию» в «Оборонительной стойке»: враг сразу переключится на вас. Затем продолжайте создавать угрозу, иначе он снова уйдёт. У «Провокации» есть время восстановления, поэтому применяйте её осознанно.",
		},
		pt = {
			q = "Um inimigo está atacando o curador. O que faço?",
			a = "Use Provocar na Postura Defensiva: o inimigo ataca você na hora. Depois continue gerando ameaça, senão ele se vira de novo. Provocar tem tempo de recarga, então use-o com propósito.",
		},
	},
	{
		id = "warrior-execute",
		de = {
			q = "Wann benutze ich „Hinrichten“?",
			a = "Wenn der Gegner nur noch wenig Gesundheit hat, etwa unter 20 Prozent. Dann macht „Hinrichten“ sehr viel Schaden und nutzt deine übrige Wut. Es leuchtet auf deiner Leiste auf, sobald es geht.",
		},
		en = {
			q = "When do I use Execute?",
			a = "When the enemy is low on health, below about 20 percent. Execute then deals a lot of damage and uses up your spare rage. It lights up on your bar as soon as it is usable.",
		},
		fr = {
			q = "Quand utiliser Exécution ?",
			a = "Quand l'ennemi a peu de vie, en dessous d'environ 20 pour cent. Exécution inflige alors beaucoup de dégâts et consomme votre rage en trop. Elle s'illumine sur votre barre dès qu'elle est utilisable.",
		},
		es = {
			q = "¿Cuándo uso Ejecutar?",
			a = "Cuando al enemigo le queda poca salud, por debajo de un 20 por ciento. Ejecutar hace entonces mucho daño y gasta tu ira sobrante. Se ilumina en tu barra en cuanto se puede usar.",
		},
		it = {
			q = "Quando uso Esecuzione?",
			a = "Quando il nemico ha poca salute, sotto il 20 percento circa. Esecuzione infligge allora molti danni e consuma l'ira in avanzo. Si illumina sulla barra non appena è utilizzabile.",
		},
		ru = {
			q = "Когда использовать «Казнь»?",
			a = "Когда у врага мало здоровья, меньше примерно 20 процентов. Тогда «Казнь» наносит много урона и тратит лишнюю ярость. Она подсвечивается на панели, как только её можно применить.",
		},
		pt = {
			q = "Quando uso Executar?",
			a = "Quando o inimigo está com pouca vida, abaixo de uns 20 por cento. Executar então causa muito dano e usa a sua raiva sobrando. Ela acende na barra assim que pode ser usada.",
		},
	},
	{
		id = "warrior-overpower",
		de = {
			q = "Was ist „Überwältigen“?",
			a = "Weicht ein Gegner deinem Angriff aus, kannst du in der Kampfhaltung kurz „Überwältigen“ einsetzen. Es kann nicht verfehlt werden und kostet wenig Wut. Achte darauf, wenn es aufleuchtet.",
		},
		en = {
			q = "What is Overpower?",
			a = "When an enemy dodges your attack, you can use Overpower in Battle Stance for a short time. It cannot miss and costs little rage. Watch for it lighting up.",
		},
		fr = {
			q = "Qu'est-ce que Fulgurance ?",
			a = "Quand un ennemi esquive votre attaque, vous pouvez utiliser Fulgurance en Posture de combat pendant un court instant. Elle ne peut pas rater et coûte peu de rage. Surveillez quand elle s'illumine.",
		},
		es = {
			q = "¿Qué es Abrumar?",
			a = "Cuando un enemigo esquiva tu ataque, puedes usar Abrumar en Actitud de batalla durante un breve tiempo. No puede fallar y cuesta poca ira. Fíjate en cuándo se ilumina.",
		},
		it = {
			q = "Che cos'è Sopraffazione?",
			a = "Quando un nemico schiva il tuo attacco, puoi usare Sopraffazione in Postura da Battaglia per un breve periodo. Non può mancare il colpo e costa poca ira. Fai attenzione a quando si illumina.",
		},
		ru = {
			q = "Что такое «Превосходство»?",
			a = "Когда враг уклоняется от вашей атаки, в «Боевой стойке» можно ненадолго применить «Превосходство». Оно не промахивается и стоит мало ярости. Следите, когда оно подсвечивается.",
		},
		pt = {
			q = "O que é Sobrepujar?",
			a = "Quando um inimigo se esquiva do seu ataque, você pode usar Sobrepujar na Postura de Batalha por pouco tempo. Não pode errar e custa pouca raiva. Fique de olho quando ele acender.",
		},
	},
	{
		id = "warrior-hamstring",
		de = {
			q = "Ein Gegner flieht. Wie halte ich ihn auf?",
			a = "„Kniesehne“ verlangsamt ihn, sodass er nicht entkommt und keine Freunde holt. Gegner fliehen oft bei wenig Gesundheit, setz Kniesehne also früh genug.",
		},
		en = {
			q = "An enemy runs away. How do I stop it?",
			a = "Hamstring slows it, so it cannot escape and bring friends. Enemies often flee at low health, so apply Hamstring in time.",
		},
		fr = {
			q = "Un ennemi s'enfuit. Comment l'arrêter ?",
			a = "Brise-genou le ralentit, il ne peut donc pas s'échapper ni ramener des amis. Les ennemis fuient souvent quand leur vie est basse, alors appliquez Brise-genou à temps.",
		},
		es = {
			q = "Un enemigo huye. ¿Cómo lo detengo?",
			a = "Seccionar lo ralentiza, así no puede escapar ni traer amigos. Los enemigos suelen huir con poca salud, así que aplica Seccionar a tiempo.",
		},
		it = {
			q = "Un nemico scappa. Come lo fermo?",
			a = "Tagliatendini lo rallenta, così non può fuggire e portare amici. I nemici spesso scappano quando hanno poca salute, quindi applica Tagliatendini in tempo.",
		},
		ru = {
			q = "Враг убегает. Как его остановить?",
			a = "«Подрезать сухожилия» замедляет его, и он не сможет сбежать и привести друзей. Враги часто убегают при низком здоровье, так что применяйте эту способность вовремя.",
		},
		pt = {
			q = "Um inimigo está fugindo. Como o detenho?",
			a = "Cortar Tendão o deixa lento, assim ele não consegue fugir e trazer amigos. Inimigos costumam fugir com pouca vida, então aplique Cortar Tendão a tempo.",
		},
	},
	{
		id = "warrior-shouts",
		de = {
			q = "Wofür sind die Rufe?",
			a = "„Schlachtruf“ erhöht die Angriffskraft von dir und deiner Gruppe, halte ihn immer aktiv. „Demoralisierender Ruf“ senkt den Schaden der Gegner in der Nähe und hilft besonders beim Tanken.",
		},
		en = {
			q = "What are the shouts for?",
			a = "Battle Shout raises the attack power of you and your party; keep it up at all times. Demoralizing Shout lowers the damage of nearby enemies and helps especially when tanking.",
		},
		fr = {
			q = "À quoi servent les cris ?",
			a = "Cri de guerre augmente la puissance d'attaque de vous et de votre groupe ; maintenez-le en permanence. Cri démoralisant réduit les dégâts des ennemis proches et aide surtout quand vous tankez.",
		},
		es = {
			q = "¿Para qué sirven los gritos?",
			a = "Grito de batalla aumenta el poder de ataque tuyo y de tu grupo; mantenlo activo siempre. Grito desmoralizador reduce el daño de los enemigos cercanos y ayuda sobre todo al tanquear.",
		},
		it = {
			q = "A che cosa servono gli urli?",
			a = "Urlo di Battaglia aumenta la potenza d'attacco tua e del gruppo; tienilo sempre attivo. Urlo Demoralizzante riduce i danni dei nemici vicini e aiuta soprattutto quando fai da tank.",
		},
		ru = {
			q = "Зачем нужны крики?",
			a = "«Боевой крик» повышает силу атаки вам и вашей группе; поддерживайте его постоянно. «Деморализующий крик» снижает урон ближайших врагов и особенно помогает при танковании.",
		},
		pt = {
			q = "Para que servem os brados?",
			a = "Brado de Batalha aumenta o poder de ataque seu e do grupo; mantenha-o sempre ativo. Brado Desmoralizante reduz o dano dos inimigos próximos e ajuda principalmente ao tanquear.",
		},
	},
	{
		id = "warrior-downtime",
		de = {
			q = "Ich muss nach jedem Kampf lange essen. Ist das normal?",
			a = "Ja, Krieger können sich nicht selbst heilen. Iss nach den Kämpfen, lern Erste Hilfe für Verbände und nimm immer bessere Ausrüstung mit, besonders eine starke Waffe. Mit einem Heiler in der Gruppe levelst du deutlich schneller.",
		},
		en = {
			q = "I have to eat for ages after every fight. Is that normal?",
			a = "Yes, warriors cannot heal themselves. Eat after fights, learn first aid for bandages and keep upgrading your gear, especially your weapon. With a healer in your group you level much faster.",
		},
		fr = {
			q = "Je dois manger longtemps après chaque combat. C'est normal ?",
			a = "Oui, les guerriers ne peuvent pas se soigner eux-mêmes. Mangez après les combats, apprenez les premiers soins pour les bandages et améliorez sans cesse votre équipement, surtout votre arme. Avec un soigneur dans le groupe, vous montez bien plus vite.",
		},
		es = {
			q = "Tengo que comer mucho rato después de cada combate. ¿Es normal?",
			a = "Sí, los guerreros no pueden curarse a sí mismos. Come tras los combates, aprende primeros auxilios para las vendas y mejora tu equipo, sobre todo el arma. Con un sanador en el grupo subes mucho más rápido.",
		},
		it = {
			q = "Devo mangiare a lungo dopo ogni combattimento. È normale?",
			a = "Sì, i guerrieri non possono curarsi da soli. Mangia dopo i combattimenti, impara il primo soccorso per le bende e migliora continuamente l'equipaggiamento, soprattutto l'arma. Con un guaritore nel gruppo sali di livello molto più in fretta.",
		},
		ru = {
			q = "После каждого боя приходится долго есть. Это нормально?",
			a = "Да, воины не умеют лечить себя. Ешьте после боёв, изучите первую помощь ради бинтов и постоянно улучшайте экипировку, особенно оружие. С лекарем в группе прокачка идёт гораздо быстрее.",
		},
		pt = {
			q = "Preciso comer muito tempo depois de cada luta. Isso é normal?",
			a = "Sim, guerreiros não conseguem se curar. Coma após as lutas, aprenda primeiros socorros para fazer ataduras e melhore sempre o equipamento, principalmente a arma. Com um curador no grupo você sobe de nível bem mais rápido.",
		},
	},
	{
		id = "warrior-stats",
		de = {
			q = "Welche Werte sind für Krieger wichtig?",
			a = "Stärke für mehr Schaden, Ausdauer für mehr Gesundheit. Beweglichkeit hilft mit kritischen Treffern und Ausweichen. Als Tank zählen zusätzlich Rüstung, Verteidigung und Schildwerte. Intelligenz und Willenskraft brauchst du nicht.",
		},
		en = {
			q = "Which stats matter for warriors?",
			a = "Strength for damage, stamina for health. Agility helps with critical strikes and dodge. As a tank, armour, defence and shield stats matter too. You do not need intellect or spirit.",
		},
		fr = {
			q = "Quelles caractéristiques comptent pour les guerriers ?",
			a = "La force pour les dégâts, l'endurance pour la vie. L'agilité aide pour les coups critiques et l'esquive. En tant que tank, l'armure, la défense et les caractéristiques de bouclier comptent aussi. Vous n'avez pas besoin d'intelligence ni d'esprit.",
		},
		es = {
			q = "¿Qué atributos importan a los guerreros?",
			a = "Fuerza para el daño, aguante para la salud. La agilidad ayuda con los golpes críticos y la esquiva. Como tanque también importan la armadura, la defensa y los atributos de escudo. No necesitas intelecto ni espíritu.",
		},
		it = {
			q = "Quali statistiche contano per i guerrieri?",
			a = "Forza per i danni, tempra per la salute. L'agilità aiuta con i colpi critici e la schivata. Come tank contano anche armatura, difesa e statistiche dello scudo. Non ti servono intelletto né spirito.",
		},
		ru = {
			q = "Какие характеристики важны воину?",
			a = "Сила для урона, выносливость для здоровья. Ловкость помогает с критическими ударами и уклонением. Танку также важны броня, защита и показатели щита. Интеллект и дух вам не нужны.",
		},
		pt = {
			q = "Quais atributos importam para guerreiros?",
			a = "Força para o dano, vigor para a vida. Agilidade ajuda com acertos críticos e esquiva. Como tanque, armadura, defesa e atributos de escudo também contam. Você não precisa de intelecto nem de espírito.",
		},
	},
	{
		id = "warrior-armor",
		de = {
			q = "Welche Rüstung tragen Krieger?",
			a = "Am Anfang Leder oder Kettenrüstung, ab Stufe 40 auch Platte. Nimm immer die schwerste Rüstung mit Stärke oder Ausdauer, die du findest. Waffen kannst du fast alle tragen; fehlende Waffenarten lernst du beim Waffenmeister.",
		},
		en = {
			q = "What armour do warriors wear?",
			a = "Leather or mail at first, plate from level 40. Always take the heaviest armour with strength or stamina you can find. You can use almost every weapon; missing weapon types are taught by weapon masters.",
		},
		fr = {
			q = "Quelle armure portent les guerriers ?",
			a = "Cuir ou mailles au début, plaques à partir du niveau 40. Prenez toujours l'armure la plus lourde avec de la force ou de l'endurance que vous trouvez. Vous pouvez utiliser presque toutes les armes ; les types manquants s'apprennent auprès des maîtres d'armes.",
		},
		es = {
			q = "¿Qué armadura llevan los guerreros?",
			a = "Cuero o malla al principio, placas a partir del nivel 40. Coge siempre la armadura más pesada con fuerza o aguante que encuentres. Puedes usar casi todas las armas; los tipos que te faltan los enseñan los maestros de armas.",
		},
		it = {
			q = "Che armatura indossano i guerrieri?",
			a = "Cuoio o maglia all'inizio, piastre dal livello 40. Prendi sempre l'armatura più pesante con forza o tempra che trovi. Puoi usare quasi tutte le armi; i tipi mancanti li insegnano i maestri d'armi.",
		},
		ru = {
			q = "Какую броню носят воины?",
			a = "Сначала кожаную или кольчужную, с 40-го уровня латы. Всегда берите самую тяжёлую броню с силой или выносливостью, какую найдёте. Вы можете пользоваться почти любым оружием; недостающим видам учат мастера оружия.",
		},
		pt = {
			q = "Que armadura os guerreiros usam?",
			a = "Couro ou malha no começo, placas a partir do nível 40. Pegue sempre a armadura mais pesada com força ou vigor que encontrar. Você pode usar quase todas as armas; os tipos que faltam são ensinados pelos mestres de armas.",
		},
	},
	{
		id = "warrior-talents",
		de = {
			q = "Welche Talentbäume haben Krieger?",
			a = "Waffen setzt auf Zweihandwaffen und starke Einzelschläge und ist beim Leveln sehr beliebt. Furor macht viel Schaden mit zwei Waffen. Schutz ist der Baum zum Tanken. Mit der Dualspezialisierung ab Stufe 40 kannst du zum Beispiel Waffen zum Leveln und Schutz für Dungeons haben.",
		},
		en = {
			q = "Which talent trees do warriors have?",
			a = "Arms focuses on two-handed weapons and big single hits and is popular for levelling. Fury deals high damage with two weapons. Protection is the tanking tree. With dual specialisation from level 40 you can, for example, use Arms for levelling and Protection for dungeons.",
		},
		fr = {
			q = "Quels arbres de talents ont les guerriers ?",
			a = "Armes mise sur les armes à deux mains et les gros coups uniques, et est apprécié pour monter de niveau. Fureur inflige beaucoup de dégâts avec deux armes. Protection est l'arbre du tank. Avec la double spécialisation dès le niveau 40, vous pouvez par exemple jouer Armes pour monter et Protection pour les donjons.",
		},
		es = {
			q = "¿Qué árboles de talentos tienen los guerreros?",
			a = "Armas se centra en armas a dos manos y grandes golpes individuales, y es popular para subir de nivel. Furia hace mucho daño con dos armas. Protección es el árbol de tanque. Con la especialización doble desde el nivel 40 puedes, por ejemplo, usar Armas para subir y Protección para mazmorras.",
		},
		it = {
			q = "Quali alberi di talenti hanno i guerrieri?",
			a = "Armi punta sulle armi a due mani e sui grandi colpi singoli ed è popolare per salire di livello. Furia infligge molti danni con due armi. Protezione è l'albero del tank. Con la doppia specializzazione dal livello 40 puoi, per esempio, usare Armi per salire e Protezione per le spedizioni.",
		},
		ru = {
			q = "Какие ветки талантов есть у воина?",
			a = "«Оружие» делает ставку на двуручное оружие и сильные одиночные удары и популярно для прокачки. «Неистовство» наносит много урона двумя клинками. «Защита» — ветка танка. С двойной специализацией с 40-го уровня можно, например, качаться в «Оружии», а в подземелья ходить в «Защите».",
		},
		pt = {
			q = "Quais árvores de talentos os guerreiros têm?",
			a = "Armas foca em armas de duas mãos e grandes golpes únicos e é popular para subir de nível. Fúria causa muito dano com duas armas. Proteção é a árvore de tanque. Com a especialização dupla a partir do nível 40 você pode, por exemplo, usar Armas para upar e Proteção para masmorras.",
		},
	},
	{
		id = "warrior-aoe",
		de = {
			q = "Wie kämpfe ich gegen mehrere Gegner?",
			a = "„Donnerknall“ trifft und verlangsamt alle Gegner um dich, „Demoralisierender Ruf“ senkt ihren Schaden. Später kommen „Spalten“ und „Wirbelwind“ dazu. Zieh trotzdem möglichst nur so viele Gegner, wie du sicher schaffst.",
		},
		en = {
			q = "How do I fight several enemies?",
			a = "Thunder Clap hits and slows all enemies around you, Demoralizing Shout lowers their damage. Later Cleave and Whirlwind join in. Still, only pull as many enemies as you can safely handle.",
		},
		fr = {
			q = "Comment combattre plusieurs ennemis ?",
			a = "Coup de tonnerre frappe et ralentit tous les ennemis autour de vous, Cri démoralisant réduit leurs dégâts. Plus tard s'ajoutent Enchaînement et Tourbillon. Malgré tout, n'attirez que le nombre d'ennemis que vous pouvez gérer sans risque.",
		},
		es = {
			q = "¿Cómo lucho contra varios enemigos?",
			a = "Atronar golpea y ralentiza a todos los enemigos a tu alrededor y Grito desmoralizador reduce su daño. Más adelante se suman Rajar y Torbellino. Aun así, atrae solo a los enemigos que puedas manejar con seguridad.",
		},
		it = {
			q = "Come combatto contro più nemici?",
			a = "Tuonata colpisce e rallenta tutti i nemici intorno a te, Urlo Demoralizzante riduce i loro danni. In seguito si aggiungono Fendente e Turbine. Comunque attira solo i nemici che puoi gestire in sicurezza.",
		},
		ru = {
			q = "Как сражаться с несколькими врагами?",
			a = "«Удар грома» бьёт и замедляет всех врагов вокруг, «Деморализующий крик» снижает их урон. Позже добавляются «Рассекающий удар» и «Вихрь». Но всё равно притягивайте столько врагов, сколько можете безопасно одолеть.",
		},
		pt = {
			q = "Como luto contra vários inimigos?",
			a = "Trovoada atinge e deixa lentos todos os inimigos ao seu redor, Brado Desmoralizante reduz o dano deles. Mais tarde entram Fender e Redemoinho. Mesmo assim, puxe só quantos inimigos você consegue enfrentar com segurança.",
		},
	},
	{
		id = "warrior-intercept",
		de = {
			q = "Wie komme ich im Kampf schnell an einen Gegner?",
			a = "„Sturmangriff“ geht nur außerhalb des Kampfes. Im Kampf nutzt du in der Berserkerhaltung „Abfangen“, das dich ebenfalls zum Gegner bringt und ihn kurz betäubt.",
		},
		en = {
			q = "How do I reach an enemy quickly during a fight?",
			a = "Charge only works out of combat. In combat, use Intercept in Berserker Stance, which also takes you to the enemy and stuns it briefly.",
		},
		fr = {
			q = "Comment rejoindre vite un ennemi pendant un combat ?",
			a = "Charge ne fonctionne qu'hors combat. En combat, utilisez Interception en Posture berserker, qui vous amène aussi jusqu'à l'ennemi et l'étourdit brièvement.",
		},
		es = {
			q = "¿Cómo llego rápido a un enemigo durante un combate?",
			a = "Cargar solo funciona fuera de combate. En combate, usa Interceptar en Actitud rabiosa, que también te lleva hasta el enemigo y lo aturde un momento.",
		},
		it = {
			q = "Come raggiungo in fretta un nemico durante un combattimento?",
			a = "Carica funziona solo fuori dal combattimento. In combattimento usa Intercettazione in Postura del Berserker, che ti porta anch'essa dal nemico e lo stordisce per un attimo.",
		},
		ru = {
			q = "Как быстро добраться до врага во время боя?",
			a = "«Рывок» работает только вне боя. В бою используйте «Перехват» в «Стойке берсерка»: он тоже переносит вас к врагу и ненадолго оглушает его.",
		},
		pt = {
			q = "Como alcanço um inimigo rapidamente durante a luta?",
			a = "Investida só funciona fora de combate. Em combate, use Interceptar na Postura de Berserker, que também leva você até o inimigo e o atordoa por um instante.",
		},
	},
})
