local _, ns = ...

-- FAQ: Quests. See Core/Faq.lua for the format.
ns.Faq.Add("quest", {
	{
		id = "quest-symbols",
		de = {
			q = "Was bedeuten die Symbole über den Figuren?",
			a = "Ein gelbes Ausrufezeichen ist eine Quest zum Annehmen, ein gelbes Fragezeichen eine Quest zum Abgeben. Ein graues Ausrufezeichen heißt, die Quest ist noch zu schwer für dich, ein graues Fragezeichen eine angenommene, aber noch nicht erledigte Quest.",
		},
		en = {
			q = "What do the symbols above characters mean?",
			a = "A yellow exclamation mark is a quest you can accept, a yellow question mark one you can turn in. A grey exclamation mark means the quest is still too hard for you, a grey question mark a quest you accepted but have not finished yet.",
		},
		fr = {
			q = "Que signifient les symboles au-dessus des personnages ?",
			a = "Un point d'exclamation jaune indique une quête à accepter, un point d'interrogation jaune une quête à rendre. Un point d'exclamation gris signifie que la quête est encore trop difficile pour vous, un point d'interrogation gris une quête acceptée mais pas encore terminée.",
		},
		es = {
			q = "¿Qué significan los símbolos sobre los personajes?",
			a = "Un signo de exclamación amarillo es una misión que puedes aceptar; un signo de interrogación amarillo, una que puedes entregar. Un signo de exclamación gris indica que la misión aún es demasiado difícil para ti, y uno de interrogación gris, una misión aceptada pero sin terminar.",
		},
		it = {
			q = "Cosa significano i simboli sopra i personaggi?",
			a = "Un punto esclamativo giallo è una missione che puoi accettare, un punto interrogativo giallo una che puoi consegnare. Un punto esclamativo grigio indica una missione ancora troppo difficile per te, un punto interrogativo grigio una missione accettata ma non ancora completata.",
		},
		ru = {
			q = "Что означают значки над персонажами?",
			a = "Жёлтый восклицательный знак — задание, которое можно взять, жёлтый вопросительный — задание, которое можно сдать. Серый восклицательный знак значит, что задание пока слишком сложное, серый вопросительный — задание взято, но ещё не выполнено.",
		},
		pt = {
			q = "O que significam os símbolos acima dos personagens?",
			a = "Um ponto de exclamação amarelo é uma missão que você pode aceitar; um ponto de interrogação amarelo, uma que pode entregar. Exclamação cinza indica que a missão ainda é difícil demais para você, e interrogação cinza, uma missão aceita mas não concluída.",
		},
	},
	{
		id = "quest-colors",
		de = {
			q = "Was bedeutet die Farbe eines Questnamens?",
			a = "Sie vergleicht die Stufe der Quest mit deiner. Grau liegt weit unter dir und bringt kaum Erfahrung, Grün ist leicht, Gelb passt zu deiner Stufe, Orange ist schwer und Rot sehr gefährlich. Rote Quests machst du am besten in einer Gruppe oder ein paar Stufen später.",
		},
		en = {
			q = "What does the colour of a quest name mean?",
			a = "It compares the quest level with yours. Grey is far below you and gives little experience, green is easy, yellow fits your level, orange is hard and red is very dangerous. Red quests are best done with a group or a few levels later.",
		},
		fr = {
			q = "Que signifie la couleur du nom d'une quête ?",
			a = "Elle compare le niveau de la quête au vôtre. Gris est bien en dessous et rapporte peu d'expérience, vert est facile, jaune correspond à votre niveau, orange est difficile et rouge très dangereux. Les quêtes rouges se font de préférence en groupe ou quelques niveaux plus tard.",
		},
		es = {
			q = "¿Qué significa el color del nombre de una misión?",
			a = "Compara el nivel de la misión con el tuyo. Gris está muy por debajo y da poca experiencia, verde es fácil, amarillo es de tu nivel, naranja es difícil y rojo muy peligroso. Las misiones rojas mejor hacerlas en grupo o unos niveles más tarde.",
		},
		it = {
			q = "Cosa indica il colore del nome di una missione?",
			a = "Confronta il livello della missione con il tuo. Grigio è molto sotto e dà poca esperienza, verde è facile, giallo è adatto al tuo livello, arancione è difficile e rosso molto pericoloso. Le missioni rosse conviene farle in gruppo o qualche livello più avanti.",
		},
		ru = {
			q = "Что означает цвет названия задания?",
			a = "Он сравнивает уровень задания с вашим. Серый — намного ниже, опыта мало, зелёный — легко, жёлтый — по уровню, оранжевый — сложно, красный — очень опасно. Красные задания лучше делать в группе или на несколько уровней позже.",
		},
		pt = {
			q = "O que significa a cor do nome de uma missão?",
			a = "Ela compara o nível da missão com o seu. Cinza está bem abaixo e dá pouca experiência, verde é fácil, amarelo é do seu nível, laranja é difícil e vermelho é muito perigoso. Missões vermelhas é melhor fazer em grupo ou alguns níveis depois.",
		},
	},
	{
		id = "quest-find-objective",
		de = {
			q = "Ich finde ein Questziel nicht. Was kann ich tun?",
			a = "Lies den Questtext im Questlog (Taste [L]) noch einmal: Meist steht dort eine Richtung oder ein Ort. Schau auf die Weltkarte (Taste [M]) und die Gebietsnamen. Wenn du weiter feststeckst, frag hier und nenne Quest und Gebiet.",
		},
		en = {
			q = "I cannot find a quest objective. What can I do?",
			a = "Read the quest text in the quest log ([L] key) again: it usually names a direction or a place. Look at the world map ([M] key) and the zone names. If you are still stuck, ask here and name the quest and the zone.",
		},
		fr = {
			q = "Je ne trouve pas un objectif de quête. Que faire ?",
			a = "Relisez le texte de la quête dans le journal de quêtes (touche [L]) : il indique souvent une direction ou un lieu. Regardez la carte du monde (touche [M]) et le nom des zones. Si vous êtes toujours bloqué, demandez ici en indiquant la quête et la zone.",
		},
		es = {
			q = "No encuentro un objetivo de misión. ¿Qué hago?",
			a = "Vuelve a leer el texto de la misión en el registro de misiones (tecla [L]): suele indicar una dirección o un lugar. Mira el mapa del mundo (tecla [M]) y los nombres de las zonas. Si sigues atascado, pregunta aquí indicando la misión y la zona.",
		},
		it = {
			q = "Non trovo un obiettivo della missione. Cosa faccio?",
			a = "Rileggi il testo della missione nel registro missioni (tasto [L]): di solito indica una direzione o un luogo. Guarda la mappa del mondo (tasto [M]) e i nomi delle zone. Se sei ancora bloccato, chiedi qui indicando missione e zona.",
		},
		ru = {
			q = "Не могу найти цель задания. Что делать?",
			a = "Перечитайте текст задания в журнале заданий (клавиша [L]): обычно там указано направление или место. Посмотрите на карту мира (клавиша [M]) и названия зон. Если всё ещё не получается, спросите здесь, указав задание и зону.",
		},
		pt = {
			q = "Não encontro um objetivo de missão. O que faço?",
			a = "Leia de novo o texto da missão no registro de missões (tecla [L]): ele costuma citar uma direção ou um lugar. Olhe o mapa-múndi (tecla [M]) e os nomes das zonas. Se continuar perdido, pergunte aqui citando a missão e a zona.",
		},
	},
	{
		id = "quest-item-drop",
		de = {
			q = "Warum droppt der Questgegenstand nicht?",
			a = "Oft tragen nur bestimmte Gegner den Gegenstand, und das auch nur mit einer gewissen Chance, es kann also ein paar Versuche dauern. Du musst die Quest im Questlog haben. Hat ein anderer Spieler den Gegner zuerst angegriffen, gehört die Beute ihm: Ladet euch in eine Gruppe ein, dann zählt es für beide.",
		},
		en = {
			q = "Why does the quest item not drop?",
			a = "Often only certain enemies carry the item, and only with a chance, so it can take a few kills. You must have the quest in your log. If someone else attacked the enemy first, the loot is theirs: invite them to a group so you both get credit.",
		},
		fr = {
			q = "Pourquoi l'objet de quête ne tombe-t-il pas ?",
			a = "Souvent, seuls certains ennemis portent l'objet, et seulement avec une certaine chance : il faut parfois en tuer plusieurs. La quête doit être dans votre journal. Si quelqu'un d'autre a attaqué l'ennemi en premier, le butin est à lui : invitez-le dans un groupe pour que vous comptiez tous les deux.",
		},
		es = {
			q = "¿Por qué no cae el objeto de misión?",
			a = "A menudo solo ciertos enemigos llevan el objeto y solo con cierta probabilidad, así que puede hacer falta matar a varios. Debes tener la misión en el registro. Si otro jugador atacó primero al enemigo, el botín es suyo: invítalo a un grupo para que os cuente a los dos.",
		},
		it = {
			q = "Perché l'oggetto della missione non cade?",
			a = "Spesso solo certi nemici hanno l'oggetto, e solo con una certa probabilità, quindi può servire ucciderne diversi. Devi avere la missione nel registro. Se qualcun altro ha attaccato il nemico per primo, il bottino è suo: invitalo in gruppo così conta per entrambi.",
		},
		ru = {
			q = "Почему не выпадает предмет для задания?",
			a = "Часто предмет есть только у определённых врагов и выпадает лишь с некоторым шансом, так что иногда нужно убить нескольких. Задание должно быть в вашем журнале. Если врага первым атаковал кто-то другой, добыча его: пригласите этого игрока в группу, чтобы засчиталось обоим.",
		},
		pt = {
			q = "Por que o item da missão não cai?",
			a = "Muitas vezes só certos inimigos carregam o item, e só com certa chance, então pode levar algumas mortes. A missão precisa estar no seu registro. Se outra pessoa atacou o inimigo primeiro, o saque é dela: convide-a para um grupo para que conte para os dois.",
		},
	},
	{
		id = "quest-abandon",
		de = {
			q = "Kann ich eine Quest abbrechen?",
			a = "Ja: Wähl sie im Questlog aus und klick auf {Abbrechen}. Die meisten Quests kannst du später beim selben Auftraggeber wieder annehmen. So machst du auch Platz, wenn dein Questlog voll ist.",
		},
		en = {
			q = "Can I abandon a quest?",
			a = "Yes: select it in the quest log and choose {Abandon}. Most quests can be picked up again from the same character later. Abandoning frees up a slot when your quest log is full.",
		},
		fr = {
			q = "Puis-je abandonner une quête ?",
			a = "Oui : sélectionnez-la dans le journal de quêtes et choisissez {Abandonner}. La plupart des quêtes peuvent être reprises plus tard par le même personnage. Abandonner libère une place quand votre journal est plein.",
		},
		es = {
			q = "¿Puedo abandonar una misión?",
			a = "Sí: selecciónala en el registro de misiones y elige {Abandonar}. La mayoría de las misiones pueden volver a cogerse más tarde con el mismo personaje. Abandonar libera un hueco cuando el registro está lleno.",
		},
		it = {
			q = "Posso abbandonare una missione?",
			a = "Sì: selezionala nel registro missioni e scegli {Abbandona}. Quasi tutte le missioni si possono riprendere più tardi con lo stesso personaggio. Abbandonare libera un posto quando il registro è pieno.",
		},
		ru = {
			q = "Можно ли отказаться от задания?",
			a = "Да: выберите его в журнале заданий и нажмите {Отказаться}. Большинство заданий тот же персонаж может взять снова позже. Отказ освобождает место, когда журнал заполнен.",
		},
		pt = {
			q = "Posso abandonar uma missão?",
			a = "Sim: selecione-a no registro de missões e escolha {Abandonar}. A maioria das missões pode ser pega de novo depois pelo mesmo personagem. Abandonar libera espaço quando o registro está cheio.",
		},
	},
	{
		id = "quest-out-of-quests",
		de = {
			q = "Mir sind die Quests ausgegangen. Wohin jetzt?",
			a = "Such dir Gebiete, die zu deiner Stufe passen: Die Weltkarte zeigt den Stufenbereich, wenn du mit der Maus über ein Gebiet fährst. In jedem Ort gibt es Auftraggeber, und Gastwirte und Wachen schicken dich zu weiteren Orten. Auch Dungeons in deinem Stufenbereich haben Quests mit guten Belohnungen. Wenn du unsicher bist, frag hier und nenne Stufe und Fraktion.",
		},
		en = {
			q = "I ran out of quests. Where do I go now?",
			a = "Look for zones that fit your level: the world map shows the level range when you hover over a zone. Every town has quest givers, and innkeepers and guards point you to other places. Dungeons in your level range have quests with good rewards, too. If you are unsure, ask here with your level and faction.",
		},
		fr = {
			q = "Je n'ai plus de quêtes. Où aller maintenant ?",
			a = "Cherchez des zones adaptées à votre niveau : la carte du monde affiche la tranche de niveaux quand vous survolez une zone. Chaque village a des donneurs de quêtes, et aubergistes et gardes vous indiquent d'autres lieux. Les donjons de votre niveau ont aussi des quêtes avec de bonnes récompenses. En cas de doute, demandez ici avec votre niveau et votre faction.",
		},
		es = {
			q = "Me he quedado sin misiones. ¿Adónde voy?",
			a = "Busca zonas acordes a tu nivel: el mapa del mundo muestra el rango de niveles al pasar el ratón sobre una zona. Cada pueblo tiene quien da misiones, y posaderos y guardias te indican otros lugares. Las mazmorras de tu nivel también tienen misiones con buenas recompensas. Si dudas, pregunta aquí con tu nivel y facción.",
		},
		it = {
			q = "Ho finito le missioni. Dove vado adesso?",
			a = "Cerca zone adatte al tuo livello: la mappa del mondo mostra la fascia di livelli quando passi sopra una zona. Ogni villaggio ha chi assegna missioni, e locandieri e guardie ti indicano altri posti. Anche le spedizioni del tuo livello hanno missioni con buone ricompense. Se hai dubbi, chiedi qui con livello e fazione.",
		},
		ru = {
			q = "У меня закончились задания. Куда идти?",
			a = "Ищите зоны под свой уровень: на карте мира при наведении на зону показан диапазон уровней. В каждом поселении есть те, кто выдаёт задания, а трактирщики и стражники подскажут другие места. В подземельях вашего уровня тоже есть задания с хорошими наградами. Если сомневаетесь, спросите здесь, указав уровень и фракцию.",
		},
		pt = {
			q = "Acabaram minhas missões. Para onde vou?",
			a = "Procure zonas do seu nível: o mapa-múndi mostra a faixa de níveis ao passar o mouse sobre uma zona. Todo vilarejo tem quem dê missões, e taberneiros e guardas indicam outros lugares. Masmorras do seu nível também têm missões com boas recompensas. Na dúvida, pergunte aqui com seu nível e facção.",
		},
	},
	{
		id = "quest-log-full",
		de = {
			q = "Mein Questlog ist voll. Was tun?",
			a = "Das Questlog fasst nur eine begrenzte Zahl an Quests. Gib erledigte Quests ab und brich graue oder sehr alte Quests ab, die du nicht mehr machen willst. Danach kannst du neue annehmen.",
		},
		en = {
			q = "My quest log is full. What do I do?",
			a = "The quest log only holds a limited number of quests. Turn in finished quests and abandon grey or very old ones you no longer want. Then you can accept new ones.",
		},
		fr = {
			q = "Mon journal de quêtes est plein. Que faire ?",
			a = "Le journal de quêtes ne contient qu'un nombre limité de quêtes. Rendez les quêtes terminées et abandonnez celles qui sont grises ou anciennes dont vous ne voulez plus. Vous pourrez ensuite en accepter de nouvelles.",
		},
		es = {
			q = "Mi registro de misiones está lleno. ¿Qué hago?",
			a = "El registro solo admite un número limitado de misiones. Entrega las terminadas y abandona las grises o muy antiguas que ya no quieras. Luego podrás aceptar nuevas.",
		},
		it = {
			q = "Il mio registro missioni è pieno. Cosa faccio?",
			a = "Il registro contiene solo un numero limitato di missioni. Consegna quelle completate e abbandona quelle grigie o molto vecchie che non ti interessano più. Poi potrai accettarne di nuove.",
		},
		ru = {
			q = "Журнал заданий переполнен. Что делать?",
			a = "В журнале помещается ограниченное число заданий. Сдайте выполненные и откажитесь от серых или очень старых, которые вам больше не нужны. Тогда можно будет взять новые.",
		},
		pt = {
			q = "Meu registro de missões está cheio. O que faço?",
			a = "O registro só comporta um número limitado de missões. Entregue as concluídas e abandone as cinzas ou muito antigas que não quer mais. Depois você poderá aceitar novas.",
		},
	},
	{
		id = "quest-track",
		de = {
			q = "Wie behalte ich Questziele im Blick?",
			a = "Rechts am Bildschirm zeigt die Questliste deine verfolgten Quests mit ihrem Fortschritt. Im Questlog legst du fest, welche Quests dort erscheinen. So siehst du sofort, wie viele Gegner oder Gegenstände noch fehlen.",
		},
		en = {
			q = "How do I keep track of quest objectives?",
			a = "The quest tracker on the right of the screen shows your tracked quests and their progress. In the quest log you choose which quests appear there. That way you see right away how many enemies or items are still missing.",
		},
		fr = {
			q = "Comment suivre mes objectifs de quête ?",
			a = "Le suivi des quêtes à droite de l'écran affiche les quêtes suivies et leur progression. Dans le journal de quêtes, vous choisissez celles qui y apparaissent. Vous voyez ainsi tout de suite combien d'ennemis ou d'objets il vous manque.",
		},
		es = {
			q = "¿Cómo sigo los objetivos de misión?",
			a = "El seguimiento de misiones a la derecha de la pantalla muestra las misiones seguidas y su progreso. En el registro eliges cuáles aparecen ahí. Así ves enseguida cuántos enemigos u objetos te faltan.",
		},
		it = {
			q = "Come tengo d'occhio gli obiettivi delle missioni?",
			a = "Il tracciamento missioni a destra dello schermo mostra le missioni seguite e i loro progressi. Nel registro scegli quali compaiono lì. Così vedi subito quanti nemici o oggetti mancano.",
		},
		ru = {
			q = "Как следить за целями заданий?",
			a = "Список отслеживания справа на экране показывает отслеживаемые задания и прогресс. В журнале заданий вы выбираете, какие задания там видны. Так сразу ясно, сколько врагов или предметов ещё нужно.",
		},
		pt = {
			q = "Como acompanho os objetivos das missões?",
			a = "O rastreador de missões à direita da tela mostra as missões rastreadas e o progresso. No registro você escolhe quais aparecem ali. Assim vê na hora quantos inimigos ou itens ainda faltam.",
		},
	},
	{
		id = "quest-share",
		de = {
			q = "Wie teile ich eine Quest mit meiner Gruppe?",
			a = "Wähl die Quest im Questlog aus und klick auf {Teilen}. Gruppenmitglieder, die sie annehmen können, bekommen sie angeboten. Gemeinsam erledigte Gegner zählen dann für alle.",
		},
		en = {
			q = "How do I share a quest with my group?",
			a = "Select the quest in the quest log and click {Share}. Party members who are eligible get it offered. Enemies killed together then count for everyone.",
		},
		fr = {
			q = "Comment partager une quête avec mon groupe ?",
			a = "Sélectionnez la quête dans le journal et cliquez sur {Partager}. Les membres du groupe qui y ont droit se la voient proposer. Les ennemis tués ensemble comptent ensuite pour tout le monde.",
		},
		es = {
			q = "¿Cómo comparto una misión con mi grupo?",
			a = "Selecciona la misión en el registro y pulsa {Compartir}. Los miembros del grupo que puedan cogerla reciben la oferta. Después, los enemigos que matéis juntos cuentan para todos.",
		},
		it = {
			q = "Come condivido una missione con il gruppo?",
			a = "Seleziona la missione nel registro e clicca su {Condividi}. I membri del gruppo che possono prenderla se la vedono proporre. I nemici uccisi insieme contano poi per tutti.",
		},
		ru = {
			q = "Как поделиться заданием с группой?",
			a = "Выберите задание в журнале и нажмите {Поделиться}. Участникам группы, которым оно доступно, предложат его взять. Затем убитые вместе враги засчитываются всем.",
		},
		pt = {
			q = "Como compartilho uma missão com o grupo?",
			a = "Selecione a missão no registro e clique em {Compartilhar}. Os membros do grupo que podem pegá-la recebem a oferta. Depois, inimigos mortos juntos contam para todos.",
		},
	},
	{
		id = "quest-group-credit",
		de = {
			q = "Zählen Gegner in der Gruppe für alle?",
			a = "Ja, für Quests mit Gegnern zählt jeder Gegner, den die Gruppe besiegt, für alle, die die Quest haben und in der Nähe sind. Bei Questgegenständen bekommt oft jeder seinen eigenen; manchmal muss jeder einzeln plündern.",
		},
		en = {
			q = "Do kills in a group count for everyone?",
			a = "Yes, for kill quests every enemy the group defeats counts for everyone nearby who has the quest. Quest items often drop for each player separately; sometimes everyone has to loot on their own.",
		},
		fr = {
			q = "Les ennemis tués en groupe comptent-ils pour tous ?",
			a = "Oui, pour les quêtes d'élimination, chaque ennemi vaincu par le groupe compte pour tous ceux qui sont à proximité et ont la quête. Les objets de quête tombent souvent pour chaque joueur séparément ; parfois chacun doit fouiller lui-même.",
		},
		es = {
			q = "¿Las muertes en grupo cuentan para todos?",
			a = "Sí, en las misiones de matar, cada enemigo que derrota el grupo cuenta para todos los que estén cerca y tengan la misión. Los objetos de misión suelen caer para cada jugador por separado; a veces cada uno tiene que despojar por su cuenta.",
		},
		it = {
			q = "Le uccisioni in gruppo contano per tutti?",
			a = "Sì, nelle missioni di uccisione ogni nemico sconfitto dal gruppo conta per tutti quelli vicini che hanno la missione. Gli oggetti delle missioni spesso cadono separatamente per ogni giocatore; a volte ognuno deve raccoglierli da sé.",
		},
		ru = {
			q = "Засчитываются ли убийства в группе всем?",
			a = "Да, в заданиях на убийство каждый враг, побеждённый группой, засчитывается всем, кто рядом и у кого есть задание. Предметы для заданий часто выпадают каждому игроку отдельно; иногда обыскивать нужно каждому самому.",
		},
		pt = {
			q = "Mortes em grupo contam para todos?",
			a = "Sim, em missões de matar, cada inimigo derrotado pelo grupo conta para todos por perto que têm a missão. Itens de missão muitas vezes caem para cada jogador separadamente; às vezes cada um precisa saquear por conta própria.",
		},
	},
	{
		id = "quest-elite",
		de = {
			q = "Was bedeutet „Elite“ oder „Gruppe“ bei einer Quest?",
			a = "Solche Quests sind für mehrere Spieler gedacht, oft mit Elite-Gegnern, die viel stärker sind als normale. Such dir dafür eine Gruppe, zum Beispiel im Chat oder über die Gruppensuche. Allein lieber erst einige Stufen später.",
		},
		en = {
			q = "What does Elite or Group mean on a quest?",
			a = "Such quests are meant for several players, often with elite enemies that are much stronger than normal ones. Find a group for them, for example in chat or through the group finder. Alone, better wait a few levels.",
		},
		fr = {
			q = "Que signifie Élite ou Groupe sur une quête ?",
			a = "Ces quêtes sont prévues pour plusieurs joueurs, souvent avec des ennemis d'élite bien plus forts que les normaux. Trouvez un groupe, par exemple dans le chat ou via la recherche de groupe. Seul, mieux vaut attendre quelques niveaux.",
		},
		es = {
			q = "¿Qué significa Élite o Grupo en una misión?",
			a = "Son misiones pensadas para varios jugadores, a menudo con enemigos de élite mucho más fuertes que los normales. Busca un grupo, por ejemplo en el chat o con el buscador de grupos. Solo, mejor espera unos niveles.",
		},
		it = {
			q = "Cosa significa Élite o Gruppo su una missione?",
			a = "Sono missioni pensate per più giocatori, spesso con nemici élite molto più forti di quelli normali. Trova un gruppo, per esempio in chat o con la ricerca gruppo. Da solo, meglio aspettare qualche livello.",
		},
		ru = {
			q = "Что значит «Элитное» или «Группа» в задании?",
			a = "Такие задания рассчитаны на нескольких игроков, часто с элитными врагами, которые гораздо сильнее обычных. Найдите группу, например в чате или через поиск группы. В одиночку лучше подождать несколько уровней.",
		},
		pt = {
			q = "O que significa Elite ou Grupo numa missão?",
			a = "São missões feitas para vários jogadores, muitas vezes com inimigos de elite bem mais fortes que os normais. Arrume um grupo, por exemplo no chat ou pelo localizador de grupos. Sozinho, é melhor esperar alguns níveis.",
		},
	},
	{
		id = "quest-escort",
		de = {
			q = "Meine Begleitquest ist fehlgeschlagen. Was nun?",
			a = "Bei Begleitquests musst du eine Figur sicher an ihr Ziel bringen; stirbt sie, schlägt die Quest fehl. Brich die Quest im Questlog ab und nimm sie beim Auftraggeber erneut an, meist erscheint er nach kurzer Zeit wieder.",
		},
		en = {
			q = "My escort quest failed. What now?",
			a = "In escort quests you have to bring a character safely to its destination; if it dies, the quest fails. Abandon the quest in the quest log and accept it again from the quest giver, who usually reappears after a short while.",
		},
		fr = {
			q = "Ma quête d'escorte a échoué. Et maintenant ?",
			a = "Dans les quêtes d'escorte, vous devez amener un personnage sain et sauf à destination ; s'il meurt, la quête échoue. Abandonnez la quête dans le journal et reprenez-la auprès du donneur de quête, qui réapparaît généralement après un court moment.",
		},
		es = {
			q = "Mi misión de escolta ha fallado. ¿Y ahora?",
			a = "En las misiones de escolta tienes que llevar a un personaje sano y salvo a su destino; si muere, la misión falla. Abandona la misión en el registro y vuelve a aceptarla de quien la da, que suele reaparecer al poco tiempo.",
		},
		it = {
			q = "La mia missione di scorta è fallita. E adesso?",
			a = "Nelle missioni di scorta devi portare un personaggio sano e salvo a destinazione; se muore, la missione fallisce. Abbandona la missione nel registro e accettala di nuovo da chi la assegna, che di solito ricompare dopo poco.",
		},
		ru = {
			q = "Моё задание на сопровождение провалилось. Что теперь?",
			a = "В заданиях на сопровождение нужно довести персонажа живым до цели; если он погибает, задание проваливается. Откажитесь от задания в журнале и возьмите его снова у того, кто его выдаёт, — обычно он вскоре появляется снова.",
		},
		pt = {
			q = "Minha missão de escolta falhou. E agora?",
			a = "Em missões de escolta você precisa levar um personagem são e salvo ao destino; se ele morrer, a missão falha. Abandone a missão no registro e aceite de novo com quem a dá, que costuma reaparecer pouco depois.",
		},
	},
	{
		id = "quest-timed",
		de = {
			q = "Warum läuft bei meiner Quest eine Zeit ab?",
			a = "Manche Quests haben ein Zeitlimit, das in der Questliste angezeigt wird. Läuft es ab, schlägt die Quest fehl. Bereite dich vor, bevor du sie annimmst, und brich sie sonst ab und nimm sie neu an.",
		},
		en = {
			q = "Why is there a timer on my quest?",
			a = "Some quests have a time limit shown in the quest tracker. If it runs out, the quest fails. Prepare before accepting it, otherwise abandon it and pick it up again.",
		},
		fr = {
			q = "Pourquoi ma quête a-t-elle un minuteur ?",
			a = "Certaines quêtes ont une limite de temps, affichée dans le suivi des quêtes. Si le temps est écoulé, la quête échoue. Préparez-vous avant de l'accepter, sinon abandonnez-la et reprenez-la.",
		},
		es = {
			q = "¿Por qué mi misión tiene un temporizador?",
			a = "Algunas misiones tienen un límite de tiempo que se ve en el seguimiento de misiones. Si se acaba, la misión falla. Prepárate antes de aceptarla; si no, abandónala y vuelve a cogerla.",
		},
		it = {
			q = "Perché la mia missione ha un timer?",
			a = "Alcune missioni hanno un limite di tempo, mostrato nel tracciamento missioni. Se scade, la missione fallisce. Preparati prima di accettarla, altrimenti abbandonala e riprendila.",
		},
		ru = {
			q = "Почему у задания есть таймер?",
			a = "У некоторых заданий есть ограничение по времени, оно видно в списке отслеживания. Если время вышло, задание провалено. Подготовьтесь заранее, а иначе откажитесь от задания и возьмите его снова.",
		},
		pt = {
			q = "Por que minha missão tem um cronômetro?",
			a = "Algumas missões têm limite de tempo, mostrado no rastreador de missões. Se o tempo acabar, a missão falha. Prepare-se antes de aceitar; senão, abandone e pegue de novo.",
		},
	},
	{
		id = "quest-item-starts",
		de = {
			q = "Ein Gegenstand sagt „Beginnt eine Quest“. Was tun?",
			a = "Klick ihn in deinen Taschen mit der rechten Maustaste an. Dann öffnet sich die Quest, und du kannst sie annehmen. Solche Gegenstände bringen oft gute Belohnungen.",
		},
		en = {
			q = "An item says This Item Begins a Quest. What do I do?",
			a = "Right-click it in your bags. The quest opens and you can accept it. Such items often lead to good rewards.",
		},
		fr = {
			q = "Un objet indique « Cet objet permet de lancer une quête ». Que faire ?",
			a = "Faites un clic droit dessus dans vos sacs. La quête s'ouvre et vous pouvez l'accepter. Ces objets mènent souvent à de bonnes récompenses.",
		},
		es = {
			q = "Un objeto dice «Este objeto inicia una misión». ¿Qué hago?",
			a = "Haz clic derecho sobre él en tus bolsas. Se abre la misión y puedes aceptarla. Estos objetos suelen llevar a buenas recompensas.",
		},
		it = {
			q = "Un oggetto dice «Questo oggetto avvia una missione». Cosa faccio?",
			a = "Fai clic destro su di esso nelle borse. Si apre la missione e puoi accettarla. Questi oggetti portano spesso a buone ricompense.",
		},
		ru = {
			q = "На предмете написано «Предмет позволяет получить задание». Что делать?",
			a = "Щёлкните по нему правой кнопкой в сумке. Откроется задание, и его можно будет принять. Такие предметы часто ведут к хорошим наградам.",
		},
		pt = {
			q = "Um item diz \"Este item inicia uma missão\". O que faço?",
			a = "Clique com o botão direito nele nas suas bolsas. A missão abre e você pode aceitá-la. Esses itens costumam levar a boas recompensas.",
		},
	},
	{
		id = "quest-reward-choice",
		de = {
			q = "Welche Questbelohnung soll ich nehmen?",
			a = "Nimm, was deine Klasse am besten nutzen kann: passende Rüstungsart und Werte. Vergleich mit gedrückter [Umschalt]-Taste mit deiner Ausrüstung. Brauchst du nichts davon, nimm den Gegenstand, der beim Händler am meisten Gold bringt.",
		},
		en = {
			q = "Which quest reward should I take?",
			a = "Take what your class can use best: the right armour type and stats. Hold [Shift] to compare with your gear. If you need none of them, take the item that sells for the most gold.",
		},
		fr = {
			q = "Quelle récompense de quête choisir ?",
			a = "Prenez ce que votre classe utilise le mieux : le bon type d'armure et les bonnes caractéristiques. Maintenez [Maj] pour comparer avec votre équipement. Si rien ne vous sert, prenez l'objet qui se vend le plus cher.",
		},
		es = {
			q = "¿Qué recompensa de misión elijo?",
			a = "Coge lo que mejor aprovecha tu clase: el tipo de armadura y los atributos adecuados. Mantén [Mayús] para compararlo con tu equipo. Si nada te sirve, coge el objeto que se venda por más oro.",
		},
		it = {
			q = "Quale ricompensa della missione scelgo?",
			a = "Prendi ciò che la tua classe usa meglio: il tipo di armatura e le statistiche giuste. Tieni premuto [Maiusc] per confrontare con il tuo equipaggiamento. Se nessuna ti serve, prendi l'oggetto che si vende a più oro.",
		},
		ru = {
			q = "Какую награду за задание выбрать?",
			a = "Берите то, что лучше всего подходит вашему классу: нужный тип брони и характеристики. Удерживайте [Shift], чтобы сравнить со своей экипировкой. Если ничего не нужно, берите предмет, который дороже всего продаётся.",
		},
		pt = {
			q = "Qual recompensa de missão escolho?",
			a = "Pegue o que sua classe aproveita melhor: o tipo de armadura e os atributos certos. Segure [Shift] para comparar com seu equipamento. Se nada servir, pegue o item que vende por mais ouro.",
		},
	},
	{
		id = "quest-turn-in",
		de = {
			q = "Wo gebe ich meine Quest ab?",
			a = "Im Questtext steht, bei wem du die Quest abgibst; oft ist es der Auftraggeber selbst. Erledigte Quests zeigen ein gelbes Fragezeichen über der Figur. Auf der Karte findest du oft einen Hinweis, wohin du musst.",
		},
		en = {
			q = "Where do I turn in my quest?",
			a = "The quest text says who to turn it in to; often it is the quest giver. Finished quests show a yellow question mark above the character. The map often shows where you need to go.",
		},
		fr = {
			q = "Où rendre ma quête ?",
			a = "Le texte de la quête indique à qui la rendre ; souvent, c'est le donneur de quête. Les quêtes terminées affichent un point d'interrogation jaune au-dessus du personnage. La carte montre souvent où aller.",
		},
		es = {
			q = "¿Dónde entrego mi misión?",
			a = "El texto de la misión dice a quién entregarla; a menudo es quien te la dio. Las misiones terminadas muestran un signo de interrogación amarillo sobre el personaje. El mapa suele indicar adónde ir.",
		},
		it = {
			q = "Dove consegno la missione?",
			a = "Il testo della missione dice a chi consegnarla; spesso è chi te l'ha data. Le missioni completate mostrano un punto interrogativo giallo sopra il personaggio. La mappa indica spesso dove andare.",
		},
		ru = {
			q = "Куда сдавать задание?",
			a = "В тексте задания сказано, кому его сдать; часто это тот, кто его выдал. Над персонажем, которому можно сдать выполненное задание, виден жёлтый вопросительный знак. Карта часто показывает, куда идти.",
		},
		pt = {
			q = "Onde entrego minha missão?",
			a = "O texto da missão diz para quem entregar; muitas vezes é quem a deu. Missões concluídas mostram um ponto de interrogação amarelo acima do personagem. O mapa costuma mostrar para onde ir.",
		},
	},
	{
		id = "quest-grey-worth",
		de = {
			q = "Lohnen sich graue Quests noch?",
			a = "Sie bringen kaum Erfahrung, aber noch Gold, Ruf und manchmal gute Gegenstände. Wenn sie auf deinem Weg liegen, mach sie mit; extra hinlaufen lohnt sich meist nicht.",
		},
		en = {
			q = "Are grey quests still worth doing?",
			a = "They give little experience but still gold, reputation and sometimes good items. If they are on your way, do them; travelling there just for them is usually not worth it.",
		},
		fr = {
			q = "Les quêtes grises valent-elles encore le coup ?",
			a = "Elles rapportent peu d'expérience, mais toujours de l'or, de la réputation et parfois de bons objets. Si elles sont sur votre chemin, faites-les ; faire le trajet juste pour elles n'en vaut généralement pas la peine.",
		},
		es = {
			q = "¿Merece la pena hacer misiones grises?",
			a = "Dan poca experiencia, pero siguen dando oro, reputación y a veces buenos objetos. Si te pillan de camino, hazlas; ir hasta allí solo por ellas no suele compensar.",
		},
		it = {
			q = "Le missioni grigie valgono ancora la pena?",
			a = "Danno poca esperienza, ma comunque oro, reputazione e a volte buoni oggetti. Se sono sulla tua strada falle; andarci apposta di solito non conviene.",
		},
		ru = {
			q = "Стоит ли делать серые задания?",
			a = "Опыта они дают мало, но всё ещё приносят золото, репутацию, а иногда и хорошие предметы. Если они по пути, выполняйте; специально ехать ради них обычно не стоит.",
		},
		pt = {
			q = "Ainda vale a pena fazer missões cinzas?",
			a = "Elas dão pouca experiência, mas ainda dão ouro, reputação e às vezes bons itens. Se estiverem no caminho, faça; viajar só por elas geralmente não compensa.",
		},
	},
	{
		id = "quest-chains",
		de = {
			q = "Warum bekomme ich die nächste Quest nicht?",
			a = "Viele Quests sind Teil einer Reihe: Die nächste erscheint erst, wenn du die vorherige abgegeben hast, manchmal auch erst ab einer bestimmten Stufe. Schau, ob ein graues Ausrufezeichen eine Quest für später anzeigt.",
		},
		en = {
			q = "Why do I not get the next quest?",
			a = "Many quests are part of a chain: the next one only appears once you turned in the previous one, sometimes only from a certain level. Check whether a grey exclamation mark shows a quest for later.",
		},
		fr = {
			q = "Pourquoi je n'obtiens pas la quête suivante ?",
			a = "Beaucoup de quêtes font partie d'une chaîne : la suivante n'apparaît qu'une fois la précédente rendue, parfois seulement à partir d'un certain niveau. Vérifiez si un point d'exclamation gris indique une quête pour plus tard.",
		},
		es = {
			q = "¿Por qué no me sale la siguiente misión?",
			a = "Muchas misiones forman parte de una cadena: la siguiente solo aparece cuando entregas la anterior, a veces solo a partir de cierto nivel. Comprueba si un signo de exclamación gris indica una misión para más adelante.",
		},
		it = {
			q = "Perché non ricevo la missione successiva?",
			a = "Molte missioni fanno parte di una catena: la successiva compare solo dopo aver consegnato la precedente, a volte solo da un certo livello. Controlla se un punto esclamativo grigio indica una missione per più avanti.",
		},
		ru = {
			q = "Почему я не получаю следующее задание?",
			a = "Многие задания — часть цепочки: следующее появляется только после сдачи предыдущего, иногда лишь с определённого уровня. Посмотрите, нет ли серого восклицательного знака — это задание на потом.",
		},
		pt = {
			q = "Por que não recebo a próxima missão?",
			a = "Muitas missões fazem parte de uma cadeia: a próxima só aparece depois de entregar a anterior, às vezes só a partir de certo nível. Veja se uma exclamação cinza indica uma missão para mais tarde.",
		},
	},
	{
		id = "quest-dungeon",
		de = {
			q = "Was sind Dungeonquests?",
			a = "Quests, deren Ziele in einem Dungeon liegen. Sammle sie, bevor du mit einer Gruppe hineingehst, und teile sie mit den anderen. In WoW: Forever geben Dungeonquests besonders viel Erfahrung, oft mehr als die Gegner im Dungeon selbst.",
		},
		en = {
			q = "What are dungeon quests?",
			a = "Quests whose objectives are inside a dungeon. Collect them before entering with a group, and share them with the others. In WoW: Forever dungeon quests give a lot of experience, often more than the enemies inside.",
		},
		fr = {
			q = "Que sont les quêtes de donjon ?",
			a = "Des quêtes dont les objectifs se trouvent dans un donjon. Récupérez-les avant d'y entrer en groupe et partagez-les avec les autres. Dans WoW: Forever, les quêtes de donjon rapportent beaucoup d'expérience, souvent plus que les ennemis à l'intérieur.",
		},
		es = {
			q = "¿Qué son las misiones de mazmorra?",
			a = "Misiones cuyos objetivos están dentro de una mazmorra. Recógelas antes de entrar con el grupo y compártelas con los demás. En WoW: Forever las misiones de mazmorra dan mucha experiencia, a menudo más que los enemigos de dentro.",
		},
		it = {
			q = "Cosa sono le missioni delle spedizioni?",
			a = "Missioni con obiettivi all'interno di una spedizione. Raccoglile prima di entrare con il gruppo e condividile con gli altri. In WoW: Forever le missioni delle spedizioni danno molta esperienza, spesso più dei nemici all'interno.",
		},
		ru = {
			q = "Что такое задания подземелий?",
			a = "Задания, цели которых находятся внутри подземелья. Соберите их до входа с группой и поделитесь с остальными. В WoW: Forever задания подземелий дают много опыта, часто больше, чем враги внутри.",
		},
		pt = {
			q = "O que são missões de masmorra?",
			a = "Missões com objetivos dentro de uma masmorra. Pegue-as antes de entrar com o grupo e compartilhe com os outros. No WoW: Forever, missões de masmorra dão muita experiência, muitas vezes mais que os inimigos lá dentro.",
		},
	},
	{
		id = "quest-reputation",
		de = {
			q = "Was bringt Ruf bei Fraktionen?",
			a = "Viele Quests geben Ruf bei einer Fraktion, etwa einer Stadt. Mit mehr Ruf bekommst du Rabatt bei deren Händlern und Zugang zu besonderen Belohnungen. Deinen Ruf siehst du im Charakterfenster.",
		},
		en = {
			q = "What does faction reputation do?",
			a = "Many quests give reputation with a faction, such as a city. More reputation brings discounts at their vendors and access to special rewards. You see your reputation in the character window.",
		},
		fr = {
			q = "À quoi sert la réputation auprès des factions ?",
			a = "Beaucoup de quêtes rapportent de la réputation auprès d'une faction, comme une ville. Plus de réputation donne des remises chez leurs marchands et l'accès à des récompenses spéciales. Vous voyez votre réputation dans la fenêtre du personnage.",
		},
		es = {
			q = "¿Para qué sirve la reputación con facciones?",
			a = "Muchas misiones dan reputación con una facción, como una ciudad. Más reputación trae descuentos con sus vendedores y acceso a recompensas especiales. Ves tu reputación en la ventana del personaje.",
		},
		it = {
			q = "A cosa serve la reputazione con le fazioni?",
			a = "Molte missioni danno reputazione con una fazione, come una città. Più reputazione porta sconti dai loro mercanti e accesso a ricompense speciali. La reputazione la vedi nella finestra del personaggio.",
		},
		ru = {
			q = "Зачем нужна репутация у фракций?",
			a = "Многие задания дают репутацию у фракции, например у города. Чем выше репутация, тем больше скидки у их торговцев и тем больше особых наград доступно. Репутацию видно в окне персонажа.",
		},
		pt = {
			q = "Para que serve a reputação com facções?",
			a = "Muitas missões dão reputação com uma facção, como uma cidade. Mais reputação traz descontos com os mercadores dela e acesso a recompensas especiais. Você vê sua reputação na janela do personagem.",
		},
	},
	{
		id = "quest-class-quests",
		de = {
			q = "Was sind Klassenquests?",
			a = "Quests, die nur deine Klasse bekommt, meist vom Klassenlehrer. Sie bringen wichtige Fähigkeiten, Begleiter oder Gegenstände. Sprich deinen Lehrer an, wenn du eine neue Stufe erreichst, damit du keine verpasst.",
		},
		en = {
			q = "What are class quests?",
			a = "Quests only your class gets, usually from your class trainer. They bring important abilities, pets or items. Talk to your trainer when you reach a new level so you do not miss any.",
		},
		fr = {
			q = "Que sont les quêtes de classe ?",
			a = "Des quêtes que seule votre classe reçoit, généralement de votre maître de classe. Elles apportent des techniques, des familiers ou des objets importants. Parlez à votre maître à chaque nouveau niveau pour n'en manquer aucune.",
		},
		es = {
			q = "¿Qué son las misiones de clase?",
			a = "Misiones que solo recibe tu clase, normalmente de tu instructor de clase. Dan habilidades, mascotas u objetos importantes. Habla con tu instructor al alcanzar un nuevo nivel para no perderte ninguna.",
		},
		it = {
			q = "Cosa sono le missioni di classe?",
			a = "Missioni che riceve solo la tua classe, di solito dal tuo istruttore. Portano abilità, famigli o oggetti importanti. Parla con l'istruttore a ogni nuovo livello per non perderne nessuna.",
		},
		ru = {
			q = "Что такое классовые задания?",
			a = "Задания только для вашего класса, обычно от учителя класса. Они дают важные способности, питомцев или предметы. Заходите к учителю на каждом новом уровне, чтобы ничего не пропустить.",
		},
		pt = {
			q = "O que são missões de classe?",
			a = "Missões que só a sua classe recebe, normalmente do instrutor da classe. Elas trazem habilidades, ajudantes ou itens importantes. Fale com seu instrutor ao atingir um novo nível para não perder nenhuma.",
		},
	},
	{
		id = "quest-npc-missing",
		de = {
			q = "Der Questgeber ist nicht da. Was tun?",
			a = "Manche Figuren laufen umher, erscheinen erst nach einer Weile wieder oder sind gerade in einer Begleitquest unterwegs. Warte ein paar Minuten am Ort. Hilft das nicht, frag hier und nenne Quest und Gebiet.",
		},
		en = {
			q = "The quest giver is not there. What do I do?",
			a = "Some characters walk around, respawn after a while or are currently on an escort with someone else. Wait a few minutes at the spot. If that does not help, ask here with the quest and the zone.",
		},
		fr = {
			q = "Le donneur de quête n'est pas là. Que faire ?",
			a = "Certains personnages se déplacent, réapparaissent après un moment ou sont en train d'escorter quelqu'un d'autre. Attendez quelques minutes sur place. Si cela ne suffit pas, demandez ici en indiquant la quête et la zone.",
		},
		es = {
			q = "Quien da la misión no está. ¿Qué hago?",
			a = "Algunos personajes caminan, reaparecen al cabo de un rato o están en una escolta con otra persona. Espera unos minutos en el sitio. Si no sirve, pregunta aquí indicando la misión y la zona.",
		},
		it = {
			q = "Chi assegna la missione non c'è. Cosa faccio?",
			a = "Alcuni personaggi camminano, ricompaiono dopo un po' o sono in scorta con qualcun altro. Aspetta qualche minuto sul posto. Se non basta, chiedi qui indicando missione e zona.",
		},
		ru = {
			q = "Персонажа, выдающего задание, нет на месте. Что делать?",
			a = "Некоторые персонажи ходят по округе, появляются снова через некоторое время или сейчас в сопровождении у другого игрока. Подождите несколько минут на месте. Если не помогло, спросите здесь, указав задание и зону.",
		},
		pt = {
			q = "Quem dá a missão não está lá. O que faço?",
			a = "Alguns personagens andam por aí, reaparecem depois de um tempo ou estão numa escolta com outra pessoa. Espere alguns minutos no local. Se não adiantar, pergunte aqui citando a missão e a zona.",
		},
	},
})
