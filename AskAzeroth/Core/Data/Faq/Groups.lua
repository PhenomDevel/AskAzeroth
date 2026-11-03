local _, ns = ...

-- FAQ: Groups and dungeons. See Core/Faq.lua for the format.
ns.Faq.Add("group", {
	{
		id = "group-find",
		de = {
			q = "Wie finde ich eine Gruppe für einen Dungeon?",
			a = "Nutze die Gruppensuche: Stell deine Gruppe ein oder schau, wer schon sucht; eingeladen wird von Hand. Einen automatischen Dungeonfinder gibt es in WoW: Forever nicht, und Versammlungssteine beschwören niemanden, also lauft ihr selbst zum Eingang. Fragen im Chat oder in deiner Gilde klappt auch. Sag, welchen Dungeon du machen willst und welche Rolle du spielst (Tank, Heiler oder DD), und klärt die Beuteregeln vor dem Start.",
		},
		en = {
			q = "How do I find a group for a dungeon?",
			a = "Use the group finder: list your group or look at who is already searching; invites are sent by hand. There is no automatic Dungeon Finder in WoW: Forever, and meeting stones do not summon anyone, so you walk to the entrance yourselves. Asking in chat or your guild works, too. Say which dungeon you want and which role you play (tank, healer or DPS), and agree on loot rules before you start.",
		},
		fr = {
			q = "Comment trouver un groupe pour un donjon ?",
			a = "Utilisez la recherche de groupe : inscrivez votre groupe ou regardez qui cherche déjà ; les invitations se font à la main. Il n'y a pas d'outil Donjons automatique dans WoW: Forever, et les pierres de rencontre n'invoquent personne : vous allez donc à pied jusqu'à l'entrée. Demander dans le chat ou à votre guilde marche aussi. Dites quel donjon vous voulez faire et votre rôle (tank, soigneur ou DPS), et mettez-vous d'accord sur les règles de butin avant de commencer.",
		},
		es = {
			q = "¿Cómo encuentro grupo para una mazmorra?",
			a = "Usa el buscador de grupos: anuncia tu grupo o mira quién está buscando ya; las invitaciones se hacen a mano. En WoW: Forever no hay buscador de mazmorras automático y las piedras de encuentro no invocan a nadie, así que vais andando hasta la entrada. Preguntar en el chat o en tu hermandad también funciona. Di qué mazmorra quieres hacer y tu rol (tanque, sanador o DPS), y acordad las reglas de botín antes de empezar.",
		},
		it = {
			q = "Come trovo un gruppo per una spedizione?",
			a = "Usa la ricerca gruppo: inserisci il tuo gruppo o guarda chi sta già cercando; gli inviti si mandano a mano. In WoW: Forever non c'è la ricerca automatica delle spedizioni e le pietre d'incontro non evocano nessuno, quindi raggiungete l'ingresso a piedi. Funziona anche chiedere in chat o in gilda. Di' quale spedizione vuoi fare e il tuo ruolo (tank, guaritore o DPS), e accordatevi sulle regole del bottino prima di iniziare.",
		},
		ru = {
			q = "Как найти группу в подземелье?",
			a = "Воспользуйтесь поиском группы: разместите свою группу или посмотрите, кто уже ищет; приглашают вручную. Автоматического поиска подземелий в WoW: Forever нет, а камни встреч никого не призывают, так что до входа добираетесь сами. Можно также спросить в чате или в гильдии. Скажите, в какое подземелье хотите и какая у вас роль (танк, лекарь или ДД), и до начала договоритесь о правилах добычи.",
		},
		pt = {
			q = "Como encontro grupo para uma masmorra?",
			a = "Use o localizador de grupos: anuncie seu grupo ou veja quem já está procurando; os convites são feitos manualmente. Não há localizador de masmorras automático no WoW: Forever, e as pedras de encontro não invocam ninguém, então vocês vão a pé até a entrada. Perguntar no chat ou na guilda também funciona. Diga qual masmorra quer fazer e sua função (tanque, curador ou DPS), e combinem as regras de saque antes de começar.",
		},
	},
	{
		id = "group-first-dungeon",
		de = {
			q = "Was sollte ich vor meinem ersten Dungeon wissen?",
			a = "Sag, dass du neu bist, die meisten Gruppen erklären gern. Lass den Tank die Gegner pullen (anlocken), greif sein Ziel an und halte dich aus Kämpfen raus, die die Gruppe nicht begonnen hat. Kontrolleffekte (CC) wie Verwandlung, Kopfnuss oder Untote fesseln sind wichtig, denn Dungeons passen sich nicht an deine Stufe an.",
		},
		en = {
			q = "What should I know before my first dungeon?",
			a = "Say that you are new, most groups gladly explain. Let the tank pull, attack the tank's target and stay out of fights the group has not started. Crowd control such as sheep, sap or shackle matters, because dungeons do not scale to your level.",
		},
		fr = {
			q = "Que dois-je savoir avant mon premier donjon ?",
			a = "Dites que vous êtes nouveau, la plupart des groupes expliquent volontiers. Laissez le tank attirer les ennemis, attaquez sa cible et ne vous mêlez pas aux combats que le groupe n'a pas commencés. Le contrôle des foules, comme la métamorphose, Assommer ou Entraves des morts-vivants, compte, car les donjons ne s'adaptent pas à votre niveau.",
		},
		es = {
			q = "¿Qué debo saber antes de mi primera mazmorra?",
			a = "Di que eres nuevo; la mayoría de los grupos lo explican con gusto. Deja que el tanque atraiga a los enemigos, ataca a su objetivo y no te metas en combates que el grupo no ha empezado. El control de masas, como Polimorfia, Porrazo o Grilletes de no-muerto, importa, porque las mazmorras no se adaptan a tu nivel.",
		},
		it = {
			q = "Cosa devo sapere prima della mia prima spedizione?",
			a = "Di' che sei nuovo, quasi tutti i gruppi spiegano volentieri. Lascia che sia il tank ad attirare i nemici, attacca il suo bersaglio e non entrare in scontri che il gruppo non ha iniziato. Il controllo dei nemici, come Metamorfosi, Tramortire o Incatena Non Morti, è importante, perché le spedizioni non si adattano al tuo livello.",
		},
		ru = {
			q = "Что нужно знать перед первым подземельем?",
			a = "Скажите, что вы новичок, — большинство групп охотно всё объяснят. Пусть врагов притягивает танк, атакуйте его цель и не лезьте в бои, которые группа не начинала. Контроль врагов, например «Превращение», «Ошеломление» или «Сковывание нежити», важен, потому что подземелья не подстраиваются под ваш уровень.",
		},
		pt = {
			q = "O que devo saber antes da minha primeira masmorra?",
			a = "Diga que é novo; a maioria dos grupos explica com prazer. Deixe o tanque puxar os inimigos, ataque o alvo dele e não entre em lutas que o grupo não começou. Controle de grupo, como Polimorfia, Aturdir ou Agrilhoar Morto-vivo, é importante, porque as masmorras não se ajustam ao seu nível.",
		},
	},
	{
		id = "group-loot",
		de = {
			q = "Wie wird Beute in der Gruppe verteilt?",
			a = "Bei vielen Gegenständen würfeln alle auf {Bedarf}, {Gier} oder {Passen}. Wähl {Bedarf} nur, wenn dein Charakter den Gegenstand wirklich nutzt, sonst {Gier}. Frag lieber nach, bevor du auf etwas {Bedarf} würfelst, das auch andere brauchen könnten.",
		},
		en = {
			q = "How does loot work in a group?",
			a = "For many items everyone rolls {Need}, {Greed} or {Pass}. Choose {Need} only if your character will really use the item, otherwise {Greed}. Ask before rolling {Need} on items others might want as well.",
		},
		fr = {
			q = "Comment fonctionne le butin en groupe ?",
			a = "Pour beaucoup d'objets, chacun choisit {Besoin}, {Cupidité} ou {Passer}. Ne choisissez {Besoin} que si votre personnage utilisera vraiment l'objet, sinon {Cupidité}. Demandez avant de faire {Besoin} sur des objets que d'autres pourraient aussi vouloir.",
		},
		es = {
			q = "¿Cómo funciona el botín en grupo?",
			a = "En muchos objetos todos eligen {Necesidad}, {Codicia} o {Pasar}. Elige {Necesidad} solo si tu personaje de verdad va a usar el objeto; si no, {Codicia}. Pregunta antes de tirar {Necesidad} en objetos que otros también podrían querer.",
		},
		it = {
			q = "Come funziona il bottino in gruppo?",
			a = "Per molti oggetti tutti scelgono {Necessità}, {Avidità} o {Passa}. Scegli {Necessità} solo se il tuo personaggio userà davvero l'oggetto, altrimenti {Avidità}. Chiedi prima di scegliere {Necessità} su oggetti che anche altri potrebbero volere.",
		},
		ru = {
			q = "Как делится добыча в группе?",
			a = "На многие предметы каждый выбирает {Мне это нужно}, {Не откажусь} или {Отказаться}. Выбирайте {Нужно}, только если ваш персонаж действительно будет пользоваться предметом, иначе {Не откажусь}. Спросите, прежде чем выбирать {Нужно} на то, что может пригодиться и другим.",
		},
		pt = {
			q = "Como funciona o saque em grupo?",
			a = "Em muitos itens todos escolhem {Necessidade}, {Ganância} ou {Passar}. Escolha {Necessidade} só se seu personagem realmente vai usar o item; senão, {Ganância}. Pergunte antes de rolar {Necessidade} em itens que outros também podem querer.",
		},
	},
	{
		id = "group-invite",
		de = {
			q = "Wie lade ich jemanden in meine Gruppe ein?",
			a = "Klick mit der rechten Maustaste auf den Namen im Chat oder auf das Porträt und wähl {Einladen}. Danach erscheinen links die Gruppenfenster.",
		},
		en = {
			q = "How do I invite someone to my group?",
			a = "Right-click their name in the chat or their portrait and choose {Invite}. Your party frames then appear on the left.",
		},
		fr = {
			q = "Comment inviter quelqu'un dans mon groupe ?",
			a = "Clic droit sur son nom dans le chat ou sur son portrait, puis {Inviter}. Les cadres du groupe apparaissent alors à gauche.",
		},
		es = {
			q = "¿Cómo invito a alguien a mi grupo?",
			a = "Clic derecho en su nombre en el chat o en su retrato y elige {Invitar}. Los marcos del grupo aparecen entonces a la izquierda.",
		},
		it = {
			q = "Come invito qualcuno nel gruppo?",
			a = "Clic destro sul suo nome in chat o sul suo ritratto e scegli {Invita}. I riquadri del gruppo compaiono poi a sinistra.",
		},
		ru = {
			q = "Как пригласить кого-то в группу?",
			a = "Щёлкните правой кнопкой по имени в чате или по портрету и выберите {Пригласить}. Рамки группы появятся слева.",
		},
		pt = {
			q = "Como convido alguém para o grupo?",
			a = "Clique com o botão direito no nome no chat ou no retrato e escolha {Convidar}. Os quadros do grupo aparecem então à esquerda.",
		},
	},
	{
		id = "group-raid",
		de = {
			q = "Was ist ein Schlachtzug?",
			a = "Ein Schlachtzug (Raid) ist ein Dungeon für eine große Gruppe auf Höchststufe. WoW: Forever hat Schlachtzüge für 10, 20 und 40 Spieler. Die meisten gehen mit ihrer Gilde raiden.",
		},
		en = {
			q = "What is a raid?",
			a = "A raid is a dungeon for a large group at the maximum level. WoW: Forever has raids for 10, 20 and 40 players. Most players raid with their guild.",
		},
		fr = {
			q = "Qu'est-ce qu'un raid ?",
			a = "Un raid est un donjon pour un grand groupe au niveau maximum. WoW: Forever propose des raids pour 10, 20 et 40 joueurs. La plupart des joueurs font les raids avec leur guilde.",
		},
		es = {
			q = "¿Qué es una banda?",
			a = "Una banda es una mazmorra para un grupo grande al nivel máximo. WoW: Forever tiene bandas de 10, 20 y 40 jugadores. La mayoría juega las bandas con su hermandad.",
		},
		it = {
			q = "Cos'è un'incursione?",
			a = "Un'incursione è una spedizione per un gruppo numeroso al livello massimo. WoW: Forever ha incursioni da 10, 20 e 40 giocatori. La maggior parte dei giocatori le affronta con la propria gilda.",
		},
		ru = {
			q = "Что такое рейд?",
			a = "Рейд — подземелье для большой группы на максимальном уровне. В WoW: Forever есть рейды на 10, 20 и 40 игроков. Большинство ходит в рейды со своей гильдией.",
		},
		pt = {
			q = "O que é uma raide?",
			a = "Uma raide é uma masmorra para um grupo grande no nível máximo. O WoW: Forever tem raides para 10, 20 e 40 jogadores. A maioria faz raides com a própria guilda.",
		},
	},
	{
		id = "group-finder-playstyle",
		de = {
			q = "Was bedeuten die Spielstile in der Gruppensuche?",
			a = "Viele Gruppen schreiben dazu, wie sie spielen wollen, etwa zum Lernen, entspannt oder schnell und ehrgeizig. Als Anfänger such dir eine Gruppe zum Lernen oder eine entspannte; dort ist niemand sauer, wenn etwas schiefgeht.",
		},
		en = {
			q = "What do the playstyles in the group finder mean?",
			a = "Many groups say how they want to play, for example to learn, relaxed, or fast and competitive. As a beginner, look for a learning or relaxed group; nobody minds there if something goes wrong.",
		},
		fr = {
			q = "Que signifient les styles de jeu dans la recherche de groupe ?",
			a = "Beaucoup de groupes indiquent comment ils veulent jouer, par exemple pour apprendre, détendu, ou rapide et compétitif. Débutant, cherchez un groupe pour apprendre ou détendu ; personne n'y râle si quelque chose tourne mal.",
		},
		es = {
			q = "¿Qué significan los estilos de juego del buscador de grupos?",
			a = "Muchos grupos indican cómo quieren jugar, por ejemplo para aprender, con calma, o rápido y competitivo. Como principiante, busca un grupo para aprender o uno tranquilo; ahí nadie se enfada si algo sale mal.",
		},
		it = {
			q = "Cosa indicano gli stili di gioco nella ricerca gruppo?",
			a = "Molti gruppi indicano come vogliono giocare, per esempio per imparare, con calma, oppure veloci e competitivi. Da principiante cerca un gruppo per imparare o uno tranquillo; lì nessuno si arrabbia se qualcosa va storto.",
		},
		ru = {
			q = "Что означают стили игры в поиске группы?",
			a = "Многие группы пишут, как хотят играть, например для обучения, спокойно или быстро и на результат. Новичку лучше искать группу для обучения или спокойную; там никто не злится, если что-то пошло не так.",
		},
		pt = {
			q = "O que significam os estilos de jogo no localizador de grupos?",
			a = "Muitos grupos dizem como querem jogar, por exemplo para aprender, com calma, ou rápido e competitivo. Como iniciante, procure um grupo para aprender ou um tranquilo; lá ninguém se irrita se algo der errado.",
		},
	},
	{
		id = "group-finder-list",
		de = {
			q = "Wie stelle ich selbst eine Gruppe in die Gruppensuche?",
			a = "Öffne die Gruppensuche, wähl den Dungeon und beschreib kurz, was du suchst, zum Beispiel „Heiler und Tank gesucht“. Bewerbungen nimmst du an, indem du die Spieler einlädst. Als Anführer wartest du nicht auf andere, das spart viel Zeit.",
		},
		en = {
			q = "How do I list my own group in the group finder?",
			a = "Open the group finder, choose the dungeon and briefly describe what you need, for example \"looking for healer and tank\". Accept applicants by inviting them. As the leader you are not waiting on anyone, which saves a lot of time.",
		},
		fr = {
			q = "Comment inscrire mon propre groupe dans la recherche de groupe ?",
			a = "Ouvrez la recherche de groupe, choisissez le donjon et décrivez brièvement ce qu'il vous faut, par exemple « cherche soigneur et tank ». Acceptez les candidats en les invitant. En tant que chef, vous n'attendez personne, ce qui fait gagner beaucoup de temps.",
		},
		es = {
			q = "¿Cómo anuncio mi propio grupo en el buscador?",
			a = "Abre el buscador de grupos, elige la mazmorra y describe brevemente lo que buscas, por ejemplo «se busca sanador y tanque». Acepta a los solicitantes invitándolos. Como líder no esperas a nadie, lo que ahorra mucho tiempo.",
		},
		it = {
			q = "Come inserisco il mio gruppo nella ricerca gruppo?",
			a = "Apri la ricerca gruppo, scegli la spedizione e descrivi brevemente cosa ti serve, per esempio «cerco guaritore e tank». Accetta i candidati invitandoli. Da capogruppo non aspetti nessuno, e risparmi molto tempo.",
		},
		ru = {
			q = "Как разместить свою группу в поиске группы?",
			a = "Откройте поиск группы, выберите подземелье и кратко опишите, кто нужен, например «ищем лекаря и танка». Принимайте заявки, приглашая игроков. Как лидер вы ни от кого не ждёте приглашения, и это экономит много времени.",
		},
		pt = {
			q = "Como anuncio meu próprio grupo no localizador?",
			a = "Abra o localizador de grupos, escolha a masmorra e descreva rápido o que precisa, por exemplo \"procurando curador e tanque\". Aceite candidatos convidando-os. Como líder você não espera ninguém, o que poupa muito tempo.",
		},
	},
	{
		id = "group-size",
		de = {
			q = "Wie viele Spieler braucht ein Dungeon?",
			a = "Fünf: in der Regel ein Tank, ein Heiler und drei Schadensklassen. Achte darauf, dass jemand Gegner kontrollieren kann, etwa mit Verwandlung oder Kopfnuss, das macht vieles leichter.",
		},
		en = {
			q = "How many players does a dungeon need?",
			a = "Five: usually one tank, one healer and three damage dealers. Make sure someone can control enemies, for example with Polymorph or Sap, which makes a lot easier.",
		},
		fr = {
			q = "Combien de joueurs faut-il pour un donjon ?",
			a = "Cinq : généralement un tank, un soigneur et trois DPS. Veillez à ce que quelqu'un puisse contrôler des ennemis, par exemple avec la Métamorphose ou Assommer, cela facilite beaucoup de choses.",
		},
		es = {
			q = "¿Cuántos jugadores hacen falta para una mazmorra?",
			a = "Cinco: normalmente un tanque, un sanador y tres de daño. Asegúrate de que alguien pueda controlar enemigos, por ejemplo con Polimorfia o Porrazo, eso facilita mucho las cosas.",
		},
		it = {
			q = "Quanti giocatori servono per una spedizione?",
			a = "Cinque: di solito un tank, un guaritore e tre che fanno danni. Assicurati che qualcuno possa controllare i nemici, per esempio con Metamorfosi o Tramortire, rende molto più facile.",
		},
		ru = {
			q = "Сколько игроков нужно для подземелья?",
			a = "Пятеро: обычно танк, лекарь и три бойца. Хорошо, если кто-то умеет контролировать врагов, например «Превращением» или «Ошеломлением», — это многое упрощает.",
		},
		pt = {
			q = "Quantos jogadores uma masmorra precisa?",
			a = "Cinco: normalmente um tanque, um curador e três de dano. Garanta que alguém consiga controlar inimigos, por exemplo com Polimorfia ou Aturdir, o que facilita muito.",
		},
	},
	{
		id = "group-dungeon-xp",
		de = {
			q = "Lohnen sich Dungeons zum Leveln?",
			a = "Ja, vor allem wegen der Dungeonquests: Sie geben viel Erfahrung, und dazu kommt gute Beute. Sammle die Quests ein, bevor ihr reingeht, und teilt sie in der Gruppe.",
		},
		en = {
			q = "Are dungeons worth it for levelling?",
			a = "Yes, mainly for the dungeon quests: they give a lot of experience, and there is good loot on top. Collect the quests before you go in and share them with the group.",
		},
		fr = {
			q = "Les donjons valent-ils le coup pour monter de niveau ?",
			a = "Oui, surtout pour les quêtes de donjon : elles rapportent beaucoup d'expérience, et il y a du bon butin en plus. Récupérez les quêtes avant d'entrer et partagez-les avec le groupe.",
		},
		es = {
			q = "¿Merecen la pena las mazmorras para subir de nivel?",
			a = "Sí, sobre todo por las misiones de mazmorra: dan mucha experiencia y además hay buen botín. Recoge las misiones antes de entrar y compártelas con el grupo.",
		},
		it = {
			q = "Le spedizioni conviene farle per salire di livello?",
			a = "Sì, soprattutto per le missioni delle spedizioni: danno molta esperienza e in più c'è buon bottino. Raccogli le missioni prima di entrare e condividile con il gruppo.",
		},
		ru = {
			q = "Стоит ли ходить в подземелья ради прокачки?",
			a = "Да, прежде всего ради заданий подземелий: они дают много опыта, а сверху ещё хорошая добыча. Соберите задания до входа и поделитесь ими с группой.",
		},
		pt = {
			q = "Masmorras valem a pena para subir de nível?",
			a = "Sim, principalmente pelas missões de masmorra: elas dão muita experiência e ainda há bom saque. Pegue as missões antes de entrar e compartilhe com o grupo.",
		},
	},
	{
		id = "group-entrance",
		de = {
			q = "Wo ist der Eingang zum Dungeon?",
			a = "Dungeons haben einen leuchtenden Eingang irgendwo in der Welt, oft in einer Höhle oder Ruine. Die Weltkarte zeigt sie meist mit einem eigenen Symbol. Frag in der Gruppe, wer den Weg kennt, oder hier.",
		},
		en = {
			q = "Where is the dungeon entrance?",
			a = "Dungeons have a glowing entrance somewhere in the world, often in a cave or ruin. The world map usually shows them with their own icon. Ask your group who knows the way, or ask here.",
		},
		fr = {
			q = "Où est l'entrée du donjon ?",
			a = "Les donjons ont une entrée lumineuse quelque part dans le monde, souvent dans une grotte ou une ruine. La carte du monde les montre généralement avec leur propre icône. Demandez à votre groupe qui connaît le chemin, ou demandez ici.",
		},
		es = {
			q = "¿Dónde está la entrada de la mazmorra?",
			a = "Las mazmorras tienen una entrada brillante en algún lugar del mundo, a menudo en una cueva o unas ruinas. El mapa del mundo suele mostrarlas con su propio icono. Pregunta en el grupo quién conoce el camino, o pregunta aquí.",
		},
		it = {
			q = "Dov'è l'ingresso della spedizione?",
			a = "Le spedizioni hanno un ingresso luminoso da qualche parte nel mondo, spesso in una grotta o in rovine. La mappa del mondo di solito le mostra con un'icona apposita. Chiedi al gruppo chi conosce la strada, o chiedi qui.",
		},
		ru = {
			q = "Где вход в подземелье?",
			a = "У подземелий есть светящийся вход где-то в мире, часто в пещере или руинах. На карте мира они обычно отмечены своим значком. Спросите в группе, кто знает дорогу, или спросите здесь.",
		},
		pt = {
			q = "Onde fica a entrada da masmorra?",
			a = "As masmorras têm uma entrada brilhante em algum lugar do mundo, muitas vezes numa caverna ou ruína. O mapa-múndi costuma mostrá-las com um ícone próprio. Pergunte no grupo quem sabe o caminho, ou pergunte aqui.",
		},
	},
	{
		id = "group-markers",
		de = {
			q = "Was bedeuten Totenkopf, Kreuz und Mond über Gegnern?",
			a = "Das sind Zielmarkierungen, die Tank oder Anführer setzen. Meist heißt Totenkopf „zuerst töten“, Kreuz „danach“ und Mond oder ein anderes Symbol „kontrollieren“ (etwa Verwandlung). Fragt vor dem Kampf kurz, was gilt.",
		},
		en = {
			q = "What do the skull, cross and moon above enemies mean?",
			a = "Those are target markers set by the tank or leader. Usually skull means kill first, cross next, and moon or another symbol means crowd control (for example Polymorph). Agree on it briefly before the fight.",
		},
		fr = {
			q = "Que signifient la tête de mort, la croix et la lune au-dessus des ennemis ?",
			a = "Ce sont des marqueurs de cible posés par le tank ou le chef. En général, la tête de mort signifie à tuer en premier, la croix ensuite, et la lune ou un autre symbole à contrôler (par exemple avec la Métamorphose). Mettez-vous d'accord avant le combat.",
		},
		es = {
			q = "¿Qué significan la calavera, la cruz y la luna sobre los enemigos?",
			a = "Son marcas de objetivo que pone el tanque o el líder. Normalmente la calavera significa matar primero, la cruz después, y la luna u otro símbolo, controlar (por ejemplo con Polimorfia). Acordadlo antes del combate.",
		},
		it = {
			q = "Cosa indicano teschio, croce e luna sopra i nemici?",
			a = "Sono segnalini bersaglio messi dal tank o dal capogruppo. Di solito il teschio significa uccidere per primo, la croce dopo, e la luna o un altro simbolo controllare (per esempio con Metamorfosi). Mettetevi d'accordo prima dello scontro.",
		},
		ru = {
			q = "Что означают череп, крест и луна над врагами?",
			a = "Это метки целей, которые ставит танк или лидер. Обычно череп — убить первым, крест — следующим, а луна или другой знак — контролировать (например, «Превращением»). Коротко договоритесь об этом перед боем.",
		},
		pt = {
			q = "O que significam a caveira, o X e a lua acima dos inimigos?",
			a = "São marcadores de alvo colocados pelo tanque ou líder. Normalmente caveira significa matar primeiro, o X depois, e a lua ou outro símbolo significa controlar (por exemplo com Polimorfia). Combinem rápido antes da luta.",
		},
	},
	{
		id = "group-wipe",
		de = {
			q = "Die ganze Gruppe ist gestorben. Was nun?",
			a = "Das nennt man Wipe, und es passiert jedem. Lasst alle eure Geister frei und lauft zum Eingang. Wer wiederbeleben kann, belebt zuerst die anderen Heiler und Wiederbeleber. Besprecht kurz, was schiefging, bevor ihr den nächsten Versuch startet.",
		},
		en = {
			q = "The whole group died. What now?",
			a = "It happens to everyone. Everyone releases their spirit and runs to the entrance. Whoever can resurrect first brings back other healers and resurrecters. Talk briefly about what went wrong before trying again.",
		},
		fr = {
			q = "Tout le groupe est mort. Et maintenant ?",
			a = "Ça arrive à tout le monde. Chacun libère son esprit et court jusqu'à l'entrée. Celui qui peut ressusciter ramène d'abord les autres soigneurs et ceux qui peuvent ressusciter. Discutez brièvement de ce qui n'a pas marché avant de réessayer.",
		},
		es = {
			q = "Ha muerto todo el grupo. ¿Y ahora?",
			a = "Le pasa a todo el mundo. Todos liberan su espíritu y corren a la entrada. Quien pueda resucitar trae primero a los otros sanadores y a quienes resucitan. Hablad brevemente de qué falló antes de intentarlo otra vez.",
		},
		it = {
			q = "È morto tutto il gruppo. E adesso?",
			a = "Capita a tutti. Tutti liberano lo spirito e corrono all'ingresso. Chi può resuscitare riporta in vita prima gli altri guaritori e chi sa resuscitare. Parlate brevemente di cosa è andato storto prima di riprovare.",
		},
		ru = {
			q = "Погибла вся группа. Что теперь?",
			a = "Такое бывает со всеми. Все отпускают дух и бегут ко входу. Кто умеет воскрешать, сначала поднимает других лекарей и воскрешающих. Коротко обсудите, что пошло не так, прежде чем пробовать снова.",
		},
		pt = {
			q = "O grupo inteiro morreu. E agora?",
			a = "Acontece com todo mundo. Todos liberam o espírito e correm até a entrada. Quem pode ressuscitar traz primeiro os outros curadores e quem ressuscita. Conversem rápido sobre o que deu errado antes de tentar de novo.",
		},
	},
	{
		id = "group-leave",
		de = {
			q = "Wie verlasse ich eine Gruppe?",
			a = "Rechtsklick auf dein eigenes Porträt und {Gruppe verlassen}. Sag vorher kurz Bescheid, wenn du gehst, besonders mitten im Dungeon.",
		},
		en = {
			q = "How do I leave a group?",
			a = "Right-click your own portrait and choose {Leave Group}. Let the others know before you go, especially in the middle of a dungeon.",
		},
		fr = {
			q = "Comment quitter un groupe ?",
			a = "Clic droit sur votre propre portrait puis {Quitter le groupe}. Prévenez les autres avant de partir, surtout au milieu d'un donjon.",
		},
		es = {
			q = "¿Cómo dejo un grupo?",
			a = "Clic derecho en tu propio retrato y elige {Abandonar grupo}. Avisa a los demás antes de irte, sobre todo en mitad de una mazmorra.",
		},
		it = {
			q = "Come lascio un gruppo?",
			a = "Clic destro sul tuo ritratto e scegli {Lascia il gruppo}. Avvisa gli altri prima di andartene, soprattutto a metà di una spedizione.",
		},
		ru = {
			q = "Как покинуть группу?",
			a = "Щёлкните правой кнопкой по своему портрету и выберите {Покинуть группу}. Предупредите остальных, прежде чем уйти, особенно посреди подземелья.",
		},
		pt = {
			q = "Como saio de um grupo?",
			a = "Clique com o botão direito no seu próprio retrato e escolha {Sair do grupo}. Avise os outros antes de sair, principalmente no meio de uma masmorra.",
		},
	},
	{
		id = "group-loot-method",
		de = {
			q = "Wer legt die Beuteregeln fest?",
			a = "Der Gruppenanführer, über das Menü seines Porträts. Üblich ist, dass bei guten Gegenständen gewürfelt wird und einfache automatisch verteilt werden. Seid ihr unsicher, besprecht es vor dem ersten Kampf.",
		},
		en = {
			q = "Who sets the loot rules?",
			a = "The group leader, from their portrait menu. Usually players roll on good items and simple ones are handed out automatically. If you are unsure, agree on it before the first fight.",
		},
		fr = {
			q = "Qui fixe les règles de butin ?",
			a = "Le chef du groupe, depuis le menu de son portrait. En général, on lance les dés pour les bons objets et les objets simples sont répartis automatiquement. En cas de doute, mettez-vous d'accord avant le premier combat.",
		},
		es = {
			q = "¿Quién decide las reglas de botín?",
			a = "El líder del grupo, desde el menú de su retrato. Lo normal es tirar dados por los objetos buenos y repartir automáticamente los sencillos. Si no estáis seguros, acordadlo antes del primer combate.",
		},
		it = {
			q = "Chi decide le regole del bottino?",
			a = "Il capogruppo, dal menu del suo ritratto. Di solito si tira per gli oggetti buoni e quelli semplici vengono assegnati automaticamente. Se non siete sicuri, accordatevi prima del primo scontro.",
		},
		ru = {
			q = "Кто устанавливает правила добычи?",
			a = "Лидер группы, через меню своего портрета. Обычно на хорошие предметы бросают кости, а простые раздаются автоматически. Если не уверены, договоритесь перед первым боем.",
		},
		pt = {
			q = "Quem define as regras de saque?",
			a = "O líder do grupo, pelo menu do retrato dele. Normalmente se rola dado pelos itens bons e os simples são distribuídos automaticamente. Se não tiverem certeza, combinem antes da primeira luta.",
		},
	},
	{
		id = "group-lockout",
		de = {
			q = "Kann ich einen Dungeon gleich noch einmal machen?",
			a = "Dungeons lassen sich zurücksetzen, sodass alle Gegner wieder da sind; das macht der Anführer, wenn alle draußen sind. Schlachtzüge haben dagegen eine Sperre und gehen nur einmal pro Zurücksetzungszeitraum.",
		},
		en = {
			q = "Can I run a dungeon again right away?",
			a = "Dungeons can be reset so all enemies are back; the leader does it when everyone is outside. Raids, on the other hand, have a lockout and can only be done once per reset period.",
		},
		fr = {
			q = "Puis-je refaire un donjon tout de suite ?",
			a = "Les donjons peuvent être réinitialisés pour que tous les ennemis reviennent ; c'est le chef qui le fait quand tout le monde est sorti. Les raids, en revanche, ont un verrouillage et ne se font qu'une fois par période de réinitialisation.",
		},
		es = {
			q = "¿Puedo repetir una mazmorra enseguida?",
			a = "Las mazmorras se pueden reiniciar para que vuelvan todos los enemigos; lo hace el líder cuando todos están fuera. Las bandas, en cambio, tienen un bloqueo y solo se pueden hacer una vez por periodo de reinicio.",
		},
		it = {
			q = "Posso rifare subito una spedizione?",
			a = "Le spedizioni si possono azzerare così tornano tutti i nemici; lo fa il capogruppo quando tutti sono fuori. Le incursioni invece hanno un blocco e si possono fare solo una volta per periodo di azzeramento.",
		},
		ru = {
			q = "Можно ли сразу пройти подземелье ещё раз?",
			a = "Подземелья можно сбросить, чтобы все враги вернулись; это делает лидер, когда все снаружи. А у рейдов есть сохранение, и их можно проходить только раз за период сброса.",
		},
		pt = {
			q = "Posso refazer uma masmorra logo em seguida?",
			a = "As masmorras podem ser reiniciadas para todos os inimigos voltarem; o líder faz isso quando todos estão fora. Já as raides têm um bloqueio e só podem ser feitas uma vez por período de reinício.",
		},
	},
	{
		id = "group-raid-forever",
		de = {
			q = "Welche Schlachtzüge gibt es in WoW: Forever?",
			a = "Neben einem überarbeiteten Onyxias Hort für 40 Spieler hat WoW: Forever eigene Schlachtzüge, etwa Barrow Deeps für 10 und den Hyjalgipfel für 20 Spieler. Weltbuffs wirken in Schlachtzügen nicht. Für Schlachtzüge brauchst du die Höchststufe und meist eine Gilde.",
		},
		en = {
			q = "Which raids does WoW: Forever have?",
			a = "Besides a revamped Onyxia's Lair for 40 players, WoW: Forever has its own raids, for example Barrow Deeps for 10 and Hyjal Summit for 20 players. World buffs do not work inside raids. For raids you need the maximum level and usually a guild.",
		},
		fr = {
			q = "Quels raids y a-t-il dans WoW: Forever ?",
			a = "En plus d'un Repaire d'Onyxia remanié pour 40 joueurs, WoW: Forever a ses propres raids, par exemple Barrow Deeps pour 10 joueurs et le Sommet d'Hyjal pour 20. Les améliorations mondiales ne fonctionnent pas dans les raids. Pour les raids, il faut le niveau maximum et généralement une guilde.",
		},
		es = {
			q = "¿Qué bandas hay en WoW: Forever?",
			a = "Además de una Guarida de Onyxia renovada para 40 jugadores, WoW: Forever tiene sus propias bandas, por ejemplo Barrow Deeps para 10 y la Cima Hyjal para 20 jugadores. Los beneficios de mundo no funcionan dentro de las bandas. Para las bandas necesitas el nivel máximo y normalmente una hermandad.",
		},
		it = {
			q = "Quali incursioni ci sono in WoW: Forever?",
			a = "Oltre a una Tana di Onyxia rinnovata per 40 giocatori, WoW: Forever ha incursioni proprie, per esempio Barrow Deeps per 10 e la Vetta di Hyjal per 20 giocatori. I benefici del mondo non funzionano nelle incursioni. Per le incursioni servono il livello massimo e di solito una gilda.",
		},
		ru = {
			q = "Какие рейды есть в WoW: Forever?",
			a = "Кроме обновлённого Логова Ониксии на 40 игроков, в WoW: Forever есть собственные рейды, например Barrow Deeps на 10 и Вершина Хиджала на 20 игроков. Мировые усиления в рейдах не действуют. Для рейдов нужен максимальный уровень и обычно гильдия.",
		},
		pt = {
			q = "Quais raides existem no WoW: Forever?",
			a = "Além de um Covil da Onyxia renovado para 40 jogadores, o WoW: Forever tem raides próprias, por exemplo Barrow Deeps para 10 e o Pico Hyjal para 20 jogadores. Bônus de mundo não funcionam dentro das raides. Para raides você precisa do nível máximo e geralmente de uma guilda.",
		},
	},
	{
		id = "group-raid-convert",
		de = {
			q = "Wie mache ich aus meiner Gruppe einen Schlachtzug?",
			a = "Als Anführer über das Menü deines Porträts {In Schlachtzug umwandeln}. Danach können mehr als fünf Spieler beitreten. In einer Schlachtzugsgruppe zählen viele normale Quests nicht mehr.",
		},
		en = {
			q = "How do I turn my group into a raid?",
			a = "As leader, choose {Convert to Raid} from your portrait menu. Then more than five players can join. In a raid group many normal quests no longer count.",
		},
		fr = {
			q = "Comment transformer mon groupe en raid ?",
			a = "En tant que chef, choisissez {Convertir en raid} dans le menu de votre portrait. Plus de cinq joueurs peuvent alors rejoindre. Dans un groupe de raid, beaucoup de quêtes normales ne comptent plus.",
		},
		es = {
			q = "¿Cómo convierto mi grupo en banda?",
			a = "Como líder, elige {Convertir en banda} en el menú de tu retrato. Entonces pueden unirse más de cinco jugadores. En un grupo de banda muchas misiones normales dejan de contar.",
		},
		it = {
			q = "Come trasformo il gruppo in un'incursione?",
			a = "Da capogruppo scegli {Converti in incursione} dal menu del tuo ritratto. Poi possono unirsi più di cinque giocatori. In un gruppo d'incursione molte missioni normali non contano più.",
		},
		ru = {
			q = "Как превратить группу в рейд?",
			a = "Как лидер выберите {Преобразовать в рейд} в меню своего портрета. Тогда смогут присоединиться больше пяти игроков. В рейдовой группе многие обычные задания не засчитываются.",
		},
		pt = {
			q = "Como transformo meu grupo em raide?",
			a = "Como líder, escolha {Converter em raide} no menu do seu retrato. Aí mais de cinco jogadores podem entrar. Num grupo de raide muitas missões normais deixam de contar.",
		},
	},
	{
		id = "group-new-player",
		de = {
			q = "Ich bin neu und habe Angst, Fehler zu machen.",
			a = "Sag zu Beginn, dass du neu bist; die meisten Spieler helfen gern. Halte dich an den Tank, greif sein Ziel an und frag, wenn du etwas nicht verstehst. Fehler gehören dazu, und mit AskAzeroth kannst du jederzeit nachfragen.",
		},
		en = {
			q = "I am new and afraid of making mistakes.",
			a = "Say at the start that you are new; most players gladly help. Stick with the tank, attack their target and ask when something is unclear. Mistakes are part of it, and with AskAzeroth you can ask any time.",
		},
		fr = {
			q = "Je suis nouveau et j'ai peur de faire des erreurs.",
			a = "Dites au début que vous êtes nouveau ; la plupart des joueurs aident volontiers. Restez près du tank, attaquez sa cible et demandez quand quelque chose n'est pas clair. Les erreurs font partie du jeu, et avec AskAzeroth vous pouvez poser des questions à tout moment.",
		},
		es = {
			q = "Soy nuevo y me da miedo cometer errores.",
			a = "Di al principio que eres nuevo; la mayoría de los jugadores ayudan con gusto. Quédate cerca del tanque, ataca a su objetivo y pregunta si algo no está claro. Los errores forman parte del juego, y con AskAzeroth puedes preguntar en cualquier momento.",
		},
		it = {
			q = "Sono nuovo e ho paura di sbagliare.",
			a = "Di' all'inizio che sei nuovo; la maggior parte dei giocatori aiuta volentieri. Resta vicino al tank, attacca il suo bersaglio e chiedi quando qualcosa non è chiaro. Gli errori fanno parte del gioco, e con AskAzeroth puoi chiedere in qualsiasi momento.",
		},
		ru = {
			q = "Я новичок и боюсь ошибиться.",
			a = "Скажите в начале, что вы новичок; большинство игроков охотно помогут. Держитесь рядом с танком, атакуйте его цель и спрашивайте, если что-то непонятно. Ошибки — часть игры, а в AskAzeroth можно спросить в любой момент.",
		},
		pt = {
			q = "Sou novo e tenho medo de errar.",
			a = "Diga no começo que é novo; a maioria dos jogadores ajuda com prazer. Fique perto do tanque, ataque o alvo dele e pergunte quando algo não estiver claro. Erros fazem parte, e com o AskAzeroth você pode perguntar a qualquer momento.",
		},
	},
})
