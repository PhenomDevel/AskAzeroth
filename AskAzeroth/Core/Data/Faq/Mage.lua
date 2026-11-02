local _, ns = ...

-- FAQ: Mage. See Core/Faq.lua for the format.
ns.Faq.Add("mage", {
	{
		id = "mage-conjure",
		de = {
			q = "Muss ich als Magier Essen und Wasser kaufen?",
			a = "Nein: Mit „Essen herbeizaubern“ und „Wasser herbeizaubern“ machst du dir beides selbst, kostenlos. Lern beim Lehrer immer den neuesten Rang, dann passt es zu deiner Stufe. Gruppenmitgliedern gibst du Wasser über das Handelsfenster.",
		},
		en = {
			q = "Do I need to buy food and water as a mage?",
			a = "No: Conjure Food and Conjure Water make both for free. Learn the newest rank from your trainer so it matches your level. Give water to party members through the trade window.",
		},
		fr = {
			q = "Dois-je acheter nourriture et eau en tant que mage ?",
			a = "Non : Invocation de nourriture et Invocation d'eau créent les deux gratuitement. Apprenez le rang le plus récent auprès de votre maître pour qu'il corresponde à votre niveau. Donnez de l'eau aux membres du groupe via la fenêtre d'échange.",
		},
		es = {
			q = "¿Tengo que comprar comida y agua como mago?",
			a = "No: Conjurar comida y Conjurar agua crean ambas gratis. Aprende el rango más reciente de tu instructor para que corresponda a tu nivel. Da agua a los miembros del grupo mediante la ventana de comercio.",
		},
		it = {
			q = "Da mago devo comprare cibo e acqua?",
			a = "No: Evoca Cibo ed Evoca Acqua li creano gratis. Impara il grado più recente dal tuo istruttore, così corrisponde al tuo livello. Dai l'acqua ai membri del gruppo tramite la finestra di scambio.",
		},
		ru = {
			q = "Нужно ли магу покупать еду и воду?",
			a = "Нет: «Сотворение пищи» и «Сотворение воды» создают их бесплатно. Изучайте у наставника новейший ранг, чтобы он соответствовал вашему уровню. Воду членам группы можно передать через окно обмена.",
		},
		pt = {
			q = "Preciso comprar comida e água como mago?",
			a = "Não: Conjurar Comida e Conjurar Água criam as duas de graça. Aprenda a patente mais nova com o seu instrutor para que combine com o seu nível. Dê água aos membros do grupo pela janela de troca.",
		},
	},
	{
		id = "mage-leveling",
		de = {
			q = "Wie kämpfe ich als Magier beim Leveln?",
			a = "Rüstung und „Arkane Intelligenz“ an, mit „Frostblitz“ oder „Feuerball“ eröffnen und weiterzaubern, bis der Gegner fällt. Kommt er zu nah, friert ihn „Frostnova“ fest, du gehst ein paar Schritte weg und zauberst weiter. Den Rest erledigt der Zauberstab.",
		},
		en = {
			q = "How do I fight as a mage while levelling?",
			a = "Armour and Arcane Intellect on, open with Frostbolt or Fireball and keep casting until the enemy falls. If it gets close, Frost Nova freezes it, you step away and keep casting. Finish with your wand.",
		},
		fr = {
			q = "Comment combattre en mage pendant la montée de niveau ?",
			a = "Armure et Intelligence des Arcanes activées, ouvrez avec Éclair de givre ou Boule de feu et continuez à lancer jusqu'à ce que l'ennemi tombe. S'il s'approche, Nova de givre le gèle, vous vous éloignez et continuez. Achevez avec votre baguette.",
		},
		es = {
			q = "¿Cómo lucho como mago mientras subo de nivel?",
			a = "Armadura e Intelecto Arcano activos, abre con Descarga de Escarcha o Bola de Fuego y sigue lanzando hasta que el enemigo caiga. Si se acerca, Nova de Escarcha lo congela, te apartas y sigues lanzando. Remata con tu varita.",
		},
		it = {
			q = "Come combatto da mago mentre salgo di livello?",
			a = "Armatura e Intelletto Arcano attivi, apri con Dardo di Gelo o Palla di Fuoco e continua a lanciare finché il nemico cade. Se si avvicina, Nova di Gelo lo congela, ti allontani e continui a lanciare. Finisci con la bacchetta.",
		},
		ru = {
			q = "Как магу сражаться при прокачке?",
			a = "Доспех и «Чародейский интеллект» включены, начните с «Ледяной стрелы» или «Огненного шара» и колдуйте, пока враг не упадёт. Если он подбежит, «Кольцо льда» его заморозит, вы отходите и продолжаете. Добивайте жезлом.",
		},
		pt = {
			q = "Como luto como mago enquanto subo de nível?",
			a = "Armadura e Intelecto Arcano ativos, abra com Seta de Gelo ou Bola de Fogo e continue conjurando até o inimigo cair. Se ele chegar perto, Nova Congelante o congela, você se afasta e continua. Termine com a varinha.",
		},
	},
	{
		id = "mage-kiting",
		de = {
			q = "Ein Gegner steht direkt vor mir. Was tun?",
			a = "„Frostnova“ friert alle Gegner um dich fest. Geh ein paar Schritte weg oder benutze „Blinzeln“, das dich nach vorn teleportiert, und zauber dann weiter. „Frostblitz“ verlangsamt den Gegner, sodass er dich schwerer erreicht.",
		},
		en = {
			q = "An enemy is right in front of me. What do I do?",
			a = "Frost Nova freezes all enemies around you. Walk a few steps away or use Blink, which teleports you forward, then keep casting. Frostbolt slows the enemy so it reaches you more slowly.",
		},
		fr = {
			q = "Un ennemi est juste devant moi. Que faire ?",
			a = "Nova de givre gèle tous les ennemis autour de vous. Faites quelques pas en arrière ou utilisez Transfert, qui vous téléporte vers l'avant, puis continuez à lancer. Éclair de givre ralentit l'ennemi, qui vous rattrape donc moins vite.",
		},
		es = {
			q = "Tengo un enemigo justo delante. ¿Qué hago?",
			a = "Nova de Escarcha congela a todos los enemigos a tu alrededor. Aléjate unos pasos o usa Traslación, que te teletransporta hacia delante, y sigue lanzando. Descarga de Escarcha ralentiza al enemigo para que te alcance más despacio.",
		},
		it = {
			q = "Ho un nemico proprio davanti. Che cosa faccio?",
			a = "Nova di Gelo congela tutti i nemici intorno a te. Fai qualche passo indietro o usa Traslazione, che ti teletrasporta in avanti, poi continua a lanciare. Dardo di Gelo rallenta il nemico, così ti raggiunge più lentamente.",
		},
		ru = {
			q = "Враг стоит прямо передо мной. Что делать?",
			a = "«Кольцо льда» замораживает всех врагов вокруг. Отойдите на несколько шагов или используйте «Скачок», который переносит вас вперёд, и продолжайте колдовать. «Ледяная стрела» замедляет врага, и он медленнее до вас добирается.",
		},
		pt = {
			q = "Tem um inimigo bem na minha frente. O que faço?",
			a = "Nova Congelante congela todos os inimigos ao seu redor. Afaste-se alguns passos ou use Lampejo, que teletransporta você para a frente, e continue conjurando. Seta de Gelo deixa o inimigo lento, então ele demora mais para alcançar você.",
		},
	},
	{
		id = "mage-polymorph",
		de = {
			q = "Wie benutze ich „Verwandlung“?",
			a = "Sie verwandelt einen Humanoiden oder ein Wildtier in ein Schaf, das eine Weile nichts tut und sich dabei heilt. So kämpfst du gegen zwei Gegner nacheinander. Schaden weckt das Schaf auf, also nicht treffen. In Dungeons ist Verwandlung eine deiner wichtigsten Aufgaben.",
		},
		en = {
			q = "How do I use Polymorph?",
			a = "It turns a humanoid or beast into a sheep that does nothing for a while and heals in the meantime. That lets you fight two enemies one after the other. Damage wakes the sheep, so do not hit it. In dungeons, Polymorph is one of your most important jobs.",
		},
		fr = {
			q = "Comment utiliser Métamorphose ?",
			a = "Elle transforme un humanoïde ou une bête en mouton qui ne fait rien pendant un moment et se soigne entre-temps. Vous pouvez ainsi combattre deux ennemis l'un après l'autre. Les dégâts réveillent le mouton, alors ne le frappez pas. En donjon, Métamorphose est l'une de vos tâches les plus importantes.",
		},
		es = {
			q = "¿Cómo uso Polimorfia?",
			a = "Convierte a un humanoide o bestia en una oveja que no hace nada durante un rato y se cura mientras tanto. Así puedes luchar contra dos enemigos uno tras otro. El daño despierta a la oveja, así que no la golpees. En mazmorras, Polimorfia es una de tus tareas más importantes.",
		},
		it = {
			q = "Come uso Metamorfosi?",
			a = "Trasforma un umanoide o una bestia in una pecora che per un po' non fa nulla e nel frattempo si cura. Così puoi combattere due nemici uno dopo l'altro. I danni risvegliano la pecora, quindi non colpirla. Nelle spedizioni Metamorfosi è uno dei tuoi compiti più importanti.",
		},
		ru = {
			q = "Как пользоваться «Превращением»?",
			a = "Оно превращает гуманоида или зверя в овцу, которая некоторое время ничего не делает и тем временем восстанавливает здоровье. Так можно сражаться с двумя врагами по очереди. Урон будит овцу, поэтому не бейте её. В подземельях «Превращение» — одна из ваших важнейших задач.",
		},
		pt = {
			q = "Como uso Polimorfia?",
			a = "Ela transforma um humanoide ou fera numa ovelha que não faz nada por um tempo e se cura enquanto isso. Assim você enfrenta dois inimigos um depois do outro. Dano acorda a ovelha, então não a ataque. Em masmorras, Polimorfia é uma das suas tarefas mais importantes.",
		},
	},
	{
		id = "mage-armor",
		de = {
			q = "Welche Rüstung soll ich als Magier nutzen?",
			a = "Zuerst „Frostrüstung“, später „Eisrüstung“: mehr Rüstung, und Nahkämpfer werden verlangsamt. Später kommt „Magische Rüstung“ für mehr Mana-Regeneration. Es ist immer nur eine aktiv; erneuere sie, wenn sie ausläuft.",
		},
		en = {
			q = "Which armour spell should I use as a mage?",
			a = "First Frost Armor, later Ice Armor: more armour, and melee attackers are slowed. Later comes Mage Armor for more mana regeneration. Only one is active at a time; renew it when it runs out.",
		},
		fr = {
			q = "Quel sort d'armure utiliser en mage ?",
			a = "D'abord Armure de givre, plus tard Armure de glace : plus d'armure, et les attaquants de mêlée sont ralentis. Plus tard vient Armure du mage pour plus de régénération de mana. Une seule est active à la fois ; renouvelez-la quand elle expire.",
		},
		es = {
			q = "¿Qué hechizo de armadura uso como mago?",
			a = "Primero Armadura de Escarcha, después Armadura de hielo: más armadura y los atacantes cuerpo a cuerpo quedan ralentizados. Más adelante llega Armadura de mago para más regeneración de maná. Solo una está activa a la vez; renuévala cuando se acabe.",
		},
		it = {
			q = "Quale incantesimo d'armatura uso da mago?",
			a = "Prima Armatura di Gelo, poi Armatura di Ghiaccio: più armatura, e chi ti attacca in mischia viene rallentato. In seguito arriva Armatura del Mago per più rigenerazione del mana. Ne è attiva una sola alla volta; rinnovala quando scade.",
		},
		ru = {
			q = "Какой доспех использовать магу?",
			a = "Сначала «Морозный доспех», позже «Ледяной доспех»: больше брони, и атакующие в ближнем бою замедляются. Позже появляется «Магический доспех» для лучшего восполнения маны. Одновременно активен только один; обновляйте его, когда он закончится.",
		},
		pt = {
			q = "Qual feitiço de armadura uso como mago?",
			a = "Primeiro Armadura de Gelo, depois Armadura Gélida: mais armadura, e atacantes corpo a corpo ficam lentos. Mais tarde vem Armadura de Mago, para mais regeneração de mana. Só uma fica ativa por vez; renove quando acabar.",
		},
	},
	{
		id = "mage-arcane-intellect",
		de = {
			q = "Was macht „Arkane Intelligenz“?",
			a = "Sie erhöht die Intelligenz und damit das Mana des Ziels. Leg sie auf dich und alle Gruppenmitglieder mit Mana. Sie hält eine ganze Weile.",
		},
		en = {
			q = "What does Arcane Intellect do?",
			a = "It increases the target's intellect and therefore mana. Put it on yourself and every party member who uses mana. It lasts quite a while.",
		},
		fr = {
			q = "Que fait Intelligence des Arcanes ?",
			a = "Elle augmente l'intelligence de la cible, et donc son mana. Placez-la sur vous et sur chaque membre du groupe qui utilise du mana. Elle dure assez longtemps.",
		},
		es = {
			q = "¿Qué hace Intelecto Arcano?",
			a = "Aumenta el intelecto del objetivo y, por tanto, su maná. Póntelo a ti y a cada miembro del grupo que use maná. Dura bastante tiempo.",
		},
		it = {
			q = "Che cosa fa Intelletto Arcano?",
			a = "Aumenta l'intelletto del bersaglio e quindi il suo mana. Mettilo su di te e su ogni membro del gruppo che usa il mana. Dura parecchio.",
		},
		ru = {
			q = "Что делает «Чародейский интеллект»?",
			a = "Он повышает интеллект цели, а значит, и запас маны. Накладывайте его на себя и на каждого члена группы, кто использует ману. Действует довольно долго.",
		},
		pt = {
			q = "O que Intelecto Arcano faz?",
			a = "Aumenta o intelecto do alvo e, com isso, a mana. Coloque-o em você e em cada membro do grupo que usa mana. Dura bastante tempo.",
		},
	},
	{
		id = "mage-counterspell",
		de = {
			q = "Wie unterbreche ich Zauber?",
			a = "Mit „Gegenzauber“: Er unterbricht den Zauber, und der Gegner kann diese Zauberschule eine Weile nicht nutzen. Ideal gegen Heiler und Zauberwirker.",
		},
		en = {
			q = "How do I interrupt spells?",
			a = "With Counterspell: it interrupts the cast, and the enemy cannot use that school of magic for a while. Ideal against healers and casters.",
		},
		fr = {
			q = "Comment interrompre les sorts ?",
			a = "Avec Contresort : il interrompt l'incantation, et l'ennemi ne peut plus utiliser cette école de magie pendant un moment. Idéal contre les soigneurs et lanceurs de sorts.",
		},
		es = {
			q = "¿Cómo interrumpo hechizos?",
			a = "Con Contrahechizo: interrumpe el lanzamiento y el enemigo no puede usar esa escuela de magia durante un tiempo. Ideal contra sanadores y lanzadores de hechizos.",
		},
		it = {
			q = "Come interrompo gli incantesimi?",
			a = "Con Controincantesimo: interrompe il lancio e il nemico non può usare quella scuola di magia per un po'. Ideale contro guaritori e incantatori.",
		},
		ru = {
			q = "Как прерывать заклинания?",
			a = "«Антимагией»: она прерывает заклинание, и враг некоторое время не может использовать эту школу магии. Идеально против лекарей и заклинателей.",
		},
		pt = {
			q = "Como interrompo feitiços?",
			a = "Com Contrafeitiço: ele interrompe a conjuração e o inimigo não pode usar aquela escola de magia por um tempo. Ideal contra curadores e conjuradores.",
		},
	},
	{
		id = "mage-aoe",
		de = {
			q = "Wie besiege ich viele Gegner auf einmal?",
			a = "Mit Flächenzaubern wie „Arkane Explosion“ (um dich herum) und „Blizzard“ (an einen Ort). Zusammen mit „Frostnova“ kannst du ganze Gruppen schwacher Gegner besiegen. Übe das erst mit wenigen Gegnern; es kostet viel Mana und braucht Übung.",
		},
		en = {
			q = "How do I defeat many enemies at once?",
			a = "With area spells like Arcane Explosion (around you) and Blizzard (at a location). Combined with Frost Nova, you can defeat whole packs of weak enemies. Practise with a few enemies first; it costs a lot of mana and takes practice.",
		},
		fr = {
			q = "Comment vaincre beaucoup d'ennemis à la fois ?",
			a = "Avec des sorts de zone comme Explosion des Arcanes (autour de vous) et Blizzard (à un endroit). Combinés à Nova de givre, vous pouvez vaincre des groupes entiers d'ennemis faibles. Entraînez-vous d'abord avec peu d'ennemis ; cela coûte beaucoup de mana et demande de la pratique.",
		},
		es = {
			q = "¿Cómo derroto a muchos enemigos a la vez?",
			a = "Con hechizos de área como Deflagración Arcana (a tu alrededor) y Ventisca (en un lugar). Combinados con Nova de Escarcha, puedes derrotar grupos enteros de enemigos débiles. Practica primero con pocos enemigos; cuesta mucho maná y requiere práctica.",
		},
		it = {
			q = "Come sconfiggo molti nemici insieme?",
			a = "Con incantesimi ad area come Esplosione Arcana (intorno a te) e Bufera (in un punto). Insieme a Nova di Gelo puoi sconfiggere interi gruppi di nemici deboli. Esercitati prima con pochi nemici; costa molto mana e richiede pratica.",
		},
		ru = {
			q = "Как победить много врагов сразу?",
			a = "Заклинаниями по области, например «Чародейским взрывом» (вокруг вас) и «Снежной бурей» (в выбранном месте). Вместе с «Кольцом льда» можно одолеть целые группы слабых врагов. Сначала тренируйтесь на немногих врагах: это стоит много маны и требует практики.",
		},
		pt = {
			q = "Como derroto muitos inimigos de uma vez?",
			a = "Com feitiços de área como Explosão Arcana (ao seu redor) e Nevasca (num local). Combinados com Nova Congelante, você derrota grupos inteiros de inimigos fracos. Pratique primeiro com poucos inimigos; custa muita mana e exige prática.",
		},
	},
	{
		id = "mage-teleport",
		de = {
			q = "Wie teleportiere ich mich in eine Stadt?",
			a = "Ab etwa Stufe 20 lernst du beim Lehrer „Teleportieren“ in die Hauptstädte deiner Fraktion. Du brauchst dafür eine „Rune der Teleportation“, die Händler für Reagenzien verkaufen. Ab etwa Stufe 40 kommen Portale für die ganze Gruppe dazu, die „Rune der Portale“ brauchen.",
		},
		en = {
			q = "How do I teleport to a city?",
			a = "From about level 20 your trainer teaches Teleport to your faction's capital cities. It needs a Rune of Teleportation, sold by reagent vendors. From about level 40, portals for the whole group follow, which need a Rune of Portals.",
		},
		fr = {
			q = "Comment me téléporter dans une ville ?",
			a = "Vers le niveau 20, votre maître vous enseigne Téléportation vers les capitales de votre faction. Il faut une Rune de téléportation, vendue par les marchands de composants. Vers le niveau 40 suivent les portails pour tout le groupe, qui nécessitent une Rune des portails.",
		},
		es = {
			q = "¿Cómo me teletransporto a una ciudad?",
			a = "Hacia el nivel 20 tu instructor te enseña Teletransporte a las capitales de tu facción. Necesita una Runa de teletransporte, que venden los vendedores de componentes. Hacia el nivel 40 llegan los portales para todo el grupo, que necesitan una Runa de portales.",
		},
		it = {
			q = "Come mi teletrasporto in una città?",
			a = "Verso il livello 20 il tuo istruttore ti insegna Teletrasporto verso le capitali della tua fazione. Serve una Runa del Teletrasporto, venduta dai venditori di reagenti. Verso il livello 40 seguono i portali per tutto il gruppo, che richiedono una Runa dei Portali.",
		},
		ru = {
			q = "Как телепортироваться в город?",
			a = "Примерно с 20-го уровня наставник учит «Телепортации» в столицы вашей фракции. Нужна Руна телепортации, её продают торговцы реагентами. Примерно с 40-го уровня появляются порталы для всей группы, для них нужна Руна порталов.",
		},
		pt = {
			q = "Como me teletransporto para uma cidade?",
			a = "Por volta do nível 20 o seu instrutor ensina Teleporte para as capitais da sua facção. É preciso uma Runa de Teletransporte, vendida por mercadores de reagentes. Por volta do nível 40 vêm os portais para o grupo todo, que precisam de uma Runa de Portais.",
		},
	},
	{
		id = "mage-portals-for-others",
		de = {
			q = "Kann ich anderen Spielern Portale anbieten?",
			a = "Ja, ab Stufe 40. Viele Magier bieten in Hauptstädten Portale gegen ein Trinkgeld an; das deckt die Runenkosten und bringt etwas Gold. Lade den Spieler in eine Gruppe ein und öffne das Portal.",
		},
		en = {
			q = "Can I offer portals to other players?",
			a = "Yes, from level 40. Many mages offer portals in capital cities for a tip; it covers the rune cost and earns some gold. Invite the player to a group and open the portal.",
		},
		fr = {
			q = "Puis-je proposer des portails à d'autres joueurs ?",
			a = "Oui, à partir du niveau 40. Beaucoup de mages proposent des portails dans les capitales contre un pourboire ; cela couvre le prix de la rune et rapporte un peu d'or. Invitez le joueur dans un groupe et ouvrez le portail.",
		},
		es = {
			q = "¿Puedo ofrecer portales a otros jugadores?",
			a = "Sí, a partir del nivel 40. Muchos magos ofrecen portales en las capitales a cambio de una propina; cubre el coste de la runa y da algo de oro. Invita al jugador a un grupo y abre el portal.",
		},
		it = {
			q = "Posso offrire portali ad altri giocatori?",
			a = "Sì, dal livello 40. Molti maghi offrono portali nelle capitali in cambio di una mancia; copre il costo della runa e fa guadagnare un po' d'oro. Invita il giocatore in un gruppo e apri il portale.",
		},
		ru = {
			q = "Можно ли открывать порталы другим игрокам?",
			a = "Да, с 40-го уровня. Многие маги предлагают порталы в столицах за чаевые: это покрывает стоимость руны и приносит немного золота. Пригласите игрока в группу и откройте портал.",
		},
		pt = {
			q = "Posso oferecer portais a outros jogadores?",
			a = "Sim, a partir do nível 40. Muitos magos oferecem portais nas capitais em troca de gorjeta; isso cobre o custo da runa e rende um pouco de ouro. Convide o jogador para um grupo e abra o portal.",
		},
	},
	{
		id = "mage-mana",
		de = {
			q = "Mir geht als Magier ständig das Mana aus.",
			a = "Erledige schwache Gegner mit dem Zauberstab, nutze niedrigere Ränge gegen leichte Gegner und trink nach jedem größeren Kampf. „Hervorrufung“ füllt dein Mana schnell auf, hat aber eine lange Abklingzeit. Später helfen herbeigezauberte Manasteine.",
		},
		en = {
			q = "I keep running out of mana as a mage.",
			a = "Finish weak enemies with your wand, use lower ranks against easy enemies and drink after every bigger fight. Evocation refills your mana quickly but has a long cooldown. Later, conjured mana gems help.",
		},
		fr = {
			q = "Je suis toujours à court de mana en mage.",
			a = "Achevez les ennemis faibles avec votre baguette, utilisez des rangs inférieurs contre les ennemis faciles et buvez après chaque gros combat. Évocation remplit vite votre mana mais a un long temps de recharge. Plus tard, les gemmes de mana invoquées aident.",
		},
		es = {
			q = "Siempre me quedo sin maná como mago.",
			a = "Remata a los enemigos débiles con la varita, usa rangos bajos contra enemigos fáciles y bebe tras cada combate grande. Evocación rellena tu maná rápido pero tiene un tiempo de reutilización largo. Más adelante ayudan las gemas de maná conjuradas.",
		},
		it = {
			q = "Da mago resto sempre senza mana.",
			a = "Finisci i nemici deboli con la bacchetta, usa gradi bassi contro nemici facili e bevi dopo ogni combattimento impegnativo. Evocazione ricarica in fretta il mana ma ha un lungo tempo di recupero. In seguito aiutano le gemme del mana evocate.",
		},
		ru = {
			q = "Магу постоянно не хватает маны.",
			a = "Добивайте слабых врагов жезлом, против лёгких врагов используйте низкие ранги и пейте после каждого крупного боя. «Прилив сил» быстро восполняет ману, но долго восстанавливается. Позже помогают сотворённые самоцветы маны.",
		},
		pt = {
			q = "Fico sem mana o tempo todo como mago.",
			a = "Termine inimigos fracos com a varinha, use patentes baixas contra inimigos fáceis e beba depois de cada luta maior. Evocação recarrega sua mana rápido, mas tem um tempo de recarga longo. Mais tarde, gemas de mana conjuradas ajudam.",
		},
	},
	{
		id = "mage-escape",
		de = {
			q = "Wie rette ich mich als Magier?",
			a = "„Frostnova“ und „Blinzeln“ bringen Abstand, „Manaschild“ fängt Schaden mit deinem Mana ab. Mit Talenten bekommst du „Eisblock“, der dich kurz unverwundbar macht. Lauf weg, bevor es zu spät ist, Magier halten wenig aus.",
		},
		en = {
			q = "How do I save myself as a mage?",
			a = "Frost Nova and Blink create distance, Mana Shield absorbs damage with your mana. With talents you get Ice Block, which makes you briefly invulnerable. Run before it is too late, mages cannot take many hits.",
		},
		fr = {
			q = "Comment me sauver en tant que mage ?",
			a = "Nova de givre et Transfert créent de la distance, Bouclier de mana absorbe les dégâts avec votre mana. Avec les talents, vous obtenez Bloc de glace, qui vous rend brièvement invulnérable. Fuyez avant qu'il soit trop tard, les mages n'encaissent pas beaucoup de coups.",
		},
		es = {
			q = "¿Cómo me salvo como mago?",
			a = "Nova de Escarcha y Traslación crean distancia, y Escudo de maná absorbe daño con tu maná. Con talentos obtienes Bloque de hielo, que te hace invulnerable por un momento. Huye antes de que sea tarde: los magos no aguantan muchos golpes.",
		},
		it = {
			q = "Come mi salvo da mago?",
			a = "Nova di Gelo e Traslazione creano distanza, Scudo di Mana assorbe i danni con il tuo mana. Con i talenti ottieni Blocco di Ghiaccio, che ti rende invulnerabile per poco. Scappa prima che sia troppo tardi: i maghi non reggono molti colpi.",
		},
		ru = {
			q = "Как магу спастись?",
			a = "«Кольцо льда» и «Скачок» создают дистанцию, «Щит маны» поглощает урон за счёт маны. С талантами вы получаете «Ледяную глыбу», которая ненадолго делает вас неуязвимым. Убегайте, пока не поздно: маги не выдерживают много ударов.",
		},
		pt = {
			q = "Como me salvo como mago?",
			a = "Nova Congelante e Lampejo criam distância, Escudo de Mana absorve dano com a sua mana. Com talentos você ganha Bloco de Gelo, que deixa você invulnerável por pouco tempo. Fuja antes que seja tarde: magos não aguentam muitos golpes.",
		},
	},
	{
		id = "mage-decurse",
		de = {
			q = "Kann ich Flüche entfernen?",
			a = "Ja, mit „Geringen Fluch aufheben“. Magier und Druiden sind die Klassen, die Flüche entfernen können, das ist in manchen Dungeons sehr wichtig. Achte auf die Symbole am Gruppenfenster.",
		},
		en = {
			q = "Can I remove curses?",
			a = "Yes, with Remove Lesser Curse. Mages and druids are the classes that can remove curses, which matters a lot in some dungeons. Watch the icons on the party frames.",
		},
		fr = {
			q = "Puis-je retirer les malédictions ?",
			a = "Oui, avec Délivrance de la malédiction mineure. Les mages et les druides sont les classes qui peuvent retirer les malédictions, ce qui compte beaucoup dans certains donjons. Surveillez les icônes sur les cadres du groupe.",
		},
		es = {
			q = "¿Puedo quitar maldiciones?",
			a = "Sí, con Eliminar maldición inferior. Los magos y los druidas son las clases que pueden quitar maldiciones, algo muy importante en algunas mazmorras. Vigila los iconos de los marcos del grupo.",
		},
		it = {
			q = "Posso rimuovere le maledizioni?",
			a = "Sì, con Rimuovi Maledizione Inferiore. Maghi e druidi sono le classi che possono rimuovere le maledizioni, il che conta molto in alcune spedizioni. Osserva le icone sui riquadri del gruppo.",
		},
		ru = {
			q = "Могу ли я снимать проклятия?",
			a = "Да, «Снятием малого проклятия». Маги и друиды — классы, которые умеют снимать проклятия, а в некоторых подземельях это очень важно. Следите за значками на рамках группы.",
		},
		pt = {
			q = "Posso remover maldições?",
			a = "Sim, com Remover Maldição Menor. Magos e druidas são as classes que removem maldições, o que importa muito em algumas masmorras. Fique de olho nos ícones dos quadros do grupo.",
		},
	},
	{
		id = "mage-slow-fall",
		de = {
			q = "Was bringt „Langsamer Fall“?",
			a = "Du schwebst sanft zu Boden und nimmst keinen Fallschaden. Praktisch für Abkürzungen von Klippen oder Brücken. Du kannst es auch auf andere wirken; es braucht ein günstiges Reagenz.",
		},
		en = {
			q = "What is Slow Fall good for?",
			a = "You float gently to the ground and take no fall damage. Handy for shortcuts off cliffs or bridges. You can cast it on others too; it needs a cheap reagent.",
		},
		fr = {
			q = "À quoi sert Chute lente ?",
			a = "Vous flottez doucement jusqu'au sol et ne subissez aucun dégât de chute. Pratique pour les raccourcis depuis des falaises ou des ponts. Vous pouvez aussi la lancer sur d'autres ; elle nécessite un composant bon marché.",
		},
		es = {
			q = "¿Para qué sirve Caída lenta?",
			a = "Flotas suavemente hasta el suelo y no recibes daño por caída. Útil para atajos desde acantilados o puentes. También puedes lanzarlo sobre otros; necesita un componente barato.",
		},
		it = {
			q = "A che cosa serve Caduta Lenta?",
			a = "Fluttui dolcemente fino a terra e non subisci danni da caduta. Comodo per scorciatoie da scogliere o ponti. Puoi lanciarlo anche sugli altri; richiede un reagente economico.",
		},
		ru = {
			q = "Зачем нужно «Замедленное падение»?",
			a = "Вы плавно опускаетесь на землю и не получаете урона от падения. Удобно для срезов со скал или мостов. Его можно накладывать и на других; нужен дешёвый реагент.",
		},
		pt = {
			q = "Para que serve Queda Lenta?",
			a = "Você flutua suavemente até o chão e não sofre dano de queda. Prático para atalhos de penhascos ou pontes. Também dá para lançar nos outros; precisa de um reagente barato.",
		},
	},
	{
		id = "mage-stats",
		de = {
			q = "Welche Werte sind für Magier wichtig?",
			a = "Intelligenz für mehr Mana und kritische Zaubertreffer, Ausdauer für Gesundheit, Willenskraft für Regeneration. Später zählt Zauberschaden viel. Ein guter Zauberstab macht beim Leveln einen großen Unterschied.",
		},
		en = {
			q = "Which stats matter for mages?",
			a = "Intellect for more mana and spell crits, stamina for health, spirit for regeneration. Later, spell damage matters a lot. A good wand makes a big difference while levelling.",
		},
		fr = {
			q = "Quelles caractéristiques comptent pour les mages ?",
			a = "L'intelligence pour plus de mana et de critiques des sorts, l'endurance pour la vie, l'esprit pour la régénération. Plus tard, les dégâts des sorts comptent beaucoup. Une bonne baguette fait une grande différence pendant la montée de niveau.",
		},
		es = {
			q = "¿Qué atributos importan a los magos?",
			a = "Intelecto para más maná y críticos con hechizos, aguante para la salud y espíritu para la regeneración. Más adelante importa mucho el daño con hechizos. Una buena varita marca una gran diferencia al subir de nivel.",
		},
		it = {
			q = "Quali statistiche contano per i maghi?",
			a = "Intelletto per più mana e critici degli incantesimi, tempra per la salute, spirito per la rigenerazione. In seguito contano molto i danni degli incantesimi. Una buona bacchetta fa una grande differenza mentre sali di livello.",
		},
		ru = {
			q = "Какие характеристики важны магу?",
			a = "Интеллект для запаса маны и критических ударов заклинаниями, выносливость для здоровья, дух для восстановления. Позже очень важен урон от заклинаний. Хороший жезл сильно помогает при прокачке.",
		},
		pt = {
			q = "Quais atributos importam para magos?",
			a = "Intelecto para mais mana e críticos mágicos, vigor para vida, espírito para regeneração. Mais tarde, dano mágico importa muito. Uma boa varinha faz grande diferença ao subir de nível.",
		},
	},
	{
		id = "mage-gear",
		de = {
			q = "Welche Rüstung und Waffen nutzen Magier?",
			a = "Stoff. Als Waffen Stäbe, Schwerter und Dolche, dazu ein Zauberstab im Fernkampfplatz. Die Nahkampfwaffe zählt nur für ihre Werte, nicht zum Zuschlagen.",
		},
		en = {
			q = "What armour and weapons do mages use?",
			a = "Cloth. Weapons: staves, swords and daggers, plus a wand in the ranged slot. Your melee weapon only counts for its stats, not for hitting things.",
		},
		fr = {
			q = "Quelle armure et quelles armes utilisent les mages ?",
			a = "Du tissu. Armes : bâtons, épées et dagues, plus une baguette dans l'emplacement à distance. Votre arme de mêlée ne compte que pour ses caractéristiques, pas pour frapper.",
		},
		es = {
			q = "¿Qué armadura y armas usan los magos?",
			a = "Tela. Armas: bastones, espadas y dagas, además de una varita en la ranura a distancia. Tu arma cuerpo a cuerpo solo cuenta por sus atributos, no para golpear.",
		},
		it = {
			q = "Che armatura e quali armi usano i maghi?",
			a = "Stoffa. Armi: bastoni, spade e pugnali, più una bacchetta nello spazio a distanza. L'arma da mischia conta solo per le sue statistiche, non per colpire.",
		},
		ru = {
			q = "Какую броню и оружие используют маги?",
			a = "Тканевую броню. Оружие: посохи, мечи и кинжалы, плюс жезл в ячейке дальнего боя. Оружие ближнего боя важно только своими характеристиками, а не для ударов.",
		},
		pt = {
			q = "Que armadura e armas os magos usam?",
			a = "Tecido. Armas: báculos, espadas e adagas, mais uma varinha no espaço de longo alcance. A arma corpo a corpo só conta pelos atributos, não para bater.",
		},
	},
	{
		id = "mage-talents",
		de = {
			q = "Welche Talentbäume haben Magier?",
			a = "Arkan verbessert Mana und arkane Zauber, Feuer macht großen Schaden mit Feuerzaubern, Frost bringt mehr Kontrolle und Sicherheit mit Verlangsamung und Eisblock. Zum Leveln ist Frost für Anfänger am einfachsten.",
		},
		en = {
			q = "Which talent trees do mages have?",
			a = "Arcane improves mana and Arcane spells, Fire deals big damage with fire spells, Frost brings more control and safety with slows and Ice Block. Frost is the easiest for beginners to level with.",
		},
		fr = {
			q = "Quels arbres de talents ont les mages ?",
			a = "Arcanes améliore le mana et les sorts des Arcanes, Feu inflige de gros dégâts avec les sorts de feu, Givre apporte plus de contrôle et de sécurité avec ses ralentissements et Bloc de glace. Givre est le plus simple pour les débutants qui montent de niveau.",
		},
		es = {
			q = "¿Qué árboles de talentos tienen los magos?",
			a = "Arcano mejora el maná y los hechizos Arcanos, Fuego hace mucho daño con hechizos de fuego, y Escarcha aporta más control y seguridad con ralentizaciones y Bloque de hielo. Escarcha es el más sencillo para principiantes que suben de nivel.",
		},
		it = {
			q = "Quali alberi di talenti hanno i maghi?",
			a = "Arcano migliora il mana e gli incantesimi Arcani, Fuoco infligge grandi danni con gli incantesimi di fuoco, Gelo porta più controllo e sicurezza con rallentamenti e Blocco di Ghiaccio. Gelo è il più semplice per i principianti che salgono di livello.",
		},
		ru = {
			q = "Какие ветки талантов есть у мага?",
			a = "«Тайная магия» улучшает ману и чародейские заклинания, «Огонь» наносит большой урон огненными заклинаниями, «Лёд» даёт больше контроля и безопасности за счёт замедлений и «Ледяной глыбы». Новичкам проще всего качаться во «Льду».",
		},
		pt = {
			q = "Quais árvores de talentos os magos têm?",
			a = "Arcano melhora a mana e os feitiços Arcanos, Fogo causa muito dano com feitiços de fogo, Gelo traz mais controle e segurança com lentidão e Bloco de Gelo. Gelo é a mais fácil para iniciantes subirem de nível.",
		},
	},
})
