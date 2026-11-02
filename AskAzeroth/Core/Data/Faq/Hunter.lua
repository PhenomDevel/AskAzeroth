local _, ns = ...

-- FAQ: Hunter. See Core/Faq.lua for the format.
ns.Faq.Add("hunter", {
	{
		id = "hunter-tame-learn",
		de = {
			q = "Wann kann ich als Jäger ein Tier zähmen?",
			a = "Ab Stufe 10. Sprich deinen Jägerlehrer an: Er gibt dir eine kurze Questreihe, in der du „Wildtier zähmen“ lernst. Bis dahin kämpfst du allein, danach ist dein Tier dein wichtigster Begleiter.",
		},
		en = {
			q = "When can I tame a pet as a hunter?",
			a = "From level 10. Talk to your hunter trainer: they give you a short quest chain in which you learn Tame Beast. Until then you fight alone; after that your pet is your most important companion.",
		},
		fr = {
			q = "Quand puis-je apprivoiser un familier en tant que chasseur ?",
			a = "À partir du niveau 10. Parlez à votre maître des chasseurs : il vous confie une courte suite de quêtes au cours de laquelle vous apprenez Apprivoiser une bête. Jusque-là vous combattez seul ; ensuite votre familier devient votre compagnon le plus important.",
		},
		es = {
			q = "¿Cuándo puedo domesticar una mascota como cazador?",
			a = "A partir del nivel 10. Habla con tu instructor de cazadores: te da una breve cadena de misiones en la que aprendes Domesticar bestia. Hasta entonces luchas solo; después, tu mascota es tu compañera más importante.",
		},
		it = {
			q = "Quando posso ammansire un famiglio come cacciatore?",
			a = "Dal livello 10. Parla con il tuo istruttore dei cacciatori: ti affida una breve serie di missioni in cui impari Ammansisci Bestia. Fino ad allora combatti da solo; dopo, il famiglio è il tuo compagno più importante.",
		},
		ru = {
			q = "Когда охотник может приручить питомца?",
			a = "С 10-го уровня. Поговорите с наставником охотников: он даст короткую цепочку заданий, в которой вы изучите «Приручение зверя». До этого вы сражаетесь в одиночку, а потом питомец становится вашим главным спутником.",
		},
		pt = {
			q = "Quando posso domar um ajudante como caçador?",
			a = "A partir do nível 10. Fale com o seu instrutor de caçadores: ele lhe dá uma curta série de missões em que você aprende Domar Fera. Até lá você luta sozinho; depois, o ajudante é o seu companheiro mais importante.",
		},
	},
	{
		id = "hunter-tame-how",
		de = {
			q = "Wie zähme ich ein Tier?",
			a = "Wähl ein Wildtier als Ziel, das höchstens deine Stufe hat, und wirk „Wildtier zähmen“. Der Zauber dauert ein paar Sekunden, in denen dich das Tier angreift; wirst du unterbrochen, versuch es noch einmal. Danach gehört das Tier dir und erscheint mit eigenem Porträt unter deinem.",
		},
		en = {
			q = "How do I tame a pet?",
			a = "Target a beast that is at most your level and cast Tame Beast. The cast takes a few seconds during which the beast attacks you; if it gets interrupted, try again. Afterwards the beast is yours and shows up with its own portrait below yours.",
		},
		fr = {
			q = "Comment apprivoiser un familier ?",
			a = "Ciblez une bête dont le niveau ne dépasse pas le vôtre et lancez Apprivoiser une bête. L'incantation dure quelques secondes pendant lesquelles la bête vous attaque ; si elle est interrompue, recommencez. Ensuite la bête est à vous et apparaît avec son propre portrait sous le vôtre.",
		},
		es = {
			q = "¿Cómo domestico una mascota?",
			a = "Selecciona una bestia que no supere tu nivel y lanza Domesticar bestia. El lanzamiento dura unos segundos en los que la bestia te ataca; si se interrumpe, vuelve a intentarlo. Después la bestia es tuya y aparece con su propio retrato debajo del tuyo.",
		},
		it = {
			q = "Come si ammansisce un famiglio?",
			a = "Seleziona una bestia di livello non superiore al tuo e lancia Ammansisci Bestia. Il lancio dura alcuni secondi durante i quali la bestia ti attacca; se viene interrotto, riprova. Poi la bestia è tua e compare con il suo ritratto sotto il tuo.",
		},
		ru = {
			q = "Как приручить питомца?",
			a = "Выберите целью зверя не выше вашего уровня и примените «Приручение зверя». Заклинание длится несколько секунд, и всё это время зверь атакует вас; если его прервали, попробуйте снова. После этого зверь ваш и появляется со своим портретом под вашим.",
		},
		pt = {
			q = "Como domo um ajudante?",
			a = "Selecione uma fera que não esteja acima do seu nível e lance Domar Fera. A conjuração leva alguns segundos, durante os quais a fera ataca você; se for interrompida, tente de novo. Depois a fera é sua e aparece com o próprio retrato abaixo do seu.",
		},
	},
	{
		id = "hunter-tame-which",
		de = {
			q = "Welche Tiere kann ich zähmen?",
			a = "Wildtiere wie Wölfe, Katzen, Eber, Bären, Spinnen, Raptoren oder Vögel, sofern sie nicht über deiner Stufe sind. Humanoide, Untote, Elementare und Elite-Gegner gehen nicht. Ob ein Tier zähmbar ist, siehst du daran, dass „Wildtier zähmen“ es als Ziel annimmt.",
		},
		en = {
			q = "Which beasts can I tame?",
			a = "Beasts such as wolves, cats, boars, bears, spiders, raptors or birds, as long as they are not above your level. Humanoids, undead, elementals and elite enemies cannot be tamed. If Tame Beast accepts the target, it can be tamed.",
		},
		fr = {
			q = "Quelles bêtes puis-je apprivoiser ?",
			a = "Des bêtes comme les loups, félins, sangliers, ours, araignées, raptors ou oiseaux, tant que leur niveau ne dépasse pas le vôtre. Les humanoïdes, morts-vivants, élémentaires et ennemis élites ne peuvent pas être apprivoisés. Si Apprivoiser une bête accepte la cible, elle peut être apprivoisée.",
		},
		es = {
			q = "¿Qué bestias puedo domesticar?",
			a = "Bestias como lobos, felinos, jabalíes, osos, arañas, raptores o aves, siempre que no superen tu nivel. Los humanoides, no-muertos, elementales y enemigos élite no se pueden domesticar. Si Domesticar bestia acepta el objetivo, se puede domesticar.",
		},
		it = {
			q = "Quali bestie posso ammansire?",
			a = "Bestie come lupi, felini, cinghiali, orsi, ragni, raptor o uccelli, purché non siano di livello superiore al tuo. Umanoidi, non morti, elementali e nemici élite non si possono ammansire. Se Ammansisci Bestia accetta il bersaglio, si può ammansire.",
		},
		ru = {
			q = "Каких зверей можно приручить?",
			a = "Зверей вроде волков, кошек, кабанов, медведей, пауков, ящеров или птиц, если они не выше вашего уровня. Гуманоидов, нежить, элементалей и элитных противников приручить нельзя. Если «Приручение зверя» принимает цель, её можно приручить.",
		},
		pt = {
			q = "Quais feras posso domar?",
			a = "Feras como lobos, felinos, javalis, ursos, aranhas, raptores ou aves, desde que não estejam acima do seu nível. Humanoides, mortos-vivos, elementais e inimigos de elite não podem ser domados. Se Domar Fera aceitar o alvo, ele pode ser domado.",
		},
	},
	{
		id = "hunter-tame-fail",
		de = {
			q = "Warum klappt das Zähmen nicht?",
			a = "Häufige Gründe: Das Tier ist über deiner Stufe, es ist kein Wildtier oder ein Elite-Gegner, du hast schon ein Tier dabei, oder der Zauber wurde unterbrochen. Schick dein aktuelles Tier vorher weg oder bring es zum Stallmeister.",
		},
		en = {
			q = "Why does taming not work?",
			a = "Common reasons: the beast is above your level, it is not a beast or it is elite, you already have a pet with you, or the cast was interrupted. Dismiss your current pet first or leave it at the stable master.",
		},
		fr = {
			q = "Pourquoi l'apprivoisement ne fonctionne-t-il pas ?",
			a = "Raisons fréquentes : la bête est d'un niveau supérieur au vôtre, ce n'est pas une bête ou c'est un élite, vous avez déjà un familier avec vous, ou l'incantation a été interrompue. Renvoyez d'abord votre familier actuel ou laissez-le chez le maître des écuries.",
		},
		es = {
			q = "¿Por qué no funciona la domesticación?",
			a = "Motivos habituales: la bestia supera tu nivel, no es una bestia o es élite, ya llevas una mascota contigo o el lanzamiento se interrumpió. Retira primero tu mascota actual o déjala con el maestro de establos.",
		},
		it = {
			q = "Perché non riesco ad ammansire?",
			a = "Motivi frequenti: la bestia è di livello superiore al tuo, non è una bestia o è élite, hai già un famiglio con te, oppure il lancio è stato interrotto. Congeda prima il famiglio attuale o lascialo al maestro di stalla.",
		},
		ru = {
			q = "Почему приручение не получается?",
			a = "Частые причины: зверь выше вашего уровня, это не зверь или он элитный, у вас уже есть питомец, или заклинание прервали. Сначала отпустите текущего питомца или оставьте его у смотрителя стойл.",
		},
		pt = {
			q = "Por que a doma não funciona?",
			a = "Motivos comuns: a fera está acima do seu nível, não é uma fera ou é de elite, você já tem um ajudante consigo, ou a conjuração foi interrompida. Dispense primeiro o ajudante atual ou deixe-o com o mestre do estábulo.",
		},
	},
	{
		id = "hunter-pet-family",
		de = {
			q = "Welches Tier ist das beste?",
			a = "Es kommt auf den Zweck an. Katzen und Raptoren machen viel Schaden, Eber, Bären und Gorillas halten mehr aus und eignen sich gut, wenn dein Tier die Gegner beschäftigen soll. Am Anfang ist jedes Tier eine große Hilfe, nimm ruhig eines, das dir gefällt.",
		},
		en = {
			q = "Which pet is the best?",
			a = "It depends on what you need. Cats and raptors deal a lot of damage; boars, bears and gorillas can take more hits and are good when your pet should keep enemies busy. Early on any pet is a big help, so pick one you like.",
		},
		fr = {
			q = "Quel familier est le meilleur ?",
			a = "Cela dépend de vos besoins. Les félins et les raptors infligent beaucoup de dégâts ; les sangliers, ours et gorilles encaissent davantage et conviennent quand votre familier doit occuper les ennemis. Au début, n'importe quel familier aide beaucoup, alors choisissez-en un qui vous plaît.",
		},
		es = {
			q = "¿Cuál es la mejor mascota?",
			a = "Depende de lo que necesites. Los felinos y los raptores hacen mucho daño; los jabalíes, osos y gorilas aguantan más golpes y van bien cuando tu mascota debe entretener a los enemigos. Al principio cualquier mascota ayuda mucho, así que elige una que te guste.",
		},
		it = {
			q = "Qual è il famiglio migliore?",
			a = "Dipende da ciò che ti serve. Felini e raptor infliggono molti danni; cinghiali, orsi e gorilla resistono di più e sono utili quando il famiglio deve tenere impegnati i nemici. All'inizio qualsiasi famiglio è di grande aiuto, quindi scegline uno che ti piace.",
		},
		ru = {
			q = "Какой питомец лучше всего?",
			a = "Зависит от того, что вам нужно. Кошки и ящеры наносят много урона; кабаны, медведи и гориллы выдерживают больше ударов и хороши, когда питомец должен отвлекать врагов. Поначалу любой питомец сильно помогает, так что выбирайте того, кто вам нравится.",
		},
		pt = {
			q = "Qual é o melhor ajudante?",
			a = "Depende do que você precisa. Felinos e raptores causam muito dano; javalis, ursos e gorilas aguentam mais golpes e são bons quando o ajudante deve segurar os inimigos. No começo qualquer ajudante ajuda muito, então escolha um de que você goste.",
		},
	},
	{
		id = "hunter-pet-feed",
		de = {
			q = "Wie füttere ich mein Tier?",
			a = "Mit „Tier füttern“: Wirk die Fähigkeit und klick dann auf ein passendes Nahrungsmittel in deinen Taschen. Das Tier frisst ein paar Sekunden lang und wird dabei zufriedener. Füttern geht nur außerhalb des Kampfes.",
		},
		en = {
			q = "How do I feed my pet?",
			a = "With Feed Pet: cast the ability, then click a suitable food in your bags. The pet eats for a few seconds and becomes happier. You can only feed it out of combat.",
		},
		fr = {
			q = "Comment nourrir mon familier ?",
			a = "Avec Nourrir le familier : lancez la technique, puis cliquez sur une nourriture adaptée dans vos sacs. Le familier mange pendant quelques secondes et devient plus heureux. Vous ne pouvez le nourrir qu'hors combat.",
		},
		es = {
			q = "¿Cómo alimento a mi mascota?",
			a = "Con Alimentar a mascota: lanza la habilidad y luego haz clic en una comida adecuada de tus bolsas. La mascota come durante unos segundos y se vuelve más feliz. Solo puedes alimentarla fuera de combate.",
		},
		it = {
			q = "Come nutro il mio famiglio?",
			a = "Con Nutri Famiglio: usa l'abilità, poi clicca su un cibo adatto nelle tue borse. Il famiglio mangia per alcuni secondi e diventa più felice. Puoi nutrirlo solo fuori dal combattimento.",
		},
		ru = {
			q = "Как покормить питомца?",
			a = "С помощью «Кормления питомца»: примените способность, затем щёлкните по подходящей еде в сумках. Питомец ест несколько секунд и становится довольнее. Кормить можно только вне боя.",
		},
		pt = {
			q = "Como alimento meu ajudante?",
			a = "Com Alimentar Ajudante: use a habilidade e depois clique em uma comida adequada nas suas bolsas. O ajudante come por alguns segundos e fica mais feliz. Você só pode alimentá-lo fora de combate.",
		},
	},
	{
		id = "hunter-pet-diet",
		de = {
			q = "Was frisst mein Tier?",
			a = "Jede Tierart hat ihre Vorlieben: Fleisch, Fisch, Brot, Käse, Obst oder Pilze. Fahr mit der Maus über das Porträt deines Tiers oder schau im Tierfenster nach, was es frisst. Nimm Nahrung, die zu seiner Stufe passt: Zu niedrigstufiges Futter mag es nicht.",
		},
		en = {
			q = "What does my pet eat?",
			a = "Every pet family has its own diet: meat, fish, bread, cheese, fruit or fungus. Hover over your pet's portrait or check the pet window to see what it eats. Use food that fits its level: it refuses food that is far too low.",
		},
		fr = {
			q = "Que mange mon familier ?",
			a = "Chaque famille de familiers a son propre régime : viande, poisson, pain, fromage, fruits ou champignons. Survolez le portrait de votre familier ou consultez la fenêtre du familier pour voir ce qu'il mange. Donnez-lui une nourriture adaptée à son niveau : il refuse celle d'un niveau bien trop bas.",
		},
		es = {
			q = "¿Qué come mi mascota?",
			a = "Cada familia de mascotas tiene su propia dieta: carne, pescado, pan, queso, fruta u hongos. Pasa el ratón por el retrato de tu mascota o mira la ventana de mascota para ver qué come. Usa comida acorde a su nivel: rechaza la que es de nivel demasiado bajo.",
		},
		it = {
			q = "Che cosa mangia il mio famiglio?",
			a = "Ogni famiglia di famigli ha la sua dieta: carne, pesce, pane, formaggio, frutta o funghi. Passa il mouse sul ritratto del famiglio o guarda la finestra del famiglio per vedere cosa mangia. Usa cibo adatto al suo livello: rifiuta quello di livello troppo basso.",
		},
		ru = {
			q = "Что ест мой питомец?",
			a = "У каждого семейства питомцев свой рацион: мясо, рыба, хлеб, сыр, фрукты или грибы. Наведите курсор на портрет питомца или откройте окно питомца, чтобы узнать, что он ест. Давайте еду подходящего уровня: слишком низкоуровневую он не ест.",
		},
		pt = {
			q = "O que meu ajudante come?",
			a = "Cada família de ajudantes tem a própria dieta: carne, peixe, pão, queijo, frutas ou fungos. Passe o mouse sobre o retrato do ajudante ou veja a janela do ajudante para saber o que ele come. Use comida adequada ao nível dele: ele recusa comida de nível baixo demais.",
		},
	},
	{
		id = "hunter-pet-happiness",
		de = {
			q = "Was bedeutet das Gesicht am Tierporträt?",
			a = "Es zeigt die Zufriedenheit deines Tiers: grün ist zufrieden, gelb geht so, rot ist unglücklich. Ein unglückliches Tier macht weniger Schaden. Füttere es regelmäßig, dann bleibt es grün.",
		},
		en = {
			q = "What does the face on my pet's portrait mean?",
			a = "It shows your pet's happiness: green is happy, yellow is content, red is unhappy. An unhappy pet deals less damage. Feed it regularly and it stays green.",
		},
		fr = {
			q = "Que signifie le visage sur le portrait de mon familier ?",
			a = "Il indique le bonheur de votre familier : vert signifie heureux, jaune satisfait, rouge mécontent. Un familier mécontent inflige moins de dégâts. Nourrissez-le régulièrement et il restera au vert.",
		},
		es = {
			q = "¿Qué significa la cara en el retrato de mi mascota?",
			a = "Muestra la felicidad de tu mascota: verde es feliz, amarillo es satisfecha y rojo es descontenta. Una mascota descontenta hace menos daño. Aliméntala con regularidad y se mantendrá en verde.",
		},
		it = {
			q = "Che cosa significa il volto sul ritratto del mio famiglio?",
			a = "Mostra la felicità del famiglio: verde è felice, giallo è soddisfatto, rosso è scontento. Un famiglio scontento infligge meno danni. Nutrilo regolarmente e resterà verde.",
		},
		ru = {
			q = "Что означает лицо на портрете питомца?",
			a = "Оно показывает настроение питомца: зелёное значит доволен, жёлтое спокоен, красное недоволен. Недовольный питомец наносит меньше урона. Кормите его регулярно, и оно останется зелёным.",
		},
		pt = {
			q = "O que significa o rosto no retrato do meu ajudante?",
			a = "Ele mostra a felicidade do ajudante: verde é feliz, amarelo é satisfeito, vermelho é infeliz. Um ajudante infeliz causa menos dano. Alimente-o com regularidade e ele continua verde.",
		},
	},
	{
		id = "hunter-pet-change",
		de = {
			q = "Wie wechsle ich mein Tier?",
			a = "Bring dein aktuelles Tier zu einem Stallmeister (meist beim Gasthaus) und lass es dort, dann kannst du ein neues zähmen. Später holst du es dort wieder ab. Willst du ein Tier gar nicht behalten, lass es über das Rechtsklick-Menü seines Porträts frei; das lässt sich nicht rückgängig machen.",
		},
		en = {
			q = "How do I change my pet?",
			a = "Take your current pet to a stable master (usually near the inn) and leave it there, then tame a new one. You can pick it up again later. If you do not want to keep a pet at all, abandon it from the right-click menu of its portrait; this cannot be undone.",
		},
		fr = {
			q = "Comment changer de familier ?",
			a = "Emmenez votre familier actuel chez un maître des écuries (généralement près de l'auberge) et laissez-le là, puis apprivoisez-en un nouveau. Vous pourrez le reprendre plus tard. Si vous ne voulez pas le garder du tout, abandonnez-le via le menu du clic droit sur son portrait ; c'est définitif.",
		},
		es = {
			q = "¿Cómo cambio de mascota?",
			a = "Lleva tu mascota actual a un maestro de establos (normalmente cerca de la posada) y déjala allí; después domestica una nueva. Puedes recogerla más adelante. Si no quieres conservarla, abandónala desde el menú del clic derecho en su retrato; no se puede deshacer.",
		},
		it = {
			q = "Come cambio famiglio?",
			a = "Porta il famiglio attuale da un maestro di stalla (di solito vicino alla locanda) e lascialo lì, poi ammansiscine uno nuovo. Potrai riprenderlo in seguito. Se non vuoi tenerlo affatto, abbandonalo dal menu del clic destro sul suo ritratto; non si può annullare.",
		},
		ru = {
			q = "Как сменить питомца?",
			a = "Отведите текущего питомца к смотрителю стойл (обычно рядом с таверной) и оставьте его там, затем приручите нового. Позже его можно забрать. Если питомец вам совсем не нужен, бросьте его через меню правого щелчка по портрету; это нельзя отменить.",
		},
		pt = {
			q = "Como troco de ajudante?",
			a = "Leve o ajudante atual a um mestre do estábulo (geralmente perto da estalagem) e deixe-o lá; depois dome um novo. Você pode buscá-lo mais tarde. Se não quiser ficar com ele, abandone-o pelo menu do clique direito no retrato; isso não pode ser desfeito.",
		},
	},
	{
		id = "hunter-pet-stable",
		de = {
			q = "Was macht der Stallmeister?",
			a = "Er bewahrt Tiere auf, die du gerade nicht dabeihast. Plätze im Stall kosten einmalig etwas Gold. So kannst du zum Beispiel ein Tier für Dungeons und eines zum Leveln behalten.",
		},
		en = {
			q = "What does the stable master do?",
			a = "They keep pets you do not have with you right now. Stable slots cost a one-time fee. That way you can keep, for example, one pet for dungeons and one for levelling.",
		},
		fr = {
			q = "À quoi sert le maître des écuries ?",
			a = "Il garde les familiers que vous n'avez pas avec vous. Les emplacements d'écurie coûtent un prix unique. Vous pouvez ainsi garder par exemple un familier pour les donjons et un autre pour monter de niveau.",
		},
		es = {
			q = "¿Para qué sirve el maestro de establos?",
			a = "Guarda las mascotas que no llevas contigo en ese momento. Los huecos del establo cuestan un pago único. Así puedes tener, por ejemplo, una mascota para mazmorras y otra para subir de nivel.",
		},
		it = {
			q = "A che cosa serve il maestro di stalla?",
			a = "Custodisce i famigli che al momento non hai con te. Gli spazi nella stalla costano una tariffa una tantum. Così puoi tenere, per esempio, un famiglio per le spedizioni e uno per salire di livello.",
		},
		ru = {
			q = "Зачем нужен смотритель стойл?",
			a = "Он держит питомцев, которых у вас сейчас нет при себе. Места в стойле оплачиваются один раз. Так можно держать, например, одного питомца для подземелий и другого для прокачки.",
		},
		pt = {
			q = "Para que serve o mestre do estábulo?",
			a = "Ele guarda os ajudantes que você não está levando no momento. As vagas do estábulo custam uma taxa única. Assim você pode ter, por exemplo, um ajudante para masmorras e outro para subir de nível.",
		},
	},
	{
		id = "hunter-pet-call",
		de = {
			q = "Mein Tier ist weg. Wie hole ich es zurück?",
			a = "Mit „Tier rufen“ kommt es wieder, wenn du es weggeschickt hast oder nach Reittier, Flug oder Ladebildschirm verschwunden ist. Ist es gestorben, belebst du es mit „Tier wiederbeleben“ wieder. Beide Fähigkeiten findest du im Zauberbuch.",
		},
		en = {
			q = "My pet is gone. How do I get it back?",
			a = "Call Pet brings it back if you dismissed it or it vanished after a mount, a flight or a loading screen. If it died, use Revive Pet. You find both in your spellbook.",
		},
		fr = {
			q = "Mon familier a disparu. Comment le récupérer ?",
			a = "Appel du familier le fait revenir si vous l'avez renvoyé ou s'il a disparu après une monture, un vol ou un écran de chargement. S'il est mort, utilisez Ressusciter le familier. Vous trouvez les deux dans votre grimoire.",
		},
		es = {
			q = "Mi mascota ha desaparecido. ¿Cómo la recupero?",
			a = "Llamar a mascota la trae de vuelta si la retiraste o desapareció tras una montura, un vuelo o una pantalla de carga. Si murió, usa Revivir mascota. Ambas están en tu libro de hechizos.",
		},
		it = {
			q = "Il mio famiglio è sparito. Come lo riporto indietro?",
			a = "Richiama Famiglio lo fa tornare se l'hai congedato o se è sparito dopo una cavalcatura, un volo o una schermata di caricamento. Se è morto, usa Rianima Famiglio. Li trovi entrambi nel libro degli incantesimi.",
		},
		ru = {
			q = "Мой питомец пропал. Как его вернуть?",
			a = "«Призыв питомца» вернёт его, если вы его отпустили или он исчез после маунта, полёта или экрана загрузки. Если он погиб, используйте «Воскрешение питомца». Обе способности есть в книге заклинаний.",
		},
		pt = {
			q = "Meu ajudante sumiu. Como o trago de volta?",
			a = "Chamar Ajudante o traz de volta se você o dispensou ou se ele sumiu depois de uma montaria, um voo ou uma tela de carregamento. Se ele morreu, use Reviver Ajudante. Os dois estão no seu grimório.",
		},
	},
	{
		id = "hunter-pet-heal",
		de = {
			q = "Wie heile ich mein Tier?",
			a = "Mit „Tier heilen“: Das heilt dein Tier über ein paar Sekunden, solange du still stehst und die Verbindung hältst. Außerhalb des Kampfes regeneriert es auch von selbst, und Füttern hilft ebenfalls.",
		},
		en = {
			q = "How do I heal my pet?",
			a = "With Mend Pet: it heals your pet over a few seconds while you keep channelling. Out of combat it also regenerates on its own, and feeding helps too.",
		},
		fr = {
			q = "Comment soigner mon familier ?",
			a = "Avec Guérison du familier : elle soigne votre familier pendant quelques secondes tant que vous canalisez. Hors combat, il récupère aussi tout seul, et le nourrir aide également.",
		},
		es = {
			q = "¿Cómo curo a mi mascota?",
			a = "Con Aliviar mascota: la cura durante unos segundos mientras sigues canalizando. Fuera de combate también se regenera sola, y alimentarla ayuda.",
		},
		it = {
			q = "Come curo il mio famiglio?",
			a = "Con Cura Famiglio: lo cura per alcuni secondi mentre continui a incanalare. Fuori dal combattimento si rigenera anche da solo, e nutrirlo aiuta.",
		},
		ru = {
			q = "Как вылечить питомца?",
			a = "С помощью «Лечения питомца»: оно лечит питомца несколько секунд, пока вы поддерживаете заклинание. Вне боя он восстанавливается и сам, а кормление тоже помогает.",
		},
		pt = {
			q = "Como curo meu ajudante?",
			a = "Com Curar Ajudante: cura o ajudante por alguns segundos enquanto você continua canalizando. Fora de combate ele também se regenera sozinho, e alimentá-lo ajuda.",
		},
	},
	{
		id = "hunter-pet-modes",
		de = {
			q = "Mein Tier greift alles an. Wie stelle ich das ab?",
			a = "Über die Tierleiste über deinen Aktionsleisten: „Aggressiv“ greift alles in der Nähe an, „Defensiv“ nur, was dich oder das Tier angreift, „Passiv“ nichts von selbst. Für den Anfang ist „Defensiv“ die sicherste Wahl. Mit „Angreifen“ schickst du es gezielt auf dein Ziel.",
		},
		en = {
			q = "My pet attacks everything. How do I stop that?",
			a = "Use the pet bar above your action bars: Aggressive attacks everything nearby, Defensive only what attacks you or the pet, Passive nothing on its own. Defensive is the safest choice to start with. Use Attack to send it at your target.",
		},
		fr = {
			q = "Mon familier attaque tout. Comment l'en empêcher ?",
			a = "Utilisez la barre du familier au-dessus de vos barres d'action : Agressif attaque tout ce qui est proche, Défensif seulement ce qui vous attaque, vous ou lui, Passif rien de lui-même. Défensif est le choix le plus sûr pour commencer. Utilisez Attaque pour l'envoyer sur votre cible.",
		},
		es = {
			q = "Mi mascota ataca a todo. ¿Cómo lo evito?",
			a = "Usa la barra de mascota sobre tus barras de acción: Agresivo ataca todo lo cercano, Defensivo solo lo que te ataca a ti o a la mascota, Pasivo nada por su cuenta. Defensivo es la opción más segura para empezar. Usa Atacar para enviarla a tu objetivo.",
		},
		it = {
			q = "Il mio famiglio attacca tutto. Come lo fermo?",
			a = "Usa la barra del famiglio sopra le barre delle azioni: Aggressivo attacca tutto ciò che è vicino, Difensivo solo ciò che attacca te o il famiglio, Passivo niente di propria iniziativa. Difensivo è la scelta più sicura per iniziare. Usa Attacca per mandarlo sul tuo bersaglio.",
		},
		ru = {
			q = "Мой питомец нападает на всех. Как это остановить?",
			a = "Используйте панель питомца над панелями команд: «Агрессивный» атакует всех рядом, «Оборонительный» только тех, кто атакует вас или питомца, «Пассивный» никого сам. Для начала «Оборонительный» — самый безопасный выбор. Кнопкой «Атака» отправьте его на свою цель.",
		},
		pt = {
			q = "Meu ajudante ataca tudo. Como impeço isso?",
			a = "Use a barra do ajudante acima das suas barras de ação: Agressivo ataca tudo por perto, Defensivo só o que ataca você ou o ajudante, Passivo nada por conta própria. Defensivo é a escolha mais segura para começar. Use Atacar para mandá-lo ao seu alvo.",
		},
	},
	{
		id = "hunter-pet-abilities",
		de = {
			q = "Wie lernt mein Tier neue Fähigkeiten?",
			a = "Manche Fähigkeiten bringt dir ein Tierausbilder in den Städten bei, andere lernst du, indem du ein Tier zähmst, das sie schon beherrscht, und eine Weile mit ihm kämpfst. Danach kannst du sie über „Tierausbildung“ deinen anderen Tieren beibringen.",
		},
		en = {
			q = "How does my pet learn new abilities?",
			a = "Some abilities are taught by pet trainers in the cities; others you learn by taming a beast that already knows them and fighting with it for a while. You can then teach them to your other pets through Beast Training.",
		},
		fr = {
			q = "Comment mon familier apprend-il de nouvelles techniques ?",
			a = "Certaines techniques sont enseignées par les maîtres des familiers dans les villes ; d'autres s'apprennent en apprivoisant une bête qui les connaît déjà et en combattant un moment avec elle. Vous pouvez ensuite les enseigner à vos autres familiers grâce au Dressage des bêtes.",
		},
		es = {
			q = "¿Cómo aprende mi mascota nuevas habilidades?",
			a = "Algunas habilidades las enseñan los instructores de mascotas en las ciudades; otras las aprendes domesticando una bestia que ya las conoce y luchando con ella un rato. Después puedes enseñarlas a tus otras mascotas con Entrenamiento de bestias.",
		},
		it = {
			q = "Come impara nuove abilità il mio famiglio?",
			a = "Alcune abilità vengono insegnate dagli istruttori di famigli nelle città; altre le impari ammansendo una bestia che le conosce già e combattendo con lei per un po'. Poi puoi insegnarle agli altri famigli con Addestramento Bestie.",
		},
		ru = {
			q = "Как питомец учит новые способности?",
			a = "Некоторым способностям учат дрессировщики питомцев в городах; другие вы узнаёте, приручив зверя, который их уже знает, и повоевав с ним некоторое время. Затем их можно передать другим питомцам через «Дрессировку».",
		},
		pt = {
			q = "Como meu ajudante aprende novas habilidades?",
			a = "Algumas habilidades são ensinadas pelos instrutores de ajudantes nas cidades; outras você aprende domando uma fera que já as conhece e lutando com ela por um tempo. Depois você pode ensiná-las aos outros ajudantes com Treinamento de Feras.",
		},
	},
	{
		id = "hunter-pet-growl",
		de = {
			q = "Was muss ich mit meinem Tier im Dungeon beachten?",
			a = "Schalte „Knurren“ auf der Tierleiste ab (Rechtsklick auf das Symbol), sonst zieht dein Tier dem Tank die Gegner weg. Stell das Tier auf „Defensiv“ oder „Passiv“ und schick es nur auf das Ziel des Tanks.",
		},
		en = {
			q = "What should I watch out for with my pet in a dungeon?",
			a = "Turn off Growl on the pet bar (right-click its icon), or your pet pulls enemies away from the tank. Set the pet to Defensive or Passive and only send it at the tank's target.",
		},
		fr = {
			q = "À quoi faire attention avec mon familier en donjon ?",
			a = "Désactivez Grondement sur la barre du familier (clic droit sur son icône), sinon votre familier attire les ennemis loin du tank. Réglez le familier sur Défensif ou Passif et ne l'envoyez que sur la cible du tank.",
		},
		es = {
			q = "¿Qué debo tener en cuenta con mi mascota en una mazmorra?",
			a = "Desactiva Gruñido en la barra de mascota (clic derecho en su icono), o tu mascota apartará a los enemigos del tanque. Pon la mascota en Defensivo o Pasivo y envíala solo al objetivo del tanque.",
		},
		it = {
			q = "A che cosa devo stare attento con il famiglio in una spedizione?",
			a = "Disattiva Ringhio nella barra del famiglio (clic destro sulla sua icona), altrimenti il famiglio allontana i nemici dal tank. Imposta il famiglio su Difensivo o Passivo e mandalo solo sul bersaglio del tank.",
		},
		ru = {
			q = "На что обратить внимание с питомцем в подземелье?",
			a = "Отключите «Рык» на панели питомца (правый щелчок по значку), иначе питомец будет перетягивать врагов с танка. Переведите питомца в «Оборонительный» или «Пассивный» режим и отправляйте его только на цель танка.",
		},
		pt = {
			q = "Com o que devo ter cuidado com meu ajudante numa masmorra?",
			a = "Desative Rosnar na barra do ajudante (clique direito no ícone), senão o ajudante tira os inimigos do tanque. Deixe o ajudante em Defensivo ou Passivo e mande-o só no alvo do tanque.",
		},
	},
	{
		id = "hunter-ammo",
		de = {
			q = "Brauche ich als Jäger Munition?",
			a = "Ja. Bögen und Armbrüste verschießen Pfeile, Schusswaffen Kugeln. Munition kaufst du bei Gemischtwaren- und Waffenhändlern; ein Köcher oder Munitionsbeutel macht deine Schüsse schneller. Nimm immer genug mit, ohne Munition kannst du nicht schießen.",
		},
		en = {
			q = "Do I need ammunition as a hunter?",
			a = "Yes. Bows and crossbows shoot arrows, guns shoot bullets. You buy ammunition at general goods and weapon vendors; a quiver or ammo pouch makes your shots faster. Always carry enough: without ammunition you cannot shoot.",
		},
		fr = {
			q = "Ai-je besoin de munitions en tant que chasseur ?",
			a = "Oui. Les arcs et arbalètes tirent des flèches, les armes à feu des balles. Vous achetez des munitions chez les marchands de fournitures générales et d'armes ; un carquois ou une giberne accélère vos tirs. Ayez-en toujours assez : sans munitions, vous ne pouvez pas tirer.",
		},
		es = {
			q = "¿Necesito munición como cazador?",
			a = "Sí. Los arcos y ballestas disparan flechas; las armas de fuego, balas. La munición se compra en vendedores de suministros generales y de armas; un carcaj o una bolsa de munición hace tus disparos más rápidos. Lleva siempre suficiente: sin munición no puedes disparar.",
		},
		it = {
			q = "Mi servono munizioni come cacciatore?",
			a = "Sì. Archi e balestre tirano frecce, le armi da fuoco proiettili. Le munizioni si comprano dai venditori di merci varie e di armi; una faretra o una giberna rende i tiri più rapidi. Portane sempre abbastanza: senza munizioni non puoi sparare.",
		},
		ru = {
			q = "Нужны ли охотнику боеприпасы?",
			a = "Да. Луки и арбалеты стреляют стрелами, огнестрельное оружие — пулями. Боеприпасы продают торговцы товарами и оружием; колчан или подсумок ускоряют стрельбу. Всегда носите достаточно: без боеприпасов стрелять нельзя.",
		},
		pt = {
			q = "Preciso de munição como caçador?",
			a = "Sim. Arcos e bestas disparam flechas, armas de fogo disparam balas. A munição é vendida por mercadores de suprimentos gerais e de armas; uma aljava ou bolsa de munição deixa seus disparos mais rápidos. Leve sempre o suficiente: sem munição você não consegue atirar.",
		},
	},
	{
		id = "hunter-dead-zone",
		de = {
			q = "Warum kann ich auf kurze Distanz nicht schießen?",
			a = "Fernkampf braucht ein paar Meter Abstand. Steht ein Gegner direkt vor dir, kämpfst du mit deiner Nahkampfwaffe, etwa mit „Raptorstoß“ und „Zurechtstutzen“, das ihn verlangsamt. Danach gehst du ein paar Schritte weg und schießt weiter, während dein Tier ihn beschäftigt.",
		},
		en = {
			q = "Why can I not shoot at close range?",
			a = "Ranged attacks need a few metres of distance. If an enemy stands right in front of you, use your melee weapon, for example Raptor Strike and Wing Clip, which slows it. Then step away and keep shooting while your pet keeps it busy.",
		},
		fr = {
			q = "Pourquoi ne puis-je pas tirer à courte portée ?",
			a = "Les attaques à distance nécessitent quelques mètres d'écart. Si un ennemi est juste devant vous, utilisez votre arme de mêlée, par exemple Attaque du raptor et Coupure d'ailes, qui le ralentit. Puis éloignez-vous et continuez à tirer pendant que votre familier l'occupe.",
		},
		es = {
			q = "¿Por qué no puedo disparar a corta distancia?",
			a = "Los ataques a distancia necesitan unos metros de separación. Si un enemigo está justo delante de ti, usa tu arma cuerpo a cuerpo, por ejemplo Golpe de raptor y Cortar alas, que lo ralentiza. Luego apártate y sigue disparando mientras tu mascota lo entretiene.",
		},
		it = {
			q = "Perché non posso sparare da vicino?",
			a = "Gli attacchi a distanza richiedono qualche metro di distanza. Se un nemico è proprio davanti a te, usa l'arma da mischia, per esempio Assalto del Raptor e Tarpata d'Ali, che lo rallenta. Poi allontanati e continua a sparare mentre il famiglio lo tiene impegnato.",
		},
		ru = {
			q = "Почему я не могу стрелять вблизи?",
			a = "Атакам дальнего боя нужно несколько метров дистанции. Если враг стоит прямо перед вами, используйте оружие ближнего боя, например «Удар ящера» и «Подрезать крылья», которое его замедляет. Затем отойдите и продолжайте стрелять, пока питомец его отвлекает.",
		},
		pt = {
			q = "Por que não consigo atirar de perto?",
			a = "Ataques à distância precisam de alguns metros de distância. Se um inimigo estiver bem na sua frente, use a arma corpo a corpo, por exemplo Golpe do Raptor e Cortar Asas, que o deixa lento. Depois afaste-se e continue atirando enquanto o ajudante o segura.",
		},
	},
	{
		id = "hunter-aspects",
		de = {
			q = "Welchen Aspekt soll ich benutzen?",
			a = "Im Kampf meist „Aspekt des Falken“ für mehr Fernkampfschaden, auf niedrigen Stufen „Aspekt des Affen“, wenn du oft im Nahkampf landest. „Aspekt des Geparden“ macht dich zum Reisen schneller, aber jeder Treffer benommen; im Kampf abschalten. Es ist immer nur ein Aspekt aktiv.",
		},
		en = {
			q = "Which aspect should I use?",
			a = "In combat usually Aspect of the Hawk for more ranged damage; at low levels Aspect of the Monkey if you often end up in melee. Aspect of the Cheetah makes you faster for travel, but every hit dazes you, so turn it off in combat. Only one aspect is active at a time.",
		},
		fr = {
			q = "Quel aspect utiliser ?",
			a = "En combat, généralement Aspect du faucon pour plus de dégâts à distance ; à bas niveau, Aspect du singe si vous vous retrouvez souvent au corps à corps. Aspect du guépard vous rend plus rapide pour voyager, mais chaque coup vous hébète, alors désactivez-le en combat. Un seul aspect est actif à la fois.",
		},
		es = {
			q = "¿Qué aspecto debo usar?",
			a = "En combate, normalmente Aspecto del halcón para más daño a distancia; en niveles bajos, Aspecto del mono si acabas a menudo cuerpo a cuerpo. Aspecto del guepardo te hace más rápido para viajar, pero cada golpe te aturde, así que desactívalo en combate. Solo puede haber un aspecto activo a la vez.",
		},
		it = {
			q = "Quale aspetto devo usare?",
			a = "In combattimento di solito Aspetto del Falco per più danni a distanza; ai livelli bassi Aspetto della Scimmia se finisci spesso in mischia. Aspetto del Ghepardo ti rende più veloce negli spostamenti, ma ogni colpo ti stordisce, quindi disattivalo in combattimento. È attivo un solo aspetto alla volta.",
		},
		ru = {
			q = "Какой дух (аспект) использовать?",
			a = "В бою обычно «Дух ястреба» для большего урона в дальнем бою; на низких уровнях «Дух обезьяны», если вы часто оказываетесь в ближнем бою. «Дух гепарда» ускоряет передвижение, но каждый удар вас оглушает, поэтому в бою выключайте его. Одновременно активен только один дух.",
		},
		pt = {
			q = "Qual aspecto devo usar?",
			a = "Em combate, normalmente Aspecto do Falcão para mais dano à distância; em níveis baixos, Aspecto do Macaco se você acaba muito em corpo a corpo. Aspecto do Guepardo deixa você mais rápido para viajar, mas cada golpe o atordoa, então desligue-o em combate. Só um aspecto fica ativo por vez.",
		},
	},
	{
		id = "hunter-mark",
		de = {
			q = "Wofür ist „Mal des Jägers“?",
			a = "Es markiert ein Ziel, sodass es für dich sichtbar bleibt und mehr Schaden von Fernkampfangriffen erleidet. Setz es zu Beginn jedes längeren Kampfes; in der Gruppe hilft es allen Fernkämpfern.",
		},
		en = {
			q = "What is Hunter's Mark for?",
			a = "It marks a target so it stays visible to you and takes more damage from ranged attacks. Use it at the start of every longer fight; in a group it helps all ranged attackers.",
		},
		fr = {
			q = "À quoi sert Marque du chasseur ?",
			a = "Elle marque une cible pour qu'elle reste visible pour vous et subisse plus de dégâts des attaques à distance. Utilisez-la au début de chaque combat un peu long ; en groupe, elle aide tous les attaquants à distance.",
		},
		es = {
			q = "¿Para qué sirve Marca del cazador?",
			a = "Marca un objetivo para que siga siendo visible para ti y reciba más daño de los ataques a distancia. Úsala al inicio de cada combate largo; en grupo ayuda a todos los atacantes a distancia.",
		},
		it = {
			q = "A che cosa serve Marchio del Cacciatore?",
			a = "Marchia un bersaglio così resta visibile per te e subisce più danni dagli attacchi a distanza. Usalo all'inizio di ogni combattimento lungo; in gruppo aiuta tutti gli attaccanti a distanza.",
		},
		ru = {
			q = "Зачем нужна «Метка охотника»?",
			a = "Она помечает цель: та остаётся видимой для вас и получает больше урона от атак дальнего боя. Используйте её в начале каждого долгого боя; в группе она помогает всем бойцам дальнего боя.",
		},
		pt = {
			q = "Para que serve Marca do Caçador?",
			a = "Ela marca um alvo para que continue visível para você e receba mais dano de ataques à distância. Use-a no início de cada luta mais longa; em grupo ela ajuda todos os atacantes à distância.",
		},
	},
	{
		id = "hunter-tracking",
		de = {
			q = "Wie finde ich Tiere oder Gegner auf der Minikarte?",
			a = "Jäger haben Aufspürfähigkeiten wie „Wildtiere aufspüren“ oder „Humanoide aufspüren“. Die gewählte Art erscheint als Punkte auf der Minikarte, so findest du Questgegner oder Tiere zum Zähmen viel schneller. Es ist immer nur eine Aufspürart aktiv.",
		},
		en = {
			q = "How do I find beasts or enemies on the minimap?",
			a = "Hunters have tracking abilities such as Track Beasts or Track Humanoids. The chosen type shows up as dots on the minimap, which makes quest enemies or beasts to tame much easier to find. Only one tracking type is active at a time.",
		},
		fr = {
			q = "Comment trouver des bêtes ou des ennemis sur la minicarte ?",
			a = "Les chasseurs ont des techniques de pistage comme Pistage des bêtes ou Pistage des humanoïdes. Le type choisi apparaît sous forme de points sur la minicarte, ce qui facilite beaucoup la recherche d'ennemis de quête ou de bêtes à apprivoiser. Un seul pistage est actif à la fois.",
		},
		es = {
			q = "¿Cómo encuentro bestias o enemigos en el minimapa?",
			a = "Los cazadores tienen habilidades de rastreo como Rastrear bestias o Rastrear humanoides. El tipo elegido aparece como puntos en el minimapa, lo que facilita mucho encontrar enemigos de misión o bestias para domesticar. Solo hay un rastreo activo a la vez.",
		},
		it = {
			q = "Come trovo bestie o nemici sulla minimappa?",
			a = "I cacciatori hanno abilità di tracciamento come Traccia Bestie o Traccia Umanoidi. Il tipo scelto compare come punti sulla minimappa, il che rende molto più facile trovare nemici delle missioni o bestie da ammansire. È attivo un solo tracciamento alla volta.",
		},
		ru = {
			q = "Как найти зверей или врагов на миникарте?",
			a = "У охотников есть способности выслеживания, например «Выслеживание животных» или «Выслеживание гуманоидов». Выбранный тип отображается точками на миникарте, так гораздо проще найти врагов для заданий или зверей для приручения. Одновременно активно только одно выслеживание.",
		},
		pt = {
			q = "Como encontro feras ou inimigos no minimapa?",
			a = "Caçadores têm habilidades de rastreamento como Rastrear Feras ou Rastrear Humanoides. O tipo escolhido aparece como pontos no minimapa, o que facilita muito achar inimigos de missão ou feras para domar. Só um rastreamento fica ativo por vez.",
		},
	},
	{
		id = "hunter-feign-death",
		de = {
			q = "Was bringt „Totstellen“?",
			a = "Du stellst dich tot, und die meisten Gegner verlieren das Interesse an dir. So rettest du dich aus einem verlorenen Kampf oder lässt in der Gruppe die Gegner wieder zum Tank laufen. Steh danach erst auf, wenn die Gegner weg sind.",
		},
		en = {
			q = "What is Feign Death good for?",
			a = "You pretend to be dead and most enemies lose interest in you. That saves you from a lost fight, or lets enemies go back to the tank in a group. Only get up once the enemies have left.",
		},
		fr = {
			q = "À quoi sert Feindre la mort ?",
			a = "Vous faites semblant d'être mort et la plupart des ennemis se désintéressent de vous. Cela vous sauve d'un combat perdu ou, en groupe, renvoie les ennemis vers le tank. Ne vous relevez qu'une fois les ennemis partis.",
		},
		es = {
			q = "¿Para qué sirve Fingir muerte?",
			a = "Finges estar muerto y la mayoría de los enemigos pierden el interés en ti. Te salva de un combate perdido o, en grupo, hace que los enemigos vuelvan al tanque. Levántate solo cuando los enemigos se hayan ido.",
		},
		it = {
			q = "A che cosa serve Fingersi Morto?",
			a = "Fingi di essere morto e la maggior parte dei nemici perde interesse per te. Ti salva da un combattimento perso, oppure in gruppo fa tornare i nemici al tank. Rialzati solo quando i nemici se ne sono andati.",
		},
		ru = {
			q = "Зачем нужно «Притвориться мёртвым»?",
			a = "Вы притворяетесь мёртвым, и большинство врагов теряют к вам интерес. Это спасает от проигранного боя или в группе возвращает врагов к танку. Вставайте только после того, как враги ушли.",
		},
		pt = {
			q = "Para que serve Fingir de Morto?",
			a = "Você finge estar morto e a maioria dos inimigos perde o interesse em você. Isso o salva de uma luta perdida ou, em grupo, faz os inimigos voltarem para o tanque. Só se levante depois que os inimigos forem embora.",
		},
	},
	{
		id = "hunter-traps",
		de = {
			q = "Wie benutze ich Fallen?",
			a = "Fallen legst du vor dir auf den Boden, sie lösen aus, wenn ein Gegner hineinläuft; in WoW: Forever geht das auch mitten im Kampf. Die „Eiskältefalle“ friert einen Gegner eine Weile ein, ideal, wenn zwei auf einmal kommen: Leg sie, lass einen Gegner hineinlaufen und kümmere dich mit deinem Tier um den anderen.",
		},
		en = {
			q = "How do I use traps?",
			a = "You place traps on the ground in front of you, and they trigger when an enemy walks in; in WoW: Forever this also works in the middle of a fight. Freezing Trap freezes an enemy for a while, ideal when two come at once: lay it, let one enemy run into it and deal with the other together with your pet.",
		},
		fr = {
			q = "Comment utiliser les pièges ?",
			a = "Vous posez les pièges au sol devant vous, et ils se déclenchent quand un ennemi marche dessus ; dans WoW: Forever, cela marche aussi en plein combat. Piège givrant gèle un ennemi un moment, idéal quand deux arrivent en même temps : posez-le, laissez un ennemi tomber dedans et occupez-vous de l'autre avec votre familier.",
		},
		es = {
			q = "¿Cómo uso las trampas?",
			a = "Colocas las trampas en el suelo delante de ti y se activan cuando un enemigo las pisa; en WoW: Forever también puedes hacerlo en pleno combate. Trampa congelante congela a un enemigo un rato, ideal cuando llegan dos a la vez: ponla, deja que un enemigo caiga en ella y encárgate del otro con tu mascota.",
		},
		it = {
			q = "Come si usano le trappole?",
			a = "Piazzi le trappole a terra davanti a te e scattano quando un nemico ci passa sopra; in WoW: Forever funziona anche nel mezzo di un combattimento. Trappola Congelante congela un nemico per un po', ideale quando ne arrivano due insieme: piazzala, lascia che un nemico ci finisca dentro e occupati dell'altro con il famiglio.",
		},
		ru = {
			q = "Как пользоваться ловушками?",
			a = "Ловушки ставятся на землю перед вами и срабатывают, когда на них наступает враг; в WoW: Forever их можно ставить и посреди боя. «Замораживающая ловушка» на время замораживает врага — идеально, когда нападают двое: поставьте её, дайте одному врагу в неё попасть, а со вторым разберитесь вместе с питомцем.",
		},
		pt = {
			q = "Como uso armadilhas?",
			a = "Você coloca as armadilhas no chão à sua frente, e elas disparam quando um inimigo pisa nelas; no WoW: Forever isso funciona também no meio da luta. Armadilha Congelante congela um inimigo por um tempo, ideal quando chegam dois de uma vez: coloque-a, deixe um inimigo cair nela e cuide do outro junto com o ajudante.",
		},
	},
	{
		id = "hunter-stats",
		de = {
			q = "Welche Werte und Waffen sind für Jäger gut?",
			a = "Beweglichkeit ist dein wichtigster Wert: mehr Fernkampfschaden, kritische Treffer und Ausweichen. Danach Ausdauer und Intelligenz für Mana. In WoW: Forever wird auch dein Tier mit deinen Werten stärker. Deine Fernkampfwaffe (Bogen, Armbrust oder Schusswaffe) zählt viel mehr als die Nahkampfwaffe.",
		},
		en = {
			q = "Which stats and weapons are good for hunters?",
			a = "Agility is your most important stat: more ranged damage, critical strikes and dodge. After that stamina, and intellect for mana. In WoW: Forever your pet also gets stronger from your stats. Your ranged weapon (bow, crossbow or gun) matters far more than your melee weapon.",
		},
		fr = {
			q = "Quelles caractéristiques et armes sont bonnes pour les chasseurs ?",
			a = "L'agilité est votre caractéristique la plus importante : plus de dégâts à distance, de coups critiques et d'esquive. Ensuite l'endurance, et l'intelligence pour le mana. Dans WoW: Forever, votre familier devient aussi plus fort grâce à vos caractéristiques. Votre arme à distance (arc, arbalète ou arme à feu) compte bien plus que votre arme de mêlée.",
		},
		es = {
			q = "¿Qué atributos y armas son buenos para cazadores?",
			a = "La agilidad es tu atributo más importante: más daño a distancia, golpes críticos y esquiva. Después aguante, e intelecto para el maná. En WoW: Forever tu mascota también se hace más fuerte con tus atributos. Tu arma a distancia (arco, ballesta o arma de fuego) importa mucho más que tu arma cuerpo a cuerpo.",
		},
		it = {
			q = "Quali statistiche e armi sono buone per i cacciatori?",
			a = "L'agilità è la tua statistica più importante: più danni a distanza, colpi critici e schivata. Poi la tempra, e l'intelletto per il mana. In WoW: Forever anche il famiglio diventa più forte grazie alle tue statistiche. L'arma a distanza (arco, balestra o arma da fuoco) conta molto più dell'arma da mischia.",
		},
		ru = {
			q = "Какие характеристики и оружие хороши для охотника?",
			a = "Ловкость — ваша главная характеристика: больше урона в дальнем бою, критических ударов и уклонения. Затем выносливость, а также интеллект для маны. В WoW: Forever ваши характеристики усиливают и питомца. Оружие дальнего боя (лук, арбалет или огнестрельное) гораздо важнее оружия ближнего боя.",
		},
		pt = {
			q = "Quais atributos e armas são bons para caçadores?",
			a = "Agilidade é o seu atributo mais importante: mais dano à distância, acertos críticos e esquiva. Depois vigor, e intelecto para mana. No WoW: Forever seu ajudante também fica mais forte com os seus atributos. Sua arma de longo alcance (arco, besta ou arma de fogo) importa muito mais que a arma corpo a corpo.",
		},
	},
	{
		id = "hunter-talents",
		de = {
			q = "Welche Talentbäume haben Jäger?",
			a = "Tierherrschaft stärkt vor allem dein Tier und ist beim Leveln sehr angenehm. Treffsicherheit erhöht deinen eigenen Fernkampfschaden. Überleben bringt Fallen, Nahkampf und Zähigkeit. Für den Einstieg ist Tierherrschaft die einfachste Wahl.",
		},
		en = {
			q = "Which talent trees do hunters have?",
			a = "Beast Mastery mostly strengthens your pet and is very comfortable for levelling. Marksmanship raises your own ranged damage. Survival brings traps, melee and toughness. Beast Mastery is the easiest choice to start with.",
		},
		fr = {
			q = "Quels arbres de talents ont les chasseurs ?",
			a = "Maîtrise des bêtes renforce surtout votre familier et rend la montée de niveau très confortable. Précision augmente vos propres dégâts à distance. Survie apporte pièges, corps à corps et robustesse. Maîtrise des bêtes est le choix le plus simple pour commencer.",
		},
		es = {
			q = "¿Qué árboles de talentos tienen los cazadores?",
			a = "Dominio de bestias refuerza sobre todo a tu mascota y hace muy cómoda la subida de nivel. Puntería aumenta tu propio daño a distancia. Supervivencia aporta trampas, cuerpo a cuerpo y resistencia. Dominio de bestias es la opción más sencilla para empezar.",
		},
		it = {
			q = "Quali alberi di talenti hanno i cacciatori?",
			a = "Affinità Animale potenzia soprattutto il famiglio ed è molto comodo per salire di livello. Precisione aumenta i tuoi danni a distanza. Sopravvivenza porta trappole, mischia e resistenza. Affinità Animale è la scelta più semplice per iniziare.",
		},
		ru = {
			q = "Какие ветки талантов есть у охотника?",
			a = "«Повелитель зверей» в основном усиливает питомца и очень удобен для прокачки. «Стрельба» повышает ваш собственный урон в дальнем бою. «Выживание» даёт ловушки, ближний бой и живучесть. Для начала проще всего выбрать «Повелителя зверей».",
		},
		pt = {
			q = "Quais árvores de talentos os caçadores têm?",
			a = "Domínio das Feras fortalece principalmente o ajudante e é muito confortável para subir de nível. Precisão aumenta o seu próprio dano à distância. Sobrevivência traz armadilhas, corpo a corpo e resistência. Domínio das Feras é a escolha mais fácil para começar.",
		},
	},
	{
		id = "hunter-mana",
		de = {
			q = "Mir geht ständig das Mana aus. Was tun?",
			a = "Nutz deine Schüsse gezielt und lass dein Tier einen Teil der Arbeit machen. Zwischen den Kämpfen trinken, und Intelligenz auf der Ausrüstung hilft. „Aspekt des Falken“ statt teurer Schüsse bei schwachen Gegnern spart viel Mana.",
		},
		en = {
			q = "I keep running out of mana. What can I do?",
			a = "Use your shots on purpose and let your pet do part of the work. Drink between fights; intellect on your gear helps. Against weak enemies, auto shots with Aspect of the Hawk instead of expensive shots save a lot of mana.",
		},
		fr = {
			q = "Je suis toujours à court de mana. Que faire ?",
			a = "Utilisez vos tirs à bon escient et laissez votre familier faire une partie du travail. Buvez entre les combats ; l'intelligence sur votre équipement aide. Contre des ennemis faibles, des tirs automatiques avec Aspect du faucon plutôt que des tirs coûteux économisent beaucoup de mana.",
		},
		es = {
			q = "Siempre me quedo sin maná. ¿Qué puedo hacer?",
			a = "Usa tus disparos con intención y deja que tu mascota haga parte del trabajo. Bebe entre combates; el intelecto en tu equipo ayuda. Contra enemigos débiles, los disparos automáticos con Aspecto del halcón en lugar de disparos caros ahorran mucho maná.",
		},
		it = {
			q = "Resto sempre senza mana. Che cosa posso fare?",
			a = "Usa i tiri con criterio e lascia che il famiglio faccia parte del lavoro. Bevi tra un combattimento e l'altro; l'intelletto sull'equipaggiamento aiuta. Contro nemici deboli, i tiri automatici con Aspetto del Falco invece dei tiri costosi fanno risparmiare molto mana.",
		},
		ru = {
			q = "У меня постоянно заканчивается мана. Что делать?",
			a = "Используйте выстрелы осознанно и позвольте питомцу делать часть работы. Пейте между боями; интеллект на экипировке помогает. Против слабых врагов автоматическая стрельба с «Духом ястреба» вместо дорогих выстрелов сильно экономит ману.",
		},
		pt = {
			q = "Fico sem mana o tempo todo. O que posso fazer?",
			a = "Use seus disparos com propósito e deixe o ajudante fazer parte do trabalho. Beba entre as lutas; intelecto no equipamento ajuda. Contra inimigos fracos, disparos automáticos com Aspecto do Falcão em vez de disparos caros economizam muita mana.",
		},
	},
})
