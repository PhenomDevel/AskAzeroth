local _, ns = ...

-- FAQ: Chat and guild. See Core/Faq.lua for the format.
ns.Faq.Add("social", {
	{
		id = "social-chat",
		de = {
			q = "Wie schreibe ich im Chat?",
			a = "Drück Enter, schreib deinen Text und drück wieder Enter. Befehle legen fest, wohin er geht: /s sagen, /y schreien, /p Gruppe, /g Gilde, /w Name flüstern, /1 Allgemein-Kanal des Gebiets. Auf das letzte Flüstern antwortest du mit R.",
		},
		en = {
			q = "How do I use the chat?",
			a = "Press Enter, type your text and press Enter again. Commands change where it goes: /s say, /y yell, /p party, /g guild, /w Name whisper, /1 general channel of the zone. Reply to the last whisper with R.",
		},
		fr = {
			q = "Comment utiliser le chat ?",
			a = "Appuyez sur Entrée, tapez votre texte et appuyez de nouveau sur Entrée. Les commandes changent la destination : /s dire, /y crier, /p groupe, /g guilde, /w Nom chuchoter, /1 canal général de la zone. Répondez au dernier chuchotement avec R.",
		},
		es = {
			q = "¿Cómo uso el chat?",
			a = "Pulsa Intro, escribe tu texto y vuelve a pulsar Intro. Los comandos cambian adónde va: /s decir, /y gritar, /p grupo, /g hermandad, /w Nombre susurrar, /1 canal general de la zona. Responde al último susurro con R.",
		},
		it = {
			q = "Come uso la chat?",
			a = "Premi Invio, scrivi il testo e premi di nuovo Invio. I comandi cambiano dove va il messaggio: /s dire, /y urlare, /p gruppo, /g gilda, /w Nome sussurrare, /1 canale generale della zona. Rispondi all'ultimo sussurro con R.",
		},
		ru = {
			q = "Как пользоваться чатом?",
			a = "Нажмите Enter, введите текст и снова нажмите Enter. Команды меняют, куда уходит сообщение: /s сказать, /y крикнуть, /p группа, /g гильдия, /w Имя шёпот, /1 общий канал зоны. Ответить на последний шёпот можно клавишей R.",
		},
		pt = {
			q = "Como uso o chat?",
			a = "Aperte Enter, digite o texto e aperte Enter de novo. Comandos mudam para onde vai: /s dizer, /y gritar, /p grupo, /g guilda, /w Nome sussurrar, /1 canal geral da zona. Responda ao último sussurro com R.",
		},
	},
	{
		id = "social-guild",
		de = {
			q = "Wie finde ich eine Gilde?",
			a = "Gilden werben in den Chatkanälen der Städte, und viele suchen auch auf Discord oder Community-Seiten nach Mitgliedern. Sprich vor dem Beitritt mit ein paar Offizieren und such dir eine Gilde, die zu ähnlichen Zeiten spielt wie du und im selben Regelwerk ist.",
		},
		en = {
			q = "How do I find a guild?",
			a = "Guilds recruit in the chat channels of the cities, and many also look for members on Discord or community sites. Talk to a few officers before you join, and look for a guild on your ruleset that plays at the times you do.",
		},
		fr = {
			q = "Comment trouver une guilde ?",
			a = "Les guildes recrutent dans les canaux de discussion des villes, et beaucoup cherchent aussi des membres sur Discord ou des sites communautaires. Parlez à quelques officiers avant de rejoindre, et cherchez une guilde de votre ensemble de règles qui joue aux mêmes heures que vous.",
		},
		es = {
			q = "¿Cómo encuentro una hermandad?",
			a = "Las hermandades reclutan en los canales de chat de las ciudades, y muchas buscan miembros también en Discord o en webs de la comunidad. Habla con algunos oficiales antes de unirte y busca una hermandad de tu conjunto de reglas que juegue a las mismas horas que tú.",
		},
		it = {
			q = "Come trovo una gilda?",
			a = "Le gilde reclutano nei canali di chat delle città, e molte cercano membri anche su Discord o sui siti della community. Parla con qualche ufficiale prima di entrare e cerca una gilda del tuo set di regole che giochi negli stessi orari tuoi.",
		},
		ru = {
			q = "Как найти гильдию?",
			a = "Гильдии набирают игроков в чат-каналах городов, а многие ищут участников и в Discord или на сайтах сообщества. Перед вступлением поговорите с несколькими офицерами и ищите гильдию в вашем наборе правил, которая играет в то же время, что и вы.",
		},
		pt = {
			q = "Como encontro uma guilda?",
			a = "As guildas recrutam nos canais de chat das cidades, e muitas também procuram membros no Discord ou em sites da comunidade. Converse com alguns oficiais antes de entrar e procure uma guilda do seu conjunto de regras que jogue nos mesmos horários que você.",
		},
	},
	{
		id = "social-friends",
		de = {
			q = "Wie füge ich Freunde hinzu?",
			a = "Öffne das Kontaktfenster (Taste O), klick auf „Freund hinzufügen“ und gib den Namen ein. Du kannst auch mit der rechten Maustaste auf einen Spieler klicken und ihn dort hinzufügen.",
		},
		en = {
			q = "How do I add friends?",
			a = "Open the social window (O key), click Add Friend and enter the name. You can also right-click a player and add them from there.",
		},
		fr = {
			q = "Comment ajouter des amis ?",
			a = "Ouvrez la fenêtre sociale (touche O), cliquez sur Ajouter un ami et saisissez le nom. Vous pouvez aussi faire un clic droit sur un joueur et l'ajouter depuis là.",
		},
		es = {
			q = "¿Cómo añado amigos?",
			a = "Abre la ventana social (tecla O), pulsa Añadir amigo y escribe el nombre. También puedes hacer clic derecho en un jugador y añadirlo desde ahí.",
		},
		it = {
			q = "Come aggiungo amici?",
			a = "Apri la finestra sociale (tasto O), clicca su Aggiungi amico e inserisci il nome. Puoi anche fare clic destro su un giocatore e aggiungerlo da lì.",
		},
		ru = {
			q = "Как добавить друзей?",
			a = "Откройте окно «Общение» (клавиша O), нажмите «Добавить друга» и введите имя. Можно также щёлкнуть правой кнопкой по игроку и добавить его оттуда.",
		},
		pt = {
			q = "Como adiciono amigos?",
			a = "Abra a janela social (tecla O), clique em Adicionar amigo e digite o nome. Também dá para clicar com o botão direito num jogador e adicioná-lo dali.",
		},
	},
	{
		id = "social-ignore",
		de = {
			q = "Wie gehe ich mit nervigen Spielern um?",
			a = "Klick mit der rechten Maustaste auf den Namen und wähl „Ignorieren“; in AskAzeroth kannst du einen Spieler zusätzlich auf der Seite „Spieler“ ignorieren. Beleidigendes Verhalten meldest du über dasselbe Menü.",
		},
		en = {
			q = "How do I deal with annoying players?",
			a = "Right-click their name and choose Ignore; in AskAzeroth you can also mark a player as ignored on the Players page. You can report abusive behaviour from the same menu.",
		},
		fr = {
			q = "Comment gérer les joueurs pénibles ?",
			a = "Clic droit sur leur nom puis « Ignorer » ; dans AskAzeroth, vous pouvez aussi marquer un joueur comme ignoré sur la page Joueurs. Vous pouvez signaler un comportement abusif depuis le même menu.",
		},
		es = {
			q = "¿Qué hago con los jugadores molestos?",
			a = "Clic derecho en su nombre y elige «Ignorar»; en AskAzeroth también puedes marcar a un jugador como ignorado en la página Jugadores. Desde el mismo menú puedes denunciar comportamientos abusivos.",
		},
		it = {
			q = "Come gestisco i giocatori fastidiosi?",
			a = "Clic destro sul nome e scegli «Ignora»; in AskAzeroth puoi anche segnare un giocatore come ignorato nella pagina Giocatori. Dallo stesso menu puoi segnalare comportamenti offensivi.",
		},
		ru = {
			q = "Что делать с надоедливыми игроками?",
			a = "Щёлкните правой кнопкой по имени и выберите «Игнорировать»; в AskAzeroth игрока можно также отметить как игнорируемого на странице «Игроки». Из того же меню можно пожаловаться на оскорбительное поведение.",
		},
		pt = {
			q = "Como lido com jogadores chatos?",
			a = "Clique com o botão direito no nome e escolha \"Ignorar\"; no AskAzeroth você também pode marcar um jogador como ignorado na página Jogadores. No mesmo menu dá para denunciar comportamento abusivo.",
		},
	},
	{
		id = "social-channels",
		de = {
			q = "Welche Chatkanäle gibt es?",
			a = "Allgemein gilt für das ganze Gebiet, Handel nur in Hauptstädten, Suche nach Gruppe ist für Gruppensuche gedacht, Lokale Verteidigung meldet Angriffe. Mit /join Name trittst du einem Kanal bei, mit /leave Nummer verlässt du ihn.",
		},
		en = {
			q = "Which chat channels are there?",
			a = "General covers the whole zone, Trade only works in capital cities, LookingForGroup is for finding groups, LocalDefense reports attacks. /join Name joins a channel, /leave Number leaves it.",
		},
		fr = {
			q = "Quels canaux de discussion existent ?",
			a = "Général couvre toute la zone, Commerce ne fonctionne que dans les capitales, RechercheDeGroupe sert à trouver des groupes, DéfenseLocale signale les attaques. /join Nom rejoint un canal, /leave Numéro le quitte.",
		},
		es = {
			q = "¿Qué canales de chat hay?",
			a = "General abarca toda la zona, Comercio solo funciona en las capitales, BuscarGrupo sirve para encontrar grupos y DefensaLocal avisa de ataques. /join Nombre te une a un canal y /leave Número lo abandona.",
		},
		it = {
			q = "Quali canali di chat ci sono?",
			a = "Generale copre tutta la zona, Commercio funziona solo nelle capitali, CercaGruppo serve a trovare gruppi, DifesaLocale segnala gli attacchi. /join Nome entra in un canale, /leave Numero lo lascia.",
		},
		ru = {
			q = "Какие есть каналы чата?",
			a = "«Общий» охватывает всю зону, «Торговля» работает только в столицах, «ПоискСпутников» нужен для поиска группы, «ОборонаЛокальный» сообщает о нападениях. /join Название — войти в канал, /leave Номер — выйти из него.",
		},
		pt = {
			q = "Quais canais de chat existem?",
			a = "Geral cobre a zona inteira, Comércio só funciona nas capitais, ProcurarGrupo serve para achar grupos e DefesaLocal avisa de ataques. /join Nome entra num canal e /leave Número sai dele.",
		},
	},
	{
		id = "social-link-items",
		de = {
			q = "Wie zeige ich einen Gegenstand im Chat?",
			a = "Klick mit gedrückter Umschalttaste auf den Gegenstand, während das Chat-Eingabefeld offen ist. Dann erscheint ein Link, den andere anklicken können. Das geht auch mit Quests, Zaubern und Berufsrezepten.",
		},
		en = {
			q = "How do I show an item in chat?",
			a = "Shift-click the item while the chat input box is open. A link appears that others can click. This also works with quests, spells and recipes.",
		},
		fr = {
			q = "Comment montrer un objet dans le chat ?",
			a = "Faites Maj+clic sur l'objet pendant que la zone de saisie du chat est ouverte. Un lien apparaît, sur lequel les autres peuvent cliquer. Cela marche aussi avec les quêtes, les sorts et les recettes.",
		},
		es = {
			q = "¿Cómo muestro un objeto en el chat?",
			a = "Haz Mayús+clic en el objeto con el cuadro de texto del chat abierto. Aparece un enlace en el que los demás pueden hacer clic. También funciona con misiones, hechizos y recetas.",
		},
		it = {
			q = "Come mostro un oggetto in chat?",
			a = "Fai Maiusc+clic sull'oggetto mentre la casella della chat è aperta. Compare un link che gli altri possono cliccare. Funziona anche con missioni, incantesimi e ricette.",
		},
		ru = {
			q = "Как показать предмет в чате?",
			a = "Щёлкните по предмету с зажатым Shift, когда открыто поле ввода чата. Появится ссылка, по которой могут щёлкнуть другие. Так же можно делиться заданиями, заклинаниями и рецептами.",
		},
		pt = {
			q = "Como mostro um item no chat?",
			a = "Dê Shift+clique no item com a caixa de texto do chat aberta. Aparece um link em que os outros podem clicar. Funciona também com missões, feitiços e receitas.",
		},
	},
	{
		id = "social-whisper-name",
		de = {
			q = "Warum kommt mein Flüstern nicht an?",
			a = "Prüf den Namen: In WoW: Forever haben Charaktere einen zweiteiligen Namen, und du brauchst oft den vollen Namen. Am einfachsten ist ein Rechtsklick auf den Namen im Chat und „Flüstern“. Spieler der anderen Fraktion kannst du nicht anflüstern.",
		},
		en = {
			q = "Why does my whisper not arrive?",
			a = "Check the name: in WoW: Forever characters have a two-part name, and you often need the full name. Easiest is to right-click the name in chat and choose Whisper. You cannot whisper players of the other faction.",
		},
		fr = {
			q = "Pourquoi mon chuchotement n'arrive-t-il pas ?",
			a = "Vérifiez le nom : dans WoW: Forever, les personnages ont un nom en deux parties, et il faut souvent le nom complet. Le plus simple est un clic droit sur le nom dans le chat puis « Chuchoter ». Vous ne pouvez pas chuchoter aux joueurs de l'autre faction.",
		},
		es = {
			q = "¿Por qué no llega mi susurro?",
			a = "Revisa el nombre: en WoW: Forever los personajes tienen un nombre de dos partes y a menudo necesitas el nombre completo. Lo más fácil es hacer clic derecho en el nombre del chat y elegir «Susurrar». No puedes susurrar a jugadores de la otra facción.",
		},
		it = {
			q = "Perché il mio sussurro non arriva?",
			a = "Controlla il nome: in WoW: Forever i personaggi hanno un nome in due parti e spesso serve il nome completo. La cosa più semplice è fare clic destro sul nome in chat e scegliere «Sussurra». Non puoi sussurrare ai giocatori dell'altra fazione.",
		},
		ru = {
			q = "Почему мой шёпот не доходит?",
			a = "Проверьте имя: в WoW: Forever имя персонажа состоит из двух частей, и часто нужно полное имя. Проще всего щёлкнуть правой кнопкой по имени в чате и выбрать «Шёпот». Игрокам другой фракции шептать нельзя.",
		},
		pt = {
			q = "Por que meu sussurro não chega?",
			a = "Confira o nome: no WoW: Forever os personagens têm nome em duas partes, e muitas vezes você precisa do nome completo. O mais fácil é clicar com o botão direito no nome no chat e escolher \"Sussurrar\". Não dá para sussurrar jogadores da outra facção.",
		},
	},
	{
		id = "social-other-faction-language",
		de = {
			q = "Warum verstehe ich die andere Fraktion nicht?",
			a = "Allianz und Horde sprechen verschiedene Sprachen, im Chat erscheint nur Kauderwelsch. Verständigen könnt ihr euch nur mit Gesten und Emotes.",
		},
		en = {
			q = "Why can I not understand the other faction?",
			a = "Alliance and Horde speak different languages; their chat shows up as gibberish. You can only communicate with gestures and emotes.",
		},
		fr = {
			q = "Pourquoi je ne comprends pas l'autre faction ?",
			a = "L'Alliance et la Horde parlent des langues différentes ; leur chat apparaît sous forme de charabia. Vous ne pouvez communiquer qu'avec des gestes et des emotes.",
		},
		es = {
			q = "¿Por qué no entiendo a la otra facción?",
			a = "La Alianza y la Horda hablan idiomas distintos; su chat aparece como un galimatías. Solo podéis comunicaros con gestos y emotes.",
		},
		it = {
			q = "Perché non capisco l'altra fazione?",
			a = "Alleanza e Orda parlano lingue diverse; la loro chat appare come parole senza senso. Potete comunicare solo con gesti ed emote.",
		},
		ru = {
			q = "Почему я не понимаю другую фракцию?",
			a = "Альянс и Орда говорят на разных языках; их сообщения в чате выглядят как тарабарщина. Общаться можно только жестами и эмоциями.",
		},
		pt = {
			q = "Por que não entendo a outra facção?",
			a = "Aliança e Horda falam línguas diferentes; o chat deles aparece como palavras sem sentido. Vocês só conseguem se comunicar com gestos e emotes.",
		},
	},
	{
		id = "social-emotes",
		de = {
			q = "Wie benutze ich Emotes?",
			a = "Gib zum Beispiel /winken, /tanzen, /verbeugen oder /lachen ein (im englischen Client /wave, /dance, /bow, /laugh). Mit einem Ziel richtet sich das Emote an diese Figur. Es macht das Spiel lebendiger und ist im Rollenspiel-Regelwerk sehr beliebt.",
		},
		en = {
			q = "How do I use emotes?",
			a = "Type, for example, /wave, /dance, /bow or /laugh. With a target selected the emote is aimed at that character. It makes the game livelier and is popular on the Roleplaying rule set.",
		},
		fr = {
			q = "Comment utiliser les emotes ?",
			a = "Tapez par exemple /wave, /dance, /bow ou /laugh (les commandes en anglais fonctionnent dans tous les clients). Avec une cible sélectionnée, l'emote s'adresse à ce personnage. Cela rend le jeu plus vivant et c'est très apprécié sur l'ensemble de règles Jeu de rôle.",
		},
		es = {
			q = "¿Cómo uso los emotes?",
			a = "Escribe, por ejemplo, /wave, /dance, /bow o /laugh (los comandos en inglés funcionan en todos los clientes). Con un objetivo seleccionado, el emote va dirigido a ese personaje. Da vida al juego y es muy popular en el conjunto de reglas de Rol.",
		},
		it = {
			q = "Come uso le emote?",
			a = "Scrivi per esempio /wave, /dance, /bow o /laugh (i comandi in inglese funzionano in tutti i client). Con un bersaglio selezionato l'emote è rivolta a quel personaggio. Rende il gioco più vivo ed è molto apprezzata nel set di regole Gioco di ruolo.",
		},
		ru = {
			q = "Как использовать эмоции?",
			a = "Введите, например, /wave, /dance, /bow или /laugh (английские команды работают в любом клиенте). Если выбрана цель, эмоция обращена к этому персонажу. Так игра становится живее, особенно это любят в ролевом наборе правил.",
		},
		pt = {
			q = "Como uso emotes?",
			a = "Digite, por exemplo, /wave, /dance, /bow ou /laugh (os comandos em inglês funcionam em todos os clientes). Com um alvo selecionado, o emote é dirigido a esse personagem. Deixa o jogo mais vivo e é muito popular no conjunto de regras de Interpretação.",
		},
	},
	{
		id = "social-afk",
		de = {
			q = "Wie zeige ich, dass ich nicht da bin?",
			a = "/afk markiert dich als abwesend, /dnd als „nicht stören“; Flüsternde bekommen dann eine Nachricht. Schreibst du wieder etwas oder bewegst dich, ist die Markierung weg.",
		},
		en = {
			q = "How do I show that I am away?",
			a = "/afk marks you as away, /dnd as do not disturb; people who whisper you get a message. Typing or moving again removes the flag.",
		},
		fr = {
			q = "Comment montrer que je suis absent ?",
			a = "/afk vous marque comme absent, /dnd comme « ne pas déranger » ; ceux qui vous chuchotent reçoivent un message. Dès que vous écrivez ou bougez, la marque disparaît.",
		},
		es = {
			q = "¿Cómo indico que estoy ausente?",
			a = "/afk te marca como ausente y /dnd como «no molestar»; quien te susurre recibe un mensaje. Si vuelves a escribir o moverte, la marca desaparece.",
		},
		it = {
			q = "Come indico che sono assente?",
			a = "/afk ti segna come assente, /dnd come «non disturbare»; chi ti sussurra riceve un messaggio. Se scrivi di nuovo o ti muovi, il segno sparisce.",
		},
		ru = {
			q = "Как показать, что я отошёл?",
			a = "/afk помечает вас как отсутствующего, /dnd — как «не беспокоить»; тем, кто шепчет вам, придёт сообщение. Стоит снова написать что-то или пошевелиться, и пометка исчезнет.",
		},
		pt = {
			q = "Como mostro que estou ausente?",
			a = "/afk marca você como ausente e /dnd como \"não perturbe\"; quem sussurrar recebe uma mensagem. Ao digitar ou se mexer de novo, a marca some.",
		},
	},
	{
		id = "social-roll",
		de = {
			q = "Wie würfle ich?",
			a = "/roll würfelt eine Zahl von 1 bis 100, die alle in der Nähe sehen. Das hilft, faire Entscheidungen zu treffen, etwa wer einen Gegenstand bekommt.",
		},
		en = {
			q = "How do I roll a die?",
			a = "/roll rolls a number from 1 to 100 that everyone nearby sees. It helps make fair decisions, for example who gets an item.",
		},
		fr = {
			q = "Comment lancer un dé ?",
			a = "/roll tire un nombre de 1 à 100 que tout le monde autour voit. Cela aide à décider équitablement, par exemple qui reçoit un objet.",
		},
		es = {
			q = "¿Cómo tiro un dado?",
			a = "/roll saca un número del 1 al 100 que ven todos los que están cerca. Ayuda a tomar decisiones justas, por ejemplo quién se lleva un objeto.",
		},
		it = {
			q = "Come tiro un dado?",
			a = "/roll tira un numero da 1 a 100 che vedono tutti quelli vicini. Aiuta a decidere in modo equo, per esempio chi riceve un oggetto.",
		},
		ru = {
			q = "Как бросить кости?",
			a = "/roll выдаёт число от 1 до 100, которое видят все рядом. Это помогает решать честно, например кому достанется предмет.",
		},
		pt = {
			q = "Como rolo um dado?",
			a = "/roll sorteia um número de 1 a 100 que todos por perto veem. Ajuda a decidir de forma justa, por exemplo quem fica com um item.",
		},
	},
	{
		id = "social-create-guild",
		de = {
			q = "Wie gründe ich eine Gilde?",
			a = "Kauf beim Gildenmeister in einer Hauptstadt eine Gildensatzung und sammle die nötigen Unterschriften anderer Spieler. Gib die Satzung dann beim Gildenmeister ab. Ab dann kannst du Mitglieder einladen und Ränge vergeben.",
		},
		en = {
			q = "How do I create a guild?",
			a = "Buy a guild charter from the guild master in a capital city and collect the required signatures from other players. Then turn the charter in to the guild master. After that you can invite members and assign ranks.",
		},
		fr = {
			q = "Comment créer une guilde ?",
			a = "Achetez une charte de guilde auprès du maître des guildes d'une capitale et récoltez les signatures nécessaires d'autres joueurs. Rendez ensuite la charte au maître des guildes. Vous pouvez alors inviter des membres et attribuer des rangs.",
		},
		es = {
			q = "¿Cómo creo una hermandad?",
			a = "Compra un estatuto de hermandad al maestro de hermandades de una capital y reúne las firmas necesarias de otros jugadores. Luego entrega el estatuto al maestro de hermandades. A partir de ahí puedes invitar a miembros y asignar rangos.",
		},
		it = {
			q = "Come fondo una gilda?",
			a = "Compra uno statuto di gilda dal maestro delle gilde in una capitale e raccogli le firme necessarie di altri giocatori. Poi consegna lo statuto al maestro delle gilde. Da quel momento puoi invitare membri e assegnare gradi.",
		},
		ru = {
			q = "Как создать гильдию?",
			a = "Купите устав гильдии у распорядителя гильдий в столице и соберите нужное число подписей других игроков. Затем сдайте устав распорядителю. После этого можно приглашать участников и назначать звания.",
		},
		pt = {
			q = "Como crio uma guilda?",
			a = "Compre um estatuto de guilda com o mestre de guildas de uma capital e reúna as assinaturas necessárias de outros jogadores. Depois entregue o estatuto ao mestre de guildas. A partir daí você pode convidar membros e definir patentes.",
		},
	},
	{
		id = "social-guild-commands",
		de = {
			q = "Wie schreibe ich in der Gilde, und wie verlasse ich sie?",
			a = "/g schreibt in den Gildenchat. Das Gildenfenster öffnest du über das Kontaktfenster oder die Menüleiste; dort siehst du alle Mitglieder. Verlassen kannst du die Gilde über das Gildenfenster oder mit /gquit.",
		},
		en = {
			q = "How do I chat in my guild, and how do I leave it?",
			a = "/g writes in guild chat. Open the guild window from the social window or the menu bar to see all members. Leave the guild from the guild window or with /gquit.",
		},
		fr = {
			q = "Comment écrire dans ma guilde, et comment la quitter ?",
			a = "/g écrit dans le chat de guilde. Ouvrez la fenêtre de guilde depuis la fenêtre sociale ou la barre de menu pour voir tous les membres. Quittez la guilde depuis la fenêtre de guilde ou avec /gquit.",
		},
		es = {
			q = "¿Cómo escribo en mi hermandad y cómo la dejo?",
			a = "/g escribe en el chat de hermandad. Abre la ventana de hermandad desde la ventana social o la barra de menú para ver a todos los miembros. Abandona la hermandad desde esa ventana o con /gquit.",
		},
		it = {
			q = "Come scrivo in gilda, e come la lascio?",
			a = "/g scrive nella chat di gilda. Apri la finestra della gilda dalla finestra sociale o dalla barra dei menu per vedere tutti i membri. Lascia la gilda dalla finestra della gilda o con /gquit.",
		},
		ru = {
			q = "Как писать в гильдию и как её покинуть?",
			a = "/g пишет в чат гильдии. Окно гильдии открывается из окна «Общение» или панели меню, там видны все участники. Покинуть гильдию можно в окне гильдии или командой /gquit.",
		},
		pt = {
			q = "Como escrevo na guilda, e como saio dela?",
			a = "/g escreve no chat da guilda. Abra a janela da guilda pela janela social ou pela barra de menu para ver todos os membros. Saia da guilda pela janela da guilda ou com /gquit.",
		},
	},
	{
		id = "social-report",
		de = {
			q = "Wie melde ich einen Spieler?",
			a = "Rechtsklick auf seinen Namen oder sein Porträt und „Melden“, dann den Grund wählen. Gold-Spam, Beleidigungen, Betrug und Bots solltest du immer melden. Danach am besten ignorieren.",
		},
		en = {
			q = "How do I report a player?",
			a = "Right-click their name or portrait, choose Report and pick the reason. Always report gold spam, abuse, scams and bots. Then ignore them.",
		},
		fr = {
			q = "Comment signaler un joueur ?",
			a = "Clic droit sur son nom ou son portrait, choisissez « Signaler » puis le motif. Signalez toujours le spam de vente d'or, les insultes, les arnaques et les bots. Ensuite, ignorez-le.",
		},
		es = {
			q = "¿Cómo denuncio a un jugador?",
			a = "Clic derecho en su nombre o retrato, elige «Denunciar» y selecciona el motivo. Denuncia siempre el spam de oro, los insultos, las estafas y los bots. Después, ignóralo.",
		},
		it = {
			q = "Come segnalo un giocatore?",
			a = "Clic destro sul nome o sul ritratto, scegli «Segnala» e indica il motivo. Segnala sempre spam di oro, insulti, truffe e bot. Poi ignoralo.",
		},
		ru = {
			q = "Как пожаловаться на игрока?",
			a = "Щёлкните правой кнопкой по имени или портрету, выберите «Пожаловаться» и укажите причину. Всегда жалуйтесь на спам продажи золота, оскорбления, мошенничество и ботов. Затем добавьте игрока в игнор.",
		},
		pt = {
			q = "Como denuncio um jogador?",
			a = "Clique com o botão direito no nome ou no retrato, escolha \"Denunciar\" e o motivo. Sempre denuncie spam de ouro, ofensas, golpes e bots. Depois, ignore.",
		},
	},
	{
		id = "social-rp",
		de = {
			q = "Was muss ich auf einem Rollenspiel-Regelwerk beachten?",
			a = "Dort bleiben viele Spieler in ihrer Rolle: Namen passen zur Welt, und im öffentlichen Chat wird in der Rolle gesprochen. Außerhalb der Rolle schreibt man üblicherweise in Klammern oder im Flüstern. Sei rücksichtsvoll, dann hast du dort viel Spaß.",
		},
		en = {
			q = "What should I keep in mind on a Roleplaying rule set?",
			a = "Many players stay in character there: names fit the world, and public chat is spoken in character. Out-of-character talk usually goes in brackets or whispers. Be considerate and you will have a lot of fun there.",
		},
		fr = {
			q = "Que dois-je savoir sur un ensemble de règles Jeu de rôle ?",
			a = "Beaucoup de joueurs y restent dans leur personnage : les noms collent à l'univers et on parle en personnage dans le chat public. Ce qui est hors personnage s'écrit généralement entre parenthèses ou en chuchotement. Soyez respectueux et vous vous y amuserez beaucoup.",
		},
		es = {
			q = "¿Qué debo tener en cuenta en un conjunto de reglas de Rol?",
			a = "Allí muchos jugadores se mantienen en su papel: los nombres encajan con el mundo y en el chat público se habla en personaje. Lo que está fuera del personaje suele ir entre paréntesis o por susurro. Sé considerado y te lo pasarás muy bien.",
		},
		it = {
			q = "Cosa devo sapere su un set di regole Gioco di ruolo?",
			a = "Lì molti giocatori restano nel personaggio: i nomi si adattano al mondo e in chat pubblica si parla nel ruolo. Ciò che è fuori dal personaggio di solito va tra parentesi o nei sussurri. Sii rispettoso e ti divertirai molto.",
		},
		ru = {
			q = "Что важно знать о ролевом наборе правил?",
			a = "Там многие игроки отыгрывают роль: имена соответствуют миру, а в общем чате говорят от лица персонажа. Всё, что вне роли, обычно пишут в скобках или шёпотом. Будьте внимательны к другим, и вам там понравится.",
		},
		pt = {
			q = "O que devo saber num conjunto de regras de Interpretação?",
			a = "Lá muitos jogadores ficam no papel: os nomes combinam com o mundo e no chat público se fala como o personagem. Conversas fora do personagem costumam ir entre parênteses ou por sussurro. Seja respeitoso e você vai se divertir muito.",
		},
	},
})
