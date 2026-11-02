local _, ns = ...

-- FAQ: Warlock. See Core/Faq.lua for the format.
ns.Faq.Add("warlock", {
	{
		id = "warlock-demons",
		de = {
			q = "Wie bekomme ich neue Dämonen?",
			a = "Den Wichtel hast du von Anfang an. Leerwandler, Sukkubus und Teufelsjäger bekommst du über Klassenquests, etwa ab Stufe 10, 20 und 30; dein Hexenmeisterlehrer schickt dich los. Danach beschwörst du sie über dein Zauberbuch.",
		},
		en = {
			q = "How do I get new demons?",
			a = "You have the Imp from the start. Voidwalker, Succubus and Felhunter come from class quests at about levels 10, 20 and 30; your warlock trainer sends you off. Then you summon them from your spellbook.",
		},
		fr = {
			q = "Comment obtenir de nouveaux démons ?",
			a = "Vous avez le Diablotin dès le départ. Le Marcheur du Vide, la Succube et le Chasseur corrompu viennent de quêtes de classe vers les niveaux 10, 20 et 30 ; votre maître des démonistes vous y envoie. Ensuite vous les invoquez depuis votre grimoire.",
		},
		es = {
			q = "¿Cómo consigo nuevos demonios?",
			a = "Tienes el Diablillo desde el principio. El Abisario, el Súcubo y el Manáfago vienen de misiones de clase hacia los niveles 10, 20 y 30; tu instructor de brujos te envía a ellas. Después los invocas desde tu libro de hechizos.",
		},
		it = {
			q = "Come ottengo nuovi demoni?",
			a = "Hai l'Imp fin dall'inizio. Ombra del Vuoto, Succube e Vilsegugio arrivano da missioni di classe verso i livelli 10, 20 e 30; il tuo istruttore degli stregoni ti ci manda. Poi li evochi dal libro degli incantesimi.",
		},
		ru = {
			q = "Как получить новых демонов?",
			a = "Беса вы получаете с самого начала. Демон Бездны, Суккуб и Охотник Скверны даются за классовые задания примерно на 10-м, 20-м и 30-м уровнях; наставник чернокнижников отправит вас за ними. Затем вы призываете их из книги заклинаний.",
		},
		pt = {
			q = "Como consigo novos demônios?",
			a = "Você tem o Diabrete desde o início. Emissário do Caos, Súcubo e Sabujo Vil vêm de missões de classe por volta dos níveis 10, 20 e 30; o seu instrutor de bruxos o envia para elas. Depois você os evoca pelo grimório.",
		},
	},
	{
		id = "warlock-which-demon",
		de = {
			q = "Welchen Dämon soll ich benutzen?",
			a = "Beim Leveln meist den Leerwandler: Er hält die Gegner von dir fern und steckt viel ein. Der Wichtel macht Schaden aus der Ferne und gibt Ausdauer, gut in Gruppen. Der Sukkubus macht viel Schaden, der Teufelsjäger ist stark gegen Zauberwirker.",
		},
		en = {
			q = "Which demon should I use?",
			a = "While levelling usually the Voidwalker: it keeps enemies off you and takes a lot of hits. The Imp deals ranged damage and gives stamina, good in groups. The Succubus deals high damage, the Felhunter is strong against casters.",
		},
		fr = {
			q = "Quel démon utiliser ?",
			a = "Pour monter de niveau, généralement le Marcheur du Vide : il retient les ennemis loin de vous et encaisse beaucoup de coups. Le Diablotin inflige des dégâts à distance et donne de l'endurance, bien en groupe. La Succube inflige de gros dégâts, le Chasseur corrompu est fort contre les lanceurs de sorts.",
		},
		es = {
			q = "¿Qué demonio debo usar?",
			a = "Para subir de nivel, normalmente el Abisario: mantiene a los enemigos lejos de ti y aguanta muchos golpes. El Diablillo hace daño a distancia y da aguante, bueno en grupo. El Súcubo hace mucho daño y el Manáfago es fuerte contra lanzadores de hechizos.",
		},
		it = {
			q = "Quale demone devo usare?",
			a = "Per salire di livello di solito l'Ombra del Vuoto: tiene i nemici lontani da te e incassa molti colpi. L'Imp infligge danni a distanza e dà tempra, utile in gruppo. La Succube infligge molti danni, il Vilsegugio è forte contro gli incantatori.",
		},
		ru = {
			q = "Какого демона использовать?",
			a = "При прокачке обычно Демона Бездны: он отвлекает врагов от вас и выдерживает много ударов. Бес наносит урон издалека и даёт выносливость, хорош в группе. Суккуб наносит много урона, Охотник Скверны силён против заклинателей.",
		},
		pt = {
			q = "Qual demônio devo usar?",
			a = "Para subir de nível, normalmente o Emissário do Caos: ele mantém os inimigos longe de você e aguenta muitos golpes. O Diabrete causa dano à distância e dá vigor, bom em grupo. A Súcubo causa muito dano, o Sabujo Vil é forte contra conjuradores.",
		},
	},
	{
		id = "warlock-soul-shards",
		de = {
			q = "Was sind Seelensplitter?",
			a = "Seelensplitter brauchst du für die meisten Dämonenbeschwörungen, Gesundheitssteine und Seelensteine. Du bekommst sie mit „Seele entziehen“, am sichersten, wenn ein Gegner, der Erfahrung gibt, stirbt, während der Zauber auf ihm wirkt. In WoW: Forever kann er auch schon während des Wirkens Splitter geben. Sammle immer ein paar auf Vorrat.",
		},
		en = {
			q = "What are soul shards?",
			a = "You need soul shards for most demon summons, healthstones and soulstones. You get them with Drain Soul, most reliably when an enemy that gives experience dies while it is channelled on it. In WoW: Forever the spell can also give shards while you channel it. Always keep a few in stock.",
		},
		fr = {
			q = "Que sont les fragments d'âme ?",
			a = "Il vous faut des fragments d'âme pour la plupart des invocations de démons, les pierres de soins et les pierres d'âme. Vous les obtenez avec Siphon d'âme, le plus sûrement quand un ennemi qui rapporte de l'expérience meurt pendant que vous le canalisez sur lui. Dans WoW: Forever, le sort peut aussi en donner pendant la canalisation. Gardez-en toujours quelques-uns en réserve.",
		},
		es = {
			q = "¿Qué son los fragmentos de alma?",
			a = "Necesitas fragmentos de alma para la mayoría de invocaciones de demonios, piedras de salud y piedras de alma. Los consigues con Drenar alma, sobre todo cuando un enemigo que da experiencia muere mientras lo canalizas sobre él. En WoW: Forever el hechizo también puede darlos mientras lo canalizas. Ten siempre unos cuantos de reserva.",
		},
		it = {
			q = "Che cosa sono i frammenti d'anima?",
			a = "Ti servono frammenti d'anima per la maggior parte delle evocazioni di demoni, per le pietre della salute e per le pietre dell'anima. Li ottieni con Risucchio d'Anima, con più sicurezza quando un nemico che dà esperienza muore mentre lo incanali su di lui. In WoW: Forever l'incantesimo può darne anche durante la canalizzazione. Tienine sempre qualcuno di scorta.",
		},
		ru = {
			q = "Что такое осколки души?",
			a = "Осколки души нужны для большинства призывов демонов, камней здоровья и камней души. Их дают «Похищением души», вернее всего, если враг, дающий опыт, умирает, пока вы применяете к нему это заклинание. В WoW: Forever оно может давать осколки и во время поддержания. Всегда держите несколько в запасе.",
		},
		pt = {
			q = "O que são fragmentos de alma?",
			a = "Você precisa de fragmentos de alma para a maioria das evocações de demônios, pedras de vida e pedras da alma. Você os ganha com Drenar Alma, com mais certeza quando um inimigo que dá experiência morre enquanto você canaliza o feitiço nele. No WoW: Forever o feitiço também pode dar fragmentos durante a canalização. Tenha sempre alguns de reserva.",
		},
	},
	{
		id = "warlock-shard-bag",
		de = {
			q = "Meine Taschen sind voller Seelensplitter. Was tun?",
			a = "Besorg dir eine Seelentasche: Schneider stellen sie her, oder du kaufst sie im Auktionshaus. In ihr liegen nur Seelensplitter, deine anderen Taschen bleiben frei. Mehr als 10 bis 20 Splitter brauchst du selten.",
		},
		en = {
			q = "My bags are full of soul shards. What do I do?",
			a = "Get a soul pouch: tailors make them, or buy one in the auction house. It only holds soul shards, so your other bags stay free. You rarely need more than 10 to 20 shards.",
		},
		fr = {
			q = "Mes sacs sont pleins de fragments d'âme. Que faire ?",
			a = "Procurez-vous une bourse d'âme : les tailleurs en fabriquent, ou achetez-en une à l'hôtel des ventes. Elle ne contient que des fragments d'âme, vos autres sacs restent donc libres. Vous avez rarement besoin de plus de 10 à 20 fragments.",
		},
		es = {
			q = "Mis bolsas están llenas de fragmentos de alma. ¿Qué hago?",
			a = "Consigue una bolsa de almas: los sastres las fabrican, o compra una en la casa de subastas. Solo admite fragmentos de alma, así que tus otras bolsas quedan libres. Rara vez necesitas más de 10 a 20 fragmentos.",
		},
		it = {
			q = "Le mie borse sono piene di frammenti d'anima. Che cosa faccio?",
			a = "Procurati una sacca delle anime: la fanno i sarti, oppure comprala alla casa d'aste. Contiene solo frammenti d'anima, così le altre borse restano libere. Raramente servono più di 10-20 frammenti.",
		},
		ru = {
			q = "Сумки забиты осколками души. Что делать?",
			a = "Заведите сумку душ: их шьют портные, или купите на аукционе. В ней хранятся только осколки души, так что остальные сумки остаются свободными. Больше 10–20 осколков нужно редко.",
		},
		pt = {
			q = "Minhas bolsas estão cheias de fragmentos de alma. O que faço?",
			a = "Arranje uma bolsa de almas: alfaiates fazem, ou compre uma na casa de leilões. Ela só guarda fragmentos de alma, então as outras bolsas ficam livres. Raramente você precisa de mais de 10 a 20 fragmentos.",
		},
	},
	{
		id = "warlock-leveling",
		de = {
			q = "Wie kämpfe ich als Hexenmeister beim Leveln?",
			a = "Schick deinen Dämon vor, setz „Verderbnis“ und „Fluch der Pein“ und vielleicht „Feuerbrand“, dann „Schattenblitz“ oder den Zauberstab. Bei wenig Gesundheit hilft „Lebensentzug“. Gegen den letzten Rest „Seele entziehen“ für einen Splitter.",
		},
		en = {
			q = "How do I fight as a warlock while levelling?",
			a = "Send your demon in, apply Corruption and Curse of Agony and maybe Immolate, then Shadow Bolt or your wand. When your health is low, Drain Life helps. On the last bit, Drain Soul for a shard.",
		},
		fr = {
			q = "Comment combattre en démoniste pendant la montée de niveau ?",
			a = "Envoyez votre démon, appliquez Corruption et Malédiction d'agonie, éventuellement Immolation, puis Trait de l'ombre ou votre baguette. Quand votre vie est basse, Drain de vie aide. Sur la fin, Siphon d'âme pour un fragment.",
		},
		es = {
			q = "¿Cómo lucho como brujo mientras subo de nivel?",
			a = "Envía a tu demonio, aplica Corrupción y Maldición de agonía y quizá Inmolar, luego Descarga de las Sombras o tu varita. Cuando tengas poca salud, Drenar vida ayuda. Al final, Drenar alma para conseguir un fragmento.",
		},
		it = {
			q = "Come combatto da stregone mentre salgo di livello?",
			a = "Manda il demone, applica Corruzione e Maledizione dell'Agonia ed eventualmente Immolazione, poi Dardo d'Ombra o la bacchetta. Quando la salute è bassa aiuta Risucchio di Vita. Alla fine, Risucchio d'Anima per un frammento.",
		},
		ru = {
			q = "Как чернокнижнику сражаться при прокачке?",
			a = "Отправьте демона, наложите «Порчу» и «Проклятие агонии», возможно «Жертвенный огонь», затем «Стрела Тьмы» или жезл. Когда здоровья мало, помогает «Похищение жизни». Под конец — «Похищение души» ради осколка.",
		},
		pt = {
			q = "Como luto como bruxo enquanto subo de nível?",
			a = "Mande o demônio, aplique Corrupção e Maldição da Agonia e talvez Imolar, depois Seta Sombria ou a varinha. Quando a vida estiver baixa, Drenar Vida ajuda. No finalzinho, Drenar Alma para ganhar um fragmento.",
		},
	},
	{
		id = "warlock-life-tap",
		de = {
			q = "Was ist „Aderlass“?",
			a = "„Aderlass“ wandelt Gesundheit in Mana um. Zusammen mit „Lebensentzug“ und Gesundheitssteinen musst du so viel seltener trinken. Pass nur auf, dass du nicht mit zu wenig Gesundheit in den nächsten Kampf gehst.",
		},
		en = {
			q = "What is Life Tap?",
			a = "Life Tap turns health into mana. Together with Drain Life and healthstones you need to drink far less often. Just make sure you do not start the next fight with too little health.",
		},
		fr = {
			q = "Qu'est-ce que Connexion ?",
			a = "Connexion transforme de la vie en mana. Avec Drain de vie et les pierres de soins, vous devez boire beaucoup moins souvent. Veillez simplement à ne pas commencer le combat suivant avec trop peu de vie.",
		},
		es = {
			q = "¿Qué es Transfusión de vida?",
			a = "Transfusión de vida convierte salud en maná. Junto con Drenar vida y las piedras de salud, tienes que beber mucho menos. Solo asegúrate de no empezar el siguiente combate con muy poca salud.",
		},
		it = {
			q = "Che cos'è Prelievo di Vita?",
			a = "Prelievo di Vita trasforma la salute in mana. Insieme a Risucchio di Vita e alle pietre della salute devi bere molto meno spesso. Fai solo attenzione a non iniziare il combattimento successivo con troppa poca salute.",
		},
		ru = {
			q = "Что такое «Жизнеотвод»?",
			a = "«Жизнеотвод» превращает здоровье в ману. Вместе с «Похищением жизни» и камнями здоровья пить приходится гораздо реже. Только не начинайте следующий бой со слишком малым запасом здоровья.",
		},
		pt = {
			q = "O que é Sangria?",
			a = "Sangria transforma vida em mana. Junto com Drenar Vida e pedras de vida, você precisa beber bem menos. Só tome cuidado para não começar a próxima luta com vida de menos.",
		},
	},
	{
		id = "warlock-health-funnel",
		de = {
			q = "Wie heile ich meinen Dämon?",
			a = "Mit „Lebenslinie“: Du gibst deinem Dämon über ein paar Sekunden Gesundheit von dir ab. Außerhalb des Kampfes regeneriert er auch langsam von selbst. Stirbt er, beschwörst du ihn neu.",
		},
		en = {
			q = "How do I heal my demon?",
			a = "With Health Funnel: you transfer your own health to your demon over a few seconds. Out of combat it also regenerates slowly. If it dies, summon it again.",
		},
		fr = {
			q = "Comment soigner mon démon ?",
			a = "Avec Captation de vie : vous transférez votre propre vie à votre démon pendant quelques secondes. Hors combat, il récupère aussi lentement. S'il meurt, invoquez-le à nouveau.",
		},
		es = {
			q = "¿Cómo curo a mi demonio?",
			a = "Con Canalizar salud: transfieres tu propia salud a tu demonio durante unos segundos. Fuera de combate también se regenera despacio. Si muere, invócalo de nuevo.",
		},
		it = {
			q = "Come curo il mio demone?",
			a = "Con Incanala Salute: trasferisci la tua salute al demone per alcuni secondi. Fuori dal combattimento si rigenera anche lentamente. Se muore, evocalo di nuovo.",
		},
		ru = {
			q = "Как вылечить демона?",
			a = "«Каналом здоровья»: вы несколько секунд передаёте своё здоровье демону. Вне боя он также медленно восстанавливается. Если он погиб, призовите его снова.",
		},
		pt = {
			q = "Como curo meu demônio?",
			a = "Com Funil de Vida: você transfere sua própria vida ao demônio por alguns segundos. Fora de combate ele também se regenera devagar. Se ele morrer, evoque-o de novo.",
		},
	},
	{
		id = "warlock-healthstone",
		de = {
			q = "Was sind Gesundheitssteine?",
			a = "Mit „Gesundheitsstein herstellen“ machst du aus einem Seelensplitter einen Stein, der dich sofort heilt. Gib auch deiner Gruppe welche, über das Handelsfenster. Ein Gesundheitsstein im Notfall rettet oft einen Kampf.",
		},
		en = {
			q = "What are healthstones?",
			a = "Create Healthstone turns a soul shard into a stone that heals you instantly. Give some to your group too, through the trade window. A healthstone in an emergency often saves a fight.",
		},
		fr = {
			q = "Que sont les pierres de soins ?",
			a = "Création de pierre de soins transforme un fragment d'âme en une pierre qui vous soigne instantanément. Donnez-en aussi à votre groupe via la fenêtre d'échange. Une pierre de soins en cas d'urgence sauve souvent un combat.",
		},
		es = {
			q = "¿Qué son las piedras de salud?",
			a = "Crear piedra de salud convierte un fragmento de alma en una piedra que te cura al instante. Da algunas también a tu grupo mediante la ventana de comercio. Una piedra de salud en una emergencia suele salvar un combate.",
		},
		it = {
			q = "Che cosa sono le pietre della salute?",
			a = "Crea Pietra della Salute trasforma un frammento d'anima in una pietra che ti cura all'istante. Danne anche al gruppo tramite la finestra di scambio. Una pietra della salute in un'emergenza spesso salva un combattimento.",
		},
		ru = {
			q = "Что такое камни здоровья?",
			a = "«Создание камня здоровья» превращает осколок души в камень, который мгновенно вас лечит. Раздайте их и группе через окно обмена. Камень здоровья в экстренной ситуации часто спасает бой.",
		},
		pt = {
			q = "O que são pedras de vida?",
			a = "Criar Pedra de Vida transforma um fragmento de alma numa pedra que cura você na hora. Dê algumas também ao grupo pela janela de troca. Uma pedra de vida numa emergência muitas vezes salva a luta.",
		},
	},
	{
		id = "warlock-soulstone",
		de = {
			q = "Was ist ein Seelenstein?",
			a = "Ein Seelenstein, auf dich oder einen Heiler gelegt, erlaubt nach dem Tod die Wiederbelebung an Ort und Stelle. Leg ihn vor gefährlichen Kämpfen auf den Heiler der Gruppe. Er kostet einen Seelensplitter und hat eine lange Abklingzeit.",
		},
		en = {
			q = "What is a soulstone?",
			a = "A soulstone placed on yourself or a healer allows resurrecting on the spot after death. Put it on the group's healer before dangerous fights. It costs a soul shard and has a long cooldown.",
		},
		fr = {
			q = "Qu'est-ce qu'une pierre d'âme ?",
			a = "Une pierre d'âme placée sur vous ou sur un soigneur permet de ressusciter sur place après la mort. Placez-la sur le soigneur du groupe avant les combats dangereux. Elle coûte un fragment d'âme et a un long temps de recharge.",
		},
		es = {
			q = "¿Qué es una piedra de alma?",
			a = "Una piedra de alma puesta sobre ti o sobre un sanador permite resucitar en el sitio tras morir. Pónsela al sanador del grupo antes de combates peligrosos. Cuesta un fragmento de alma y tiene un tiempo de reutilización largo.",
		},
		it = {
			q = "Che cos'è una pietra dell'anima?",
			a = "Una pietra dell'anima posta su di te o su un guaritore permette di resuscitare sul posto dopo la morte. Mettila sul guaritore del gruppo prima dei combattimenti pericolosi. Costa un frammento d'anima e ha un lungo tempo di recupero.",
		},
		ru = {
			q = "Что такое камень души?",
			a = "Камень души, наложенный на вас или на лекаря, позволяет воскреснуть на месте после смерти. Накладывайте его на лекаря группы перед опасными боями. Он стоит осколок души и долго восстанавливается.",
		},
		pt = {
			q = "O que é uma pedra da alma?",
			a = "Uma pedra da alma colocada em você ou num curador permite ressuscitar no local após a morte. Coloque-a no curador do grupo antes de lutas perigosas. Ela custa um fragmento de alma e tem um tempo de recarga longo.",
		},
	},
	{
		id = "warlock-summon",
		de = {
			q = "Wie hole ich Gruppenmitglieder zu mir?",
			a = "Mit dem „Ritual der Beschwörung“: Du und zwei weitere Gruppenmitglieder klicken das Portal an, und ein weiteres Gruppenmitglied wird zu euch geholt. Das kostet einen Seelensplitter, spart aber lange Wege, besonders vor Dungeons.",
		},
		en = {
			q = "How do I bring party members to me?",
			a = "With Ritual of Summoning: you and two other party members click the portal, and another party member is pulled to you. It costs a soul shard but saves long trips, especially before dungeons.",
		},
		fr = {
			q = "Comment faire venir des membres du groupe jusqu'à moi ?",
			a = "Avec Rituel d'invocation : vous et deux autres membres du groupe cliquez sur le portail, et un autre membre du groupe est attiré jusqu'à vous. Cela coûte un fragment d'âme mais évite de longs trajets, surtout avant les donjons.",
		},
		es = {
			q = "¿Cómo traigo a miembros del grupo hasta mí?",
			a = "Con Ritual de invocación: tú y otros dos miembros del grupo hacéis clic en el portal y otro miembro del grupo es atraído hasta ti. Cuesta un fragmento de alma, pero ahorra largos viajes, sobre todo antes de las mazmorras.",
		},
		it = {
			q = "Come porto i membri del gruppo da me?",
			a = "Con Rituale d'Evocazione: tu e altri due membri del gruppo cliccate sul portale e un altro membro viene portato da te. Costa un frammento d'anima ma risparmia lunghi viaggi, soprattutto prima delle spedizioni.",
		},
		ru = {
			q = "Как призвать членов группы к себе?",
			a = "«Ритуалом призыва»: вы и ещё двое членов группы щёлкаете по порталу, и к вам переносится другой участник группы. Это стоит осколок души, но экономит долгие путешествия, особенно перед подземельями.",
		},
		pt = {
			q = "Como trago membros do grupo até mim?",
			a = "Com Ritual de Evocação: você e mais dois membros do grupo clicam no portal, e outro membro do grupo é puxado até você. Custa um fragmento de alma, mas poupa longas viagens, principalmente antes de masmorras.",
		},
	},
	{
		id = "warlock-fear",
		de = {
			q = "Wie benutze ich „Furcht“?",
			a = "„Furcht“ lässt einen Gegner eine Weile in Panik davonlaufen. Gut, um Zeit für deine Zauber über Zeit zu gewinnen. Pass auf, dass er keine weiteren Gegner aufscheucht; in Dungeons ohne Absprache lieber nicht.",
		},
		en = {
			q = "How do I use Fear?",
			a = "Fear makes an enemy run away in panic for a while. Good for buying time while your damage over time ticks. Watch that it does not pull more enemies; in dungeons, do not use it without agreeing first.",
		},
		fr = {
			q = "Comment utiliser Peur ?",
			a = "Peur fait fuir un ennemi en panique pendant un moment. Utile pour gagner du temps pendant que vos dégâts sur la durée agissent. Faites attention qu'il n'attire pas d'autres ennemis ; en donjon, ne l'utilisez pas sans vous être mis d'accord.",
		},
		es = {
			q = "¿Cómo uso Miedo?",
			a = "Miedo hace que un enemigo huya despavorido durante un tiempo. Sirve para ganar tiempo mientras actúa tu daño con el tiempo. Vigila que no atraiga a más enemigos; en mazmorras, no lo uses sin haberlo acordado antes.",
		},
		it = {
			q = "Come uso Paura?",
			a = "Paura fa fuggire un nemico in preda al panico per un po'. Utile per guadagnare tempo mentre agiscono i danni nel tempo. Attento che non attiri altri nemici; nelle spedizioni non usarla senza prima esservi accordati.",
		},
		ru = {
			q = "Как пользоваться «Страхом»?",
			a = "«Страх» заставляет врага в панике убегать некоторое время. Это помогает выиграть время, пока действует ваш периодический урон. Следите, чтобы он не притащил новых врагов; в подземельях не применяйте его без договорённости.",
		},
		pt = {
			q = "Como uso Medo?",
			a = "Medo faz um inimigo fugir em pânico por um tempo. Bom para ganhar tempo enquanto o seu dano ao longo do tempo age. Cuidado para ele não puxar mais inimigos; em masmorras, não use sem combinar antes.",
		},
	},
	{
		id = "warlock-voidwalker-tank",
		de = {
			q = "Wie hält mein Leerwandler die Gegner bei sich?",
			a = "Er nutzt „Qual“ automatisch, um Bedrohung aufzubauen. Gib ihm ein paar Sekunden, bevor du viel Schaden machst. In Gruppen schalte Qual auf der Tierleiste ab, damit er dem Tank nichts wegnimmt.",
		},
		en = {
			q = "How does my Voidwalker keep enemies on itself?",
			a = "It uses Torment automatically to build threat. Give it a few seconds before you deal a lot of damage. In groups, turn off Torment on the pet bar so it does not steal enemies from the tank.",
		},
		fr = {
			q = "Comment mon Marcheur du Vide garde-t-il les ennemis sur lui ?",
			a = "Il utilise automatiquement Tourment pour générer de la menace. Laissez-lui quelques secondes avant d'infliger beaucoup de dégâts. En groupe, désactivez Tourment sur la barre du familier pour qu'il ne vole pas les ennemis au tank.",
		},
		es = {
			q = "¿Cómo mantiene mi Abisario a los enemigos sobre él?",
			a = "Usa Tormento automáticamente para generar amenaza. Dale unos segundos antes de hacer mucho daño. En grupo, desactiva Tormento en la barra de mascota para que no le robe enemigos al tanque.",
		},
		it = {
			q = "Come fa la mia Ombra del Vuoto a tenere i nemici su di sé?",
			a = "Usa automaticamente Tormento per generare minaccia. Dagli qualche secondo prima di infliggere molti danni. In gruppo disattiva Tormento nella barra del famiglio, così non ruba i nemici al tank.",
		},
		ru = {
			q = "Как мой Демон Бездны удерживает врагов на себе?",
			a = "Он автоматически использует «Мучение», чтобы создавать угрозу. Дайте ему несколько секунд, прежде чем наносить много урона. В группе отключите «Мучение» на панели питомца, чтобы он не отбирал врагов у танка.",
		},
		pt = {
			q = "Como meu Emissário do Caos mantém os inimigos nele?",
			a = "Ele usa Tormento automaticamente para gerar ameaça. Dê alguns segundos a ele antes de causar muito dano. Em grupo, desative Tormento na barra do ajudante para ele não roubar inimigos do tanque.",
		},
	},
	{
		id = "warlock-armor",
		de = {
			q = "Welche Rüstung soll ich als Hexenmeister nutzen?",
			a = "„Dämonenhaut“ und später „Dämonenrüstung“ erhöhen Rüstung und Regeneration. Halte sie immer aktiv. Als Kleidung trägst du Stoff.",
		},
		en = {
			q = "Which armour spell should I use as a warlock?",
			a = "Demon Skin and later Demon Armor increase armour and regeneration. Keep them up at all times. You wear cloth.",
		},
		fr = {
			q = "Quel sort d'armure utiliser en démoniste ?",
			a = "Peau de démon puis, plus tard, Armure démoniaque augmentent l'armure et la régénération. Gardez-les actives en permanence. Vous portez du tissu.",
		},
		es = {
			q = "¿Qué hechizo de armadura uso como brujo?",
			a = "Piel demoníaca y, más adelante, Armadura demoníaca aumentan la armadura y la regeneración. Mantenlas activas siempre. Llevas tela.",
		},
		it = {
			q = "Quale incantesimo d'armatura uso da stregone?",
			a = "Pelle Demoniaca e in seguito Armatura Demoniaca aumentano armatura e rigenerazione. Tienile sempre attive. Indossi stoffa.",
		},
		ru = {
			q = "Какой доспех использовать чернокнижнику?",
			a = "«Шкура демона», а позже «Демонический доспех» повышают броню и восстановление. Поддерживайте их постоянно. Вы носите тканевую броню.",
		},
		pt = {
			q = "Qual feitiço de armadura uso como bruxo?",
			a = "Pele Demoníaca e, mais tarde, Armadura Demoníaca aumentam armadura e regeneração. Mantenha-as sempre ativas. Você usa tecido.",
		},
	},
	{
		id = "warlock-banish",
		de = {
			q = "Was kann „Verbannen“?",
			a = "Damit hältst du einen Dämon oder ein Elementar eine Weile aus dem Kampf heraus; in der Zeit kann er nichts tun und nimmt keinen Schaden. In Dungeons mit solchen Gegnern ist das deine Kontrollaufgabe.",
		},
		en = {
			q = "What can Banish do?",
			a = "It removes a demon or elemental from the fight for a while; during that time it cannot act and takes no damage. In dungeons with such enemies, this is your crowd-control job.",
		},
		fr = {
			q = "Que permet Bannir ?",
			a = "Il retire un démon ou un élémentaire du combat pendant un moment ; durant ce temps, il ne peut pas agir et ne subit aucun dégât. Dans les donjons avec de tels ennemis, c'est votre tâche de contrôle.",
		},
		es = {
			q = "¿Qué puede hacer Desterrar?",
			a = "Saca a un demonio o elemental del combate durante un tiempo; mientras tanto no puede actuar ni recibe daño. En mazmorras con este tipo de enemigos, es tu tarea de control.",
		},
		it = {
			q = "Che cosa può fare Esilio?",
			a = "Toglie dal combattimento un demone o un elementale per un po'; in quel tempo non può agire e non subisce danni. Nelle spedizioni con nemici simili è il tuo compito di controllo.",
		},
		ru = {
			q = "Что умеет «Изгнание»?",
			a = "Оно на время выводит демона или элементаля из боя: всё это время он не может действовать и не получает урона. В подземельях с такими врагами это ваша задача по контролю.",
		},
		pt = {
			q = "O que Banir pode fazer?",
			a = "Tira um demônio ou elemental da luta por um tempo; durante esse tempo ele não pode agir nem recebe dano. Em masmorras com esses inimigos, essa é a sua tarefa de controle.",
		},
	},
	{
		id = "warlock-unending-breath",
		de = {
			q = "Kann ich länger unter Wasser bleiben?",
			a = "Ja, mit „Unendlicher Atem“: Du und ein Gruppenmitglied könnt lange unter Wasser atmen. Praktisch für Quests unter Wasser.",
		},
		en = {
			q = "Can I stay underwater longer?",
			a = "Yes, with Unending Breath: you or a party member can breathe underwater for a long time. Handy for underwater quests.",
		},
		fr = {
			q = "Puis-je rester plus longtemps sous l'eau ?",
			a = "Oui, avec Respiration interminable : vous ou un membre du groupe pouvez respirer longtemps sous l'eau. Pratique pour les quêtes sous-marines.",
		},
		es = {
			q = "¿Puedo estar más tiempo bajo el agua?",
			a = "Sí, con Aliento inagotable: tú o un miembro del grupo podéis respirar bajo el agua mucho tiempo. Útil para misiones bajo el agua.",
		},
		it = {
			q = "Posso restare più a lungo sott'acqua?",
			a = "Sì, con Respiro Infinito: tu o un membro del gruppo potete respirare sott'acqua a lungo. Comodo per le missioni subacquee.",
		},
		ru = {
			q = "Можно ли дольше оставаться под водой?",
			a = "Да, с «Бесконечным дыханием»: вы или член группы можете долго дышать под водой. Удобно для подводных заданий.",
		},
		pt = {
			q = "Posso ficar mais tempo debaixo d'água?",
			a = "Sim, com Fôlego Interminável: você ou um membro do grupo pode respirar debaixo d'água por muito tempo. Prático para missões submersas.",
		},
	},
	{
		id = "warlock-stats",
		de = {
			q = "Welche Werte sind für Hexenmeister wichtig?",
			a = "Ausdauer ist für Hexenmeister besonders wertvoll, weil „Aderlass“ Gesundheit in Mana umwandelt. Dazu Intelligenz und Zauberschaden. Ein guter Zauberstab hilft beim Leveln sehr.",
		},
		en = {
			q = "Which stats matter for warlocks?",
			a = "Stamina is especially valuable for warlocks because Life Tap turns health into mana. Plus intellect and spell damage. A good wand helps a lot while levelling.",
		},
		fr = {
			q = "Quelles caractéristiques comptent pour les démonistes ?",
			a = "L'endurance est particulièrement précieuse pour les démonistes, car Connexion transforme la vie en mana. S'y ajoutent l'intelligence et les dégâts des sorts. Une bonne baguette aide beaucoup pendant la montée de niveau.",
		},
		es = {
			q = "¿Qué atributos importan a los brujos?",
			a = "El aguante es especialmente valioso para los brujos, porque Transfusión de vida convierte salud en maná. Además, intelecto y daño con hechizos. Una buena varita ayuda mucho al subir de nivel.",
		},
		it = {
			q = "Quali statistiche contano per gli stregoni?",
			a = "La tempra è particolarmente preziosa per gli stregoni, perché Prelievo di Vita trasforma la salute in mana. Poi intelletto e danni degli incantesimi. Una buona bacchetta aiuta molto mentre sali di livello.",
		},
		ru = {
			q = "Какие характеристики важны чернокнижнику?",
			a = "Выносливость особенно ценна для чернокнижника, ведь «Жизнеотвод» превращает здоровье в ману. Плюс интеллект и урон от заклинаний. Хороший жезл сильно помогает при прокачке.",
		},
		pt = {
			q = "Quais atributos importam para bruxos?",
			a = "Vigor é especialmente valioso para bruxos, porque Sangria transforma vida em mana. Além disso, intelecto e dano mágico. Uma boa varinha ajuda muito ao subir de nível.",
		},
	},
	{
		id = "warlock-talents",
		de = {
			q = "Welche Talentbäume haben Hexenmeister?",
			a = "Gebrechen verstärkt Flüche und Schaden über Zeit und ist beim Leveln sehr beliebt, Dämonologie stärkt deine Dämonen, Zerstörung deine direkten Zauber wie Schattenblitz. Gebrechen oder Dämonologie sind für Anfänger am einfachsten.",
		},
		en = {
			q = "Which talent trees do warlocks have?",
			a = "Affliction strengthens curses and damage over time and is very popular for levelling, Demonology strengthens your demons, Destruction your direct spells like Shadow Bolt. Affliction or Demonology are the easiest for beginners.",
		},
		fr = {
			q = "Quels arbres de talents ont les démonistes ?",
			a = "Affliction renforce les malédictions et les dégâts sur la durée et est très apprécié pour monter de niveau, Démonologie renforce vos démons, Destruction vos sorts directs comme Trait de l'ombre. Affliction ou Démonologie sont les plus simples pour les débutants.",
		},
		es = {
			q = "¿Qué árboles de talentos tienen los brujos?",
			a = "Aflicción refuerza las maldiciones y el daño con el tiempo y es muy popular para subir de nivel, Demonología refuerza tus demonios y Destrucción tus hechizos directos como Descarga de las Sombras. Aflicción o Demonología son los más sencillos para principiantes.",
		},
		it = {
			q = "Quali alberi di talenti hanno gli stregoni?",
			a = "Afflizione potenzia maledizioni e danni nel tempo ed è molto popolare per salire di livello, Demonologia potenzia i demoni, Distruzione gli incantesimi diretti come Dardo d'Ombra. Afflizione o Demonologia sono i più semplici per i principianti.",
		},
		ru = {
			q = "Какие ветки талантов есть у чернокнижника?",
			a = "«Колдовство» усиливает проклятия и периодический урон и очень популярно для прокачки, «Демонология» усиливает демонов, «Разрушение» — прямые заклинания вроде «Стрелы Тьмы». Новичкам проще всего «Колдовство» или «Демонология».",
		},
		pt = {
			q = "Quais árvores de talentos os bruxos têm?",
			a = "Suplício fortalece maldições e dano ao longo do tempo e é muito popular para subir de nível, Demonologia fortalece os seus demônios, Destruição os feitiços diretos como Seta Sombria. Suplício ou Demonologia são os mais fáceis para iniciantes.",
		},
	},
})
