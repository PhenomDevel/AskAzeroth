local _, ns = ...

-- FAQ: Shaman. See Core/Faq.lua for the format.
ns.Faq.Add("shaman", {
	{
		id = "shaman-totem-items",
		de = {
			q = "Warum kann ich keine Totems aufstellen?",
			a = "Für jedes Element brauchst du ein Totem in deinen Taschen: Erd-, Feuer-, Wasser- und Lufttotem. Du bekommst sie über Klassenquests, wenn du die passende Stufe erreichst; dein Schamanenlehrer schickt dich los. Verlierst du eins, bekommst du beim Lehrer Ersatz.",
		},
		en = {
			q = "Why can I not drop totems?",
			a = "For each element you need a totem item in your bags: Earth, Fire, Water and Air Totem. You get them from class quests when you reach the right level; your shaman trainer sends you off. If you lose one, your trainer can replace it.",
		},
		fr = {
			q = "Pourquoi ne puis-je pas poser de totems ?",
			a = "Pour chaque élément, il vous faut un objet totem dans vos sacs : Totem de terre, de feu, d'eau et d'air. Vous les obtenez par des quêtes de classe au bon niveau ; votre maître des chamans vous y envoie. Si vous en perdez un, votre maître peut le remplacer.",
		},
		es = {
			q = "¿Por qué no puedo poner tótems?",
			a = "Para cada elemento necesitas un objeto de tótem en tus bolsas: Tótem de tierra, de fuego, de agua y de aire. Los consigues con misiones de clase al alcanzar el nivel adecuado; tu instructor de chamanes te envía a ellas. Si pierdes uno, tu instructor puede reponerlo.",
		},
		it = {
			q = "Perché non riesco a piazzare i totem?",
			a = "Per ogni elemento ti serve un oggetto totem nelle borse: Totem della Terra, del Fuoco, dell'Acqua e dell'Aria. Li ottieni con missioni di classe al livello giusto; il tuo istruttore degli sciamani ti ci manda. Se ne perdi uno, l'istruttore può sostituirlo.",
		},
		ru = {
			q = "Почему я не могу ставить тотемы?",
			a = "Для каждой стихии нужен предмет-тотем в сумках: Тотем земли, огня, воды и воздуха. Вы получаете их за классовые задания на нужном уровне; наставник шаманов отправит вас за ними. Если вы потеряли тотем, наставник может выдать новый.",
		},
		pt = {
			q = "Por que não consigo colocar totens?",
			a = "Para cada elemento você precisa de um item de totem nas bolsas: Totem da Terra, do Fogo, da Água e do Ar. Você os ganha em missões de classe ao atingir o nível certo; o seu instrutor de xamãs o envia para elas. Se perder um, o instrutor pode repor.",
		},
	},
	{
		id = "shaman-totems-how",
		de = {
			q = "Wie funktionieren Totems?",
			a = "Ein Totem steht eine Weile am Boden und wirkt auf dich und deine Gruppe in der Nähe, zum Beispiel mehr Rüstung, Stärke oder Mana-Regeneration. Von jedem Element kann nur ein Totem stehen. Läufst du weg, wirken sie nicht mehr; stell sie neu auf. In WoW: Forever stellst du später mit „Ruf der Elemente“ mehrere vorher gewählte Totems auf einmal auf.",
		},
		en = {
			q = "How do totems work?",
			a = "A totem stands on the ground for a while and affects you and your nearby group, for example more armour, strength or mana regeneration. Only one totem per element can be active. If you move away they stop working, so drop them again. In WoW: Forever you later get Call of the Elements, which drops several pre-chosen totems at once.",
		},
		fr = {
			q = "Comment fonctionnent les totems ?",
			a = "Un totem reste au sol un moment et agit sur vous et votre groupe proche, par exemple plus d'armure, de force ou de régénération de mana. Un seul totem par élément peut être actif. Si vous vous éloignez, ils n'agissent plus, alors reposez-les. Dans WoW: Forever, vous obtenez plus tard Appel des éléments, qui pose d'un coup plusieurs totems choisis à l'avance.",
		},
		es = {
			q = "¿Cómo funcionan los tótems?",
			a = "Un tótem queda en el suelo un tiempo y te afecta a ti y a tu grupo cercano, por ejemplo con más armadura, fuerza o regeneración de maná. Solo puede haber un tótem activo por elemento. Si te alejas dejan de funcionar, así que vuelve a ponerlos. En WoW: Forever consigues más adelante Llamada de los elementos, que coloca a la vez varios tótems elegidos de antemano.",
		},
		it = {
			q = "Come funzionano i totem?",
			a = "Un totem resta a terra per un po' e agisce su di te e sul gruppo vicino, per esempio con più armatura, forza o rigenerazione del mana. Può essere attivo un solo totem per elemento. Se ti allontani smettono di funzionare, quindi piazzali di nuovo. In WoW: Forever più avanti ottieni Richiamo degli Elementi, che piazza insieme più totem scelti in anticipo.",
		},
		ru = {
			q = "Как работают тотемы?",
			a = "Тотем стоит на земле некоторое время и действует на вас и группу поблизости, например даёт больше брони, силы или восполнения маны. Одновременно может действовать только один тотем каждой стихии. Если вы отойдёте, они перестают действовать, так что ставьте их заново. В WoW: Forever позже появляется «Зов Стихий», который ставит сразу несколько заранее выбранных тотемов.",
		},
		pt = {
			q = "Como funcionam os totens?",
			a = "Um totem fica no chão por um tempo e afeta você e o grupo próximo, por exemplo com mais armadura, força ou regeneração de mana. Só pode haver um totem ativo por elemento. Se você se afastar eles param de funcionar, então coloque-os de novo. No WoW: Forever você ganha mais tarde Chamado dos Elementos, que coloca de uma vez vários totens escolhidos antes.",
		},
	},
	{
		id = "shaman-totem-choice",
		de = {
			q = "Welche Totems sind beim Leveln gut?",
			a = "„Totem der Steinhaut“ oder „Totem der Erdstärke“ als Erde, „Totem der Verbrennung“ als Feuer für zusätzlichen Schaden. Totems kosten Mana, für schnelle Kämpfe gegen schwache Gegner lohnen sie sich oft nicht.",
		},
		en = {
			q = "Which totems are good while levelling?",
			a = "Stoneskin Totem or Strength of Earth Totem for earth, Searing Totem for fire for extra damage. Totems cost mana, so they are often not worth it for quick fights against weak enemies.",
		},
		fr = {
			q = "Quels totems sont bons pour monter de niveau ?",
			a = "Totem de Peau de pierre ou Totem de Force de la Terre pour la terre, Totem incendiaire pour le feu afin d'ajouter des dégâts. Les totems coûtent du mana, ils ne valent donc souvent pas la peine pour des combats rapides contre des ennemis faibles.",
		},
		es = {
			q = "¿Qué tótems son buenos para subir de nivel?",
			a = "Tótem Piel de piedra o Tótem Fuerza de la tierra para tierra, y Tótem abrasador para fuego como daño extra. Los tótems cuestan maná, así que a menudo no compensan en combates rápidos contra enemigos débiles.",
		},
		it = {
			q = "Quali totem sono utili per salire di livello?",
			a = "Totem della Pelle di Pietra o Totem della Forza della Terra per la terra, Totem Ustionante per il fuoco come danno extra. I totem costano mana, quindi spesso non convengono nei combattimenti rapidi contro nemici deboli.",
		},
		ru = {
			q = "Какие тотемы хороши при прокачке?",
			a = "«Тотем каменной кожи» или «Тотем силы земли» для земли, «Опаляющий тотем» для огня ради дополнительного урона. Тотемы стоят ману, поэтому в быстрых боях против слабых врагов они часто не окупаются.",
		},
		pt = {
			q = "Quais totens são bons para subir de nível?",
			a = "Totem Pele de Pedra ou Totem Força da Terra para terra, Totem Calcinante para fogo como dano extra. Totens custam mana, então muitas vezes não compensam em lutas rápidas contra inimigos fracos.",
		},
	},
	{
		id = "shaman-tremor",
		de = {
			q = "Wie schütze ich meine Gruppe vor Furcht?",
			a = "Mit „Totem des Erdstoßes“: Es befreit Gruppenmitglieder in der Nähe immer wieder von Furcht, Bezauberung und Schlaf. Stell es vor Kämpfen gegen Gegner auf, die Furcht wirken.",
		},
		en = {
			q = "How do I protect my group from fear?",
			a = "With Tremor Totem: it keeps freeing nearby party members from fear, charm and sleep. Drop it before fights against enemies that cast fear.",
		},
		fr = {
			q = "Comment protéger mon groupe de la peur ?",
			a = "Avec Totem de séisme : il libère régulièrement les membres du groupe proches de la peur, du charme et du sommeil. Posez-le avant les combats contre des ennemis qui lancent la peur.",
		},
		es = {
			q = "¿Cómo protejo a mi grupo del miedo?",
			a = "Con Tótem de tremor: libera continuamente a los miembros cercanos del grupo del miedo, el encanto y el sueño. Ponlo antes de combatir contra enemigos que lanzan miedo.",
		},
		it = {
			q = "Come proteggo il gruppo dalla paura?",
			a = "Con Totem del Tremore: libera di continuo i membri del gruppo vicini da paura, ammaliamento e sonno. Piazzalo prima dei combattimenti contro nemici che lanciano paura.",
		},
		ru = {
			q = "Как защитить группу от страха?",
			a = "«Тотемом трепета»: он постоянно освобождает ближайших членов группы от страха, очарования и сна. Ставьте его перед боем с врагами, которые накладывают страх.",
		},
		pt = {
			q = "Como protejo o grupo do medo?",
			a = "Com Totem do Tremor: ele liberta continuamente os membros próximos do grupo de medo, encanto e sono. Coloque-o antes de lutas contra inimigos que lançam medo.",
		},
	},
	{
		id = "shaman-weapon-imbue",
		de = {
			q = "Was machen „Waffe des Felsbeißers“ und „Waffe der Flammenzunge“?",
			a = "Sie verzaubern deine Waffe eine Weile: Felsbeißer macht deine Schläge stärker und ist am Anfang die beste Wahl, Flammenzunge fügt Feuerschaden hinzu. Später kommen weitere Verzauberungen wie Windzorn dazu. Halte immer eine aktiv.",
		},
		en = {
			q = "What do Rockbiter Weapon and Flametongue Weapon do?",
			a = "They imbue your weapon for a while: Rockbiter strengthens your attacks and is the best choice early on, Flametongue adds fire damage. More imbues like Windfury come later. Always keep one active.",
		},
		fr = {
			q = "Que font Arme Croque-roc et Arme Langue de feu ?",
			a = "Elles imprègnent votre arme pendant un moment : Croque-roc renforce vos attaques et c'est le meilleur choix au début, Langue de feu ajoute des dégâts de feu. D'autres imprégnations comme Furie-des-vents arrivent plus tard. Gardez-en toujours une active.",
		},
		es = {
			q = "¿Qué hacen Arma muerdepiedras y Arma lengua de fuego?",
			a = "Imbuyen tu arma durante un tiempo: Muerdepiedras refuerza tus ataques y es la mejor opción al principio; Lengua de fuego añade daño de fuego. Más adelante llegan otras, como Viento Furioso. Mantén siempre una activa.",
		},
		it = {
			q = "Che cosa fanno Arma Mordiroccia e Arma Lingua di Fuoco?",
			a = "Infondono l'arma per un po': Mordiroccia potenzia gli attacchi ed è la scelta migliore all'inizio, Lingua di Fuoco aggiunge danni da fuoco. In seguito arrivano altre infusioni come Furia del Vento. Tienine sempre una attiva.",
		},
		ru = {
			q = "Что делают «Оружие камнедробителя» и «Оружие языка пламени»?",
			a = "Они на время насыщают оружие: «Камнедробитель» усиливает атаки и лучше всего подходит в начале, «Язык пламени» добавляет урон от огня. Позже появляются другие, например «Неистовство ветра». Всегда держите одно из них активным.",
		},
		pt = {
			q = "O que fazem Arma Mordedora de Rocha e Arma de Labaredas?",
			a = "Elas imbuem sua arma por um tempo: Mordedora de Rocha fortalece seus ataques e é a melhor escolha no começo, Labaredas adiciona dano de fogo. Outras, como Fúria dos Ventos, vêm depois. Mantenha sempre uma ativa.",
		},
	},
	{
		id = "shaman-shocks",
		de = {
			q = "Wofür sind die Schocks?",
			a = "Schocks sind sofortige Zauber mit gemeinsamer Abklingzeit: „Erdschock“ unterbricht Zauber, „Flammenschock“ verbrennt über Zeit, „Frostschock“ verlangsamt. Nutz Erdschock gezielt gegen Heiler und Zauberwirker.",
		},
		en = {
			q = "What are the shocks for?",
			a = "Shocks are instant spells that share a cooldown: Earth Shock interrupts casts, Flame Shock burns over time, Frost Shock slows. Use Earth Shock on purpose against healers and casters.",
		},
		fr = {
			q = "À quoi servent les horions ?",
			a = "Les horions sont des sorts instantanés qui partagent un temps de recharge : Horion de terre interrompt les incantations, Horion de flammes brûle sur la durée, Horion de givre ralentit. Utilisez Horion de terre à bon escient contre les soigneurs et lanceurs de sorts.",
		},
		es = {
			q = "¿Para qué sirven los choques?",
			a = "Los choques son hechizos instantáneos que comparten tiempo de reutilización: Choque de tierra interrumpe lanzamientos, Choque de llamas quema con el tiempo y Choque de Escarcha ralentiza. Usa Choque de tierra con intención contra sanadores y lanzadores de hechizos.",
		},
		it = {
			q = "A che cosa servono le scosse?",
			a = "Le scosse sono incantesimi istantanei con un tempo di recupero condiviso: Scossa di Terra interrompe i lanci, Scossa di Fiamma brucia nel tempo, Scossa di Gelo rallenta. Usa Scossa di Terra con criterio contro guaritori e incantatori.",
		},
		ru = {
			q = "Зачем нужны шоки?",
			a = "Шоки — мгновенные заклинания с общим временем восстановления: «Земной шок» прерывает заклинания, «Огненный шок» жжёт со временем, «Ледяной шок» замедляет. Используйте «Земной шок» осознанно против лекарей и заклинателей.",
		},
		pt = {
			q = "Para que servem os choques?",
			a = "Choques são feitiços instantâneos que compartilham o tempo de recarga: Choque Terreno interrompe conjurações, Choque Flamejante queima ao longo do tempo, Choque Gélido deixa lento. Use Choque Terreno com propósito contra curadores e conjuradores.",
		},
	},
	{
		id = "shaman-leveling",
		de = {
			q = "Wie kämpfe ich als Schamane beim Leveln?",
			a = "Waffe verzaubern, „Blitzschlagschild“ an, mit „Blitzschlag“ eröffnen und dann mit Waffe und Schocks weiterkämpfen. Totems nur bei längeren Kämpfen. Bei wenig Gesundheit heilst du dich mit „Welle der Heilung“.",
		},
		en = {
			q = "How do I fight as a shaman while levelling?",
			a = "Imbue your weapon, turn on Lightning Shield, open with Lightning Bolt and then keep fighting with your weapon and shocks. Totems only for longer fights. Heal yourself with Healing Wave when your health gets low.",
		},
		fr = {
			q = "Comment combattre en chaman pendant la montée de niveau ?",
			a = "Imprégnez votre arme, activez Bouclier de foudre, ouvrez avec Éclair puis continuez avec votre arme et vos horions. Les totems seulement pour les combats longs. Soignez-vous avec Vague de soins quand votre vie baisse.",
		},
		es = {
			q = "¿Cómo lucho como chamán mientras subo de nivel?",
			a = "Imbuye tu arma, activa Escudo de relámpagos, abre con Descarga de relámpagos y sigue luchando con tu arma y tus choques. Tótems solo en combates largos. Cúrate con Ola de sanación cuando tu salud baje.",
		},
		it = {
			q = "Come combatto da sciamano mentre salgo di livello?",
			a = "Infondi l'arma, attiva Scudo di Fulmini, apri con Dardo di Fulmine e poi continua con l'arma e le scosse. I totem solo per i combattimenti lunghi. Curati con Onda Curativa quando la salute scende.",
		},
		ru = {
			q = "Как шаману сражаться при прокачке?",
			a = "Насытьте оружие, включите «Щит молний», начните с «Молнии», а дальше сражайтесь оружием и шоками. Тотемы — только для долгих боёв. Когда здоровья мало, лечитесь «Волной исцеления».",
		},
		pt = {
			q = "Como luto como xamã enquanto subo de nível?",
			a = "Imbua sua arma, ative Escudo de Raios, abra com Raio e depois continue lutando com a arma e os choques. Totens só em lutas mais longas. Cure-se com Onda Curativa quando a vida ficar baixa.",
		},
	},
	{
		id = "shaman-heals",
		de = {
			q = "Wie heile ich als Schamane?",
			a = "„Welle der Heilung“ heilt viel, braucht aber Zeit, „Geringe Welle der Heilung“ ist schneller. Später springt „Kettenheilung“ auf mehrere verletzte Ziele, ideal in Gruppen. „Totem des heilenden Flusses“ heilt die ganze Gruppe nebenbei.",
		},
		en = {
			q = "How do I heal as a shaman?",
			a = "Healing Wave heals a lot but takes time, Lesser Healing Wave is faster. Later, Chain Heal jumps to several injured targets, ideal in groups. Healing Stream Totem heals the whole group on the side.",
		},
		fr = {
			q = "Comment soigner en tant que chaman ?",
			a = "Vague de soins soigne beaucoup mais prend du temps, Vague de soins inférieurs est plus rapide. Plus tard, Salve de guérison rebondit sur plusieurs cibles blessées, idéal en groupe. Totem guérisseur soigne tout le groupe en parallèle.",
		},
		es = {
			q = "¿Cómo curo como chamán?",
			a = "Ola de sanación cura mucho pero tarda; Ola de sanación inferior es más rápida. Más adelante, Sanación en cadena salta a varios objetivos heridos, ideal en grupo. Tótem Corriente de sanación cura a todo el grupo de fondo.",
		},
		it = {
			q = "Come curo da sciamano?",
			a = "Onda Curativa cura molto ma richiede tempo, Onda Curativa Inferiore è più veloce. In seguito Catena di Guarigione rimbalza su più bersagli feriti, ideale in gruppo. Totem della Corrente Curativa cura tutto il gruppo in sottofondo.",
		},
		ru = {
			q = "Как шаману лечить?",
			a = "«Волна исцеления» лечит много, но долго, «Малая волна исцеления» быстрее. Позже «Цепное исцеление» перескакивает на несколько раненых целей — идеально в группе. «Тотем исцеляющего потока» попутно лечит всю группу.",
		},
		pt = {
			q = "Como curo como xamã?",
			a = "Onda Curativa cura muito, mas demora; Onda Curativa Menor é mais rápida. Mais tarde, Cura Encadeada salta para vários alvos feridos, ideal em grupo. Totem de Torrente Curativo cura o grupo todo em segundo plano.",
		},
	},
	{
		id = "shaman-ghost-wolf",
		de = {
			q = "Wie bekomme ich den Geisterwolf?",
			a = "Um Stufe 20 bei deinem Schamanenlehrer. Als Geisterwolf läufst du schneller, bis du ein Reittier hast; im Kampf ist er aber keine gute Idee. Er hilft auch, um aus einem verlorenen Kampf zu fliehen.",
		},
		en = {
			q = "How do I get Ghost Wolf?",
			a = "From your shaman trainer around level 20. As a Ghost Wolf you run faster until you have a mount; it is not a good idea in combat though. It also helps to escape a lost fight.",
		},
		fr = {
			q = "Comment obtenir Loup fantôme ?",
			a = "Auprès de votre maître des chamans, vers le niveau 20. En Loup fantôme, vous courez plus vite jusqu'à ce que vous ayez une monture ; ce n'est pas une bonne idée en combat, en revanche. Cela aide aussi à fuir un combat perdu.",
		},
		es = {
			q = "¿Cómo consigo Lobo fantasmal?",
			a = "Con tu instructor de chamanes, hacia el nivel 20. Como Lobo fantasmal corres más rápido hasta que tengas montura; en combate, en cambio, no es buena idea. También ayuda a huir de un combate perdido.",
		},
		it = {
			q = "Come ottengo Lupo Spettrale?",
			a = "Dal tuo istruttore degli sciamani, verso il livello 20. Come Lupo Spettrale corri più veloce finché non hai una cavalcatura; in combattimento però non è una buona idea. Aiuta anche a fuggire da un combattimento perso.",
		},
		ru = {
			q = "Как получить «Призрачного волка»?",
			a = "У наставника шаманов, примерно на 20-м уровне. В облике «Призрачного волка» вы бегаете быстрее, пока у вас нет маунта; в бою это, правда, плохая идея. Он также помогает сбежать из проигранного боя.",
		},
		pt = {
			q = "Como consigo Lobo Fantasma?",
			a = "Com seu instrutor de xamãs, por volta do nível 20. Como Lobo Fantasma você corre mais rápido até ter uma montaria; em combate, porém, não é uma boa ideia. Também ajuda a fugir de uma luta perdida.",
		},
	},
	{
		id = "shaman-reincarnation",
		de = {
			q = "Was ist Reinkarnation?",
			a = "Damit kannst du dich nach dem Tod selbst wiederbeleben, ohne zum Körper zu laufen. Du brauchst ein Ankh in den Taschen, das Händler für Reagenzien verkaufen, und die Fähigkeit hat eine lange Abklingzeit.",
		},
		en = {
			q = "What is Reincarnation?",
			a = "It lets you resurrect yourself after death without running back to your body. You need an Ankh in your bags, sold by reagent vendors, and it has a long cooldown.",
		},
		fr = {
			q = "Qu'est-ce que Réincarnation ?",
			a = "Elle vous permet de vous ressusciter après la mort sans retourner à votre corps. Il vous faut un Ankh dans vos sacs, vendu par les marchands de composants, et elle a un long temps de recharge.",
		},
		es = {
			q = "¿Qué es Reencarnación?",
			a = "Te permite resucitarte tras morir sin volver corriendo a tu cuerpo. Necesitas un Ankh en tus bolsas, que venden los vendedores de componentes, y tiene un tiempo de reutilización largo.",
		},
		it = {
			q = "Che cos'è Reincarnazione?",
			a = "Ti permette di resuscitarti dopo la morte senza tornare di corsa al tuo corpo. Ti serve un Ankh nelle borse, venduto dai venditori di reagenti, e ha un lungo tempo di recupero.",
		},
		ru = {
			q = "Что такое «Перерождение»?",
			a = "Оно позволяет воскреснуть после смерти, не возвращаясь к телу. Нужен Анкх в сумках, его продают торговцы реагентами, а время восстановления у способности долгое.",
		},
		pt = {
			q = "O que é Reencarnação?",
			a = "Ela permite que você ressuscite após a morte sem correr de volta ao corpo. Você precisa de um Ankh nas bolsas, vendido por mercadores de reagentes, e ela tem um tempo de recarga longo.",
		},
	},
	{
		id = "shaman-astral-recall",
		de = {
			q = "Was ist „Astraler Rückruf“?",
			a = "Ein zweiter Ruhestein: Er bringt dich wie dein Ruhestein zu deinem Gasthaus, hat aber eine eigene Abklingzeit. So kannst du öfter zurückreisen.",
		},
		en = {
			q = "What is Astral Recall?",
			a = "A second hearthstone: it takes you to your inn like your hearthstone but has its own cooldown. That lets you travel back more often.",
		},
		fr = {
			q = "Qu'est-ce que Rappel astral ?",
			a = "Une deuxième pierre de foyer : elle vous ramène à votre auberge comme votre pierre de foyer, mais avec son propre temps de recharge. Vous pouvez ainsi rentrer plus souvent.",
		},
		es = {
			q = "¿Qué es Regreso astral?",
			a = "Una segunda piedra de hogar: te lleva a tu posada como tu piedra de hogar, pero tiene su propio tiempo de reutilización. Así puedes volver más a menudo.",
		},
		it = {
			q = "Che cos'è Richiamo Astrale?",
			a = "Una seconda pietra del ritorno: ti porta alla locanda come la pietra del ritorno, ma ha un suo tempo di recupero. Così puoi tornare indietro più spesso.",
		},
		ru = {
			q = "Что такое «Астральное возвращение»?",
			a = "Второй камень возвращения: переносит вас в таверну, как камень возвращения, но со своим временем восстановления. Так можно возвращаться чаще.",
		},
		pt = {
			q = "O que é Evocação Astral?",
			a = "Uma segunda pedra de regresso: leva você à sua estalagem como a pedra de regresso, mas tem o próprio tempo de recarga. Assim você pode voltar com mais frequência.",
		},
	},
	{
		id = "shaman-purge-cure",
		de = {
			q = "Was kann ein Schamane entfernen?",
			a = "„Gift heilen“ und „Krankheit heilen“ entfernen Gifte und Krankheiten bei Freunden. „Reinigen“ entfernt nützliche Magie von Gegnern, etwa Schilde oder Buffs.",
		},
		en = {
			q = "What can a shaman remove?",
			a = "Cure Poison and Cure Disease remove poisons and diseases from friends. Purge removes helpful magic from enemies, such as shields or buffs.",
		},
		fr = {
			q = "Que peut retirer un chaman ?",
			a = "Guérison du poison et Guérison des maladies retirent poisons et maladies des alliés. Purge retire la magie bénéfique des ennemis, comme les boucliers ou les améliorations.",
		},
		es = {
			q = "¿Qué puede eliminar un chamán?",
			a = "Curar veneno y Curar enfermedad eliminan venenos y enfermedades de los aliados. Purgar elimina la magia beneficiosa de los enemigos, como escudos o beneficios.",
		},
		it = {
			q = "Che cosa può rimuovere uno sciamano?",
			a = "Cura Veleno e Cura Malattia rimuovono veleni e malattie dagli alleati. Epurazione rimuove la magia benefica dai nemici, come scudi o benefici.",
		},
		ru = {
			q = "Что может снимать шаман?",
			a = "«Излечение отравления» и «Излечение болезни» снимают яды и болезни с союзников. «Развеивание магии» снимает с врагов полезную магию, например щиты или усиления.",
		},
		pt = {
			q = "O que um xamã pode remover?",
			a = "Curar Veneno e Curar Doença removem venenos e doenças dos aliados. Expurgar remove magia benéfica dos inimigos, como escudos ou bônus.",
		},
	},
	{
		id = "shaman-water",
		de = {
			q = "Kann ich unter Wasser atmen oder übers Wasser laufen?",
			a = "Ja, mit „Wasseratmung“ und „Wasserwandeln“, die du im Laufe der Stufen lernst. Beide brauchen ein Reagenz, das Händler verkaufen. Praktisch für Quests unter Wasser oder Abkürzungen über Seen.",
		},
		en = {
			q = "Can I breathe underwater or walk on water?",
			a = "Yes, with Water Breathing and Water Walking, which you learn as you level. Both need a reagent sold by vendors. Handy for underwater quests or shortcuts across lakes.",
		},
		fr = {
			q = "Puis-je respirer sous l'eau ou marcher sur l'eau ?",
			a = "Oui, avec Respiration aquatique et Marche sur l'eau, que vous apprenez en montant de niveau. Les deux nécessitent un composant vendu par les marchands. Pratique pour les quêtes sous-marines ou les raccourcis à travers les lacs.",
		},
		es = {
			q = "¿Puedo respirar bajo el agua o caminar sobre ella?",
			a = "Sí, con Respiración acuática y Caminar sobre el agua, que aprendes al subir de nivel. Ambos necesitan un componente que venden los vendedores. Útil para misiones bajo el agua o atajos por lagos.",
		},
		it = {
			q = "Posso respirare sott'acqua o camminare sull'acqua?",
			a = "Sì, con Respirazione Acquatica e Camminare sull'Acqua, che impari salendo di livello. Entrambi richiedono un reagente venduto dai mercanti. Comodi per missioni subacquee o scorciatoie attraverso i laghi.",
		},
		ru = {
			q = "Можно ли дышать под водой или ходить по воде?",
			a = "Да, с «Подводным дыханием» и «Хождением по воде», которые вы изучаете по мере прокачки. Обоим нужен реагент, который продают торговцы. Удобно для подводных заданий или срезов через озёра.",
		},
		pt = {
			q = "Posso respirar debaixo d'água ou andar sobre a água?",
			a = "Sim, com Respiração Aquática e Caminhar sobre a Água, que você aprende ao subir de nível. Os dois precisam de um reagente vendido por mercadores. Prático para missões submersas ou atalhos por lagos.",
		},
	},
	{
		id = "shaman-stats",
		de = {
			q = "Welche Werte sind für Schamanen wichtig?",
			a = "Als Verstärker Stärke, Beweglichkeit und Ausdauer, dazu etwas Intelligenz. Als Elementar Intelligenz und Zauberschaden, als Heiler Intelligenz und Heilung. Beim Leveln mit Waffe ist eine starke, langsame Waffe wichtig.",
		},
		en = {
			q = "Which stats matter for shamans?",
			a = "As Enhancement strength, agility and stamina, plus some intellect. As Elemental intellect and spell damage, as a healer intellect and healing. When levelling with your weapon, a strong, slow weapon matters.",
		},
		fr = {
			q = "Quelles caractéristiques comptent pour les chamans ?",
			a = "En Amélioration, force, agilité et endurance, plus un peu d'intelligence. En Élémentaire, intelligence et dégâts des sorts ; en soigneur, intelligence et soins. Si vous montez de niveau avec votre arme, une arme lente et puissante compte.",
		},
		es = {
			q = "¿Qué atributos importan a los chamanes?",
			a = "Como Mejora, fuerza, agilidad y aguante, más algo de intelecto. Como Elemental, intelecto y daño con hechizos; como sanador, intelecto y sanación. Si subes de nivel con el arma, importa un arma lenta y fuerte.",
		},
		it = {
			q = "Quali statistiche contano per gli sciamani?",
			a = "Da Potenziamento forza, agilità e tempra, più un po' di intelletto. Da Elementale intelletto e danni degli incantesimi, da guaritore intelletto e cure. Se sali di livello con l'arma, conta un'arma lenta e forte.",
		},
		ru = {
			q = "Какие характеристики важны шаману?",
			a = "В «Совершенствовании» сила, ловкость и выносливость плюс немного интеллекта. В «Стихиях» интеллект и урон от заклинаний, лекарю интеллект и сила исцеления. Если качаетесь оружием, важно медленное и сильное оружие.",
		},
		pt = {
			q = "Quais atributos importam para xamãs?",
			a = "Como Aperfeiçoamento, força, agilidade e vigor, mais um pouco de intelecto. Como Elemental, intelecto e dano mágico; como curador, intelecto e cura. Se você sobe de nível com a arma, uma arma lenta e forte faz diferença.",
		},
	},
	{
		id = "shaman-armor",
		de = {
			q = "Welche Rüstung tragen Schamanen?",
			a = "Am Anfang Leder, ab Stufe 40 Kettenrüstung. Schilde kannst du von Anfang an tragen, das hilft beim Leveln viel. Als Waffen Streitkolben, Äxte, Stäbe, Faustwaffen und Dolche.",
		},
		en = {
			q = "What armour do shamans wear?",
			a = "Leather at first, mail from level 40. You can use shields from the start, which helps a lot while levelling. Weapons: maces, axes, staves, fist weapons and daggers.",
		},
		fr = {
			q = "Quelle armure portent les chamans ?",
			a = "Du cuir au début, des mailles à partir du niveau 40. Vous pouvez utiliser des boucliers dès le départ, ce qui aide beaucoup pour monter de niveau. Armes : masses, haches, bâtons, armes de pugilat et dagues.",
		},
		es = {
			q = "¿Qué armadura llevan los chamanes?",
			a = "Cuero al principio, malla a partir del nivel 40. Puedes usar escudos desde el inicio, lo que ayuda mucho al subir de nivel. Armas: mazas, hachas, bastones, armas de puño y dagas.",
		},
		it = {
			q = "Che armatura indossano gli sciamani?",
			a = "Cuoio all'inizio, maglia dal livello 40. Puoi usare gli scudi fin da subito, il che aiuta molto a salire di livello. Armi: mazze, asce, bastoni, armi da pugno e pugnali.",
		},
		ru = {
			q = "Какую броню носят шаманы?",
			a = "Сначала кожаную, с 40-го уровня кольчугу. Щиты можно носить с самого начала, это сильно помогает при прокачке. Оружие: булавы, топоры, посохи, кистевое оружие и кинжалы.",
		},
		pt = {
			q = "Que armadura os xamãs usam?",
			a = "Couro no começo, malha a partir do nível 40. Você pode usar escudos desde o início, o que ajuda muito ao subir de nível. Armas: maças, machados, báculos, armas de punho e adagas.",
		},
	},
	{
		id = "shaman-talents",
		de = {
			q = "Welche Talentbäume haben Schamanen?",
			a = "Elementar stärkt deine Zauber wie Blitzschlag, Verstärkung deinen Nahkampf und ist beim Leveln sehr beliebt, Wiederherstellung deine Heilung. Mit der Dualspezialisierung ab Stufe 40 kannst du zum Beispiel Verstärkung und Wiederherstellung kombinieren.",
		},
		en = {
			q = "Which talent trees do shamans have?",
			a = "Elemental strengthens spells like Lightning Bolt, Enhancement your melee and is very popular for levelling, Restoration your healing. With dual specialisation from level 40 you can, for example, combine Enhancement and Restoration.",
		},
		fr = {
			q = "Quels arbres de talents ont les chamans ?",
			a = "Élémentaire renforce les sorts comme Éclair, Amélioration votre mêlée et est très apprécié pour monter de niveau, Restauration vos soins. Avec la double spécialisation dès le niveau 40, vous pouvez par exemple combiner Amélioration et Restauration.",
		},
		es = {
			q = "¿Qué árboles de talentos tienen los chamanes?",
			a = "Elemental refuerza hechizos como Descarga de relámpagos, Mejora tu cuerpo a cuerpo y es muy popular para subir de nivel, y Restauración tu sanación. Con la especialización doble desde el nivel 40 puedes, por ejemplo, combinar Mejora y Restauración.",
		},
		it = {
			q = "Quali alberi di talenti hanno gli sciamani?",
			a = "Elementale potenzia incantesimi come Dardo di Fulmine, Potenziamento la mischia ed è molto popolare per salire di livello, Rigenerazione le cure. Con la doppia specializzazione dal livello 40 puoi, per esempio, combinare Potenziamento e Rigenerazione.",
		},
		ru = {
			q = "Какие ветки талантов есть у шамана?",
			a = "«Стихии» усиливают заклинания вроде «Молнии», «Совершенствование» — ближний бой и очень популярно для прокачки, «Исцеление» — лечение. С двойной специализацией с 40-го уровня можно, например, совмещать «Совершенствование» и «Исцеление».",
		},
		pt = {
			q = "Quais árvores de talentos os xamãs têm?",
			a = "Elemental fortalece feitiços como Raio, Aperfeiçoamento o seu corpo a corpo e é muito popular para subir de nível, Restauração as suas curas. Com a especialização dupla a partir do nível 40 você pode, por exemplo, combinar Aperfeiçoamento e Restauração.",
		},
	},
	{
		id = "shaman-mana",
		de = {
			q = "Mir geht als Schamane ständig das Mana aus.",
			a = "Wirk nicht in jedem Kampf alle Totems und Schocks; ein Blitzschlag zum Eröffnen und dann Nahkampf spart viel Mana. „Totem der Manaquelle“ hilft in längeren Kämpfen und Gruppen. Trink zwischen den Kämpfen.",
		},
		en = {
			q = "I keep running out of mana as a shaman.",
			a = "Do not cast every totem and shock in every fight; a Lightning Bolt to open and then melee saves a lot of mana. Mana Spring Totem helps in longer fights and groups. Drink between fights.",
		},
		fr = {
			q = "Je suis toujours à court de mana en chaman.",
			a = "Ne lancez pas chaque totem et chaque horion à chaque combat ; un Éclair pour ouvrir puis la mêlée économisent beaucoup de mana. Totem Fontaine de mana aide dans les combats longs et en groupe. Buvez entre les combats.",
		},
		es = {
			q = "Siempre me quedo sin maná como chamán.",
			a = "No lances todos los tótems y choques en cada combate; una Descarga de relámpagos para abrir y luego cuerpo a cuerpo ahorra mucho maná. Tótem Fuente de maná ayuda en combates largos y en grupo. Bebe entre combates.",
		},
		it = {
			q = "Da sciamano resto sempre senza mana.",
			a = "Non lanciare ogni totem e ogni scossa in ogni combattimento; un Dardo di Fulmine per aprire e poi la mischia fanno risparmiare molto mana. Totem della Fonte di Mana aiuta nei combattimenti lunghi e in gruppo. Bevi tra un combattimento e l'altro.",
		},
		ru = {
			q = "Шаману постоянно не хватает маны.",
			a = "Не применяйте все тотемы и шоки в каждом бою; «Молния» для начала, а затем ближний бой сильно экономят ману. «Тотем источника маны» помогает в долгих боях и в группе. Пейте между боями.",
		},
		pt = {
			q = "Fico sem mana o tempo todo como xamã.",
			a = "Não use todos os totens e choques em toda luta; um Raio para abrir e depois corpo a corpo economiza muita mana. Totem Fonte de Mana ajuda em lutas longas e em grupo. Beba entre as lutas.",
		},
	},
})
