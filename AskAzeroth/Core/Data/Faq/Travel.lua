local _, ns = ...

-- FAQ: Travel. See Core/Faq.lua for the format.
ns.Faq.Add("travel", {
	{
		id = "travel-faster",
		de = {
			q = "Wie reise ich schneller?",
			a = "Dein Ruhestein bringt dich zum gewählten Gasthaus zurück; beim Gastwirt legst du es fest. Flugmeister fliegen dich zu Orten, deren Flugpunkt du schon entdeckt hast, also sprich jeden Flugmeister an, an dem du vorbeikommst.",
		},
		en = {
			q = "How do I travel faster?",
			a = "Your hearthstone takes you back to your chosen inn; set it at the innkeeper. Flight masters fly you to places whose flight point you have already discovered, so talk to every flight master you pass.",
		},
		fr = {
			q = "Comment voyager plus vite ?",
			a = "Votre pierre de foyer vous ramène à l'auberge choisie ; liez-la auprès de l'aubergiste. Les maîtres de vol vous emmènent vers les lieux dont vous avez déjà découvert le point de vol, alors parlez à chaque maître de vol que vous croisez.",
		},
		es = {
			q = "¿Cómo viajo más rápido?",
			a = "Tu piedra de hogar te devuelve a la posada que elegiste; vincúlala con el posadero. Los maestros de vuelo te llevan a lugares cuyo punto de vuelo ya has descubierto, así que habla con cada maestro de vuelo que encuentres.",
		},
		it = {
			q = "Come viaggio più in fretta?",
			a = "La pietra del ritorno ti riporta alla locanda scelta; impostala dal locandiere. I maestri di volo ti portano nei luoghi di cui hai già scoperto il punto di volo, quindi parla con ogni maestro di volo che incontri.",
		},
		ru = {
			q = "Как путешествовать быстрее?",
			a = "Камень возвращения переносит вас в выбранную таверну; привяжите его у трактирщика. Распорядители полётов доставят вас туда, где вы уже открыли точку полёта, так что говорите с каждым распорядителем по пути.",
		},
		pt = {
			q = "Como viajo mais rápido?",
			a = "Sua pedra de regresso leva você de volta à estalagem escolhida; vincule-a com o taberneiro. Mestres de voo levam você a lugares cujo ponto de voo você já descobriu, então fale com todo mestre de voo pelo caminho.",
		},
	},
	{
		id = "travel-mount",
		de = {
			q = "Wann bekomme ich ein Reittier?",
			a = "Ab einer bestimmten Stufe bringt dir der Reitlehrer deines Volkes das Reiten bei, und in WoW: Forever bekommst du mit der Fertigkeit gleich ein Reittier dazu. Leg beim Leveln etwas Gold dafür zur Seite. Fliegen gibt es in WoW: Forever nicht.",
		},
		en = {
			q = "When do I get a mount?",
			a = "From a certain level the riding trainer of your race teaches you riding, and in WoW: Forever you get a mount together with the skill. Save some gold for it while levelling. There is no flying in WoW: Forever.",
		},
		fr = {
			q = "Quand ai-je une monture ?",
			a = "À partir d'un certain niveau, le maître de monte de votre race vous apprend à monter, et dans WoW: Forever vous recevez une monture avec la compétence. Mettez un peu d'or de côté en montant de niveau. Il n'y a pas de vol dans WoW: Forever.",
		},
		es = {
			q = "¿Cuándo consigo una montura?",
			a = "A partir de cierto nivel, el instructor de equitación de tu raza te enseña a montar, y en WoW: Forever recibes una montura junto con la habilidad. Ahorra algo de oro mientras subes de nivel. En WoW: Forever no se puede volar.",
		},
		it = {
			q = "Quando ottengo una cavalcatura?",
			a = "Da un certo livello l'istruttore di equitazione della tua razza ti insegna a cavalcare, e in WoW: Forever ricevi una cavalcatura insieme all'abilità. Metti da parte un po' d'oro mentre sali di livello. In WoW: Forever non si vola.",
		},
		ru = {
			q = "Когда я получу ездовое животное?",
			a = "С определённого уровня учитель верховой езды вашей расы обучит вас, и в WoW: Forever вместе с навыком вы получаете средство передвижения. Откладывайте на это золото во время прокачки. Полётов в WoW: Forever нет.",
		},
		pt = {
			q = "Quando ganho uma montaria?",
			a = "A partir de certo nível, o instrutor de montaria da sua raça ensina você a montar, e no WoW: Forever você ganha uma montaria junto com a habilidade. Guarde um pouco de ouro enquanto sobe de nível. Não dá para voar no WoW: Forever.",
		},
	},
	{
		id = "travel-continents",
		de = {
			q = "Wie komme ich auf einen anderen Kontinent?",
			a = "Die Allianz reist mit dem Schiff, zum Beispiel ab dem Hafen von Menethil, die Horde mit dem Zeppelin, zum Beispiel ab Orgrimmar oder Unterstadt. Die Tiefenbahn verbindet Sturmwind und Eisenschmiede. Wenn du die nächste Station nicht kennst, frag hier.",
		},
		en = {
			q = "How do I get to another continent?",
			a = "The Alliance travels by ship, for example from Menethil Harbor, the Horde by zeppelin, for example from Orgrimmar or the Undercity. The Deeprun Tram connects Stormwind and Ironforge. Ask here if you do not know the next stop.",
		},
		fr = {
			q = "Comment aller sur un autre continent ?",
			a = "L'Alliance voyage en bateau, par exemple depuis Port de Menethil, la Horde en zeppelin, par exemple depuis Orgrimmar ou Fossoyeuse. Le Tram des profondeurs relie Hurlevent et Forgefer. Demandez ici si vous ne connaissez pas la prochaine étape.",
		},
		es = {
			q = "¿Cómo llego a otro continente?",
			a = "La Alianza viaja en barco, por ejemplo desde Puerto de Menethil; la Horda, en zepelín, por ejemplo desde Orgrimmar o Entrañas. El Tranvía Subterráneo une Ventormenta y Forjaz. Pregunta aquí si no sabes la siguiente parada.",
		},
		it = {
			q = "Come raggiungo un altro continente?",
			a = "L'Alleanza viaggia in nave, per esempio da Porto di Menethil, l'Orda in zeppelin, per esempio da Orgrimmar o Sepulcreto. Il Tram degli Abissi collega Roccavento e Forgiardente. Chiedi qui se non conosci la tappa successiva.",
		},
		ru = {
			q = "Как попасть на другой континент?",
			a = "Альянс плавает на кораблях, например из Гавани Менетил, Орда летает на дирижаблях, например из Оргриммара или Подгорода. Подземный поезд соединяет Штормград и Стальгорн. Если не знаете, куда дальше, спросите здесь.",
		},
		pt = {
			q = "Como chego a outro continente?",
			a = "A Aliança viaja de navio, por exemplo do Porto de Menethil, e a Horda de zepelim, por exemplo de Orgrimmar ou da Cidade Baixa. O Metrô Correfundo liga Ventobravo e Altaforja. Pergunte aqui se não souber a próxima parada.",
		},
	},
	{
		id = "travel-cities",
		de = {
			q = "Wie finde ich mich in einer Stadt zurecht?",
			a = "Sprich eine Stadtwache an und frag nach dem Weg: Sie markiert Lehrer, Bank, Auktionshaus, Gasthaus und mehr auf deiner Karte. Die Weltkarte (Taste [M]) zeigt, wo du bist.",
		},
		en = {
			q = "How do I find my way around a city?",
			a = "Talk to a city guard and ask for directions: they mark trainers, the bank, the auction house, the inn and more on your map. The world map ([M] key) shows where you are.",
		},
		fr = {
			q = "Comment m'orienter dans une ville ?",
			a = "Parlez à un garde de la ville et demandez votre chemin : il marque sur votre carte les maîtres, la banque, l'hôtel des ventes, l'auberge et plus encore. La carte du monde (touche [M]) montre où vous êtes.",
		},
		es = {
			q = "¿Cómo me oriento en una ciudad?",
			a = "Habla con un guardia de la ciudad y pregunta el camino: te marca en el mapa instructores, el banco, la casa de subastas, la posada y más. El mapa del mundo (tecla [M]) muestra dónde estás.",
		},
		it = {
			q = "Come mi oriento in una città?",
			a = "Parla con una guardia cittadina e chiedi indicazioni: segna sulla mappa istruttori, banca, casa d'aste, locanda e altro. La mappa del mondo (tasto [M]) mostra dove sei.",
		},
		ru = {
			q = "Как ориентироваться в городе?",
			a = "Поговорите с городским стражником и спросите дорогу: он отметит на карте учителей, банк, аукцион, таверну и многое другое. Карта мира (клавиша [M]) показывает, где вы находитесь.",
		},
		pt = {
			q = "Como me localizo numa cidade?",
			a = "Fale com um guarda da cidade e peça direções: ele marca no mapa instrutores, banco, casa de leilões, estalagem e mais. O mapa-múndi (tecla [M]) mostra onde você está.",
		},
	},
	{
		id = "travel-flight-points",
		de = {
			q = "Wie schalte ich neue Flugrouten frei?",
			a = "Sprich jeden Flugmeister an, an dem du vorbeikommst: Dann ist sein Flugpunkt entdeckt. Fliegen kannst du nur zwischen Punkten, die du schon entdeckt hast. Jeder Flug kostet etwas Gold, je nach Entfernung.",
		},
		en = {
			q = "How do I unlock new flight paths?",
			a = "Talk to every flight master you pass: that discovers their flight point. You can only fly between points you have discovered. Each flight costs some gold depending on the distance.",
		},
		fr = {
			q = "Comment débloquer de nouvelles routes aériennes ?",
			a = "Parlez à chaque maître de vol que vous croisez : cela découvre son point de vol. Vous ne pouvez voler qu'entre des points découverts. Chaque vol coûte un peu d'or selon la distance.",
		},
		es = {
			q = "¿Cómo desbloqueo nuevas rutas de vuelo?",
			a = "Habla con cada maestro de vuelo que encuentres: así descubres su punto de vuelo. Solo puedes volar entre puntos descubiertos. Cada vuelo cuesta algo de oro según la distancia.",
		},
		it = {
			q = "Come sblocco nuove rotte di volo?",
			a = "Parla con ogni maestro di volo che incontri: così scopri il suo punto di volo. Puoi volare solo tra punti scoperti. Ogni volo costa un po' d'oro in base alla distanza.",
		},
		ru = {
			q = "Как открыть новые маршруты полётов?",
			a = "Говорите с каждым распорядителем полётов по пути: так открывается его точка полёта. Летать можно только между открытыми точками. Каждый полёт стоит немного золота в зависимости от расстояния.",
		},
		pt = {
			q = "Como libero novas rotas de voo?",
			a = "Fale com todo mestre de voo que encontrar: isso descobre o ponto de voo dele. Você só voa entre pontos descobertos. Cada voo custa um pouco de ouro conforme a distância.",
		},
	},
	{
		id = "travel-hearth-cooldown",
		de = {
			q = "Warum kann ich meinen Ruhestein nicht benutzen?",
			a = "Der Ruhestein hat eine Abklingzeit; fahr mit der Maus darüber, um die Restzeit zu sehen. Außerdem geht er nicht im Kampf und wird unterbrochen, wenn du dich bewegst. Wirf ihn nicht weg.",
		},
		en = {
			q = "Why can I not use my hearthstone?",
			a = "The hearthstone has a cooldown; hover over it to see the time left. It also does not work in combat and is interrupted if you move. Do not throw it away.",
		},
		fr = {
			q = "Pourquoi ne puis-je pas utiliser ma pierre de foyer ?",
			a = "La pierre de foyer a un temps de recharge ; survolez-la pour voir le temps restant. Elle ne fonctionne pas non plus en combat et s'interrompt si vous bougez. Ne la jetez pas.",
		},
		es = {
			q = "¿Por qué no puedo usar mi piedra de hogar?",
			a = "La piedra de hogar tiene un tiempo de reutilización; pasa el ratón por encima para ver cuánto falta. Tampoco funciona en combate y se interrumpe si te mueves. No la tires.",
		},
		it = {
			q = "Perché non posso usare la pietra del ritorno?",
			a = "La pietra del ritorno ha un tempo di ricarica; passaci sopra per vedere quanto manca. Non funziona nemmeno in combattimento e si interrompe se ti muovi. Non buttarla.",
		},
		ru = {
			q = "Почему я не могу использовать камень возвращения?",
			a = "У камня возвращения есть время восстановления; наведите на него курсор, чтобы увидеть, сколько осталось. Он также не работает в бою и прерывается, если вы двигаетесь. Не выбрасывайте его.",
		},
		pt = {
			q = "Por que não consigo usar minha pedra de regresso?",
			a = "A pedra de regresso tem tempo de recarga; passe o mouse sobre ela para ver quanto falta. Ela também não funciona em combate e é interrompida se você se mexer. Não jogue fora.",
		},
	},
	{
		id = "travel-lost-hearthstone",
		de = {
			q = "Ich habe meinen Ruhestein verloren.",
			a = "Sprich einen Gastwirt an: Er gibt dir einen neuen, wenn du keinen mehr hast.",
		},
		en = {
			q = "I lost my hearthstone.",
			a = "Talk to an innkeeper: they give you a new one if you do not have one any more.",
		},
		fr = {
			q = "J'ai perdu ma pierre de foyer.",
			a = "Parlez à un aubergiste : il vous en donne une nouvelle si vous n'en avez plus.",
		},
		es = {
			q = "He perdido mi piedra de hogar.",
			a = "Habla con un posadero: te da una nueva si ya no tienes ninguna.",
		},
		it = {
			q = "Ho perso la pietra del ritorno.",
			a = "Parla con un locandiere: te ne dà una nuova se non ce l'hai più.",
		},
		ru = {
			q = "Я потерял камень возвращения.",
			a = "Поговорите с трактирщиком: он выдаст новый, если у вас его больше нет.",
		},
		pt = {
			q = "Perdi minha pedra de regresso.",
			a = "Fale com um taberneiro: ele dá uma nova se você não tiver mais.",
		},
	},
	{
		id = "travel-boats",
		de = {
			q = "Wie benutze ich Schiffe und Zeppeline?",
			a = "Geh auf den Steg oder Turm und warte, bis das Schiff oder der Zeppelin anlegt, dann lauf an Bord. Bleib während der Fahrt drauf, bis er am Ziel angelegt hat. Achte auf das richtige Ziel; an manchen Orten fahren mehrere Verbindungen ab.",
		},
		en = {
			q = "How do I use boats and zeppelins?",
			a = "Go to the dock or tower and wait until the boat or zeppelin arrives, then walk on board. Stay on until it has docked at the destination. Check the destination; some places have several connections.",
		},
		fr = {
			q = "Comment prendre les bateaux et les zeppelins ?",
			a = "Allez au quai ou à la tour et attendez l'arrivée du bateau ou du zeppelin, puis montez à bord. Restez-y jusqu'à ce qu'il soit amarré à destination. Vérifiez la destination ; certains lieux ont plusieurs liaisons.",
		},
		es = {
			q = "¿Cómo uso los barcos y zepelines?",
			a = "Ve al muelle o a la torre y espera a que llegue el barco o el zepelín; luego sube a bordo. Quédate hasta que atraque en el destino. Comprueba el destino; algunos lugares tienen varias conexiones.",
		},
		it = {
			q = "Come uso navi e zeppelin?",
			a = "Vai al molo o alla torre e aspetta che arrivi la nave o lo zeppelin, poi sali a bordo. Resta lì finché non attracca a destinazione. Controlla la destinazione; alcuni posti hanno più collegamenti.",
		},
		ru = {
			q = "Как пользоваться кораблями и дирижаблями?",
			a = "Идите на причал или башню и ждите прибытия корабля или дирижабля, затем зайдите на борт. Оставайтесь на нём, пока он не причалит в пункте назначения. Проверьте направление: из некоторых мест есть несколько рейсов.",
		},
		pt = {
			q = "Como uso navios e zepelins?",
			a = "Vá ao cais ou à torre e espere o navio ou zepelim chegar, depois entre a bordo. Fique até ele atracar no destino. Confira o destino; alguns lugares têm várias conexões.",
		},
	},
	{
		id = "travel-mount-indoors",
		de = {
			q = "Warum kann ich hier nicht aufsitzen?",
			a = "In Gebäuden, Höhlen und Dungeons kannst du meist nicht reiten, und im Kampf auch nicht. Geh nach draußen oder warte, bis der Kampf vorbei ist.",
		},
		en = {
			q = "Why can I not mount here?",
			a = "You usually cannot ride inside buildings, caves and dungeons, and not in combat either. Go outside or wait until the fight is over.",
		},
		fr = {
			q = "Pourquoi ne puis-je pas monter ici ?",
			a = "En général, on ne peut pas utiliser de monture dans les bâtiments, les grottes et les donjons, ni en combat. Sortez ou attendez la fin du combat.",
		},
		es = {
			q = "¿Por qué no puedo montar aquí?",
			a = "Normalmente no puedes montar dentro de edificios, cuevas y mazmorras, ni tampoco en combate. Sal fuera o espera a que termine el combate.",
		},
		it = {
			q = "Perché qui non posso montare in sella?",
			a = "Di solito non puoi cavalcare dentro edifici, grotte e spedizioni, né in combattimento. Esci all'aperto o aspetta la fine dello scontro.",
		},
		ru = {
			q = "Почему здесь нельзя сесть на ездовое животное?",
			a = "Обычно ездить нельзя в зданиях, пещерах и подземельях, а также в бою. Выйдите наружу или дождитесь конца боя.",
		},
		pt = {
			q = "Por que não consigo montar aqui?",
			a = "Normalmente não dá para montar dentro de construções, cavernas e masmorras, nem em combate. Vá para fora ou espere a luta acabar.",
		},
	},
	{
		id = "travel-zone-levels",
		de = {
			q = "Welche Gebiete passen zu meiner Stufe?",
			a = "Fahr auf der Weltkarte mit der Maus über ein Gebiet: Dann siehst du seinen Stufenbereich. Gebiete deutlich über deiner Stufe sind gefährlich, weit darunter bringen sie kaum Erfahrung. Frag hier ruhig nach dem nächsten Gebiet für deine Fraktion.",
		},
		en = {
			q = "Which zones fit my level?",
			a = "Hover over a zone on the world map to see its level range. Zones far above your level are dangerous, far below give little experience. Feel free to ask here for the next zone for your faction.",
		},
		fr = {
			q = "Quelles zones correspondent à mon niveau ?",
			a = "Survolez une zone sur la carte du monde pour voir sa tranche de niveaux. Les zones bien au-dessus de votre niveau sont dangereuses, celles bien en dessous rapportent peu d'expérience. N'hésitez pas à demander ici la prochaine zone pour votre faction.",
		},
		es = {
			q = "¿Qué zonas son para mi nivel?",
			a = "Pasa el ratón por una zona del mapa del mundo para ver su rango de niveles. Las zonas muy por encima de tu nivel son peligrosas y las muy por debajo dan poca experiencia. Pregunta aquí sin problema por la siguiente zona para tu facción.",
		},
		it = {
			q = "Quali zone sono adatte al mio livello?",
			a = "Passa sopra una zona sulla mappa del mondo per vedere la fascia di livelli. Le zone molto sopra il tuo livello sono pericolose, quelle molto sotto danno poca esperienza. Chiedi pure qui la prossima zona per la tua fazione.",
		},
		ru = {
			q = "Какие зоны подходят моему уровню?",
			a = "Наведите курсор на зону на карте мира, чтобы увидеть диапазон уровней. Зоны намного выше вашего уровня опасны, намного ниже дают мало опыта. Смело спрашивайте здесь, какая зона следующая для вашей фракции.",
		},
		pt = {
			q = "Quais zonas são do meu nível?",
			a = "Passe o mouse sobre uma zona no mapa-múndi para ver a faixa de níveis. Zonas muito acima do seu nível são perigosas, e muito abaixo dão pouca experiência. Fique à vontade para perguntar aqui qual a próxima zona para sua facção.",
		},
	},
	{
		id = "travel-new-zones",
		de = {
			q = "Welche neuen Gebiete gibt es in WoW: Forever?",
			a = "WoW: Forever bringt neue und überarbeitete Gebiete, zum Beispiel Zephras Isle (das Startgebiet der Skyborne), die Riverglades und den Berg Hyjal, dazu über tausend neue Quests. Wo sie liegen und für welche Stufen sie sind, zeigt dir die Weltkarte; frag hier, wenn du den Weg suchst.",
		},
		en = {
			q = "Which new zones does WoW: Forever have?",
			a = "WoW: Forever adds new and reworked zones, for example Zephras Isle (the Skyborne starting zone), the Riverglades and Mount Hyjal, plus over a thousand new quests. The world map shows where they are and for which levels; ask here if you need directions.",
		},
		fr = {
			q = "Quelles nouvelles zones WoW: Forever propose-t-il ?",
			a = "WoW: Forever ajoute des zones nouvelles ou remaniées, par exemple l'île de Zephras (la zone de départ des Skyborne), les Riverglades et le mont Hyjal, ainsi que plus d'un millier de nouvelles quêtes. La carte du monde montre où elles se trouvent et pour quels niveaux ; demandez ici si vous cherchez le chemin.",
		},
		es = {
			q = "¿Qué zonas nuevas tiene WoW: Forever?",
			a = "WoW: Forever añade zonas nuevas y renovadas, por ejemplo la isla de Zephras (la zona inicial de los Skyborne), Riverglades y el Monte Hyjal, además de más de mil misiones nuevas. El mapa del mundo muestra dónde están y para qué niveles; pregunta aquí si necesitas indicaciones.",
		},
		it = {
			q = "Quali nuove zone ha WoW: Forever?",
			a = "WoW: Forever aggiunge zone nuove e rinnovate, per esempio l'isola di Zephras (la zona iniziale degli Skyborne), Riverglades e il Monte Hyjal, più oltre mille nuove missioni. La mappa del mondo mostra dove sono e per quali livelli; chiedi qui se ti servono indicazioni.",
		},
		ru = {
			q = "Какие новые зоны есть в WoW: Forever?",
			a = "В WoW: Forever есть новые и переработанные зоны, например остров Зефрас (стартовая зона Skyborne), Riverglades и Хиджал, а также более тысячи новых заданий. Карта мира показывает, где они и для каких уровней; если нужна дорога, спросите здесь.",
		},
		pt = {
			q = "Quais zonas novas o WoW: Forever tem?",
			a = "O WoW: Forever traz zonas novas e reformuladas, por exemplo a Ilha de Zephras (a zona inicial dos Skyborne), Riverglades e o Monte Hyjal, além de mais de mil missões novas. O mapa-múndi mostra onde ficam e para quais níveis; pergunte aqui se precisar de direções.",
		},
	},
	{
		id = "travel-stuck",
		de = {
			q = "Mein Charakter steckt fest. Was tun?",
			a = "Benutz deinen Ruhestein. Ist er gerade nicht bereit, findest du im Hilfemenü des Spiels eine Option für festsitzende Charaktere. Im Notfall hilft auch, absichtlich zu sterben und am Friedhof wiederbelebt zu werden.",
		},
		en = {
			q = "My character is stuck. What do I do?",
			a = "Use your hearthstone. If it is on cooldown, the game's help menu has an option for stuck characters. In an emergency, dying on purpose and resurrecting at the graveyard also works.",
		},
		fr = {
			q = "Mon personnage est coincé. Que faire ?",
			a = "Utilisez votre pierre de foyer. Si elle est en recharge, le menu d'aide du jeu propose une option pour les personnages bloqués. En dernier recours, mourir exprès et ressusciter au cimetière fonctionne aussi.",
		},
		es = {
			q = "Mi personaje se ha quedado atascado. ¿Qué hago?",
			a = "Usa tu piedra de hogar. Si está en reutilización, el menú de ayuda del juego tiene una opción para personajes atascados. En caso de emergencia, morir a propósito y resucitar en el cementerio también sirve.",
		},
		it = {
			q = "Il mio personaggio è bloccato. Cosa faccio?",
			a = "Usa la pietra del ritorno. Se è in ricarica, il menu di aiuto del gioco ha un'opzione per i personaggi bloccati. In caso estremo funziona anche morire di proposito e resuscitare al cimitero.",
		},
		ru = {
			q = "Мой персонаж застрял. Что делать?",
			a = "Используйте камень возвращения. Если он на восстановлении, в меню помощи в игре есть вариант для застрявших персонажей. В крайнем случае можно нарочно погибнуть и воскреснуть на кладбище.",
		},
		pt = {
			q = "Meu personagem ficou preso. O que faço?",
			a = "Use a pedra de regresso. Se estiver em recarga, o menu de ajuda do jogo tem uma opção para personagens presos. Em último caso, morrer de propósito e ressuscitar no cemitério também funciona.",
		},
	},
	{
		id = "travel-portals-mages",
		de = {
			q = "Kann ich mich von einem Magier teleportieren lassen?",
			a = "Ja, Magier ab Stufe 40 öffnen Portale in die Hauptstädte ihrer Fraktion. In großen Städten bieten viele das gegen ein kleines Trinkgeld an; frag im Chat.",
		},
		en = {
			q = "Can a mage teleport me?",
			a = "Yes, mages from level 40 open portals to their faction's capital cities. In big cities many offer this for a small tip; ask in chat.",
		},
		fr = {
			q = "Un mage peut-il me téléporter ?",
			a = "Oui, dès le niveau 40, les mages ouvrent des portails vers les capitales de leur faction. Dans les grandes villes, beaucoup le proposent contre un petit pourboire ; demandez dans le chat.",
		},
		es = {
			q = "¿Puede teletransportarme un mago?",
			a = "Sí, a partir del nivel 40 los magos abren portales a las capitales de su facción. En las grandes ciudades muchos lo ofrecen por una pequeña propina; pregunta en el chat.",
		},
		it = {
			q = "Un mago può teletrasportarmi?",
			a = "Sì, dal livello 40 i maghi aprono portali verso le capitali della loro fazione. Nelle grandi città molti lo offrono per una piccola mancia; chiedi in chat.",
		},
		ru = {
			q = "Может ли маг меня телепортировать?",
			a = "Да, с 40-го уровня маги открывают порталы в столицы своей фракции. В больших городах многие предлагают это за небольшие чаевые; спросите в чате.",
		},
		pt = {
			q = "Um mago pode me teleportar?",
			a = "Sim, a partir do nível 40 magos abrem portais para as capitais da facção deles. Nas grandes cidades muitos oferecem isso por uma pequena gorjeta; pergunte no chat.",
		},
	},
	{
		id = "travel-graveyards",
		de = {
			q = "Warum lande ich nach dem Tod so weit weg?",
			a = "Als Geist erscheinst du auf dem nächsten Friedhof. In manchen Gebieten liegt der weit weg. Merk dir, wo die Friedhöfe in deinem Gebiet sind, und kämpf nicht an Stellen, von denen der Rückweg sehr lang ist.",
		},
		en = {
			q = "Why do I end up so far away after dying?",
			a = "As a ghost you appear at the nearest graveyard. In some zones that is far away. Remember where the graveyards in your zone are, and avoid fighting where the way back is very long.",
		},
		fr = {
			q = "Pourquoi est-ce que je me retrouve si loin après ma mort ?",
			a = "En fantôme, vous apparaissez au cimetière le plus proche. Dans certaines zones, il est loin. Retenez où se trouvent les cimetières de votre zone et évitez de combattre là où le chemin du retour est très long.",
		},
		es = {
			q = "¿Por qué aparezco tan lejos al morir?",
			a = "Como fantasma apareces en el cementerio más cercano. En algunas zonas está lejos. Recuerda dónde están los cementerios de tu zona y evita luchar donde el camino de vuelta sea muy largo.",
		},
		it = {
			q = "Perché dopo la morte finisco così lontano?",
			a = "Da fantasma compari al cimitero più vicino. In alcune zone è lontano. Ricorda dove sono i cimiteri della tua zona ed evita di combattere dove il ritorno è molto lungo.",
		},
		ru = {
			q = "Почему после смерти я оказываюсь так далеко?",
			a = "Призраком вы появляетесь на ближайшем кладбище. В некоторых зонах оно далеко. Запомните, где кладбища в вашей зоне, и не сражайтесь там, откуда очень долго возвращаться.",
		},
		pt = {
			q = "Por que vou parar tão longe depois de morrer?",
			a = "Como fantasma, você aparece no cemitério mais próximo. Em algumas zonas ele fica longe. Lembre onde ficam os cemitérios da sua zona e evite lutar onde o caminho de volta é muito longo.",
		},
	},
})
