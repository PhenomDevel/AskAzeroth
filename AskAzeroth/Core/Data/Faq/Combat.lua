local _, ns = ...

-- FAQ: Combat and death. See Core/Faq.lua for the format.
ns.Faq.Add("combat", {
	{
		id = "combat-death",
		de = {
			q = "Was passiert, wenn ich sterbe?",
			a = "Jeder Tod kostet deine Ausrüstung etwas Haltbarkeit. Lass deinen Geist frei und lauf als Geist zu deinem Körper zurück, um dort wiederbelebt zu werden. Alternativ holt dich der Geistheiler am Friedhof sofort zurück, dann verliert deine Ausrüstung aber zusätzlich Haltbarkeit und du bist eine Weile geschwächt.",
		},
		en = {
			q = "What happens when I die?",
			a = "Every death costs your gear some durability. Release your spirit and run back to your body as a ghost to be resurrected there. Alternatively the spirit healer at the graveyard brings you back right away, but your gear loses extra durability and you are weakened for a while.",
		},
		fr = {
			q = "Que se passe-t-il quand je meurs ?",
			a = "Chaque mort fait perdre un peu de durabilité à votre équipement. Libérez votre esprit et retournez à votre corps sous forme de fantôme pour y ressusciter. Sinon, le gardien des âmes du cimetière vous ramène tout de suite, mais votre équipement perd encore plus de durabilité et vous êtes affaibli un moment.",
		},
		es = {
			q = "¿Qué pasa cuando muero?",
			a = "Cada muerte le quita algo de durabilidad a tu equipo. Libera tu espíritu y corre como fantasma hasta tu cuerpo para resucitar allí. Otra opción es que el ángel de la resurrección del cementerio te devuelva al instante, pero tu equipo pierde aún más durabilidad y quedas debilitado un rato.",
		},
		it = {
			q = "Cosa succede quando muoio?",
			a = "Ogni morte fa perdere un po' di integrità all'equipaggiamento. Libera lo spirito e torna al tuo corpo come fantasma per resuscitare lì. In alternativa il guaritore spirituale del cimitero ti riporta subito in vita, ma l'equipaggiamento perde altra integrità e resti indebolito per un po'.",
		},
		ru = {
			q = "Что происходит, когда я умираю?",
			a = "Каждая смерть немного снижает прочность экипировки. Отпустите дух и бегите призраком к своему телу, чтобы воскреснуть рядом с ним. Либо целитель душ на кладбище сразу вернёт вас к жизни, но экипировка потеряет ещё больше прочности, а вы на время ослабнете.",
		},
		pt = {
			q = "O que acontece quando eu morro?",
			a = "Cada morte tira um pouco de durabilidade do seu equipamento. Libere seu espírito e corra como fantasma até o corpo para ressuscitar lá. Outra opção é o curandeiro espiritual do cemitério trazer você de volta na hora, mas seu equipamento perde mais durabilidade e você fica enfraquecido por um tempo.",
		},
	},
	{
		id = "combat-die-less",
		de = {
			q = "Wie sterbe ich seltener?",
			a = "Kämpf gegen einen Gegner nach dem anderen und lock ihn von seinen Freunden weg; in WoW: Forever können schon zwei Gegner gleichzeitig zu viel sein. Prüf vor dem Angriff die Stufe des Gegners, iss und trink zwischen den Kämpfen und achte auf Patrouillen. Läuft ein Kampf schief, flieh den Weg zurück, den du gekommen bist.",
		},
		en = {
			q = "How do I die less often?",
			a = "Fight one enemy at a time and pull them away from their friends; even two enemies at once can be too much in WoW: Forever. Check the enemy level before attacking, eat and drink between fights and keep an eye on patrols. If a fight goes wrong, run back the way you came.",
		},
		fr = {
			q = "Comment mourir moins souvent ?",
			a = "Combattez un ennemi à la fois et éloignez-le de ses compagnons ; dans WoW: Forever, deux ennemis à la fois peuvent déjà être de trop. Vérifiez le niveau de l'ennemi avant d'attaquer, mangez et buvez entre les combats et surveillez les patrouilles. Si un combat tourne mal, fuyez par où vous êtes venu.",
		},
		es = {
			q = "¿Cómo muero menos?",
			a = "Lucha contra un enemigo cada vez y apártalo de sus compañeros; en WoW: Forever hasta dos enemigos a la vez pueden ser demasiado. Mira el nivel del enemigo antes de atacar, come y bebe entre combates y vigila las patrullas. Si un combate va mal, huye por donde viniste.",
		},
		it = {
			q = "Come muoio meno spesso?",
			a = "Combatti un nemico alla volta e allontanalo dai suoi compagni; in WoW: Forever anche due nemici insieme possono essere troppi. Controlla il livello del nemico prima di attaccare, mangia e bevi tra uno scontro e l'altro e tieni d'occhio le pattuglie. Se uno scontro va male, scappa da dove sei venuto.",
		},
		ru = {
			q = "Как реже умирать?",
			a = "Сражайтесь с одним врагом за раз и уводите его от сородичей; в WoW: Forever даже двое врагов сразу могут оказаться слишком много. Перед атакой смотрите на уровень врага, ешьте и пейте между боями и следите за патрулями. Если бой идёт плохо, отступайте туда, откуда пришли.",
		},
		pt = {
			q = "Como morro menos?",
			a = "Lute com um inimigo por vez e afaste-o dos companheiros; no WoW: Forever até dois inimigos ao mesmo tempo podem ser demais. Veja o nível do inimigo antes de atacar, coma e beba entre as lutas e fique de olho nas patrulhas. Se uma luta der errado, fuja pelo caminho por onde veio.",
		},
	},
	{
		id = "combat-level-colors",
		de = {
			q = "Was bedeuten die Farben der Gegnerstufen?",
			a = "Die Stufe im Zielfenster ist wie Questnamen gefärbt: Grau bringt keine Erfahrung, Grün ist leicht, Gelb ebenbürtig, Orange schwer und Rot sehr gefährlich. Ein Totenkopf heißt, der Gegner ist weit über dir oder ein Elite-Boss: Allein lieber Abstand halten.",
		},
		en = {
			q = "What do the colours of enemy levels mean?",
			a = "The level in the target frame is coloured like quest names: grey gives no experience, green is easy, yellow is even, orange is hard and red is very dangerous. A skull means the enemy is far above you or an elite boss: stay away when alone.",
		},
		fr = {
			q = "Que signifient les couleurs du niveau des ennemis ?",
			a = "Le niveau dans le cadre de la cible est coloré comme le nom des quêtes : gris ne rapporte pas d'expérience, vert est facile, jaune équivalent, orange difficile et rouge très dangereux. Une tête de mort signifie que l'ennemi est bien au-dessus de vous ou un boss d'élite : seul, restez à l'écart.",
		},
		es = {
			q = "¿Qué significan los colores del nivel de los enemigos?",
			a = "El nivel en el marco del objetivo tiene los mismos colores que las misiones: gris no da experiencia, verde es fácil, amarillo está igualado, naranja es difícil y rojo muy peligroso. Una calavera indica que el enemigo está muy por encima de ti o es un jefe élite: si vas solo, mantente lejos.",
		},
		it = {
			q = "Cosa indicano i colori del livello dei nemici?",
			a = "Il livello nel riquadro del bersaglio ha gli stessi colori delle missioni: grigio non dà esperienza, verde è facile, giallo alla pari, arancione difficile e rosso molto pericoloso. Un teschio indica un nemico molto sopra di te o un boss élite: da solo, stai alla larga.",
		},
		ru = {
			q = "Что означают цвета уровня врагов?",
			a = "Уровень в рамке цели окрашен так же, как названия заданий: серый не даёт опыта, зелёный — легко, жёлтый — на равных, оранжевый — сложно, красный — очень опасно. Череп означает, что враг намного выше вас или это элитный босс: в одиночку держитесь подальше.",
		},
		pt = {
			q = "O que significam as cores do nível dos inimigos?",
			a = "O nível no quadro do alvo tem as mesmas cores das missões: cinza não dá experiência, verde é fácil, amarelo é equilibrado, laranja é difícil e vermelho é muito perigoso. Uma caveira indica que o inimigo está muito acima de você ou é um chefe de elite: sozinho, fique longe.",
		},
	},
	{
		id = "combat-name-colors",
		de = {
			q = "Warum sind Namen rot, gelb oder grün?",
			a = "Rot heißt feindlich: Der Gegner greift dich an, wenn du ihm zu nahe kommst. Gelb ist neutral und wehrt sich nur, wenn du angreifst. Grün ist freundlich.",
		},
		en = {
			q = "Why are names red, yellow or green?",
			a = "Red means hostile: it attacks you when you get too close. Yellow is neutral and only fights back when you attack it. Green is friendly.",
		},
		fr = {
			q = "Pourquoi les noms sont-ils rouges, jaunes ou verts ?",
			a = "Rouge signifie hostile : il vous attaque si vous approchez trop. Jaune est neutre et ne se défend que si vous l'attaquez. Vert est amical.",
		},
		es = {
			q = "¿Por qué los nombres son rojos, amarillos o verdes?",
			a = "Rojo significa hostil: te ataca si te acercas demasiado. Amarillo es neutral y solo se defiende si lo atacas. Verde es amistoso.",
		},
		it = {
			q = "Perché i nomi sono rossi, gialli o verdi?",
			a = "Rosso significa ostile: ti attacca se ti avvicini troppo. Giallo è neutrale e reagisce solo se lo attacchi. Verde è amichevole.",
		},
		ru = {
			q = "Почему имена красные, жёлтые или зелёные?",
			a = "Красный — враждебный: нападает, если подойти слишком близко. Жёлтый — нейтральный и отвечает, только если на него напасть. Зелёный — дружественный.",
		},
		pt = {
			q = "Por que os nomes são vermelhos, amarelos ou verdes?",
			a = "Vermelho significa hostil: ataca você se chegar perto demais. Amarelo é neutro e só reage se você atacar. Verde é amigável.",
		},
	},
	{
		id = "combat-repair",
		de = {
			q = "Wie repariere ich meine Ausrüstung?",
			a = "Ausrüstung nutzt sich im Kampf und beim Sterben ab. Viele Händler, vor allem Rüstungs- und Waffenschmiede, reparieren sie: Sprich sie an und nutze den Amboss-Knopf im Händlerfenster.",
		},
		en = {
			q = "How do I repair my gear?",
			a = "Gear wears down in combat and when you die. Many vendors, especially armour and weapon smiths, repair it: talk to them and use the anvil button in the vendor window.",
		},
		fr = {
			q = "Comment réparer mon équipement ?",
			a = "L'équipement s'use en combat et quand vous mourez. Beaucoup de marchands, surtout les forgerons d'armures et d'armes, le réparent : parlez-leur et utilisez le bouton de l'enclume dans la fenêtre du marchand.",
		},
		es = {
			q = "¿Cómo reparo mi equipo?",
			a = "El equipo se desgasta en combate y al morir. Muchos vendedores, sobre todo los herreros de armaduras y armas, lo reparan: habla con ellos y usa el botón del yunque en la ventana del vendedor.",
		},
		it = {
			q = "Come riparo l'equipaggiamento?",
			a = "L'equipaggiamento si usura in combattimento e quando muori. Molti mercanti, soprattutto i fabbri di armature e armi, lo riparano: parla con loro e usa il pulsante dell'incudine nella finestra del mercante.",
		},
		ru = {
			q = "Как починить экипировку?",
			a = "Экипировка изнашивается в бою и при смерти. Многие торговцы, особенно продавцы брони и оружия, её чинят: поговорите с ними и нажмите кнопку с наковальней в окне торговца.",
		},
		pt = {
			q = "Como conserto meu equipamento?",
			a = "O equipamento se desgasta em combate e quando você morre. Muitos mercadores, principalmente ferreiros de armaduras e armas, consertam: fale com eles e use o botão da bigorna na janela do mercador.",
		},
	},
	{
		id = "combat-elite",
		de = {
			q = "Was ist ein Elite-Gegner?",
			a = "Elite-Gegner haben einen goldenen Drachen am Porträt und sind viel stärker als normale Gegner derselben Stufe. Allein ist das meist zu viel; nimm eine Gruppe mit oder komm ein paar Stufen später wieder. In Dungeons sind fast alle Gegner Elite.",
		},
		en = {
			q = "What is an elite enemy?",
			a = "Elite enemies have a golden dragon around their portrait and are much stronger than normal enemies of the same level. Alone that is usually too much; bring a group or come back a few levels later. In dungeons almost every enemy is elite.",
		},
		fr = {
			q = "Qu'est-ce qu'un ennemi d'élite ?",
			a = "Les ennemis d'élite ont un dragon doré autour de leur portrait et sont bien plus forts que les ennemis normaux de même niveau. Seul, c'est généralement trop ; venez en groupe ou revenez quelques niveaux plus tard. Dans les donjons, presque tous les ennemis sont d'élite.",
		},
		es = {
			q = "¿Qué es un enemigo élite?",
			a = "Los enemigos élite tienen un dragón dorado alrededor de su retrato y son mucho más fuertes que los normales del mismo nivel. Solo suele ser demasiado; ve con un grupo o vuelve unos niveles más tarde. En las mazmorras casi todos los enemigos son élite.",
		},
		it = {
			q = "Cos'è un nemico élite?",
			a = "I nemici élite hanno un drago dorato intorno al ritratto e sono molto più forti dei nemici normali dello stesso livello. Da solo di solito è troppo; porta un gruppo o torna qualche livello dopo. Nelle spedizioni quasi tutti i nemici sono élite.",
		},
		ru = {
			q = "Что такое элитный враг?",
			a = "У элитных врагов вокруг портрета золотой дракон, и они гораздо сильнее обычных врагов того же уровня. В одиночку это обычно слишком; возьмите группу или вернитесь через несколько уровней. В подземельях почти все враги элитные.",
		},
		pt = {
			q = "O que é um inimigo de elite?",
			a = "Inimigos de elite têm um dragão dourado em volta do retrato e são bem mais fortes que inimigos normais do mesmo nível. Sozinho costuma ser demais; leve um grupo ou volte alguns níveis depois. Nas masmorras quase todo inimigo é de elite.",
		},
	},
	{
		id = "combat-aggro-range",
		de = {
			q = "Warum greifen mich Gegner aus der Ferne an?",
			a = "Feindliche Gegner bemerken dich, wenn du ihnen zu nahe kommst; je höher ihre Stufe im Vergleich zu deiner, desto früher. Lauf um Gruppen herum, achte auf Patrouillen und zieh Gegner mit einem Fernkampfangriff einzeln zu dir.",
		},
		en = {
			q = "Why do enemies attack me from far away?",
			a = "Hostile enemies notice you when you get too close; the higher their level compared to yours, the sooner. Walk around groups, watch for patrols and pull enemies one at a time with a ranged attack.",
		},
		fr = {
			q = "Pourquoi des ennemis m'attaquent-ils de loin ?",
			a = "Les ennemis hostiles vous remarquent quand vous approchez trop ; plus leur niveau est élevé par rapport au vôtre, plus tôt. Contournez les groupes, surveillez les patrouilles et attirez les ennemis un par un avec une attaque à distance.",
		},
		es = {
			q = "¿Por qué me atacan enemigos desde lejos?",
			a = "Los enemigos hostiles te detectan si te acercas demasiado; cuanto más alto es su nivel respecto al tuyo, antes. Rodea los grupos, vigila las patrullas y atrae a los enemigos de uno en uno con un ataque a distancia.",
		},
		it = {
			q = "Perché i nemici mi attaccano da lontano?",
			a = "I nemici ostili ti notano quando ti avvicini troppo; più il loro livello è alto rispetto al tuo, prima succede. Aggira i gruppi, fai attenzione alle pattuglie e attira i nemici uno alla volta con un attacco a distanza.",
		},
		ru = {
			q = "Почему враги нападают издалека?",
			a = "Враждебные существа замечают вас, если подойти слишком близко; чем выше их уровень по сравнению с вашим, тем раньше. Обходите группы, следите за патрулями и выманивайте врагов по одному атакой издалека.",
		},
		pt = {
			q = "Por que inimigos me atacam de longe?",
			a = "Inimigos hostis percebem você quando chega perto demais; quanto maior o nível deles em relação ao seu, mais cedo. Contorne grupos, fique atento a patrulhas e puxe os inimigos um de cada vez com um ataque à distância.",
		},
	},
	{
		id = "combat-adds-flee",
		de = {
			q = "Warum läuft der Gegner bei wenig Gesundheit weg?",
			a = "Manche Gegner fliehen kurz vor dem Tod und holen Verstärkung. Halte sie mit Verlangsamungen oder Betäubungen auf, oder mach genug Schaden, bevor sie weit kommen. Kämpfe nie direkt neben anderen Gegnern.",
		},
		en = {
			q = "Why does the enemy run away at low health?",
			a = "Some enemies flee shortly before dying and bring help. Stop them with slows or stuns, or deal enough damage before they get far. Never fight right next to other enemies.",
		},
		fr = {
			q = "Pourquoi l'ennemi s'enfuit-il quand il a peu de vie ?",
			a = "Certains ennemis s'enfuient peu avant de mourir et ramènent des renforts. Arrêtez-les avec des ralentissements ou des étourdissements, ou infligez assez de dégâts avant qu'ils ne s'éloignent. Ne combattez jamais juste à côté d'autres ennemis.",
		},
		es = {
			q = "¿Por qué huye el enemigo con poca salud?",
			a = "Algunos enemigos huyen poco antes de morir y traen ayuda. Detenlos con ralentizaciones o aturdimientos, o haz suficiente daño antes de que se alejen. Nunca luches justo al lado de otros enemigos.",
		},
		it = {
			q = "Perché il nemico scappa quando ha poca salute?",
			a = "Alcuni nemici fuggono poco prima di morire e portano rinforzi. Fermali con rallentamenti o storditure, oppure infliggi abbastanza danni prima che si allontanino. Non combattere mai proprio accanto ad altri nemici.",
		},
		ru = {
			q = "Почему враг убегает, когда у него мало здоровья?",
			a = "Некоторые враги перед смертью убегают и приводят подмогу. Останавливайте их замедлениями или оглушением либо успейте нанести достаточно урона, пока они не убежали. Никогда не сражайтесь прямо рядом с другими врагами.",
		},
		pt = {
			q = "Por que o inimigo foge com pouca vida?",
			a = "Alguns inimigos fogem pouco antes de morrer e trazem ajuda. Pare-os com lentidões ou atordoamentos, ou cause dano suficiente antes que se afastem. Nunca lute bem ao lado de outros inimigos.",
		},
	},
	{
		id = "combat-evade",
		de = {
			q = "Warum heißt es „Entkommen“ und der Gegner heilt sich?",
			a = "Wenn du einen Gegner zu weit von seinem Ort wegziehst oder ihn nicht erreichen kannst, läuft er zurück, wird unverwundbar und heilt sich voll. Kämpf in der Nähe seines Startpunkts und such dir eine Stelle, an die er herankommt.",
		},
		en = {
			q = "Why does it say Evade and the enemy heals up?",
			a = "If you pull an enemy too far from its spot, or it cannot reach you, it runs back, becomes immune and heals to full. Fight near where it started and pick a spot it can reach.",
		},
		fr = {
			q = "Pourquoi « Évite » s'affiche-t-il et l'ennemi se soigne ?",
			a = "Si vous éloignez trop un ennemi de son emplacement, ou s'il ne peut pas vous atteindre, il retourne à sa place, devient insensible et se soigne entièrement. Combattez près de son point de départ et choisissez un endroit qu'il peut atteindre.",
		},
		es = {
			q = "¿Por qué pone «Evadir» y el enemigo se cura?",
			a = "Si alejas demasiado a un enemigo de su sitio, o no puede alcanzarte, vuelve corriendo, se vuelve inmune y se cura por completo. Lucha cerca de donde empezó y elige un sitio al que pueda llegar.",
		},
		it = {
			q = "Perché compare «Evade» e il nemico si cura?",
			a = "Se allontani troppo un nemico dalla sua posizione, o se non riesce a raggiungerti, torna indietro, diventa immune e si cura del tutto. Combatti vicino al suo punto di partenza e scegli un posto che può raggiungere.",
		},
		ru = {
			q = "Почему пишет «Уклонение», а враг восстанавливается?",
			a = "Если увести врага слишком далеко от его места или он не может до вас добраться, он бежит обратно, становится неуязвимым и полностью восстанавливает здоровье. Сражайтесь рядом с его исходной точкой и выбирайте место, до которого он может дойти.",
		},
		pt = {
			q = "Por que aparece \"Evadir\" e o inimigo se cura?",
			a = "Se você afasta demais um inimigo do lugar dele, ou ele não consegue alcançar você, ele volta correndo, fica imune e se cura por completo. Lute perto de onde ele estava e escolha um lugar que ele consiga alcançar.",
		},
	},
	{
		id = "combat-corpse-run",
		de = {
			q = "Ich finde meine Leiche nicht. Was tun?",
			a = "Als Geist zeigt dir die Minikarte einen Pfeil zu deiner Leiche, und auf der Weltkarte ist sie markiert. Nähere dich ihr, bis „Wiederbeleben“ erscheint. Such dir eine sichere Stelle, sonst stirbst du gleich wieder.",
		},
		en = {
			q = "I cannot find my corpse. What do I do?",
			a = "As a ghost, the minimap shows an arrow to your corpse, and it is marked on the world map. Get close until the resurrect button appears. Pick a safe spot, or you die again right away.",
		},
		fr = {
			q = "Je ne trouve pas mon corps. Que faire ?",
			a = "En fantôme, la minicarte affiche une flèche vers votre corps, et il est marqué sur la carte du monde. Approchez-vous jusqu'à ce que le bouton de résurrection apparaisse. Choisissez un endroit sûr, sinon vous mourrez aussitôt.",
		},
		es = {
			q = "No encuentro mi cadáver. ¿Qué hago?",
			a = "Como fantasma, el minimapa muestra una flecha hacia tu cadáver, que también está marcado en el mapa del mundo. Acércate hasta que aparezca el botón de resucitar. Elige un sitio seguro o volverás a morir enseguida.",
		},
		it = {
			q = "Non trovo il mio cadavere. Cosa faccio?",
			a = "Da fantasma, la minimappa mostra una freccia verso il cadavere, che è segnato anche sulla mappa del mondo. Avvicinati finché compare il pulsante per resuscitare. Scegli un punto sicuro, altrimenti muori subito di nuovo.",
		},
		ru = {
			q = "Не могу найти своё тело. Что делать?",
			a = "В облике призрака на миникарте видна стрелка к телу, а на карте мира оно отмечено. Подойдите ближе, пока не появится кнопка воскрешения. Выберите безопасное место, иначе тут же погибнете снова.",
		},
		pt = {
			q = "Não encontro meu corpo. O que faço?",
			a = "Como fantasma, o minimapa mostra uma seta até o corpo, que também aparece marcado no mapa-múndi. Chegue perto até aparecer o botão de ressuscitar. Escolha um lugar seguro, senão você morre de novo na hora.",
		},
	},
	{
		id = "combat-res-sickness",
		de = {
			q = "Was ist Wiederbelebungsnachwirkung?",
			a = "Lässt du dich vom Geistheiler wiederbeleben, sind deine Werte eine Weile stark gesenkt und deine Ausrüstung verliert zusätzlich Haltbarkeit. Auf sehr niedrigen Stufen ist das egal, später lohnt sich fast immer der Weg zur Leiche.",
		},
		en = {
			q = "What is resurrection sickness?",
			a = "If the spirit healer resurrects you, your stats are greatly reduced for a while and your gear loses extra durability. At very low levels it hardly matters; later, running back to your corpse is almost always worth it.",
		},
		fr = {
			q = "Qu'est-ce que le mal de résurrection ?",
			a = "Si le gardien des âmes vous ressuscite, vos caractéristiques sont fortement réduites pendant un moment et votre équipement perd de la durabilité en plus. À très bas niveau, cela compte peu ; plus tard, retourner à votre corps vaut presque toujours le coup.",
		},
		es = {
			q = "¿Qué es el mal de resurrección?",
			a = "Si te resucita el ángel de la resurrección, tus atributos se reducen mucho durante un rato y tu equipo pierde durabilidad extra. A niveles muy bajos apenas importa; más adelante casi siempre compensa volver a tu cadáver.",
		},
		it = {
			q = "Cos'è la debolezza da resurrezione?",
			a = "Se ti resuscita il guaritore spirituale, le statistiche si riducono molto per un po' e l'equipaggiamento perde integrità extra. A livelli molto bassi conta poco; più avanti tornare al cadavere conviene quasi sempre.",
		},
		ru = {
			q = "Что такое слабость после воскрешения?",
			a = "Если вас воскресит целитель душ, ваши характеристики на время сильно снизятся, а экипировка дополнительно потеряет прочность. На самых низких уровнях это почти не важно; позже почти всегда выгоднее добежать до тела.",
		},
		pt = {
			q = "O que é o enjoo de ressurreição?",
			a = "Se o curandeiro espiritual ressuscitar você, seus atributos ficam bem reduzidos por um tempo e o equipamento perde durabilidade extra. Em níveis muito baixos quase não importa; depois, voltar ao corpo quase sempre vale a pena.",
		},
	},
	{
		id = "combat-die-in-dungeon",
		de = {
			q = "Ich bin im Dungeon gestorben. Wie komme ich zurück?",
			a = "Lass deinen Geist frei und lauf zum Eingang des Dungeons; dort wirst du wiederbelebt. Hat jemand in der Gruppe einen Wiederbelebungszauber, warte lieber auf ihn, das spart Zeit.",
		},
		en = {
			q = "I died in a dungeon. How do I get back?",
			a = "Release your spirit and run to the dungeon entrance; you are resurrected there. If someone in the group can resurrect, wait for them instead, it saves time.",
		},
		fr = {
			q = "Je suis mort dans un donjon. Comment y retourner ?",
			a = "Libérez votre esprit et courez jusqu'à l'entrée du donjon ; vous y ressuscitez. Si quelqu'un du groupe peut ressusciter, attendez-le plutôt, cela fait gagner du temps.",
		},
		es = {
			q = "He muerto en una mazmorra. ¿Cómo vuelvo?",
			a = "Libera tu espíritu y corre hasta la entrada de la mazmorra; allí resucitas. Si alguien del grupo puede resucitar, espéralo mejor, ahorra tiempo.",
		},
		it = {
			q = "Sono morto in una spedizione. Come torno dentro?",
			a = "Libera lo spirito e corri all'ingresso della spedizione; lì resusciti. Se qualcuno del gruppo può resuscitare, aspettalo invece, si risparmia tempo.",
		},
		ru = {
			q = "Я погиб в подземелье. Как вернуться?",
			a = "Отпустите дух и бегите ко входу в подземелье; там вы воскреснете. Если в группе кто-то умеет воскрешать, лучше подождите его — так быстрее.",
		},
		pt = {
			q = "Morri numa masmorra. Como volto?",
			a = "Libere o espírito e corra até a entrada da masmorra; você ressuscita ali. Se alguém do grupo puder ressuscitar, espere por essa pessoa, poupa tempo.",
		},
	},
	{
		id = "combat-durability",
		de = {
			q = "Warum ist meine Ausrüstung rot?",
			a = "Rote Ausrüstung ist kaputt und gibt keine Werte mehr; gelb heißt, sie ist fast kaputt. Das Symbol neben der Minikarte zeigt es an. Lass sie bei einem Händler mit Reparatur-Knopf instand setzen.",
		},
		en = {
			q = "Why is my gear red?",
			a = "Red gear is broken and gives no stats any more; yellow means it is almost broken. The figure near the minimap shows it. Have it repaired at a vendor with the repair button.",
		},
		fr = {
			q = "Pourquoi mon équipement est-il rouge ?",
			a = "L'équipement rouge est cassé et ne donne plus de caractéristiques ; jaune signifie qu'il est presque cassé. La silhouette près de la minicarte l'indique. Faites-le réparer chez un marchand avec le bouton de réparation.",
		},
		es = {
			q = "¿Por qué mi equipo está en rojo?",
			a = "El equipo rojo está roto y ya no da atributos; amarillo significa que está casi roto. La figura junto al minimapa lo indica. Repáralo en un vendedor con el botón de reparar.",
		},
		it = {
			q = "Perché il mio equipaggiamento è rosso?",
			a = "L'equipaggiamento rosso è rotto e non dà più statistiche; giallo significa quasi rotto. Lo mostra la figura vicino alla minimappa. Fallo riparare da un mercante con il pulsante di riparazione.",
		},
		ru = {
			q = "Почему моя экипировка красная?",
			a = "Красная экипировка сломана и больше не даёт характеристик; жёлтая — почти сломана. Это показывает фигурка возле миникарты. Почините её у торговца кнопкой ремонта.",
		},
		pt = {
			q = "Por que meu equipamento está vermelho?",
			a = "Equipamento vermelho está quebrado e não dá mais atributos; amarelo significa quase quebrado. A figura perto do minimapa mostra isso. Conserte num mercador com o botão de reparo.",
		},
	},
	{
		id = "combat-breath",
		de = {
			q = "Was ist der Balken beim Tauchen?",
			a = "Unter Wasser zeigt ein Balken deinen Atem. Läuft er ab, verlierst du schnell Gesundheit, also tauch rechtzeitig auf. In sehr tiefem Wasser fern der Küste erscheint ein Erschöpfungsbalken; schwimm dann zurück ans Ufer.",
		},
		en = {
			q = "What is the bar when I dive?",
			a = "Underwater, a bar shows your breath. When it runs out you lose health quickly, so come up in time. In very deep water far from the coast a fatigue bar appears; swim back to shore then.",
		},
		fr = {
			q = "Quelle est cette barre quand je plonge ?",
			a = "Sous l'eau, une barre indique votre souffle. Quand elle est vide, vous perdez vite de la vie, alors remontez à temps. En eaux très profondes loin des côtes, une barre de fatigue apparaît ; regagnez alors le rivage.",
		},
		es = {
			q = "¿Qué es la barra que aparece al bucear?",
			a = "Bajo el agua, una barra muestra tu aliento. Si se agota, pierdes salud rápidamente, así que sube a tiempo. En aguas muy profundas lejos de la costa aparece una barra de fatiga; entonces vuelve nadando a la orilla.",
		},
		it = {
			q = "Cos'è la barra quando mi immergo?",
			a = "Sott'acqua una barra mostra il respiro. Quando finisce perdi salute in fretta, quindi risali in tempo. In acque molto profonde lontano dalla costa compare una barra di fatica; allora torna a riva.",
		},
		ru = {
			q = "Что за полоска появляется под водой?",
			a = "Под водой полоска показывает запас воздуха. Когда он заканчивается, здоровье быстро убывает, так что всплывайте вовремя. В очень глубоких водах вдали от берега появляется полоска усталости; тогда плывите обратно к берегу.",
		},
		pt = {
			q = "Que barra é essa quando mergulho?",
			a = "Debaixo d'água, uma barra mostra seu fôlego. Quando acaba, você perde vida rápido, então suba a tempo. Em águas muito profundas longe da costa aparece uma barra de fadiga; nade de volta para a margem.",
		},
	},
	{
		id = "combat-dazed",
		de = {
			q = "Warum bin ich plötzlich langsam?",
			a = "Wirst du beim Weglaufen von hinten getroffen, kannst du „benommen“ werden und läufst kurz langsamer. Daher kommt man vor Gegnern schwer davon. Flieh lieber früh, nicht erst bei fast leerer Gesundheit.",
		},
		en = {
			q = "Why am I suddenly slow?",
			a = "If you get hit from behind while running away, you can become dazed and run slower for a moment. That is why escaping enemies is hard. Run early, not when your health is almost gone.",
		},
		fr = {
			q = "Pourquoi suis-je soudain ralenti ?",
			a = "Si vous êtes frappé dans le dos en fuyant, vous pouvez être hébété et courir plus lentement un instant. C'est pourquoi il est difficile d'échapper aux ennemis. Fuyez tôt, pas quand votre vie est presque vide.",
		},
		es = {
			q = "¿Por qué de repente voy lento?",
			a = "Si te golpean por la espalda mientras huyes, puedes quedar aturdido y correr más despacio un momento. Por eso es difícil escapar de los enemigos. Huye pronto, no cuando ya casi no te queda salud.",
		},
		it = {
			q = "Perché all'improvviso sono lento?",
			a = "Se vieni colpito alle spalle mentre scappi, puoi restare stordito e correre più lentamente per un attimo. Per questo è difficile sfuggire ai nemici. Scappa presto, non quando hai quasi finito la salute.",
		},
		ru = {
			q = "Почему я вдруг стал медленным?",
			a = "Если вас ударили в спину во время бегства, вы можете получить «Головокружение» и ненадолго замедлиться. Поэтому от врагов трудно убежать. Отступайте заранее, а не когда здоровья почти не осталось.",
		},
		pt = {
			q = "Por que de repente estou lento?",
			a = "Se você é atingido pelas costas enquanto foge, pode ficar tonto e correr mais devagar por um momento. Por isso é difícil escapar dos inimigos. Fuja cedo, não quando a vida está quase no fim.",
		},
	},
	{
		id = "combat-debuffs",
		de = {
			q = "Was bedeuten die Symbole an meinem Porträt?",
			a = "Oben rechts siehst du deine Effekte: nützliche Buffs und schädliche Debuffs wie Gifte, Flüche oder Krankheiten. Fahr mit der Maus darüber für Details. Manche Klassen können schädliche Effekte entfernen, frag in der Gruppe danach.",
		},
		en = {
			q = "What do the icons near my portrait mean?",
			a = "At the top right you see your effects: helpful buffs and harmful debuffs like poisons, curses or diseases. Hover over them for details. Some classes can remove harmful effects, ask your group.",
		},
		fr = {
			q = "Que signifient les icônes près de mon portrait ?",
			a = "En haut à droite, vous voyez vos effets : les améliorations utiles et les effets néfastes comme poisons, malédictions ou maladies. Survolez-les pour les détails. Certaines classes peuvent dissiper les effets néfastes, demandez à votre groupe.",
		},
		es = {
			q = "¿Qué significan los iconos junto a mi retrato?",
			a = "Arriba a la derecha ves tus efectos: beneficios útiles y perjuicios como venenos, maldiciones o enfermedades. Pasa el ratón por encima para ver detalles. Algunas clases pueden quitar los efectos dañinos; pregunta a tu grupo.",
		},
		it = {
			q = "Cosa indicano le icone vicino al mio ritratto?",
			a = "In alto a destra vedi i tuoi effetti: benefici utili e penalità come veleni, maledizioni o malattie. Passaci sopra per i dettagli. Alcune classi possono rimuovere gli effetti dannosi, chiedi al tuo gruppo.",
		},
		ru = {
			q = "Что означают значки возле моего портрета?",
			a = "Справа вверху видны ваши эффекты: полезные усиления и вредные эффекты вроде ядов, проклятий или болезней. Наведите на них курсор, чтобы узнать подробности. Некоторые классы умеют снимать вредные эффекты — спросите группу.",
		},
		pt = {
			q = "O que significam os ícones perto do meu retrato?",
			a = "No canto superior direito você vê seus efeitos: bônus úteis e penalidades como venenos, maldições ou doenças. Passe o mouse para ver detalhes. Algumas classes podem remover efeitos nocivos; pergunte ao seu grupo.",
		},
	},
	{
		id = "combat-threat",
		de = {
			q = "Warum greift mich der Gegner an und nicht den Tank?",
			a = "Gegner greifen an, wer die meiste Bedrohung (Aggro) erzeugt hat; Schaden und Heilung erzeugen Bedrohung. Lass dem Tank einen Moment Vorsprung und greif sein Ziel an. Ziehst du trotzdem Aggro, lauf zum Tank, statt wegzulaufen.",
		},
		en = {
			q = "Why does the enemy attack me and not the tank?",
			a = "Enemies attack whoever generated the most threat; damage and healing create threat. Give the tank a head start and attack their target. If you still pull the enemy, run to the tank instead of away.",
		},
		fr = {
			q = "Pourquoi l'ennemi m'attaque-t-il et pas le tank ?",
			a = "Les ennemis attaquent celui qui a généré le plus de menace ; les dégâts et les soins génèrent de la menace. Laissez une avance au tank et attaquez sa cible. Si vous attirez quand même l'ennemi, courez vers le tank plutôt que de fuir.",
		},
		es = {
			q = "¿Por qué el enemigo me ataca a mí y no al tanque?",
			a = "Los enemigos atacan a quien ha generado más amenaza; el daño y la sanación generan amenaza. Dale ventaja al tanque y ataca a su objetivo. Si aun así atraes al enemigo, corre hacia el tanque en lugar de alejarte.",
		},
		it = {
			q = "Perché il nemico attacca me e non il tank?",
			a = "I nemici attaccano chi ha generato più minaccia; danni e cure generano minaccia. Lascia un po' di vantaggio al tank e attacca il suo bersaglio. Se attiri comunque il nemico, corri verso il tank invece di scappare.",
		},
		ru = {
			q = "Почему враг атакует меня, а не танка?",
			a = "Враги атакуют того, кто создал больше всего угрозы; урон и лечение создают угрозу. Дайте танку фору и атакуйте его цель. Если враг всё же переключился на вас, бегите к танку, а не прочь.",
		},
		pt = {
			q = "Por que o inimigo me ataca e não o tanque?",
			a = "Os inimigos atacam quem gerou mais ameaça; dano e cura geram ameaça. Dê uma vantagem ao tanque e ataque o alvo dele. Se mesmo assim puxar o inimigo, corra até o tanque em vez de fugir.",
		},
	},
	{
		id = "combat-grey-name",
		de = {
			q = "Warum ist der Name eines Gegners grau?",
			a = "Ein anderer Spieler hat ihn zuerst angegriffen; Beute und Questfortschritt gehören ihm. Such dir einen anderen Gegner oder bildet eine Gruppe, damit es für beide zählt.",
		},
		en = {
			q = "Why is an enemy's name grey?",
			a = "Another player attacked it first; the loot and quest credit are theirs. Pick another enemy or form a group so it counts for both of you.",
		},
		fr = {
			q = "Pourquoi le nom d'un ennemi est-il gris ?",
			a = "Un autre joueur l'a attaqué en premier ; le butin et le crédit de quête sont pour lui. Choisissez un autre ennemi ou formez un groupe pour que ça compte pour vous deux.",
		},
		es = {
			q = "¿Por qué el nombre de un enemigo está en gris?",
			a = "Otro jugador lo atacó primero; el botín y el progreso de misión son suyos. Elige otro enemigo o formad un grupo para que cuente para los dos.",
		},
		it = {
			q = "Perché il nome di un nemico è grigio?",
			a = "Un altro giocatore l'ha attaccato per primo; bottino e progresso della missione sono suoi. Scegli un altro nemico o fate gruppo così conta per entrambi.",
		},
		ru = {
			q = "Почему имя врага серое?",
			a = "Его первым атаковал другой игрок; добыча и засчёт задания достанутся ему. Выберите другого врага или соберитесь в группу, чтобы засчиталось обоим.",
		},
		pt = {
			q = "Por que o nome de um inimigo está cinza?",
			a = "Outro jogador atacou primeiro; o saque e o progresso da missão são dele. Escolha outro inimigo ou formem um grupo para contar para os dois.",
		},
	},
	{
		id = "combat-pvp-flag",
		de = {
			q = "Warum greift mich ein Spieler der anderen Fraktion an?",
			a = "Du bist für PvP markiert: auf PvP-Regelwerken in vielen Gebieten automatisch, sonst, wenn du selbst einen Spieler oder Wachen der anderen Fraktion angreifst oder /pvp eingibst. Auf dem normalen Regelwerk kannst du PvP meiden, solange du dich nicht markierst.",
		},
		en = {
			q = "Why does a player of the other faction attack me?",
			a = "You are flagged for PvP: on PvP rulesets automatically in many zones, otherwise when you attack a player or guards of the other faction yourself or type /pvp. On the Normal ruleset you can avoid PvP as long as you do not flag yourself.",
		},
		fr = {
			q = "Pourquoi un joueur de l'autre faction m'attaque-t-il ?",
			a = "Vous êtes marqué JcJ : automatiquement dans beaucoup de zones sur les ensembles de règles JcJ, sinon quand vous attaquez vous-même un joueur ou des gardes de l'autre faction, ou que vous tapez /pvp. Sur l'ensemble de règles Normal, vous évitez le JcJ tant que vous ne vous marquez pas.",
		},
		es = {
			q = "¿Por qué me ataca un jugador de la otra facción?",
			a = "Estás marcado para JcJ: en los conjuntos de reglas JcJ, automáticamente en muchas zonas; si no, cuando tú atacas a un jugador o a los guardias de la otra facción, o escribes /pvp. En el conjunto de reglas Normal puedes evitar el JcJ mientras no te marques.",
		},
		it = {
			q = "Perché un giocatore dell'altra fazione mi attacca?",
			a = "Sei segnato per il PvP: nei set di regole PvP automaticamente in molte zone, altrimenti quando attacchi tu un giocatore o le guardie dell'altra fazione, oppure scrivi /pvp. Nel set di regole Normale eviti il PvP finché non ti segni da solo.",
		},
		ru = {
			q = "Почему на меня нападает игрок другой фракции?",
			a = "У вас включён режим PvP: в наборах правил PvP — автоматически во многих зонах, в остальных случаях — когда вы сами нападаете на игрока или стражу другой фракции либо вводите /pvp. В «Обычном» наборе правил PvP можно избегать, пока вы сами его не включите.",
		},
		pt = {
			q = "Por que um jogador da outra facção me ataca?",
			a = "Você está marcado para JxJ: nos conjuntos de regras JxJ, automaticamente em muitas zonas; nos outros, quando você mesmo ataca um jogador ou guardas da outra facção, ou digita /pvp. No conjunto de regras Normal você evita JxJ enquanto não se marcar.",
		},
	},
})
