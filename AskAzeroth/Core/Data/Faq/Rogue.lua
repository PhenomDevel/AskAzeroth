local _, ns = ...

-- FAQ: Rogue. See Core/Faq.lua for the format.
ns.Faq.Add("rogue", {
	{
		id = "rogue-energy-combo",
		de = {
			q = "Wie funktionieren Energie und Combopunkte?",
			a = "Schurken nutzen Energie, die sich schnell von selbst auffüllt. Angriffe wie „Finsterer Stoß“ geben dir Combopunkte, bis zu fünf. Finishing-Moves wie „Ausweiden“ verbrauchen alle Punkte und werden mit jedem Punkt stärker.",
		},
		en = {
			q = "How do energy and combo points work?",
			a = "Rogues use energy, which refills quickly on its own. Attacks like Sinister Strike give you combo points, up to five. Finishers like Eviscerate spend all points and get stronger with each one.",
		},
		fr = {
			q = "Comment fonctionnent l'énergie et les points de combo ?",
			a = "Les voleurs utilisent l'énergie, qui se remplit vite toute seule. Des attaques comme Attaque pernicieuse vous donnent des points de combo, jusqu'à cinq. Les coups de grâce comme Éviscération dépensent tous les points et sont plus forts à chaque point.",
		},
		es = {
			q = "¿Cómo funcionan la energía y los puntos de combo?",
			a = "Los pícaros usan energía, que se recarga rápido por sí sola. Ataques como Golpe siniestro te dan puntos de combo, hasta cinco. Los remates como Eviscerar gastan todos los puntos y son más fuertes con cada uno.",
		},
		it = {
			q = "Come funzionano energia e punti combo?",
			a = "I ladri usano l'energia, che si ricarica rapidamente da sola. Attacchi come Colpo Sinistro ti danno punti combo, fino a cinque. Le mosse finali come Eviscerazione consumano tutti i punti e diventano più forti con ognuno.",
		},
		ru = {
			q = "Как работают энергия и приёмы серии?",
			a = "Разбойники используют энергию, которая быстро восполняется сама. Атаки вроде «Коварного удара» дают вам приёмы серии, до пяти. Завершающие приёмы вроде «Потрошения» тратят все очки и становятся сильнее с каждым.",
		},
		pt = {
			q = "Como funcionam energia e pontos de combo?",
			a = "Ladinos usam energia, que se recarrega rápido sozinha. Ataques como Golpe Sinistro dão pontos de combo, até cinco. Finalizadores como Eviscerar gastam todos os pontos e ficam mais fortes com cada um.",
		},
	},
	{
		id = "rogue-stealth",
		de = {
			q = "Wie funktioniert Verstohlenheit?",
			a = "In Verstohlenheit bist du fast unsichtbar und bewegst dich langsamer. Gegner bemerken dich erst, wenn du sehr nah kommst oder vor ihnen stehst. Aus der Verstohlenheit heraus hast du besondere Eröffnungen wie „Hinterhalt“ oder „Fieser Trick“.",
		},
		en = {
			q = "How does Stealth work?",
			a = "In Stealth you are almost invisible and move more slowly. Enemies only notice you when you get very close or stand in front of them. From Stealth you have special openers such as Ambush or Cheap Shot.",
		},
		fr = {
			q = "Comment fonctionne Camouflage ?",
			a = "En Camouflage, vous êtes presque invisible et vous vous déplacez plus lentement. Les ennemis ne vous remarquent que si vous êtes très près ou juste devant eux. Depuis le Camouflage, vous disposez d'ouvertures spéciales comme Embuscade ou Coup bas.",
		},
		es = {
			q = "¿Cómo funciona Sigilo?",
			a = "En Sigilo eres casi invisible y te mueves más despacio. Los enemigos solo te notan si te acercas mucho o te pones delante de ellos. Desde Sigilo tienes aperturas especiales como Emboscada o Golpe bajo.",
		},
		it = {
			q = "Come funziona Furtività?",
			a = "In Furtività sei quasi invisibile e ti muovi più lentamente. I nemici ti notano solo se ti avvicini molto o ti metti davanti a loro. Dalla Furtività hai attacchi d'apertura speciali come Imboscata o Colpo Basso.",
		},
		ru = {
			q = "Как работает «Незаметность»?",
			a = "В «Незаметности» вы почти невидимы и двигаетесь медленнее. Враги замечают вас, только если вы подходите очень близко или стоите перед ними. Из «Незаметности» доступны особые приёмы, например «Внезапный удар» или «Подлый трюк».",
		},
		pt = {
			q = "Como funciona Furtividade?",
			a = "Em Furtividade você fica quase invisível e anda mais devagar. Os inimigos só percebem você se chegar muito perto ou ficar na frente deles. A partir da Furtividade você tem aberturas especiais como Emboscada ou Golpe Baixo.",
		},
	},
	{
		id = "rogue-opener",
		de = {
			q = "Wie fange ich einen Kampf als Schurke an?",
			a = "Schleich dich in Verstohlenheit hinter den Gegner. Mit einem Dolch eröffnest du mit „Hinterhalt“ für viel Schaden, sonst mit „Fieser Trick“, der den Gegner betäubt. Danach baust du Combopunkte auf und beendest den Kampf mit einem Finishing-Move.",
		},
		en = {
			q = "How do I start a fight as a rogue?",
			a = "Sneak up behind the enemy in Stealth. With a dagger, open with Ambush for big damage; otherwise with Cheap Shot, which stuns the enemy. Then build combo points and finish with a finisher.",
		},
		fr = {
			q = "Comment commencer un combat en tant que voleur ?",
			a = "Approchez-vous derrière l'ennemi en Camouflage. Avec une dague, ouvrez avec Embuscade pour de gros dégâts ; sinon avec Coup bas, qui étourdit l'ennemi. Ensuite accumulez des points de combo et terminez par un coup de grâce.",
		},
		es = {
			q = "¿Cómo empiezo un combate como pícaro?",
			a = "Acércate por detrás del enemigo en Sigilo. Con una daga, abre con Emboscada para hacer mucho daño; si no, con Golpe bajo, que aturde al enemigo. Luego acumula puntos de combo y termina con un remate.",
		},
		it = {
			q = "Come inizio un combattimento da ladro?",
			a = "Avvicinati da dietro al nemico in Furtività. Con un pugnale apri con Imboscata per molti danni; altrimenti con Colpo Basso, che stordisce il nemico. Poi accumula punti combo e chiudi con una mossa finale.",
		},
		ru = {
			q = "Как разбойнику начинать бой?",
			a = "Подкрадитесь к врагу сзади в «Незаметности». С кинжалом начните с «Внезапного удара» ради большого урона, иначе с «Подлого трюка», который оглушает врага. Затем набирайте приёмы серии и добивайте завершающим приёмом.",
		},
		pt = {
			q = "Como começo uma luta como ladino?",
			a = "Chegue por trás do inimigo em Furtividade. Com uma adaga, abra com Emboscada para muito dano; senão, com Golpe Baixo, que atordoa o inimigo. Depois acumule pontos de combo e termine com um finalizador.",
		},
	},
	{
		id = "rogue-dagger-sword",
		de = {
			q = "Dolche oder Schwerter?",
			a = "Dolche passen zu „Hinterhalt“ und „Meucheln“, die nur von hinten gehen. Schwerter, Streitkolben und Faustwaffen sind mit „Finsterer Stoß“ einfacher, weil du auch von vorn Schaden machst. Allein von vorn kämpfend ist eine langsame, starke Waffe in der Haupthand meist besser.",
		},
		en = {
			q = "Daggers or swords?",
			a = "Daggers suit Ambush and Backstab, which only work from behind. Swords, maces and fist weapons are easier with Sinister Strike because you deal damage from the front too. When fighting alone from the front, a slow, strong main-hand weapon is usually better.",
		},
		fr = {
			q = "Dagues ou épées ?",
			a = "Les dagues conviennent à Embuscade et Attaque sournoise, qui ne fonctionnent que dans le dos. Les épées, masses et armes de pugilat sont plus simples avec Attaque pernicieuse, car vous infligez aussi des dégâts de face. Seul et de face, une arme de main droite lente et puissante est généralement meilleure.",
		},
		es = {
			q = "¿Dagas o espadas?",
			a = "Las dagas encajan con Emboscada y Puñalada, que solo funcionan por la espalda. Espadas, mazas y armas de puño son más sencillas con Golpe siniestro, porque también haces daño de frente. Si luchas solo y de frente, suele ser mejor un arma de mano principal lenta y fuerte.",
		},
		it = {
			q = "Pugnali o spade?",
			a = "I pugnali si abbinano a Imboscata e Pugnalata alle Spalle, che funzionano solo da dietro. Spade, mazze e armi da pugno sono più semplici con Colpo Sinistro, perché fai danni anche di fronte. Quando combatti da solo di fronte, di solito è meglio un'arma principale lenta e forte.",
		},
		ru = {
			q = "Кинжалы или мечи?",
			a = "Кинжалы подходят для «Внезапного удара» и «Удара в спину», которые работают только сзади. С мечами, булавами и кистевым оружием проще: «Коварный удар» наносит урон и спереди. В одиночном бою лицом к врагу обычно лучше медленное и сильное оружие в правой руке.",
		},
		pt = {
			q = "Adagas ou espadas?",
			a = "Adagas combinam com Emboscada e Punhalada, que só funcionam pelas costas. Espadas, maças e armas de punho são mais fáceis com Golpe Sinistro, porque você também causa dano de frente. Lutando sozinho de frente, uma arma de mão principal lenta e forte costuma ser melhor.",
		},
	},
	{
		id = "rogue-backstab",
		de = {
			q = "Warum geht „Meucheln“ nicht?",
			a = "„Meucheln“ braucht einen Dolch in der Haupthand und muss von hinten kommen. Greift dich ein Gegner allein an, schaut er dich an, dann nutz „Finsterer Stoß“. In der Gruppe, während der Tank den Gegner hält, ist Meucheln sehr stark.",
		},
		en = {
			q = "Why does Backstab not work?",
			a = "Backstab needs a dagger in your main hand and must come from behind. When an enemy is fighting you alone, it faces you, so use Sinister Strike. In a group, while the tank holds the enemy, Backstab is very strong.",
		},
		fr = {
			q = "Pourquoi Attaque sournoise ne fonctionne-t-elle pas ?",
			a = "Attaque sournoise nécessite une dague en main droite et doit venir de dos. Quand un ennemi vous combat seul, il vous fait face, alors utilisez Attaque pernicieuse. En groupe, pendant que le tank retient l'ennemi, Attaque sournoise est très forte.",
		},
		es = {
			q = "¿Por qué no funciona Puñalada?",
			a = "Puñalada necesita una daga en la mano principal y debe hacerse por la espalda. Cuando un enemigo lucha solo contra ti, te mira de frente, así que usa Golpe siniestro. En grupo, mientras el tanque retiene al enemigo, Puñalada es muy fuerte.",
		},
		it = {
			q = "Perché Pugnalata alle Spalle non funziona?",
			a = "Pugnalata alle Spalle richiede un pugnale nella mano principale e va eseguita da dietro. Quando un nemico combatte solo contro di te ti guarda in faccia, quindi usa Colpo Sinistro. In gruppo, mentre il tank tiene il nemico, Pugnalata alle Spalle è molto forte.",
		},
		ru = {
			q = "Почему не работает «Удар в спину»?",
			a = "Для «Удара в спину» нужен кинжал в правой руке, и бить надо сзади. Когда враг сражается только с вами, он смотрит на вас, поэтому используйте «Коварный удар». В группе, пока танк держит врага, «Удар в спину» очень силён.",
		},
		pt = {
			q = "Por que Punhalada não funciona?",
			a = "Punhalada precisa de uma adaga na mão principal e tem de ser feita pelas costas. Quando um inimigo luta só com você, ele fica de frente, então use Golpe Sinistro. Em grupo, enquanto o tanque segura o inimigo, Punhalada é muito forte.",
		},
	},
	{
		id = "rogue-slice-and-dice",
		de = {
			q = "Wann nutze ich „Zerhäckseln“?",
			a = "„Zerhäckseln“ erhöht dein Angriffstempo für eine Weile und wird mit mehr Combopunkten länger. In längeren Kämpfen lohnt es sich fast immer; gegen schwache Gegner reicht „Ausweiden“.",
		},
		en = {
			q = "When do I use Slice and Dice?",
			a = "Slice and Dice increases your attack speed for a while and lasts longer with more combo points. It is almost always worth it in longer fights; against weak enemies, Eviscerate is enough.",
		},
		fr = {
			q = "Quand utiliser Débiter ?",
			a = "Débiter augmente votre vitesse d'attaque pendant un moment et dure plus longtemps avec plus de points de combo. Cela vaut presque toujours le coup dans les combats longs ; contre des ennemis faibles, Éviscération suffit.",
		},
		es = {
			q = "¿Cuándo uso Hacer picadillo?",
			a = "Hacer picadillo aumenta tu velocidad de ataque durante un tiempo y dura más con más puntos de combo. Casi siempre compensa en combates largos; contra enemigos débiles basta con Eviscerar.",
		},
		it = {
			q = "Quando uso A Fette e a Dadini?",
			a = "A Fette e a Dadini aumenta la velocità d'attacco per un po' e dura di più con più punti combo. Conviene quasi sempre nei combattimenti lunghi; contro nemici deboli basta Eviscerazione.",
		},
		ru = {
			q = "Когда использовать «Мясорубку»?",
			a = "«Мясорубка» на время повышает скорость атаки и длится дольше с большим числом приёмов серии. В долгих боях она почти всегда окупается; против слабых врагов хватит «Потрошения».",
		},
		pt = {
			q = "Quando uso Retalhar?",
			a = "Retalhar aumenta a sua velocidade de ataque por um tempo e dura mais com mais pontos de combo. Quase sempre vale a pena em lutas longas; contra inimigos fracos, Eviscerar basta.",
		},
	},
	{
		id = "rogue-kick",
		de = {
			q = "Wie unterbreche ich Zauber?",
			a = "Mit „Tritt“: Er unterbricht einen Zauber, und der Gegner kann diese Zauberschule kurz nicht nutzen. Halte ihn für Heilzauber und gefährliche Angriffszauber bereit, besonders in Dungeons.",
		},
		en = {
			q = "How do I interrupt spells?",
			a = "With Kick: it interrupts a cast, and the enemy cannot use that school of magic for a short time. Keep it ready for heals and dangerous damage spells, especially in dungeons.",
		},
		fr = {
			q = "Comment interrompre les sorts ?",
			a = "Avec Coup de pied : il interrompt une incantation, et l'ennemi ne peut plus utiliser cette école de magie pendant un court moment. Gardez-le prêt pour les soins et les sorts de dégâts dangereux, surtout en donjon.",
		},
		es = {
			q = "¿Cómo interrumpo hechizos?",
			a = "Con Patada: interrumpe un lanzamiento y el enemigo no puede usar esa escuela de magia durante un momento. Tenla preparada para curas y hechizos de daño peligrosos, sobre todo en mazmorras.",
		},
		it = {
			q = "Come interrompo gli incantesimi?",
			a = "Con Calcio: interrompe un lancio e il nemico non può usare quella scuola di magia per un breve periodo. Tienilo pronto per cure e incantesimi di danno pericolosi, soprattutto nelle spedizioni.",
		},
		ru = {
			q = "Как прерывать заклинания?",
			a = "«Пинком»: он прерывает заклинание, и враг ненадолго не может использовать эту школу магии. Держите его наготове для лечения и опасных атакующих заклинаний, особенно в подземельях.",
		},
		pt = {
			q = "Como interrompo feitiços?",
			a = "Com Chute: ele interrompe uma conjuração e o inimigo não pode usar aquela escola de magia por pouco tempo. Deixe-o pronto para curas e feitiços de dano perigosos, principalmente em masmorras.",
		},
	},
	{
		id = "rogue-sap",
		de = {
			q = "Was ist „Kopfnuss“?",
			a = "„Kopfnuss“ setzt einen Humanoiden außerhalb des Kampfes eine Weile außer Gefecht, und in WoW: Forever bleibst du dabei in Verstohlenheit. So schaltest du einen Gegner aus einer Gruppe aus und bekämpfst die anderen einzeln. Schaden weckt ihn wieder auf. In Dungeons ist das eine wichtige Aufgabe für Schurken.",
		},
		en = {
			q = "What is Sap?",
			a = "Sap incapacitates a humanoid out of combat for a while, and in WoW: Forever you stay in stealth while doing it. That lets you take one enemy out of a group and fight the others one at a time. Damage wakes it up. In dungeons this is an important job for rogues.",
		},
		fr = {
			q = "Qu'est-ce qu'Assommer ?",
			a = "Assommer neutralise un humanoïde hors combat pendant un moment, et dans WoW: Forever vous restez camouflé en le faisant. Vous pouvez ainsi retirer un ennemi d'un groupe et combattre les autres un par un. Les dégâts le réveillent. En donjon, c'est une tâche importante des voleurs.",
		},
		es = {
			q = "¿Qué es Porrazo?",
			a = "Porrazo incapacita a un humanoide fuera de combate durante un tiempo, y en WoW: Forever sigues en sigilo al usarlo. Así puedes sacar a un enemigo de un grupo y luchar contra los demás de uno en uno. El daño lo despierta. En mazmorras es una tarea importante de los pícaros.",
		},
		it = {
			q = "Che cos'è Tramortire?",
			a = "Tramortire rende inerme un umanoide fuori dal combattimento per un po', e in WoW: Forever resti furtivo mentre lo usi. Così puoi togliere un nemico da un gruppo e combattere gli altri uno alla volta. I danni lo risvegliano. Nelle spedizioni è un compito importante dei ladri.",
		},
		ru = {
			q = "Что такое «Ошеломление»?",
			a = "«Ошеломление» выводит гуманоида из строя вне боя на некоторое время, а в WoW: Forever вы при этом остаётесь в незаметности. Так можно убрать одного врага из группы и сражаться с остальными по одному. Урон его пробуждает. В подземельях это важная задача разбойника.",
		},
		pt = {
			q = "O que é Aturdir?",
			a = "Aturdir incapacita um humanoide fora de combate por um tempo, e no WoW: Forever você continua furtivo ao usá-lo. Assim você tira um inimigo de um grupo e enfrenta os outros um de cada vez. Dano o desperta. Em masmorras, essa é uma tarefa importante dos ladinos.",
		},
	},
	{
		id = "rogue-escape",
		de = {
			q = "Wie komme ich als Schurke aus einem verlorenen Kampf?",
			a = "„Entrinnen“ lässt dich viele Angriffe ausweichen, „Sprinten“ macht dich kurz sehr schnell, und „Verschwinden“ bringt dich zurück in die Verstohlenheit. „Solarplexus“ und „Blenden“ verschaffen dir Zeit für einen Verband.",
		},
		en = {
			q = "How do I get out of a lost fight as a rogue?",
			a = "Evasion lets you dodge many attacks, Sprint makes you very fast for a moment, and Vanish puts you back into Stealth. Gouge and Blind buy you time for a bandage.",
		},
		fr = {
			q = "Comment sortir d'un combat perdu en tant que voleur ?",
			a = "Évasion vous fait esquiver beaucoup d'attaques, Sprint vous rend très rapide un instant, et Disparition vous remet en Camouflage. Suriner et Cécité vous font gagner du temps pour un bandage.",
		},
		es = {
			q = "¿Cómo salgo de un combate perdido como pícaro?",
			a = "Evasión te hace esquivar muchos ataques, Sprint te hace muy rápido un momento y Esfumarse te devuelve a Sigilo. Gubia y Ceguera te dan tiempo para una venda.",
		},
		it = {
			q = "Come esco da un combattimento perso da ladro?",
			a = "Evasione ti fa schivare molti attacchi, Scatto ti rende velocissimo per un attimo e Svanire ti rimette in Furtività. Sfregio e Accecamento ti fanno guadagnare tempo per una benda.",
		},
		ru = {
			q = "Как разбойнику выйти из проигранного боя?",
			a = "«Ускользание» позволяет уклоняться от многих атак, «Спринт» ненадолго делает вас очень быстрым, а «Исчезновение» возвращает в «Незаметность». «Парализующий удар» и «Ослепление» дают время на бинт.",
		},
		pt = {
			q = "Como saio de uma luta perdida como ladino?",
			a = "Evasão faz você se esquivar de muitos ataques, Disparada deixa você muito rápido por um instante e Sumir o coloca de volta em Furtividade. Goiva e Cegar dão tempo para uma atadura.",
		},
	},
	{
		id = "rogue-heal",
		de = {
			q = "Wie heile ich mich als Schurke?",
			a = "Gar nicht mit Zaubern: Iss nach den Kämpfen und lern Erste Hilfe, damit du dich mit Verbänden heilen kannst. Im Kampf hilft „Solarplexus“, um Zeit für einen Verband zu gewinnen.",
		},
		en = {
			q = "How do I heal myself as a rogue?",
			a = "Not with spells: eat after fights and learn first aid so you can heal with bandages. In combat, Gouge buys you time for a bandage.",
		},
		fr = {
			q = "Comment me soigner en tant que voleur ?",
			a = "Pas avec des sorts : mangez après les combats et apprenez les premiers soins pour vous soigner avec des bandages. En combat, Suriner vous fait gagner du temps pour un bandage.",
		},
		es = {
			q = "¿Cómo me curo como pícaro?",
			a = "No con hechizos: come después de los combates y aprende primeros auxilios para curarte con vendas. En combate, Gubia te da tiempo para una venda.",
		},
		it = {
			q = "Come mi curo da ladro?",
			a = "Non con gli incantesimi: mangia dopo i combattimenti e impara il primo soccorso per curarti con le bende. In combattimento, Sfregio ti fa guadagnare tempo per una benda.",
		},
		ru = {
			q = "Как разбойнику лечиться?",
			a = "Не заклинаниями: ешьте после боёв и изучите первую помощь, чтобы лечиться бинтами. В бою «Парализующий удар» даёт время на бинт.",
		},
		pt = {
			q = "Como me curo como ladino?",
			a = "Não com feitiços: coma depois das lutas e aprenda primeiros socorros para se curar com ataduras. Em combate, Goiva dá tempo para uma atadura.",
		},
	},
	{
		id = "rogue-poisons",
		de = {
			q = "Wie bekomme ich Gifte?",
			a = "Gifte lernst du über eine Klassenquest um Stufe 20, dein Schurkenlehrer schickt dich los. Danach stellst du sie selbst her und legst sie auf deine Waffen, zum Beispiel „Sofort wirkendes Gift“ für Schaden. Die Zutaten verkaufen Giftverkäufer.",
		},
		en = {
			q = "How do I get poisons?",
			a = "You learn poisons from a class quest around level 20; your rogue trainer sends you off. After that you make them yourself and apply them to your weapons, for example Instant Poison for damage. Poison vendors sell the ingredients.",
		},
		fr = {
			q = "Comment obtenir des poisons ?",
			a = "Vous apprenez les poisons par une quête de classe vers le niveau 20 ; votre maître des voleurs vous y envoie. Ensuite vous les fabriquez vous-même et les appliquez sur vos armes, par exemple Poison instantané pour les dégâts. Les marchands de poisons vendent les ingrédients.",
		},
		es = {
			q = "¿Cómo consigo venenos?",
			a = "Aprendes los venenos con una misión de clase hacia el nivel 20; tu instructor de pícaros te envía a ella. Después los fabricas tú mismo y los aplicas a tus armas, por ejemplo Veneno instantáneo para hacer daño. Los vendedores de venenos venden los ingredientes.",
		},
		it = {
			q = "Come ottengo i veleni?",
			a = "Impari i veleni con una missione di classe verso il livello 20; il tuo istruttore dei ladri ti ci manda. Poi li prepari da solo e li applichi alle armi, per esempio Veleno Istantaneo per i danni. I venditori di veleni vendono gli ingredienti.",
		},
		ru = {
			q = "Как получить яды?",
			a = "Яды вы изучаете за классовое задание около 20-го уровня; наставник разбойников отправит вас за ним. Потом вы готовите их сами и наносите на оружие, например «Быстродействующий яд» для урона. Ингредиенты продают торговцы ядами.",
		},
		pt = {
			q = "Como consigo venenos?",
			a = "Você aprende venenos numa missão de classe por volta do nível 20; o seu instrutor de ladinos o envia para ela. Depois você mesmo os prepara e aplica nas armas, por exemplo Veneno Instantâneo para dano. Vendedores de venenos vendem os ingredientes.",
		},
	},
	{
		id = "rogue-lockpicking",
		de = {
			q = "Wie öffne ich Schließkassetten?",
			a = "Mit „Schlossknacken“, das du beim Schurkenlehrer lernst. Die Fertigkeit steigt, wenn du Schlösser öffnest. In Schließkassetten von Gegnern steckt oft Gold oder Beute; du kannst auch für andere Spieler Kassetten öffnen.",
		},
		en = {
			q = "How do I open lockboxes?",
			a = "With Pick Lock, which you learn from your rogue trainer. The skill rises as you open locks. Lockboxes from enemies often contain gold or loot; you can open boxes for other players too.",
		},
		fr = {
			q = "Comment ouvrir les coffrets ?",
			a = "Avec Crochetage, que vous apprenez auprès de votre maître des voleurs. La compétence progresse quand vous ouvrez des serrures. Les coffrets des ennemis contiennent souvent de l'or ou du butin ; vous pouvez aussi en ouvrir pour d'autres joueurs.",
		},
		es = {
			q = "¿Cómo abro las cajas fuertes?",
			a = "Con Forzar cerradura, que aprendes con tu instructor de pícaros. La habilidad sube al abrir cerraduras. Las cajas de los enemigos suelen contener oro o botín; también puedes abrir cajas para otros jugadores.",
		},
		it = {
			q = "Come apro le cassette chiuse?",
			a = "Con Scassinare, che impari dal tuo istruttore dei ladri. L'abilità sale aprendo serrature. Le cassette dei nemici contengono spesso oro o bottino; puoi aprirle anche per altri giocatori.",
		},
		ru = {
			q = "Как открывать запертые сундучки?",
			a = "С помощью «Вскрытия замка», которому учит наставник разбойников. Навык растёт, когда вы открываете замки. В сундучках с врагов часто есть золото или добыча; вы можете открывать их и для других игроков.",
		},
		pt = {
			q = "Como abro cofres trancados?",
			a = "Com Arrombar, que você aprende com seu instrutor de ladinos. A perícia sobe conforme você abre fechaduras. Cofres de inimigos costumam ter ouro ou saque; você também pode abrir cofres para outros jogadores.",
		},
	},
	{
		id = "rogue-pickpocket",
		de = {
			q = "Was bringt Taschendiebstahl?",
			a = "In Verstohlenheit kannst du Humanoide bestehlen, ohne dass sie es merken. Du bekommst etwas Gold und manchmal Schließkassetten. Es lohnt sich, bevor du den Gegner angreifst.",
		},
		en = {
			q = "What is Pick Pocket good for?",
			a = "In Stealth you can rob humanoids without them noticing. You get some gold and sometimes lockboxes. It is worth doing before you attack.",
		},
		fr = {
			q = "À quoi sert Vol à la tire ?",
			a = "En Camouflage, vous pouvez détrousser des humanoïdes sans qu'ils le remarquent. Vous obtenez un peu d'or et parfois des coffrets. Cela vaut la peine avant d'attaquer.",
		},
		es = {
			q = "¿Para qué sirve Robar?",
			a = "En Sigilo puedes robar a humanoides sin que se den cuenta. Consigues algo de oro y a veces cajas fuertes. Merece la pena hacerlo antes de atacar.",
		},
		it = {
			q = "A che cosa serve Borseggio?",
			a = "In Furtività puoi derubare gli umanoidi senza che se ne accorgano. Ottieni un po' d'oro e a volte cassette chiuse. Conviene farlo prima di attaccare.",
		},
		ru = {
			q = "Зачем нужно «Обшаривание карманов»?",
			a = "В «Незаметности» можно обокрасть гуманоида так, что он не заметит. Вы получаете немного золота и иногда запертые сундучки. Стоит делать это перед атакой.",
		},
		pt = {
			q = "Para que serve Bater Carteira?",
			a = "Em Furtividade você pode roubar humanoides sem que percebam. Você ganha um pouco de ouro e às vezes cofres trancados. Vale a pena fazer isso antes de atacar.",
		},
	},
	{
		id = "rogue-stun-chain",
		de = {
			q = "Wie halte ich einen Gegner betäubt?",
			a = "Eröffne mit „Fieser Trick“, bau Combopunkte auf und setz dann „Nierenhieb“, einen Finishing-Move, der wieder betäubt. So bekommt der Gegner kaum einen Schlag ab. Gegen Spieler und Bosse wirken Betäubungen kürzer oder gar nicht.",
		},
		en = {
			q = "How do I keep an enemy stunned?",
			a = "Open with Cheap Shot, build combo points, then use Kidney Shot, a finisher that stuns again. That way the enemy barely gets a hit in. Stuns are shorter or do not work against players and bosses.",
		},
		fr = {
			q = "Comment garder un ennemi étourdi ?",
			a = "Ouvrez avec Coup bas, accumulez des points de combo, puis utilisez Aiguillon perfide, un coup de grâce qui étourdit à nouveau. Ainsi l'ennemi ne vous touche presque pas. Les étourdissements sont plus courts ou sans effet contre les joueurs et les boss.",
		},
		es = {
			q = "¿Cómo mantengo aturdido a un enemigo?",
			a = "Abre con Golpe bajo, acumula puntos de combo y luego usa Golpe en los riñones, un remate que vuelve a aturdir. Así el enemigo apenas te golpea. Los aturdimientos duran menos o no funcionan contra jugadores y jefes.",
		},
		it = {
			q = "Come tengo stordito un nemico?",
			a = "Apri con Colpo Basso, accumula punti combo, poi usa Colpo ai Reni, una mossa finale che stordisce di nuovo. Così il nemico quasi non ti colpisce. Gli stordimenti sono più brevi o non funzionano contro giocatori e boss.",
		},
		ru = {
			q = "Как держать врага в оглушении?",
			a = "Начните с «Подлого трюка», наберите приёмы серии, затем используйте «Удар по почкам» — завершающий приём, который снова оглушает. Так враг почти не успевает ударить. Против игроков и боссов оглушения короче или не действуют.",
		},
		pt = {
			q = "Como mantenho um inimigo atordoado?",
			a = "Abra com Golpe Baixo, acumule pontos de combo e depois use Golpe nos Rins, um finalizador que atordoa de novo. Assim o inimigo quase não acerta você. Atordoamentos são mais curtos ou não funcionam contra jogadores e chefes.",
		},
	},
	{
		id = "rogue-threat",
		de = {
			q = "Im Dungeon greifen mich die Gegner an. Was tun?",
			a = "Du machst mehr Bedrohung als der Tank. Greif erst an, wenn der Tank den Gegner ein paar Sekunden hatte, nutz „Finte“, um Bedrohung zu senken, und im Notfall „Entrinnen“ oder „Verschwinden“.",
		},
		en = {
			q = "Enemies attack me in dungeons. What do I do?",
			a = "You are creating more threat than the tank. Only attack once the tank has had the enemy for a few seconds, use Feint to lower your threat, and Evasion or Vanish in an emergency.",
		},
		fr = {
			q = "Les ennemis m'attaquent en donjon. Que faire ?",
			a = "Vous générez plus de menace que le tank. N'attaquez que lorsque le tank tient l'ennemi depuis quelques secondes, utilisez Feinte pour réduire votre menace, et Évasion ou Disparition en cas d'urgence.",
		},
		es = {
			q = "Los enemigos me atacan en las mazmorras. ¿Qué hago?",
			a = "Estás generando más amenaza que el tanque. Ataca solo cuando el tanque lleve unos segundos con el enemigo, usa Amago para reducir tu amenaza, y Evasión o Esfumarse en una emergencia.",
		},
		it = {
			q = "Nelle spedizioni i nemici attaccano me. Che cosa faccio?",
			a = "Stai generando più minaccia del tank. Attacca solo quando il tank tiene il nemico da qualche secondo, usa Finta per ridurre la tua minaccia, ed Evasione o Svanire in caso di emergenza.",
		},
		ru = {
			q = "В подземельях враги нападают на меня. Что делать?",
			a = "Вы создаёте больше угрозы, чем танк. Атакуйте только после того, как танк продержит врага несколько секунд, используйте «Ложный выпад», чтобы снизить угрозу, а в экстренном случае «Ускользание» или «Исчезновение».",
		},
		pt = {
			q = "Os inimigos me atacam nas masmorras. O que faço?",
			a = "Você está gerando mais ameaça que o tanque. Só ataque depois que o tanque estiver com o inimigo há alguns segundos, use Finta para reduzir sua ameaça, e Evasão ou Sumir numa emergência.",
		},
	},
	{
		id = "rogue-stats",
		de = {
			q = "Welche Werte sind für Schurken wichtig?",
			a = "Beweglichkeit vor allem: mehr Schaden, kritische Treffer und Ausweichen. Dazu Stärke für Angriffskraft und Ausdauer für Gesundheit. Intelligenz und Willenskraft brauchst du nicht.",
		},
		en = {
			q = "Which stats matter for rogues?",
			a = "Agility above all: more damage, critical strikes and dodge. Then strength for attack power and stamina for health. You do not need intellect or spirit.",
		},
		fr = {
			q = "Quelles caractéristiques comptent pour les voleurs ?",
			a = "L'agilité avant tout : plus de dégâts, de coups critiques et d'esquive. Ensuite la force pour la puissance d'attaque et l'endurance pour la vie. Vous n'avez pas besoin d'intelligence ni d'esprit.",
		},
		es = {
			q = "¿Qué atributos importan a los pícaros?",
			a = "Agilidad por encima de todo: más daño, golpes críticos y esquiva. Después fuerza para el poder de ataque y aguante para la salud. No necesitas intelecto ni espíritu.",
		},
		it = {
			q = "Quali statistiche contano per i ladri?",
			a = "Soprattutto l'agilità: più danni, colpi critici e schivata. Poi la forza per la potenza d'attacco e la tempra per la salute. Non ti servono intelletto né spirito.",
		},
		ru = {
			q = "Какие характеристики важны разбойнику?",
			a = "Прежде всего ловкость: больше урона, критических ударов и уклонения. Затем сила для силы атаки и выносливость для здоровья. Интеллект и дух вам не нужны.",
		},
		pt = {
			q = "Quais atributos importam para ladinos?",
			a = "Agilidade acima de tudo: mais dano, acertos críticos e esquiva. Depois força para poder de ataque e vigor para vida. Você não precisa de intelecto nem de espírito.",
		},
	},
	{
		id = "rogue-armor",
		de = {
			q = "Welche Rüstung tragen Schurken?",
			a = "Leder. Du kannst zwei Waffen gleichzeitig tragen; die Nebenhand macht weniger Schaden, lohnt sich aber trotzdem. Wurfwaffen, Bögen oder Schusswaffen kommen in den Fernkampfplatz.",
		},
		en = {
			q = "What armour do rogues wear?",
			a = "Leather. You can wield two weapons at once; the off hand deals less damage but is still worth it. Thrown weapons, bows or guns go into the ranged slot.",
		},
		fr = {
			q = "Quelle armure portent les voleurs ?",
			a = "Du cuir. Vous pouvez manier deux armes à la fois ; la main gauche inflige moins de dégâts mais en vaut quand même la peine. Les armes de jet, arcs ou armes à feu vont dans l'emplacement à distance.",
		},
		es = {
			q = "¿Qué armadura llevan los pícaros?",
			a = "Cuero. Puedes llevar dos armas a la vez; la mano secundaria hace menos daño, pero sigue mereciendo la pena. Las armas arrojadizas, arcos o armas de fuego van en la ranura a distancia.",
		},
		it = {
			q = "Che armatura indossano i ladri?",
			a = "Cuoio. Puoi impugnare due armi insieme; la mano secondaria infligge meno danni ma conviene comunque. Armi da lancio, archi o armi da fuoco vanno nello spazio per l'arma a distanza.",
		},
		ru = {
			q = "Какую броню носят разбойники?",
			a = "Кожаную. Вы можете держать два оружия сразу; левая рука наносит меньше урона, но всё равно того стоит. Метательное оружие, луки или ружья идут в ячейку дальнего боя.",
		},
		pt = {
			q = "Que armadura os ladinos usam?",
			a = "Couro. Você pode empunhar duas armas ao mesmo tempo; a mão secundária causa menos dano, mas ainda vale a pena. Armas de arremesso, arcos ou armas de fogo vão no espaço de longo alcance.",
		},
	},
	{
		id = "rogue-talents",
		de = {
			q = "Welche Talentbäume haben Schurken?",
			a = "Meucheln verbessert Finishing-Moves und Gifte, Kampf macht dich im offenen Kampf stark und ist beim Leveln sehr beliebt, Täuschung verbessert Verstohlenheit und Eröffnungen. Für den Einstieg ist Kampf mit Schwert oder Streitkolben am einfachsten.",
		},
		en = {
			q = "Which talent trees do rogues have?",
			a = "Assassination improves finishers and poisons, Combat makes you strong in open fights and is very popular for levelling, Subtlety improves Stealth and openers. Combat with a sword or mace is the easiest start.",
		},
		fr = {
			q = "Quels arbres de talents ont les voleurs ?",
			a = "Assassinat améliore les coups de grâce et les poisons, Combat vous rend fort en combat ouvert et est très apprécié pour monter de niveau, Finesse améliore le Camouflage et les ouvertures. Combat avec une épée ou une masse est le départ le plus simple.",
		},
		es = {
			q = "¿Qué árboles de talentos tienen los pícaros?",
			a = "Asesinato mejora los remates y los venenos, Combate te hace fuerte en combate abierto y es muy popular para subir de nivel, Sutileza mejora el Sigilo y las aperturas. Combate con espada o maza es el comienzo más sencillo.",
		},
		it = {
			q = "Quali alberi di talenti hanno i ladri?",
			a = "Assassinio migliora mosse finali e veleni, Combattimento ti rende forte negli scontri aperti ed è molto popolare per salire di livello, Scaltrezza migliora Furtività e attacchi d'apertura. Combattimento con spada o mazza è l'inizio più semplice.",
		},
		ru = {
			q = "Какие ветки талантов есть у разбойника?",
			a = "«Ликвидация» усиливает завершающие приёмы и яды, «Бой» делает вас сильным в открытом бою и очень популярен для прокачки, «Скрытность» улучшает «Незаметность» и начальные приёмы. «Бой» с мечом или булавой — самое простое начало.",
		},
		pt = {
			q = "Quais árvores de talentos os ladinos têm?",
			a = "Assassinato melhora finalizadores e venenos, Combate deixa você forte em luta aberta e é muito popular para subir de nível, Subterfúgio melhora Furtividade e aberturas. Combate com espada ou maça é o começo mais fácil.",
		},
	},
	{
		id = "rogue-distract",
		de = {
			q = "Wie komme ich an einem Gegner vorbei?",
			a = "„Ablenken“ lässt Gegner kurz in eine andere Richtung schauen, sodass du dich in Verstohlenheit vorbeischleichen kannst. Für Humanoide geht auch „Kopfnuss“. So erreichst du Questziele, ohne jeden Gegner zu bekämpfen.",
		},
		en = {
			q = "How do I get past an enemy?",
			a = "Distract makes enemies look in another direction for a moment, so you can sneak past in Stealth. Sap works on humanoids. That way you reach quest objectives without fighting every enemy.",
		},
		fr = {
			q = "Comment passer devant un ennemi ?",
			a = "Distraction fait regarder les ennemis dans une autre direction un instant, pour que vous puissiez vous faufiler en Camouflage. Assommer fonctionne sur les humanoïdes. Vous atteignez ainsi les objectifs de quête sans combattre chaque ennemi.",
		},
		es = {
			q = "¿Cómo paso junto a un enemigo?",
			a = "Distraer hace que los enemigos miren hacia otro lado un momento, para que puedas pasar en Sigilo. Porrazo funciona con humanoides. Así llegas a los objetivos de misión sin luchar contra cada enemigo.",
		},
		it = {
			q = "Come supero un nemico?",
			a = "Distrazione fa guardare i nemici in un'altra direzione per un attimo, così puoi passare in Furtività. Tramortire funziona sugli umanoidi. Così raggiungi gli obiettivi delle missioni senza combattere ogni nemico.",
		},
		ru = {
			q = "Как пройти мимо врага?",
			a = "«Отвлечение» заставляет врагов ненадолго посмотреть в другую сторону, и вы можете проскользнуть в «Незаметности». На гуманоидов действует «Ошеломление». Так вы добираетесь до целей заданий, не сражаясь с каждым врагом.",
		},
		pt = {
			q = "Como passo por um inimigo?",
			a = "Distrair faz os inimigos olharem para outro lado por um instante, para você passar em Furtividade. Aturdir funciona em humanoides. Assim você chega aos objetivos de missão sem enfrentar cada inimigo.",
		},
	},
})
