local _, ns = ...

-- FAQ: Classes in general and talents. See Core/Faq.lua for the format.
ns.Faq.Add("class", {
	{
		id = "class-trainer",
		de = {
			q = "Wo lerne ich neue Zauber und Fähigkeiten?",
			a = "Beim Klassenlehrer. Lehrer gibt es in den Startgebieten und in den Städten, alle paar Stufen haben sie neue Ränge und Zauber für dich. Jede Stadtwache zeigt dir auf Nachfrage den Weg.",
		},
		en = {
			q = "Where do I learn new spells and abilities?",
			a = "At your class trainer. Trainers are in the starting zones and in the cities, and every few levels they have new ranks and spells for you. Any city guard shows you the way if you ask.",
		},
		fr = {
			q = "Où apprendre de nouveaux sorts et techniques ?",
			a = "Auprès de votre maître de classe. Il y en a dans les zones de départ et dans les villes, et tous les quelques niveaux ils ont de nouveaux rangs et sorts pour vous. N'importe quel garde de ville vous indique le chemin si vous demandez.",
		},
		es = {
			q = "¿Dónde aprendo hechizos y habilidades nuevos?",
			a = "Con tu instructor de clase. Hay instructores en las zonas iniciales y en las ciudades, y cada pocos niveles tienen rangos y hechizos nuevos para ti. Cualquier guardia de ciudad te indica el camino si preguntas.",
		},
		it = {
			q = "Dove imparo nuovi incantesimi e abilità?",
			a = "Dal tuo istruttore di classe. Ci sono istruttori nelle zone iniziali e nelle città, e ogni pochi livelli hanno nuovi gradi e incantesimi per te. Qualsiasi guardia cittadina ti indica la strada se chiedi.",
		},
		ru = {
			q = "Где учить новые заклинания и способности?",
			a = "У учителя своего класса. Учителя есть в стартовых зонах и в городах, и каждые несколько уровней у них появляются новые ранги и заклинания. Любой городской стражник покажет дорогу, если спросить.",
		},
		pt = {
			q = "Onde aprendo feitiços e habilidades novos?",
			a = "Com o instrutor da sua classe. Há instrutores nas zonas iniciais e nas cidades, e a cada poucos níveis eles têm novas categorias e feitiços para você. Qualquer guarda da cidade mostra o caminho se você perguntar.",
		},
	},
	{
		id = "class-talents",
		de = {
			q = "Was sind Talente?",
			a = "Mit Talentpunkten spezialisierst du deine Klasse. Den ersten Punkt bekommst du auf Stufe 10, danach einen pro Stufe. Das Talentfenster öffnest du über die Menüleiste oder mit der Taste [N]. Ab Stufe 40 kannst du eine zweite Talentverteilung (Dualspezialisierung) freischalten und zwischen beiden wechseln.",
		},
		en = {
			q = "What are talents?",
			a = "Talent points let you specialise your class. You get your first point at level 10 and one more each level after that. Open the talent window from the menu bar or with the [N] key. From level 40 you can unlock a second talent setup (dual specialisation) and switch between them.",
		},
		fr = {
			q = "Que sont les talents ?",
			a = "Les points de talent permettent de spécialiser votre classe. Vous recevez le premier au niveau 10, puis un de plus à chaque niveau. Ouvrez la fenêtre des talents depuis la barre de menu ou avec la touche [N]. À partir du niveau 40, vous pouvez débloquer une seconde répartition (double spécialisation) et passer de l'une à l'autre.",
		},
		es = {
			q = "¿Qué son los talentos?",
			a = "Los puntos de talento te permiten especializar tu clase. Recibes el primero en el nivel 10 y uno más en cada nivel siguiente. Abre la ventana de talentos desde la barra de menú o con la tecla [N]. A partir del nivel 40 puedes desbloquear una segunda configuración (especialización doble) y cambiar entre ambas.",
		},
		it = {
			q = "Cosa sono i talenti?",
			a = "I punti talento ti permettono di specializzare la classe. Ricevi il primo al livello 10 e poi uno in più a ogni livello. Apri la finestra dei talenti dalla barra dei menu o con il tasto [N]. Dal livello 40 puoi sbloccare una seconda configurazione (doppia specializzazione) e passare dall'una all'altra.",
		},
		ru = {
			q = "Что такое таланты?",
			a = "Очки талантов позволяют специализировать класс. Первое очко вы получаете на 10-м уровне, затем по одному за каждый уровень. Окно талантов открывается из панели меню или клавишей [N]. С 40-го уровня можно открыть второй набор талантов (двойная специализация) и переключаться между ними.",
		},
		pt = {
			q = "O que são talentos?",
			a = "Pontos de talento permitem especializar sua classe. Você ganha o primeiro no nível 10 e mais um a cada nível depois. Abra a janela de talentos pela barra de menu ou com a tecla [N]. A partir do nível 40 você pode liberar uma segunda distribuição (especialização dupla) e alternar entre elas.",
		},
	},
	{
		id = "class-roles",
		de = {
			q = "Tank, Heiler oder Schaden: Was heißt das?",
			a = "Das sind die Rollen in einer Gruppe. Der Tank beschäftigt die Gegner und steckt die Treffer ein, der Heiler hält alle am Leben, und die Schadensklassen besiegen die Gegner. Krieger, Paladine und Druiden können tanken; Priester, Paladine, Schamanen und Druiden können heilen; Schaden machen alle Klassen.",
		},
		en = {
			q = "Tank, healer or damage: what does that mean?",
			a = "These are the roles in a group. The tank keeps the enemies busy and takes the hits, the healer keeps everyone alive and the damage dealers defeat the enemies. Warriors, paladins and druids can tank; priests, paladins, shamans and druids can heal; every class can deal damage.",
		},
		fr = {
			q = "Tank, soigneur ou DPS : qu'est-ce que ça veut dire ?",
			a = "Ce sont les rôles dans un groupe. Le tank occupe les ennemis et encaisse les coups, le soigneur garde tout le monde en vie et les DPS abattent les ennemis. Guerriers, paladins et druides peuvent tanker ; prêtres, paladins, chamans et druides peuvent soigner ; toutes les classes peuvent infliger des dégâts.",
		},
		es = {
			q = "Tanque, sanador o daño: ¿qué significa?",
			a = "Son los roles de un grupo. El tanque mantiene ocupados a los enemigos y recibe los golpes, el sanador mantiene vivos a todos y los de daño acaban con los enemigos. Guerreros, paladines y druidas pueden tanquear; sacerdotes, paladines, chamanes y druidas pueden sanar; todas las clases pueden hacer daño.",
		},
		it = {
			q = "Tank, guaritore o danni: cosa significa?",
			a = "Sono i ruoli in un gruppo. Il tank tiene occupati i nemici e incassa i colpi, il guaritore tiene tutti in vita e chi fa danni sconfigge i nemici. Guerrieri, paladini e druidi possono fare da tank; sacerdoti, paladini, sciamani e druidi possono curare; tutte le classi possono fare danni.",
		},
		ru = {
			q = "Танк, лекарь или боец: что это значит?",
			a = "Это роли в группе. Танк отвлекает врагов и принимает удары на себя, лекарь поддерживает всех живыми, а бойцы уничтожают врагов. Танковать могут воины, паладины и друиды; лечить — жрецы, паладины, шаманы и друиды; наносить урон может любой класс.",
		},
		pt = {
			q = "Tanque, curador ou dano: o que significa?",
			a = "São as funções num grupo. O tanque mantém os inimigos ocupados e aguenta os golpes, o curador mantém todos vivos e quem causa dano derrota os inimigos. Guerreiros, paladinos e druidas podem tanquear; sacerdotes, paladinos, xamãs e druidas podem curar; toda classe pode causar dano.",
		},
	},
	{
		id = "class-stats",
		de = {
			q = "Welche Werte sind für mich wichtig?",
			a = "Stärke hilft Kriegern und Paladinen, Beweglichkeit Schurken und Jägern, Intelligenz gibt Zauberklassen mehr Mana und kritische Zaubertreffer, Ausdauer gibt allen Gesundheit. Willenskraft beschleunigt die Regeneration von Gesundheit und Mana. Zauberschaden und Heilung kommen von der Ausrüstung. Vergleich die Tooltips zweier Gegenstände, bevor du dich entscheidest.",
		},
		en = {
			q = "Which stats matter for me?",
			a = "Strength helps warriors and paladins, agility rogues and hunters, intellect gives casters more mana and spell crit, stamina gives everyone health. Spirit speeds up health and mana regeneration. Spell damage and healing come from your gear. Compare the tooltips of two items before you decide.",
		},
		fr = {
			q = "Quelles caractéristiques comptent pour moi ?",
			a = "La force aide les guerriers et les paladins, l'agilité les voleurs et les chasseurs, l'intelligence donne aux lanceurs de sorts plus de mana et de critique des sorts, l'endurance donne de la vie à tous. L'esprit accélère la récupération de la vie et du mana. Les dégâts et les soins des sorts viennent de l'équipement. Comparez les infobulles de deux objets avant de choisir.",
		},
		es = {
			q = "¿Qué atributos me importan?",
			a = "La fuerza ayuda a guerreros y paladines, la agilidad a pícaros y cazadores, el intelecto da a los lanzadores más maná y crítico con hechizos, y el aguante da salud a todos. El espíritu acelera la regeneración de salud y maná. El daño y la sanación con hechizos vienen del equipo. Compara las descripciones de dos objetos antes de decidir.",
		},
		it = {
			q = "Quali statistiche contano per me?",
			a = "La forza aiuta guerrieri e paladini, l'agilità ladri e cacciatori, l'intelletto dà agli incantatori più mana e critico magico, la tempra dà salute a tutti. Lo spirito accelera la rigenerazione di salute e mana. Danni e cure degli incantesimi vengono dall'equipaggiamento. Confronta i tooltip di due oggetti prima di decidere.",
		},
		ru = {
			q = "Какие характеристики мне важны?",
			a = "Сила помогает воинам и паладинам, ловкость — разбойникам и охотникам, интеллект даёт заклинателям больше маны и шанс критического эффекта заклинаний, выносливость даёт всем здоровье. Дух ускоряет восстановление здоровья и маны. Урон и исцеление от заклинаний дают предметы. Прежде чем решить, сравните подсказки двух предметов.",
		},
		pt = {
			q = "Quais atributos importam para mim?",
			a = "Força ajuda guerreiros e paladinos, agilidade ladinos e caçadores, intelecto dá a quem conjura mais mana e crítico mágico e vigor dá vida a todos. Espírito acelera a regeneração de vida e mana. Dano e cura mágicos vêm do equipamento. Compare as dicas de dois itens antes de decidir.",
		},
	},
	{
		id = "class-equip",
		de = {
			q = "Warum kann ich einen Gegenstand nicht anlegen?",
			a = "Roter Text im Tooltip zeigt, was fehlt: die nötige Stufe, die Rüstungsart (Stoff, Leder, Schwere Rüstung, Platte) oder die Waffenart. Manche Waffenarten kannst du bei einem Waffenmeister in den großen Städten lernen.",
		},
		en = {
			q = "Why can I not equip an item?",
			a = "Red text in the tooltip shows what is missing: the required level, the armour type (cloth, leather, mail, plate) or the weapon type. Some weapon types can be learned at a weapon master in the big cities.",
		},
		fr = {
			q = "Pourquoi ne puis-je pas équiper un objet ?",
			a = "Le texte rouge dans l'infobulle montre ce qui manque : le niveau requis, le type d'armure (tissu, cuir, mailles, plaques) ou le type d'arme. Certains types d'armes s'apprennent auprès d'un maître d'armes dans les grandes villes.",
		},
		es = {
			q = "¿Por qué no puedo equiparme un objeto?",
			a = "El texto rojo de la descripción muestra lo que falta: el nivel necesario, el tipo de armadura (tela, cuero, malla, placas) o el tipo de arma. Algunos tipos de arma se aprenden con un maestro de armas en las grandes ciudades.",
		},
		it = {
			q = "Perché non posso equipaggiare un oggetto?",
			a = "Il testo rosso nel tooltip mostra cosa manca: il livello richiesto, il tipo di armatura (stoffa, cuoio, maglia, piastre) o il tipo di arma. Alcuni tipi di arma si imparano da un maestro d'armi nelle grandi città.",
		},
		ru = {
			q = "Почему я не могу надеть предмет?",
			a = "Красный текст в подсказке показывает, чего не хватает: нужного уровня, типа брони (ткань, кожа, кольчуга, латы) или типа оружия. Некоторые виды оружия можно выучить у мастера оружия в больших городах.",
		},
		pt = {
			q = "Por que não consigo equipar um item?",
			a = "O texto vermelho na dica mostra o que falta: o nível exigido, o tipo de armadura (tecido, couro, malha, placas) ou o tipo de arma. Alguns tipos de arma podem ser aprendidos com um mestre de armas nas grandes cidades.",
		},
	},
	{
		id = "class-action-bar",
		de = {
			q = "Wie lege ich Zauber auf die Aktionsleiste?",
			a = "Öffne das Zauberbuch (Taste [P]) und zieh einen Zauber auf einen freien Platz deiner Aktionsleiste. Mit den Zahlentasten [1] bis [0] wirkst du dann die Zauber der ersten Leiste. Neue Ränge eines Zaubers ersetzen den alten auf der Leiste meist von selbst.",
		},
		en = {
			q = "How do I put spells on my action bar?",
			a = "Open the spellbook ([P] key) and drag a spell onto a free slot of your action bar. The number keys [1] to [0] then cast the spells in the first bar. New ranks of a spell usually replace the old one on the bar on their own.",
		},
		fr = {
			q = "Comment mettre des sorts dans ma barre d'action ?",
			a = "Ouvrez le grimoire (touche [P]) et faites glisser un sort sur un emplacement libre de votre barre d'action. Les touches [1] à [0] lancent ensuite les sorts de la première barre. Les nouveaux rangs d'un sort remplacent généralement l'ancien sur la barre tout seuls.",
		},
		es = {
			q = "¿Cómo pongo hechizos en la barra de acción?",
			a = "Abre el libro de hechizos (tecla [P]) y arrastra un hechizo a una ranura libre de tu barra de acción. Las teclas del [1] al [0] lanzan entonces los hechizos de la primera barra. Los rangos nuevos de un hechizo suelen sustituir solos al antiguo en la barra.",
		},
		it = {
			q = "Come metto gli incantesimi sulla barra delle azioni?",
			a = "Apri il libro degli incantesimi (tasto [P]) e trascina un incantesimo in uno spazio libero della barra delle azioni. I tasti da [1] a [0] lanciano poi gli incantesimi della prima barra. I nuovi gradi di un incantesimo di solito sostituiscono da soli quello vecchio sulla barra.",
		},
		ru = {
			q = "Как поместить заклинания на панель команд?",
			a = "Откройте книгу заклинаний (клавиша [P]) и перетащите заклинание в свободную ячейку панели команд. Клавиши от [1] до [0] будут применять заклинания первой панели. Новые ранги заклинания обычно сами заменяют старый на панели.",
		},
		pt = {
			q = "Como coloco feitiços na barra de ações?",
			a = "Abra o grimório (tecla [P]) e arraste um feitiço para um espaço livre da barra de ações. As teclas de [1] a [0] lançam então os feitiços da primeira barra. Novas categorias de um feitiço costumam substituir sozinhas a antiga na barra.",
		},
	},
	{
		id = "class-easy-beginner",
		de = {
			q = "Welche Klasse ist für Anfänger am einfachsten?",
			a = "Jäger und Hexenmeister leveln allein sehr entspannt, weil ihr Begleiter Gegner beschäftigt. Paladine sind dank Heilung und schwerer Rüstung schwer zu besiegen. Krieger und Schurken brauchen mehr Übung, belohnen sie aber mit viel Spielspaß.",
		},
		en = {
			q = "Which class is easiest for beginners?",
			a = "Hunters and warlocks level alone very comfortably because their pet keeps enemies busy. Paladins are hard to kill thanks to healing and heavy armour. Warriors and rogues take more practice but reward it with a lot of fun.",
		},
		fr = {
			q = "Quelle classe est la plus facile pour débuter ?",
			a = "Les chasseurs et les démonistes montent de niveau seuls très confortablement, car leur familier occupe les ennemis. Les paladins sont difficiles à tuer grâce aux soins et à leur armure lourde. Guerriers et voleurs demandent plus de pratique, mais le récompensent par beaucoup de plaisir.",
		},
		es = {
			q = "¿Qué clase es la más fácil para empezar?",
			a = "Cazadores y brujos suben de nivel solos con mucha comodidad porque su mascota entretiene a los enemigos. Los paladines son difíciles de matar gracias a la sanación y la armadura pesada. Guerreros y pícaros requieren más práctica, pero la recompensan con mucha diversión.",
		},
		it = {
			q = "Qual è la classe più facile per iniziare?",
			a = "Cacciatori e stregoni salgono di livello da soli con grande comodità perché il loro famiglio tiene occupati i nemici. I paladini sono difficili da uccidere grazie alle cure e all'armatura pesante. Guerrieri e ladri richiedono più pratica, ma la ripagano con tanto divertimento.",
		},
		ru = {
			q = "Какой класс проще всего для новичка?",
			a = "Охотникам и чернокнижникам очень удобно качаться в одиночку, потому что питомец отвлекает врагов. Паладинов трудно убить благодаря лечению и тяжёлой броне. Воинам и разбойникам нужно больше практики, зато играть ими очень весело.",
		},
		pt = {
			q = "Qual classe é mais fácil para iniciantes?",
			a = "Caçadores e bruxos sobem de nível sozinhos com muito conforto porque o ajudante mantém os inimigos ocupados. Paladinos são difíceis de matar graças à cura e à armadura pesada. Guerreiros e ladinos exigem mais prática, mas recompensam com muita diversão.",
		},
	},
	{
		id = "class-resources",
		de = {
			q = "Was sind Mana, Wut und Energie?",
			a = "Die Ressource für deine Fähigkeiten. Mana haben Zauberklassen und Hybride; es regeneriert langsam und mit Trinken. Wut haben Krieger (und Druiden als Bär), sie entsteht im Kampf. Energie haben Schurken (und Druiden als Katze), sie füllt sich schnell von selbst.",
		},
		en = {
			q = "What are mana, rage and energy?",
			a = "The resource for your abilities. Casters and hybrids use mana, which regenerates slowly and with drinking. Warriors (and druids in Bear Form) use rage, built in combat. Rogues (and druids in Cat Form) use energy, which refills quickly on its own.",
		},
		fr = {
			q = "Que sont le mana, la rage et l'énergie ?",
			a = "La ressource de vos techniques. Les lanceurs de sorts et les hybrides utilisent le mana, qui se régénère lentement et en buvant. Les guerriers (et les druides en forme d'ours) utilisent la rage, qui se génère au combat. Les voleurs (et les druides en forme de félin) utilisent l'énergie, qui se recharge vite toute seule.",
		},
		es = {
			q = "¿Qué son el maná, la ira y la energía?",
			a = "El recurso para tus habilidades. Los lanzadores de hechizos y los híbridos usan maná, que se regenera despacio y bebiendo. Los guerreros (y los druidas en forma de oso) usan ira, que se genera en combate. Los pícaros (y los druidas en forma felina) usan energía, que se recarga rápido sola.",
		},
		it = {
			q = "Cosa sono mana, ira ed energia?",
			a = "La risorsa per le tue abilità. Incantatori e ibridi usano il mana, che si rigenera lentamente e bevendo. I guerrieri (e i druidi in Forma d'Orso) usano l'ira, che si accumula in combattimento. I ladri (e i druidi in Forma Felina) usano l'energia, che si ricarica in fretta da sola.",
		},
		ru = {
			q = "Что такое мана, ярость и энергия?",
			a = "Это ресурс для ваших способностей. Заклинатели и гибриды используют ману, она восстанавливается медленно и при питье. Воины (и друиды в облике медведя) используют ярость, которая копится в бою. Разбойники (и друиды в облике кошки) используют энергию, она быстро восполняется сама.",
		},
		pt = {
			q = "O que são mana, raiva e energia?",
			a = "O recurso das suas habilidades. Conjuradores e híbridos usam mana, que se regenera devagar e bebendo. Guerreiros (e druidas na Forma de Urso) usam raiva, gerada em combate. Ladinos (e druidas na Forma de Felino) usam energia, que se recarrega rápido sozinha.",
		},
	},
	{
		id = "class-spell-cost",
		de = {
			q = "Warum kostet das Lernen von Zaubern Gold?",
			a = "Jeder neue Zauber und Rang kostet beim Lehrer etwas Gold, später mehr. Plane etwas Gold dafür ein und kauf zuerst die Fähigkeiten, die du am meisten nutzt.",
		},
		en = {
			q = "Why does learning spells cost gold?",
			a = "Every new spell and rank costs some gold at the trainer, more later on. Budget some gold for it and buy the abilities you use most first.",
		},
		fr = {
			q = "Pourquoi apprendre des sorts coûte-t-il de l'or ?",
			a = "Chaque nouveau sort et chaque rang coûte un peu d'or chez le maître, plus par la suite. Prévoyez de l'or pour cela et achetez d'abord les techniques que vous utilisez le plus.",
		},
		es = {
			q = "¿Por qué cuesta oro aprender hechizos?",
			a = "Cada hechizo y rango nuevo cuesta algo de oro en el instructor, y más adelante cuesta más. Reserva algo de oro para ello y compra primero las habilidades que más uses.",
		},
		it = {
			q = "Perché imparare gli incantesimi costa oro?",
			a = "Ogni nuovo incantesimo e grado costa un po' d'oro dall'istruttore, e più avanti di più. Metti da parte dell'oro e compra prima le abilità che usi di più.",
		},
		ru = {
			q = "Почему обучение заклинаниям стоит золото?",
			a = "Каждое новое заклинание и ранг у учителя стоят немного золота, а позже больше. Откладывайте на это золото и покупайте в первую очередь то, чем пользуетесь чаще всего.",
		},
		pt = {
			q = "Por que aprender feitiços custa ouro?",
			a = "Cada feitiço e categoria nova custa um pouco de ouro no instrutor, e mais depois. Separe ouro para isso e compre primeiro as habilidades que você mais usa.",
		},
	},
	{
		id = "class-talent-reset",
		de = {
			q = "Wie setze ich meine Talente zurück?",
			a = "Dein Klassenlehrer setzt deine Talente gegen Gebühr zurück; jedes weitere Mal wird es teurer, mit der Zeit sinkt der Preis wieder. Danach verteilst du alle Punkte neu.",
		},
		en = {
			q = "How do I reset my talents?",
			a = "Your class trainer resets your talents for a fee; it gets more expensive each time and slowly drops again over time. Then you spend all points again.",
		},
		fr = {
			q = "Comment réinitialiser mes talents ?",
			a = "Votre maître de classe réinitialise vos talents contre paiement ; c'est plus cher à chaque fois, et le prix redescend lentement avec le temps. Ensuite, vous redistribuez tous vos points.",
		},
		es = {
			q = "¿Cómo reinicio mis talentos?",
			a = "Tu instructor de clase reinicia tus talentos a cambio de una tarifa; cada vez es más cara y con el tiempo baja poco a poco. Después vuelves a repartir todos los puntos.",
		},
		it = {
			q = "Come azzero i talenti?",
			a = "Il tuo istruttore di classe azzera i talenti a pagamento; ogni volta costa di più e col tempo il prezzo scende lentamente. Poi ridistribuisci tutti i punti.",
		},
		ru = {
			q = "Как сбросить таланты?",
			a = "Учитель класса сбрасывает таланты за плату; каждый раз дороже, а со временем цена понемногу снижается. После этого вы заново распределяете все очки.",
		},
		pt = {
			q = "Como redefino meus talentos?",
			a = "O instrutor da sua classe redefine seus talentos por uma taxa; fica mais caro a cada vez e cai devagar com o tempo. Depois você distribui todos os pontos de novo.",
		},
	},
	{
		id = "class-dual-spec",
		de = {
			q = "Wie funktioniert die Dualspezialisierung?",
			a = "Ab Stufe 40 kannst du eine zweite Talentverteilung freischalten und zwischen beiden wechseln, etwa eine zum Leveln und eine für Gruppen. Gewechselt wird außerhalb des Kampfes über das Talentfenster. So musst du die Talente nicht ständig zurücksetzen.",
		},
		en = {
			q = "How does dual specialisation work?",
			a = "From level 40 you can unlock a second talent setup and switch between both, for example one for levelling and one for groups. You switch out of combat from the talent window. That way you do not have to reset your talents all the time.",
		},
		fr = {
			q = "Comment fonctionne la double spécialisation ?",
			a = "À partir du niveau 40, vous pouvez débloquer une seconde répartition de talents et passer de l'une à l'autre, par exemple une pour monter de niveau et une pour les groupes. Vous changez hors combat depuis la fenêtre des talents. Ainsi, plus besoin de réinitialiser vos talents sans arrêt.",
		},
		es = {
			q = "¿Cómo funciona la especialización doble?",
			a = "A partir del nivel 40 puedes desbloquear una segunda configuración de talentos y cambiar entre ambas, por ejemplo una para subir de nivel y otra para grupos. Cambias fuera de combate desde la ventana de talentos. Así no tienes que reiniciar los talentos todo el tiempo.",
		},
		it = {
			q = "Come funziona la doppia specializzazione?",
			a = "Dal livello 40 puoi sbloccare una seconda configurazione di talenti e passare dall'una all'altra, per esempio una per salire di livello e una per i gruppi. Cambi fuori dal combattimento dalla finestra dei talenti. Così non devi azzerare continuamente i talenti.",
		},
		ru = {
			q = "Как работает двойная специализация?",
			a = "С 40-го уровня можно открыть второй набор талантов и переключаться между ними, например один для прокачки, другой для групп. Переключение — вне боя через окно талантов. Так не придётся постоянно сбрасывать таланты.",
		},
		pt = {
			q = "Como funciona a especialização dupla?",
			a = "A partir do nível 40 você pode liberar uma segunda distribuição de talentos e alternar entre as duas, por exemplo uma para subir de nível e outra para grupos. Você troca fora de combate pela janela de talentos. Assim não precisa redefinir os talentos o tempo todo.",
		},
	},
	{
		id = "class-weapon-skills",
		de = {
			q = "Warum verfehle ich mit meiner neuen Waffe so oft?",
			a = "Jede Waffenart hat eine eigene Fertigkeit, die mit dem Benutzen steigt. Mit einer neuen Waffenart verfehlst du anfangs öfter. Kämpf eine Weile damit, dann steigt die Fertigkeit; im Charakterfenster siehst du den Stand.",
		},
		en = {
			q = "Why do I miss so often with my new weapon?",
			a = "Every weapon type has its own skill that rises with use. With a new weapon type you miss more often at first. Fight with it for a while and the skill goes up; the character window shows where you are.",
		},
		fr = {
			q = "Pourquoi je rate si souvent avec ma nouvelle arme ?",
			a = "Chaque type d'arme a sa propre compétence, qui augmente à l'usage. Avec un nouveau type d'arme, vous ratez plus souvent au début. Combattez un moment avec, la compétence monte ; la fenêtre du personnage montre où vous en êtes.",
		},
		es = {
			q = "¿Por qué fallo tanto con mi arma nueva?",
			a = "Cada tipo de arma tiene su propia habilidad, que sube con el uso. Con un tipo de arma nuevo fallas más al principio. Lucha un rato con ella y la habilidad sube; la ventana del personaje muestra cómo vas.",
		},
		it = {
			q = "Perché manco così spesso con la mia nuova arma?",
			a = "Ogni tipo di arma ha la sua abilità, che sale con l'uso. Con un tipo di arma nuovo all'inizio manchi più spesso. Combatti un po' con quell'arma e l'abilità sale; la finestra del personaggio mostra a che punto sei.",
		},
		ru = {
			q = "Почему я так часто промахиваюсь новым оружием?",
			a = "У каждого типа оружия свой навык, который растёт при использовании. С новым типом оружия поначалу промахов больше. Повоюйте им какое-то время, и навык вырастет; текущее значение видно в окне персонажа.",
		},
		pt = {
			q = "Por que erro tanto com minha arma nova?",
			a = "Cada tipo de arma tem sua própria perícia, que sobe com o uso. Com um tipo de arma novo você erra mais no começo. Lute com ela por um tempo e a perícia sobe; a janela do personagem mostra em que ponto você está.",
		},
	},
	{
		id = "class-weapon-master",
		de = {
			q = "Wie lerne ich eine neue Waffenart?",
			a = "Bei Waffenmeistern in den Hauptstädten, gegen eine kleine Gebühr. Jeder Waffenmeister lehrt nur bestimmte Waffen, und nicht jede Klasse kann jede Waffe lernen. Eine neue Waffenart beginnt bei Fertigkeit 1 und steigt beim Kämpfen. Frag eine Stadtwache nach dem Waffenmeister, sie markiert ihn auf deiner Karte.",
		},
		en = {
			q = "How do I learn a new weapon type?",
			a = "From weapon masters in the capital cities, for a small fee. Each weapon master only teaches certain weapons, and not every class can learn every weapon. A new weapon type starts at skill 1 and rises as you fight. Ask a city guard for the weapon master; they mark it on your map.",
		},
		fr = {
			q = "Comment apprendre un nouveau type d'arme ?",
			a = "Auprès des maîtres d'armes des capitales, contre une petite somme. Chaque maître d'armes n'enseigne que certaines armes, et toutes les classes ne peuvent pas tout apprendre. Un nouveau type d'arme commence à la compétence 1 et monte en combattant. Demandez le maître d'armes à un garde de la ville : il le marque sur votre carte.",
		},
		es = {
			q = "¿Cómo aprendo un tipo de arma nuevo?",
			a = "Con los maestros de armas de las capitales, por un pequeño pago. Cada maestro de armas solo enseña ciertas armas y no todas las clases pueden aprender todas. Un tipo de arma nuevo empieza con habilidad 1 y sube al luchar. Pregunta por el maestro de armas a un guardia de la ciudad; lo marca en tu mapa.",
		},
		it = {
			q = "Come imparo un nuovo tipo di arma?",
			a = "Dai maestri d'armi nelle capitali, per una piccola somma. Ogni maestro d'armi insegna solo certe armi, e non tutte le classi possono impararle tutte. Un nuovo tipo di arma parte da abilità 1 e sale combattendo. Chiedi del maestro d'armi a una guardia cittadina: lo segna sulla tua mappa.",
		},
		ru = {
			q = "Как выучить новый тип оружия?",
			a = "У мастеров оружия в столицах за небольшую плату. Каждый мастер учит только определённым видам оружия, и не каждый класс может освоить любое оружие. Новый тип оружия начинается с навыка 1 и растёт в бою. Спросите городского стражника о мастере оружия: он отметит его на карте.",
		},
		pt = {
			q = "Como aprendo um novo tipo de arma?",
			a = "Com os mestres de armas nas capitais, por uma pequena taxa. Cada mestre de armas só ensina certas armas, e nem toda classe pode aprender todas. Um tipo de arma novo começa na perícia 1 e sobe ao lutar. Pergunte a um guarda da cidade pelo mestre de armas; ele marca no seu mapa.",
		},
	},
	{
		id = "class-weapon-alliance",
		de = {
			q = "Wo lerne ich als Allianz welche Waffenart?",
			a = "Sturmwind: Dolche, Ein- und Zweihandschwerter, Stangenwaffen, Stäbe und Armbrüste. Eisenschmiede hat zwei Waffenmeister: einer lehrt Ein- und Zweihandäxte, Ein- und Zweihandstreitkolben, Faustwaffen und Schusswaffen, der andere Armbrüste, Dolche und Wurfwaffen. Darnassus: Bögen, Dolche, Faustwaffen, Stäbe und Wurfwaffen.",
			kw = "Waffenmeister Bogen Schwert Axt Streitkolben Stab Dolch Faustwaffe Armbrust Schusswaffe Gewehr Wurfwaffe Stangenwaffe Waffenfertigkeit lernen",
		},
		en = {
			q = "Where do I learn which weapon type as Alliance?",
			a = "Stormwind: daggers, one- and two-handed swords, polearms, staves and crossbows. Ironforge has two weapon masters: one teaches one- and two-handed axes and maces, fist weapons and guns, the other crossbows, daggers and thrown weapons. Darnassus: bows, daggers, fist weapons, staves and thrown weapons.",
			kw = "weapon master skill learn bow sword axe mace staff dagger gun",
		},
		fr = {
			q = "Où apprendre quel type d'arme côté Alliance ?",
			a = "Hurlevent : dagues, épées à une et à deux mains, armes d'hast, bâtons et arbalètes. Forgefer a deux maîtres d'armes : l'un enseigne les haches et les masses à une et à deux mains, les armes de pugilat et les armes à feu, l'autre les arbalètes, les dagues et les armes de jet. Darnassus : arcs, dagues, armes de pugilat, bâtons et armes de jet.",
		},
		es = {
			q = "¿Dónde aprendo cada tipo de arma en la Alianza?",
			a = "Ventormenta: dagas, espadas de una y dos manos, armas de asta, bastones y ballestas. Forjaz tiene dos maestros de armas: uno enseña hachas y mazas de una y dos manos, armas de puño y armas de fuego; el otro, ballestas, dagas y armas arrojadizas. Darnassus: arcos, dagas, armas de puño, bastones y armas arrojadizas.",
		},
		it = {
			q = "Dove imparo ogni tipo di arma con l'Alleanza?",
			a = "Roccavento: pugnali, spade a una e a due mani, armi ad asta, bastoni e balestre. Forgiardente ha due maestri d'armi: uno insegna asce e mazze a una e a due mani, armi da pugno e armi da fuoco, l'altro balestre, pugnali e armi da lancio. Darnassus: archi, pugnali, armi da pugno, bastoni e armi da lancio.",
		},
		ru = {
			q = "Где Альянсу учить какой тип оружия?",
			a = "Штормград: кинжалы, одноручные и двуручные мечи, древковое оружие, посохи и арбалеты. В Стальгорне два мастера оружия: один учит одноручным и двуручным топорам и дробящему оружию, кистевому и огнестрельному оружию, другой – арбалетам, кинжалам и метательному оружию. Дарнас: луки, кинжалы, кистевое оружие, посохи и метательное оружие.",
		},
		pt = {
			q = "Onde aprendo cada tipo de arma na Aliança?",
			a = "Ventobravo: adagas, espadas de uma e duas mãos, armas de haste, báculos e bestas. Altaforja tem dois mestres de armas: um ensina machados e maças de uma e duas mãos, armas de punho e armas de fogo; o outro, bestas, adagas e armas de arremesso. Darnassus: arcos, adagas, armas de punho, báculos e armas de arremesso.",
		},
	},
	{
		id = "class-weapon-horde",
		de = {
			q = "Wo lerne ich als Horde welche Waffenart?",
			a = "Orgrimmar hat zwei Waffenmeister: einer lehrt Bögen, Dolche, Faustwaffen, Ein- und Zweihandäxte und Wurfwaffen, der andere Bögen, Ein- und Zweihandäxte, Stäbe und Wurfwaffen. Donnerfels: Schusswaffen, Ein- und Zweihandstreitkolben und Stäbe. Unterstadt: Armbrüste, Dolche, Ein- und Zweihandschwerter und Stangenwaffen.",
			kw = "Waffenmeister Bogen Schwert Axt Streitkolben Stab Dolch Faustwaffe Armbrust Schusswaffe Gewehr Wurfwaffe Stangenwaffe Waffenfertigkeit lernen",
		},
		en = {
			q = "Where do I learn which weapon type as Horde?",
			a = "Orgrimmar has two weapon masters: one teaches bows, daggers, fist weapons, one- and two-handed axes and thrown weapons, the other bows, one- and two-handed axes, staves and thrown weapons. Thunder Bluff: guns, one- and two-handed maces and staves. Undercity: crossbows, daggers, one- and two-handed swords and polearms.",
			kw = "weapon master skill learn bow sword axe mace staff dagger gun",
		},
		fr = {
			q = "Où apprendre quel type d'arme côté Horde ?",
			a = "Orgrimmar a deux maîtres d'armes : l'un enseigne les arcs, les dagues, les armes de pugilat, les haches à une et à deux mains et les armes de jet, l'autre les arcs, les haches à une et à deux mains, les bâtons et les armes de jet. Les Pitons-du-Tonnerre : armes à feu, masses à une et à deux mains et bâtons. Fossoyeuse : arbalètes, dagues, épées à une et à deux mains et armes d'hast.",
		},
		es = {
			q = "¿Dónde aprendo cada tipo de arma en la Horda?",
			a = "Orgrimmar tiene dos maestros de armas: uno enseña arcos, dagas, armas de puño, hachas de una y dos manos y armas arrojadizas; el otro, arcos, hachas de una y dos manos, bastones y armas arrojadizas. Cima del Trueno: armas de fuego, mazas de una y dos manos y bastones. Entrañas: ballestas, dagas, espadas de una y dos manos y armas de asta.",
		},
		it = {
			q = "Dove imparo ogni tipo di arma con l'Orda?",
			a = "Orgrimmar ha due maestri d'armi: uno insegna archi, pugnali, armi da pugno, asce a una e a due mani e armi da lancio, l'altro archi, asce a una e a due mani, bastoni e armi da lancio. Picco del Tuono: armi da fuoco, mazze a una e a due mani e bastoni. Sepulcria: balestre, pugnali, spade a una e a due mani e armi ad asta.",
		},
		ru = {
			q = "Где Орде учить какой тип оружия?",
			a = "В Оргриммаре два мастера оружия: один учит лукам, кинжалам, кистевому оружию, одноручным и двуручным топорам и метательному оружию, другой – лукам, одноручным и двуручным топорам, посохам и метательному оружию. Громовой Утес: огнестрельное оружие, одноручное и двуручное дробящее оружие и посохи. Подгород: арбалеты, кинжалы, одноручные и двуручные мечи и древковое оружие.",
		},
		pt = {
			q = "Onde aprendo cada tipo de arma na Horda?",
			a = "Orgrimmar tem dois mestres de armas: um ensina arcos, adagas, armas de punho, machados de uma e duas mãos e armas de arremesso; o outro, arcos, machados de uma e duas mãos, báculos e armas de arremesso. Penhasco do Trovão: armas de fogo, maças de uma e duas mãos e báculos. Cidade Baixa: bestas, adagas, espadas de uma e duas mãos e armas de haste.",
		},
	},
	{
		id = "class-weapon-by-class",
		de = {
			q = "Welche Waffenarten kann meine Klasse lernen?",
			a = "Krieger: alle außer Zauberstäben. Paladine: Ein- und Zweihandäxte, -streitkolben und -schwerter sowie Stangenwaffen. Jäger: Äxte, Schwerter, Dolche, Faustwaffen, Stangenwaffen, Stäbe, Bögen, Armbrüste, Schusswaffen und Wurfwaffen. Schurken: Dolche, Faustwaffen, Einhandschwerter und -streitkolben, Bögen, Armbrüste, Schusswaffen und Wurfwaffen. Schamanen: Dolche, Faustwaffen, Stäbe, Einhandäxte und -streitkolben, zweihändige nur mit einem Verstärkungstalent. Druiden: Dolche, Faustwaffen, Ein- und Zweihandstreitkolben und Stäbe. Priester: Dolche, Einhandstreitkolben, Stäbe und Zauberstäbe. Magier und Hexenmeister: Dolche, Einhandschwerter, Stäbe und Zauberstäbe.",
			kw = "Waffenmeister Krieger Paladin Jäger Schurke Schamane Druide Priester Magier Hexenmeister Waffe tragen benutzen",
		},
		en = {
			q = "Which weapon types can my class learn?",
			a = "Warriors: everything except wands. Paladins: one- and two-handed axes, maces and swords, and polearms. Hunters: axes, swords, daggers, fist weapons, polearms, staves, bows, crossbows, guns and thrown weapons. Rogues: daggers, fist weapons, one-handed swords and maces, bows, crossbows, guns and thrown weapons. Shamans: daggers, fist weapons, staves, one-handed axes and maces; two-handed ones only with an Enhancement talent. Druids: daggers, fist weapons, one- and two-handed maces and staves. Priests: daggers, one-handed maces, staves and wands. Mages and warlocks: daggers, one-handed swords, staves and wands.",
			kw = "weapon master warrior paladin hunter rogue shaman druid priest mage warlock use equip",
		},
		fr = {
			q = "Quels types d'armes ma classe peut-elle apprendre ?",
			a = "Guerriers : tout sauf les baguettes. Paladins : haches, masses et épées à une et à deux mains, et armes d'hast. Chasseurs : haches, épées, dagues, armes de pugilat, armes d'hast, bâtons, arcs, arbalètes, armes à feu et armes de jet. Voleurs : dagues, armes de pugilat, épées et masses à une main, arcs, arbalètes, armes à feu et armes de jet. Chamans : dagues, armes de pugilat, bâtons, haches et masses à une main ; à deux mains seulement avec un talent Amélioration. Druides : dagues, armes de pugilat, masses à une et à deux mains et bâtons. Prêtres : dagues, masses à une main, bâtons et baguettes. Mages et démonistes : dagues, épées à une main, bâtons et baguettes.",
		},
		es = {
			q = "¿Qué tipos de arma puede aprender mi clase?",
			a = "Guerreros: todo menos varitas. Paladines: hachas, mazas y espadas de una y dos manos, y armas de asta. Cazadores: hachas, espadas, dagas, armas de puño, armas de asta, bastones, arcos, ballestas, armas de fuego y armas arrojadizas. Pícaros: dagas, armas de puño, espadas y mazas de una mano, arcos, ballestas, armas de fuego y armas arrojadizas. Chamanes: dagas, armas de puño, bastones, hachas y mazas de una mano; las de dos manos solo con un talento de Mejora. Druidas: dagas, armas de puño, mazas de una y dos manos y bastones. Sacerdotes: dagas, mazas de una mano, bastones y varitas. Magos y brujos: dagas, espadas de una mano, bastones y varitas.",
		},
		it = {
			q = "Quali tipi di arma può imparare la mia classe?",
			a = "Guerrieri: tutto tranne le bacchette. Paladini: asce, mazze e spade a una e a due mani, e armi ad asta. Cacciatori: asce, spade, pugnali, armi da pugno, armi ad asta, bastoni, archi, balestre, armi da fuoco e armi da lancio. Ladri: pugnali, armi da pugno, spade e mazze a una mano, archi, balestre, armi da fuoco e armi da lancio. Sciamani: pugnali, armi da pugno, bastoni, asce e mazze a una mano; quelle a due mani solo con un talento Potenziamento. Druidi: pugnali, armi da pugno, mazze a una e a due mani e bastoni. Sacerdoti: pugnali, mazze a una mano, bastoni e bacchette. Maghi e stregoni: pugnali, spade a una mano, bastoni e bacchette.",
		},
		ru = {
			q = "Какие типы оружия может выучить мой класс?",
			a = "Воины: всё, кроме жезлов. Паладины: одноручные и двуручные топоры, дробящее оружие и мечи, а также древковое оружие. Охотники: топоры, мечи, кинжалы, кистевое и древковое оружие, посохи, луки, арбалеты, огнестрельное и метательное оружие. Разбойники: кинжалы, кистевое оружие, одноручные мечи и дробящее оружие, луки, арбалеты, огнестрельное и метательное оружие. Шаманы: кинжалы, кистевое оружие, посохи, одноручные топоры и дробящее оружие; двуручные только с талантом Совершенствования. Друиды: кинжалы, кистевое оружие, одноручное и двуручное дробящее оружие и посохи. Жрецы: кинжалы, одноручное дробящее оружие, посохи и жезлы. Маги и чернокнижники: кинжалы, одноручные мечи, посохи и жезлы.",
		},
		pt = {
			q = "Quais tipos de arma minha classe pode aprender?",
			a = "Guerreiros: tudo menos varinhas. Paladinos: machados, maças e espadas de uma e duas mãos, e armas de haste. Caçadores: machados, espadas, adagas, armas de punho, armas de haste, báculos, arcos, bestas, armas de fogo e armas de arremesso. Ladinos: adagas, armas de punho, espadas e maças de uma mão, arcos, bestas, armas de fogo e armas de arremesso. Xamãs: adagas, armas de punho, báculos, machados e maças de uma mão; as de duas mãos só com um talento de Aperfeiçoamento. Druidas: adagas, armas de punho, maças de uma e duas mãos e báculos. Sacerdotes: adagas, maças de uma mão, báculos e varinhas. Magos e bruxos: adagas, espadas de uma mão, báculos e varinhas.",
		},
	},
	{
		id = "class-racials",
		de = {
			q = "Was sind Volksfähigkeiten?",
			a = "Jedes Volk hat eigene Fähigkeiten, in WoW: Forever zwei aktive und zwei passive. Du findest sie im Zauberbuch. Leg die aktiven auf deine Leiste, sie helfen oft genau im richtigen Moment.",
		},
		en = {
			q = "What are racial abilities?",
			a = "Every race has its own abilities, in WoW: Forever two active and two passive ones. You find them in your spellbook. Put the active ones on your bar; they often help at just the right moment.",
		},
		fr = {
			q = "Que sont les techniques raciales ?",
			a = "Chaque race a ses propres techniques, dans WoW: Forever deux actives et deux passives. Vous les trouvez dans votre grimoire. Placez les actives dans votre barre : elles aident souvent au bon moment.",
		},
		es = {
			q = "¿Qué son las habilidades raciales?",
			a = "Cada raza tiene sus propias habilidades; en WoW: Forever, dos activas y dos pasivas. Las encuentras en tu libro de hechizos. Pon las activas en tu barra: a menudo ayudan justo en el momento adecuado.",
		},
		it = {
			q = "Cosa sono le abilità razziali?",
			a = "Ogni razza ha le sue abilità, in WoW: Forever due attive e due passive. Le trovi nel libro degli incantesimi. Metti quelle attive sulla barra: spesso aiutano proprio al momento giusto.",
		},
		ru = {
			q = "Что такое расовые способности?",
			a = "У каждой расы свои способности, в WoW: Forever две активные и две пассивные. Они есть в книге заклинаний. Поместите активные на панель: они часто выручают в нужный момент.",
		},
		pt = {
			q = "O que são habilidades raciais?",
			a = "Cada raça tem suas próprias habilidades, no WoW: Forever duas ativas e duas passivas. Elas ficam no seu grimório. Coloque as ativas na barra; muitas vezes ajudam bem na hora certa.",
		},
	},
	{
		id = "class-hybrid",
		de = {
			q = "Was ist eine Hybridklasse?",
			a = "Eine Klasse, die mehrere Rollen übernehmen kann, etwa Paladin, Schamane oder Druide: Schaden, Heilung und teils Tanken. Sie sind vielseitig, glänzen aber meist erst mit den passenden Talenten in einer Rolle.",
		},
		en = {
			q = "What is a hybrid class?",
			a = "A class that can fill several roles, such as paladin, shaman or druid: damage, healing and sometimes tanking. They are versatile but usually shine in one role with the matching talents.",
		},
		fr = {
			q = "Qu'est-ce qu'une classe hybride ?",
			a = "Une classe qui peut remplir plusieurs rôles, comme le paladin, le chaman ou le druide : dégâts, soins et parfois tank. Elles sont polyvalentes, mais brillent surtout dans un rôle avec les talents adaptés.",
		},
		es = {
			q = "¿Qué es una clase híbrida?",
			a = "Una clase que puede cumplir varios roles, como el paladín, el chamán o el druida: daño, sanación y a veces tanque. Son versátiles, pero suelen brillar en un rol con los talentos adecuados.",
		},
		it = {
			q = "Cos'è una classe ibrida?",
			a = "Una classe che può coprire più ruoli, come paladino, sciamano o druido: danni, cure e a volte tank. Sono versatili, ma di solito brillano in un ruolo con i talenti adatti.",
		},
		ru = {
			q = "Что такое гибридный класс?",
			a = "Класс, который может выполнять несколько ролей, например паладин, шаман или друид: урон, лечение, а иногда и роль танка. Они универсальны, но обычно раскрываются в одной роли с подходящими талантами.",
		},
		pt = {
			q = "O que é uma classe híbrida?",
			a = "Uma classe que pode cumprir várias funções, como paladino, xamã ou druida: dano, cura e às vezes tanque. São versáteis, mas costumam brilhar numa função com os talentos certos.",
		},
	},
	{
		id = "class-buffs-others",
		de = {
			q = "Darf ich andere Spieler buffen?",
			a = "Ja, gern: Buffs wie Seelenstärke, Arkane Intelligenz oder Mal der Wildnis auf Fremde zu legen, ist eine nette Geste und üblich. Frag in Gruppen, wer welchen Buff verteilt.",
		},
		en = {
			q = "Can I buff other players?",
			a = "Yes, please: putting buffs like Fortitude, Arcane Intellect or Mark of the Wild on strangers is a kind and common gesture. In groups, ask who hands out which buff.",
		},
		fr = {
			q = "Puis-je lancer des améliorations sur d'autres joueurs ?",
			a = "Oui, volontiers : lancer des améliorations comme Robustesse, Intelligence des Arcanes ou Marque du fauve sur des inconnus est un geste sympathique et courant. En groupe, demandez qui donne quelle amélioration.",
		},
		es = {
			q = "¿Puedo poner beneficios a otros jugadores?",
			a = "Sí, por favor: poner beneficios como Entereza, Intelecto Arcano o Marca de lo Salvaje a desconocidos es un gesto amable y habitual. En grupo, preguntad quién pone cada beneficio.",
		},
		it = {
			q = "Posso dare benefici ad altri giocatori?",
			a = "Sì, volentieri: lanciare benefici come Forza, Intelletto Arcano o Marchio della Natura a sconosciuti è un gesto gentile e comune. In gruppo chiedete chi dà quale beneficio.",
		},
		ru = {
			q = "Можно ли накладывать усиления на других игроков?",
			a = "Да, и это приветствуется: наложить на незнакомца «Стойкость», «Чародейский интеллект» или «Знак дикой природы» — добрый и привычный жест. В группе договоритесь, кто какое усиление раздаёт.",
		},
		pt = {
			q = "Posso dar bônus a outros jogadores?",
			a = "Sim, por favor: lançar bônus como Fortitude, Intelecto Arcano ou Marca do Bravio em desconhecidos é um gesto gentil e comum. Em grupo, combinem quem dá cada bônus.",
		},
	},
	{
		id = "class-spec-for-dungeons",
		de = {
			q = "Brauche ich für Dungeons andere Talente?",
			a = "Für Schaden meist nicht. Willst du tanken oder heilen, helfen die passenden Talente sehr. Mit der Dualspezialisierung ab Stufe 40 hast du beides; davor kommst du mit deiner Leveling-Verteilung in den meisten Dungeons gut zurecht.",
		},
		en = {
			q = "Do I need different talents for dungeons?",
			a = "For damage usually not. If you want to tank or heal, the matching talents help a lot. With dual specialisation from level 40 you have both; before that your levelling setup works well for most dungeons.",
		},
		fr = {
			q = "Ai-je besoin d'autres talents pour les donjons ?",
			a = "Pour faire des dégâts, généralement non. Si vous voulez tanker ou soigner, les talents adaptés aident beaucoup. Avec la double spécialisation dès le niveau 40, vous avez les deux ; avant cela, votre répartition de montée en niveau suffit pour la plupart des donjons.",
		},
		es = {
			q = "¿Necesito otros talentos para las mazmorras?",
			a = "Para hacer daño, normalmente no. Si quieres tanquear o sanar, los talentos adecuados ayudan mucho. Con la especialización doble desde el nivel 40 tienes ambos; antes, tu configuración para subir de nivel sirve para la mayoría de las mazmorras.",
		},
		it = {
			q = "Mi servono talenti diversi per le spedizioni?",
			a = "Per fare danni di solito no. Se vuoi fare da tank o curare, i talenti adatti aiutano molto. Con la doppia specializzazione dal livello 40 hai entrambe; prima, la configurazione per salire di livello va bene per la maggior parte delle spedizioni.",
		},
		ru = {
			q = "Нужны ли для подземелий другие таланты?",
			a = "Для урона обычно нет. Если хотите танковать или лечить, подходящие таланты очень помогают. С двойной специализацией с 40-го уровня у вас есть оба набора; до этого ваших талантов для прокачки хватает для большинства подземелий.",
		},
		pt = {
			q = "Preciso de outros talentos para masmorras?",
			a = "Para causar dano, geralmente não. Se quiser tanquear ou curar, os talentos certos ajudam muito. Com a especialização dupla a partir do nível 40 você tem os dois; antes disso, sua distribuição para subir de nível funciona bem na maioria das masmorras.",
		},
	},
})
