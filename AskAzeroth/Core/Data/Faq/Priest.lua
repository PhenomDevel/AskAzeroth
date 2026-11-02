local _, ns = ...

-- FAQ: Priest. See Core/Faq.lua for the format.
ns.Faq.Add("priest", {
	{
		id = "priest-leveling",
		de = {
			q = "Wie kämpfe ich als Priester beim Leveln?",
			a = "Leg „Machtwort: Schild“ auf dich, eröffne mit „Göttliche Pein“ oder „Gedankenschlag“, setz „Schattenwort: Schmerz“ und schieß den Rest mit dem Zauberstab ab. So sparst du viel Mana. Bei wenig Gesundheit heilst du dich zwischendurch.",
		},
		en = {
			q = "How do I fight as a priest while levelling?",
			a = "Put Power Word: Shield on yourself, open with Smite or Mind Blast, apply Shadow Word: Pain and finish with your wand. That saves a lot of mana. Heal yourself when your health gets low.",
		},
		fr = {
			q = "Comment combattre en prêtre pendant la montée de niveau ?",
			a = "Placez Mot de pouvoir : Bouclier sur vous, ouvrez avec Châtiment ou Attaque mentale, appliquez Mot de l'ombre : Douleur et achevez avec votre baguette. Cela économise beaucoup de mana. Soignez-vous quand votre vie baisse.",
		},
		es = {
			q = "¿Cómo lucho como sacerdote mientras subo de nivel?",
			a = "Ponte Palabra de poder: escudo, abre con Punición o Explosión mental, aplica Palabra de las Sombras: dolor y remata con tu varita. Eso ahorra mucho maná. Cúrate cuando tu salud baje.",
		},
		it = {
			q = "Come combatto da sacerdote mentre salgo di livello?",
			a = "Metti su di te Parola del Potere: Scudo, apri con Punizione o Detonazione Mentale, applica Parola d'Ombra: Dolore e finisci con la bacchetta. Così risparmi molto mana. Curati quando la salute scende.",
		},
		ru = {
			q = "Как жрецу сражаться при прокачке?",
			a = "Наложите на себя «Слово силы: Щит», начните с «Кары» или «Взрыва разума», наложите «Слово Тьмы: Боль» и добивайте жезлом. Это сильно экономит ману. Лечитесь, когда здоровья становится мало.",
		},
		pt = {
			q = "Como luto como sacerdote enquanto subo de nível?",
			a = "Coloque Palavra de Poder: Escudo em você, abra com Punição ou Impacto Mental, aplique Palavra Sombria: Dor e termine com a varinha. Isso economiza muita mana. Cure-se quando a vida ficar baixa.",
		},
	},
	{
		id = "priest-wand",
		de = {
			q = "Warum ist ein Zauberstab so wichtig?",
			a = "Zauberstäbe schießen ohne Mana. Priester, Magier und Hexenmeister erledigen damit schwache oder fast tote Gegner und sparen Mana für die wichtigen Zauber. Einen Zauberstab legst du in den Fernkampfplatz und benutzt ihn mit „Schießen“; Verzauberer stellen gute her.",
		},
		en = {
			q = "Why is a wand so important?",
			a = "Wands shoot without mana. Priests, mages and warlocks use them to finish weak or nearly dead enemies and save mana for important spells. Put the wand in your ranged slot and use it with Shoot; enchanters make good ones.",
		},
		fr = {
			q = "Pourquoi une baguette est-elle si importante ?",
			a = "Les baguettes tirent sans mana. Les prêtres, mages et démonistes s'en servent pour achever les ennemis faibles ou presque morts et garder le mana pour les sorts importants. Placez la baguette dans l'emplacement à distance et utilisez-la avec Tir ; les enchanteurs en fabriquent de bonnes.",
		},
		es = {
			q = "¿Por qué es tan importante una varita?",
			a = "Las varitas disparan sin gastar maná. Sacerdotes, magos y brujos las usan para rematar enemigos débiles o casi muertos y ahorrar maná para los hechizos importantes. Pon la varita en la ranura a distancia y úsala con Disparar; los encantadores fabrican buenas varitas.",
		},
		it = {
			q = "Perché la bacchetta è così importante?",
			a = "Le bacchette sparano senza consumare mana. Sacerdoti, maghi e stregoni le usano per finire nemici deboli o quasi morti e risparmiare mana per gli incantesimi importanti. Metti la bacchetta nello spazio a distanza e usala con Tiro; gli incantatori ne creano di buone.",
		},
		ru = {
			q = "Почему жезл так важен?",
			a = "Жезлы стреляют без затрат маны. Жрецы, маги и чернокнижники добивают ими слабых или почти мёртвых врагов и берегут ману для важных заклинаний. Наденьте жезл в ячейку дальнего боя и используйте его через «Выстрел»; хорошие жезлы делают зачарователи.",
		},
		pt = {
			q = "Por que a varinha é tão importante?",
			a = "Varinhas disparam sem gastar mana. Sacerdotes, magos e bruxos as usam para acabar com inimigos fracos ou quase mortos e poupar mana para feitiços importantes. Coloque a varinha no espaço de longo alcance e use-a com Atirar; encantadores fazem boas varinhas.",
		},
	},
	{
		id = "priest-shield",
		de = {
			q = "Warum kann ich „Machtwort: Schild“ nicht erneut wirken?",
			a = "Nach dem Schild bekommt das Ziel „Geschwächte Seele“ und kann eine Weile keinen neuen Schild erhalten. Das Symbol siehst du bei den Effekten des Ziels. Schilde also gezielt einsetzen, nicht auf alle gleichzeitig.",
		},
		en = {
			q = "Why can I not cast Power Word: Shield again?",
			a = "After the shield, the target gets Weakened Soul and cannot receive another shield for a while. You see the icon among the target's effects. So use shields on purpose, not on everyone at once.",
		},
		fr = {
			q = "Pourquoi ne puis-je pas relancer Mot de pouvoir : Bouclier ?",
			a = "Après le bouclier, la cible reçoit Âme affaiblie et ne peut pas recevoir d'autre bouclier pendant un moment. Vous voyez l'icône parmi les effets de la cible. Utilisez donc les boucliers à bon escient, pas sur tout le monde en même temps.",
		},
		es = {
			q = "¿Por qué no puedo volver a lanzar Palabra de poder: escudo?",
			a = "Tras el escudo, el objetivo recibe Alma debilitada y no puede recibir otro escudo durante un rato. Verás el icono entre los efectos del objetivo. Así que usa los escudos con intención, no en todos a la vez.",
		},
		it = {
			q = "Perché non posso rilanciare Parola del Potere: Scudo?",
			a = "Dopo lo scudo il bersaglio riceve Anima Indebolita e non può ricevere un altro scudo per un po'. Vedi l'icona tra gli effetti del bersaglio. Quindi usa gli scudi con criterio, non su tutti insieme.",
		},
		ru = {
			q = "Почему нельзя снова наложить «Слово силы: Щит»?",
			a = "После щита цель получает «Ослабленную душу» и некоторое время не может получить новый щит. Значок виден среди эффектов цели. Поэтому накладывайте щиты осознанно, а не на всех сразу.",
		},
		pt = {
			q = "Por que não consigo lançar Palavra de Poder: Escudo de novo?",
			a = "Depois do escudo, o alvo recebe Alma Enfraquecida e não pode receber outro escudo por um tempo. Você vê o ícone entre os efeitos do alvo. Então use escudos com propósito, não em todos de uma vez.",
		},
	},
	{
		id = "priest-heals",
		de = {
			q = "Welchen Heilzauber nehme ich wann?",
			a = "„Erneuerung“ heilt über Zeit und ist gut für kleine Schäden. „Heilen“ (vorher „Geringes Heilen“) ist effizient, braucht aber Zeit. „Blitzheilung“ ist schnell, kostet aber viel Mana und ist für Notfälle. Wähl den kleinsten Zauber, der reicht.",
		},
		en = {
			q = "Which heal do I use when?",
			a = "Renew heals over time and is good for small damage. Heal (earlier Lesser Heal) is efficient but slow. Flash Heal is fast but expensive and meant for emergencies. Pick the smallest spell that does the job.",
		},
		fr = {
			q = "Quel soin utiliser et quand ?",
			a = "Rénovation soigne sur la durée et convient aux petits dégâts. Soins (auparavant Soins inférieurs) sont efficaces mais lents. Soins rapides sont rapides mais coûteux et réservés aux urgences. Choisissez le plus petit sort qui suffit.",
		},
		es = {
			q = "¿Qué cura uso en cada momento?",
			a = "Renovar cura con el tiempo y va bien para daño pequeño. Sanar (antes Sanar inferior) es eficiente pero lento. Sanación relámpago es rápida pero cara y está pensada para emergencias. Elige el hechizo más pequeño que baste.",
		},
		it = {
			q = "Quale cura uso e quando?",
			a = "Rinnovamento cura nel tempo ed è adatto ai danni piccoli. Cura (prima Cura Inferiore) è efficiente ma lenta. Cura Rapida è veloce ma costosa e serve per le emergenze. Scegli l'incantesimo più piccolo che basta.",
		},
		ru = {
			q = "Какое исцеление когда использовать?",
			a = "«Обновление» лечит со временем и подходит при небольшом уроне. «Исцеление» (раньше «Малое исцеление») экономично, но медленно. «Быстрое исцеление» быстрое, но дорогое и предназначено для экстренных случаев. Выбирайте самое слабое заклинание, которого достаточно.",
		},
		pt = {
			q = "Qual cura uso em cada caso?",
			a = "Renovar cura ao longo do tempo e serve para pouco dano. Cura (antes Cura Menor) é eficiente, mas lenta. Cura Relâmpago é rápida, mas cara e feita para emergências. Escolha o menor feitiço que resolva.",
		},
	},
	{
		id = "priest-ranks",
		de = {
			q = "Was bringen niedrige Ränge eines Heilzaubers?",
			a = "Niedrige Ränge heilen weniger, kosten aber auch viel weniger Mana. Wenn nur wenig Gesundheit fehlt, spart ein kleiner Rang viel Mana. Du findest alle Ränge im Zauberbuch und kannst sie einzeln auf die Leiste ziehen.",
		},
		en = {
			q = "What are low ranks of a heal good for?",
			a = "Low ranks heal less but cost far less mana. When only a little health is missing, a low rank saves a lot of mana. All ranks are in your spellbook and can be dragged onto your bar one by one.",
		},
		fr = {
			q = "À quoi servent les rangs inférieurs d'un soin ?",
			a = "Les rangs inférieurs soignent moins mais coûtent bien moins de mana. Quand il ne manque qu'un peu de vie, un rang inférieur économise beaucoup de mana. Tous les rangs sont dans votre grimoire et peuvent être glissés un par un sur votre barre.",
		},
		es = {
			q = "¿Para qué sirven los rangos bajos de una cura?",
			a = "Los rangos bajos curan menos pero cuestan mucho menos maná. Cuando solo falta un poco de salud, un rango bajo ahorra mucho maná. Todos los rangos están en tu libro de hechizos y puedes arrastrarlos uno a uno a tu barra.",
		},
		it = {
			q = "A che cosa servono i gradi bassi di una cura?",
			a = "I gradi bassi curano meno ma costano molto meno mana. Quando manca solo un po' di salute, un grado basso fa risparmiare molto mana. Tutti i gradi sono nel libro degli incantesimi e puoi trascinarli uno per uno sulla barra.",
		},
		ru = {
			q = "Зачем нужны низкие ранги исцеления?",
			a = "Низкие ранги лечат меньше, но стоят гораздо меньше маны. Когда не хватает лишь немного здоровья, низкий ранг сильно экономит ману. Все ранги есть в книге заклинаний, и их можно по одному перетащить на панель.",
		},
		pt = {
			q = "Para que servem as patentes baixas de uma cura?",
			a = "Patentes baixas curam menos, mas custam bem menos mana. Quando falta só um pouco de vida, uma patente baixa economiza muita mana. Todas as patentes estão no grimório e podem ser arrastadas uma a uma para a barra.",
		},
	},
	{
		id = "priest-mana-regen",
		de = {
			q = "Wie regeneriere ich als Priester mehr Mana?",
			a = "Mana regeneriert schneller, wenn du ein paar Sekunden keinen Zauber wirkst; Willenskraft verstärkt das. Lass also zwischen den Zaubern Pausen, schieß mit dem Zauberstab und trink nach den Kämpfen.",
		},
		en = {
			q = "How do I regenerate more mana as a priest?",
			a = "Mana regenerates faster when you have not cast a spell for a few seconds; spirit increases that. So leave gaps between casts, use your wand and drink after fights.",
		},
		fr = {
			q = "Comment régénérer plus de mana en prêtre ?",
			a = "Le mana se régénère plus vite quand vous n'avez lancé aucun sort depuis quelques secondes ; l'esprit l'augmente. Laissez donc des pauses entre les sorts, utilisez votre baguette et buvez après les combats.",
		},
		es = {
			q = "¿Cómo regenero más maná como sacerdote?",
			a = "El maná se regenera más rápido cuando llevas unos segundos sin lanzar hechizos; el espíritu lo aumenta. Así que deja pausas entre lanzamientos, usa tu varita y bebe tras los combates.",
		},
		it = {
			q = "Come rigenero più mana da sacerdote?",
			a = "Il mana si rigenera più in fretta quando non lanci incantesimi da qualche secondo; lo spirito lo aumenta. Quindi lascia pause tra un lancio e l'altro, usa la bacchetta e bevi dopo i combattimenti.",
		},
		ru = {
			q = "Как жрецу быстрее восстанавливать ману?",
			a = "Мана восстанавливается быстрее, если вы несколько секунд не применяли заклинаний; дух усиливает это. Поэтому делайте паузы между заклинаниями, пользуйтесь жезлом и пейте после боёв.",
		},
		pt = {
			q = "Como regenero mais mana como sacerdote?",
			a = "A mana se regenera mais rápido quando você passa alguns segundos sem lançar feitiços; espírito aumenta isso. Então deixe intervalos entre as conjurações, use a varinha e beba depois das lutas.",
		},
	},
	{
		id = "priest-buffs",
		de = {
			q = "Welche Buffs hat ein Priester?",
			a = "„Machtwort: Seelenstärke“ erhöht die Ausdauer und gehört auf jedes Gruppenmitglied. „Inneres Feuer“ verstärkt deine Rüstung und deinen Schaden. Beide halten eine Weile; erneuere sie, bevor sie auslaufen.",
		},
		en = {
			q = "Which buffs does a priest have?",
			a = "Power Word: Fortitude increases stamina and belongs on every party member. Inner Fire boosts your armour and damage. Both last a while; renew them before they run out.",
		},
		fr = {
			q = "Quelles améliorations a un prêtre ?",
			a = "Mot de pouvoir : Robustesse augmente l'endurance et doit être sur chaque membre du groupe. Feu intérieur renforce votre armure et vos dégâts. Les deux durent un moment ; renouvelez-les avant qu'ils expirent.",
		},
		es = {
			q = "¿Qué beneficios tiene un sacerdote?",
			a = "Palabra de poder: entereza aumenta el aguante y debe estar en cada miembro del grupo. Fuego interno mejora tu armadura y tu daño. Ambos duran un rato; renuévalos antes de que se acaben.",
		},
		it = {
			q = "Quali benefici ha un sacerdote?",
			a = "Parola del Potere: Fortezza aumenta la tempra e va messa su ogni membro del gruppo. Fuoco Interiore potenzia armatura e danni. Entrambi durano un po'; rinnovali prima che finiscano.",
		},
		ru = {
			q = "Какие усиления есть у жреца?",
			a = "«Слово силы: Стойкость» повышает выносливость и должно быть на каждом члене группы. «Внутренний огонь» усиливает броню и урон. Оба действуют долго; обновляйте их до того, как они закончатся.",
		},
		pt = {
			q = "Quais bônus o sacerdote tem?",
			a = "Palavra de Poder: Fortitude aumenta o vigor e deve estar em cada membro do grupo. Fogo Interior fortalece sua armadura e seu dano. Os dois duram um tempo; renove-os antes de acabarem.",
		},
	},
	{
		id = "priest-fear",
		de = {
			q = "Wie werde ich Gegner los, die mich bedrängen?",
			a = "„Psychischer Schrei“ lässt Gegner in der Nähe kurz in Furcht davonlaufen. Pass auf, dass sie nicht weitere Gegner mitbringen. „Verblassen“ senkt deine Bedrohung, sodass Gegner in der Gruppe eher zum Tank zurückgehen.",
		},
		en = {
			q = "How do I get rid of enemies on top of me?",
			a = "Psychic Scream makes nearby enemies flee in fear for a short time. Watch that they do not bring more enemies. Fade lowers your threat, so in a group enemies are more likely to go back to the tank.",
		},
		fr = {
			q = "Comment me débarrasser des ennemis sur moi ?",
			a = "Cri psychique fait fuir de peur les ennemis proches pendant un court moment. Faites attention qu'ils n'en ramènent pas d'autres. Oubli réduit votre menace, ainsi en groupe les ennemis retournent plus volontiers vers le tank.",
		},
		es = {
			q = "¿Cómo me quito de encima a los enemigos?",
			a = "Alarido psíquico hace huir de miedo a los enemigos cercanos durante un momento. Vigila que no traigan más enemigos. Desvanecerse reduce tu amenaza, así que en grupo los enemigos vuelven antes al tanque.",
		},
		it = {
			q = "Come mi libero dei nemici addosso?",
			a = "Urlo Psichico fa fuggire per la paura i nemici vicini per un breve periodo. Attento che non portino altri nemici. Evanescenza riduce la tua minaccia, così in gruppo i nemici tornano più facilmente al tank.",
		},
		ru = {
			q = "Как избавиться от врагов, которые на меня напали?",
			a = "«Ментальный крик» ненадолго заставляет ближайших врагов в страхе разбежаться. Следите, чтобы они не привели новых. «Уход в тень» снижает угрозу, и в группе враги охотнее возвращаются к танку.",
		},
		pt = {
			q = "Como me livro de inimigos em cima de mim?",
			a = "Grito Psíquico faz os inimigos próximos fugirem de medo por pouco tempo. Cuidado para eles não trazerem mais inimigos. Desvanecer reduz sua ameaça, então em grupo os inimigos voltam mais facilmente para o tanque.",
		},
	},
	{
		id = "priest-resurrect",
		de = {
			q = "Wie belebe ich andere Spieler wieder?",
			a = "Mit „Auferstehung“, die du früh beim Lehrer lernst. Sie geht nur außerhalb des Kampfes. Als Heiler in der Gruppe sparst du allen den Weg vom Friedhof.",
		},
		en = {
			q = "How do I resurrect other players?",
			a = "With Resurrection, which you learn early from your trainer. It only works out of combat. As the group's healer you save everyone the run back from the graveyard.",
		},
		fr = {
			q = "Comment ressusciter d'autres joueurs ?",
			a = "Avec Résurrection, que vous apprenez tôt auprès de votre maître. Elle ne fonctionne qu'hors combat. En tant que soigneur du groupe, vous épargnez à tout le monde la course depuis le cimetière.",
		},
		es = {
			q = "¿Cómo resucito a otros jugadores?",
			a = "Con Resurrección, que aprendes pronto de tu instructor. Solo funciona fuera de combate. Como sanador del grupo, ahorras a todos la carrera desde el cementerio.",
		},
		it = {
			q = "Come resuscito altri giocatori?",
			a = "Con Resurrezione, che impari presto dal tuo istruttore. Funziona solo fuori dal combattimento. Come guaritore del gruppo risparmi a tutti la corsa dal cimitero.",
		},
		ru = {
			q = "Как воскрешать других игроков?",
			a = "«Воскрешением», которое вы рано изучаете у наставника. Оно работает только вне боя. Как лекарь группы вы избавляете всех от пробежки с кладбища.",
		},
		pt = {
			q = "Como ressuscito outros jogadores?",
			a = "Com Ressurreição, que você aprende cedo com o seu instrutor. Só funciona fora de combate. Como curador do grupo, você poupa todos da corrida desde o cemitério.",
		},
	},
	{
		id = "priest-dispel",
		de = {
			q = "Wie entferne ich Flüche, Krankheiten und Magie?",
			a = "„Magiebannung“ entfernt schädliche Magie von Freunden und nützliche von Gegnern, „Krankheit heilen“ entfernt Krankheiten. Flüche und Gifte kann ein Priester nicht entfernen, dafür braucht es Magier, Druiden, Schamanen oder Paladine.",
		},
		en = {
			q = "How do I remove curses, diseases and magic?",
			a = "Dispel Magic removes harmful magic from friends and helpful magic from enemies; Cure Disease removes diseases. Priests cannot remove curses or poisons, that takes mages, druids, shamans or paladins.",
		},
		fr = {
			q = "Comment retirer malédictions, maladies et magie ?",
			a = "Dissipation de la magie retire la magie néfaste des alliés et la magie bénéfique des ennemis ; Guérison des maladies retire les maladies. Les prêtres ne peuvent pas retirer les malédictions ni les poisons : il faut pour cela des mages, druides, chamans ou paladins.",
		},
		es = {
			q = "¿Cómo elimino maldiciones, enfermedades y magia?",
			a = "Disipar magia elimina la magia dañina de los aliados y la magia beneficiosa de los enemigos; Curar enfermedad elimina enfermedades. Los sacerdotes no pueden quitar maldiciones ni venenos; para eso hacen falta magos, druidas, chamanes o paladines.",
		},
		it = {
			q = "Come rimuovo maledizioni, malattie e magia?",
			a = "Dissolvi Magia rimuove la magia dannosa dagli alleati e quella benefica dai nemici; Cura Malattia rimuove le malattie. I sacerdoti non possono rimuovere maledizioni né veleni: servono maghi, druidi, sciamani o paladini.",
		},
		ru = {
			q = "Как снимать проклятия, болезни и магию?",
			a = "«Рассеивание заклинаний» снимает вредную магию с союзников и полезную с врагов; «Излечение болезни» снимает болезни. Жрецы не могут снимать проклятия и яды — для этого нужны маги, друиды, шаманы или паладины.",
		},
		pt = {
			q = "Como removo maldições, doenças e magia?",
			a = "Dissipar Magia remove magia nociva de aliados e magia benéfica de inimigos; Curar Doença remove doenças. Sacerdotes não podem remover maldições nem venenos; para isso são precisos magos, druidas, xamãs ou paladinos.",
		},
	},
	{
		id = "priest-healer-dungeon",
		de = {
			q = "Wie heile ich in meinem ersten Dungeon?",
			a = "Konzentrier dich auf den Tank und heil den Rest nur, wenn nötig. Steh weit genug hinten, damit Gegner zuerst den Tank angreifen, und sag Bescheid, wenn dein Mana knapp wird. Schilde vor dem Kampf auf den Tank sind oft eine gute Idee.",
		},
		en = {
			q = "How do I heal my first dungeon?",
			a = "Focus on the tank and only heal the others when needed. Stand far enough back so enemies attack the tank first, and say when your mana is running low. A shield on the tank before the pull is often a good idea.",
		},
		fr = {
			q = "Comment soigner mon premier donjon ?",
			a = "Concentrez-vous sur le tank et ne soignez les autres qu'au besoin. Restez assez en retrait pour que les ennemis attaquent d'abord le tank, et dites quand votre mana s'épuise. Un bouclier sur le tank avant d'attirer les ennemis est souvent une bonne idée.",
		},
		es = {
			q = "¿Cómo curo mi primera mazmorra?",
			a = "Céntrate en el tanque y cura a los demás solo cuando haga falta. Quédate lo bastante atrás para que los enemigos ataquen primero al tanque, y avisa cuando te quede poco maná. Un escudo en el tanque antes del pull suele ser buena idea.",
		},
		it = {
			q = "Come curo la mia prima spedizione?",
			a = "Concentrati sul tank e cura gli altri solo quando serve. Stai abbastanza indietro perché i nemici attacchino prima il tank, e avvisa quando il mana sta finendo. Uno scudo sul tank prima del pull è spesso una buona idea.",
		},
		ru = {
			q = "Как лечить в первом подземелье?",
			a = "Сосредоточьтесь на танке, остальных лечите только при необходимости. Стойте достаточно далеко, чтобы враги сначала нападали на танка, и говорите, когда мана заканчивается. Щит на танка перед пуллом часто хорошая идея.",
		},
		pt = {
			q = "Como curo a minha primeira masmorra?",
			a = "Foque no tanque e cure os outros só quando precisar. Fique longe o bastante para que os inimigos ataquem o tanque primeiro, e avise quando a mana estiver acabando. Um escudo no tanque antes do pull costuma ser uma boa ideia.",
		},
	},
	{
		id = "priest-shadowform",
		de = {
			q = "Was ist Schattengestalt?",
			a = "Ein Talent im Schattenbaum: Du verstärkst deinen Schattenschaden und erleidest weniger Schaden, kannst in der Gestalt aber nicht heilen. Viele Priester leveln als Schatten und heilen in Gruppen per Dualspezialisierung.",
		},
		en = {
			q = "What is Shadowform?",
			a = "A talent in the Shadow tree: it increases your Shadow damage and reduces the damage you take, but you cannot heal while in it. Many priests level as Shadow and heal in groups with dual specialisation.",
		},
		fr = {
			q = "Qu'est-ce que Forme d'Ombre ?",
			a = "Un talent de l'arbre Ombre : elle augmente vos dégâts d'Ombre et réduit les dégâts subis, mais vous ne pouvez pas soigner sous cette forme. Beaucoup de prêtres montent de niveau en Ombre et soignent en groupe grâce à la double spécialisation.",
		},
		es = {
			q = "¿Qué es Forma de las Sombras?",
			a = "Un talento del árbol Sombra: aumenta tu daño de Sombras y reduce el daño que recibes, pero no puedes curar en esa forma. Muchos sacerdotes suben de nivel como Sombra y curan en grupo con la especialización doble.",
		},
		it = {
			q = "Che cos'è Forma d'Ombra?",
			a = "Un talento dell'albero Ombra: aumenta i danni d'Ombra e riduce i danni subiti, ma in questa forma non puoi curare. Molti sacerdoti salgono di livello come Ombra e curano in gruppo con la doppia specializzazione.",
		},
		ru = {
			q = "Что такое «Облик Тьмы»?",
			a = "Талант ветки «Тьма»: он повышает урон от темной магии и снижает получаемый урон, но в этом облике нельзя лечить. Многие жрецы качаются в «Тьме», а в группах лечат благодаря двойной специализации.",
		},
		pt = {
			q = "O que é Forma de Sombra?",
			a = "Um talento da árvore Sombra: aumenta seu dano de Sombra e reduz o dano que você recebe, mas você não pode curar nessa forma. Muitos sacerdotes sobem de nível como Sombra e curam em grupo com a especialização dupla.",
		},
	},
	{
		id = "priest-shackle",
		de = {
			q = "Was ist „Untote fesseln“?",
			a = "Damit hältst du einen untoten Gegner eine Weile fest, ohne dass er etwas tun kann. In Dungeons mit Untoten ist das eine wertvolle Kontrollfähigkeit. Schaden löst die Fessel.",
		},
		en = {
			q = "What is Shackle Undead?",
			a = "It holds an undead enemy in place for a while so it cannot act. In dungeons with undead it is a valuable crowd control. Damage breaks it.",
		},
		fr = {
			q = "Qu'est-ce qu'Entraves des morts-vivants ?",
			a = "Elles immobilisent un ennemi mort-vivant pendant un moment, il ne peut plus agir. Dans les donjons avec des morts-vivants, c'est un contrôle précieux. Les dégâts le rompent.",
		},
		es = {
			q = "¿Qué es Encadenar no-muerto?",
			a = "Inmoviliza a un enemigo no-muerto durante un tiempo para que no pueda actuar. En mazmorras con no-muertos es un control de masas muy valioso. El daño lo rompe.",
		},
		it = {
			q = "Che cos'è Incatena Non Morto?",
			a = "Tiene fermo un nemico non morto per un po', così non può agire. Nelle spedizioni con non morti è un controllo prezioso. I danni lo spezzano.",
		},
		ru = {
			q = "Что такое «Сковывание нежити»?",
			a = "Оно на время удерживает врага-нежить на месте, и тот не может действовать. В подземельях с нежитью это ценный контроль. Урон снимает эффект.",
		},
		pt = {
			q = "O que é Agrilhoar Morto-vivo?",
			a = "Ele prende um inimigo morto-vivo no lugar por um tempo, sem que possa agir. Em masmorras com mortos-vivos é um controle valioso. Dano quebra o efeito.",
		},
	},
	{
		id = "priest-stats",
		de = {
			q = "Welche Werte sind für Priester wichtig?",
			a = "Intelligenz für mehr Mana, Willenskraft für Regeneration, Ausdauer für Gesundheit. Als Heiler zusätzlich Heilung, als Schatten Zauberschaden. Ein guter Zauberstab ist beim Leveln wichtiger als die Nahkampfwaffe.",
		},
		en = {
			q = "Which stats matter for priests?",
			a = "Intellect for more mana, spirit for regeneration, stamina for health. As a healer also healing power, as Shadow spell damage. A good wand matters more for levelling than your melee weapon.",
		},
		fr = {
			q = "Quelles caractéristiques comptent pour les prêtres ?",
			a = "L'intelligence pour plus de mana, l'esprit pour la régénération, l'endurance pour la vie. En soigneur aussi la puissance des soins, en Ombre les dégâts des sorts. Une bonne baguette compte davantage pour monter de niveau que votre arme de mêlée.",
		},
		es = {
			q = "¿Qué atributos importan a los sacerdotes?",
			a = "Intelecto para más maná, espíritu para la regeneración, aguante para la salud. Como sanador también poder de sanación; como Sombra, daño con hechizos. Una buena varita importa más para subir de nivel que tu arma cuerpo a cuerpo.",
		},
		it = {
			q = "Quali statistiche contano per i sacerdoti?",
			a = "Intelletto per più mana, spirito per la rigenerazione, tempra per la salute. Da guaritore anche il potere di cura, da Ombra i danni degli incantesimi. Una buona bacchetta conta più dell'arma da mischia per salire di livello.",
		},
		ru = {
			q = "Какие характеристики важны жрецу?",
			a = "Интеллект для запаса маны, дух для восстановления, выносливость для здоровья. Лекарю также сила исцеления, в «Тьме» урон от заклинаний. Для прокачки хороший жезл важнее оружия ближнего боя.",
		},
		pt = {
			q = "Quais atributos importam para sacerdotes?",
			a = "Intelecto para mais mana, espírito para regeneração, vigor para vida. Como curador também poder de cura; como Sombra, dano mágico. Uma boa varinha importa mais para subir de nível que a arma corpo a corpo.",
		},
	},
	{
		id = "priest-armor",
		de = {
			q = "Welche Rüstung und Waffen nutzen Priester?",
			a = "Stoff. Als Waffen Streitkolben, Dolche und Stäbe sowie einen Zauberstab im Fernkampfplatz. Schneider können dir passende Stoffteile herstellen.",
		},
		en = {
			q = "What armour and weapons do priests use?",
			a = "Cloth. Weapons: maces, daggers and staves, plus a wand in the ranged slot. Tailors can make cloth pieces for you.",
		},
		fr = {
			q = "Quelle armure et quelles armes utilisent les prêtres ?",
			a = "Du tissu. Armes : masses, dagues et bâtons, plus une baguette dans l'emplacement à distance. Les tailleurs peuvent vous confectionner des pièces en tissu.",
		},
		es = {
			q = "¿Qué armadura y armas usan los sacerdotes?",
			a = "Tela. Armas: mazas, dagas y bastones, además de una varita en la ranura a distancia. Los sastres pueden fabricarte piezas de tela.",
		},
		it = {
			q = "Che armatura e quali armi usano i sacerdoti?",
			a = "Stoffa. Armi: mazze, pugnali e bastoni, più una bacchetta nello spazio a distanza. I sarti possono crearti pezzi di stoffa.",
		},
		ru = {
			q = "Какую броню и оружие используют жрецы?",
			a = "Тканевую броню. Оружие: булавы, кинжалы и посохи, плюс жезл в ячейке дальнего боя. Портные могут сшить вам тканевые вещи.",
		},
		pt = {
			q = "Que armadura e armas os sacerdotes usam?",
			a = "Tecido. Armas: maças, adagas e báculos, mais uma varinha no espaço de longo alcance. Alfaiates podem fazer peças de tecido para você.",
		},
	},
	{
		id = "priest-talents",
		de = {
			q = "Welche Talentbäume haben Priester?",
			a = "Disziplin verbessert Schilde, Mana und Buffs, Heilig stärkt deine Heilung, Schatten macht dich zur Schadensklasse mit Schattengestalt. Zum Leveln ist Schatten am schnellsten, für Gruppen Heilig oder Disziplin.",
		},
		en = {
			q = "Which talent trees do priests have?",
			a = "Discipline improves shields, mana and buffs, Holy strengthens your healing, Shadow turns you into a damage dealer with Shadowform. Shadow is fastest for levelling; Holy or Discipline for groups.",
		},
		fr = {
			q = "Quels arbres de talents ont les prêtres ?",
			a = "Discipline améliore boucliers, mana et améliorations, Sacré renforce vos soins, Ombre fait de vous un spécialiste des dégâts grâce à Forme d'Ombre. Ombre est le plus rapide pour monter de niveau ; Sacré ou Discipline pour les groupes.",
		},
		es = {
			q = "¿Qué árboles de talentos tienen los sacerdotes?",
			a = "Disciplina mejora escudos, maná y beneficios, Sagrado refuerza tu sanación y Sombra te convierte en infligidor de daño con Forma de las Sombras. Sombra es el más rápido para subir de nivel; Sagrado o Disciplina para grupos.",
		},
		it = {
			q = "Quali alberi di talenti hanno i sacerdoti?",
			a = "Disciplina migliora scudi, mana e benefici, Sacro potenzia le cure, Ombra ti trasforma in un assaltatore con Forma d'Ombra. Ombra è il più veloce per salire di livello; Sacro o Disciplina per i gruppi.",
		},
		ru = {
			q = "Какие ветки талантов есть у жреца?",
			a = "«Послушание» улучшает щиты, ману и усиления, «Свет» усиливает лечение, «Тьма» с «Обликом Тьмы» делает из вас бойца. «Тьма» быстрее всего для прокачки; «Свет» или «Послушание» — для групп.",
		},
		pt = {
			q = "Quais árvores de talentos os sacerdotes têm?",
			a = "Disciplina melhora escudos, mana e bônus, Sagrado fortalece suas curas, Sombra transforma você em causador de dano com a Forma de Sombra. Sombra é a mais rápida para subir de nível; Sagrado ou Disciplina para grupos.",
		},
	},
	{
		id = "priest-mind-control",
		de = {
			q = "Was kann „Gedankenkontrolle“?",
			a = "Du übernimmst kurz die Kontrolle über einen humanoiden Gegner und kannst seine Fähigkeiten nutzen. Währenddessen stehst du still und bist verwundbar. Gut, um einen Gegner aus einer Gruppe herauszuholen oder in PvP Spieler vom Weg zu lenken.",
		},
		en = {
			q = "What can Mind Control do?",
			a = "You briefly take control of a humanoid enemy and can use its abilities. Meanwhile you stand still and are vulnerable. Good for pulling an enemy out of a group, or for moving players in PvP.",
		},
		fr = {
			q = "Que permet Contrôle mental ?",
			a = "Vous prenez brièvement le contrôle d'un ennemi humanoïde et pouvez utiliser ses techniques. Pendant ce temps vous restez immobile et vulnérable. Utile pour sortir un ennemi d'un groupe, ou pour déplacer des joueurs en JcJ.",
		},
		es = {
			q = "¿Qué puede hacer Control mental?",
			a = "Tomas brevemente el control de un enemigo humanoide y puedes usar sus habilidades. Mientras tanto te quedas quieto y vulnerable. Sirve para sacar a un enemigo de un grupo o para mover jugadores en JcJ.",
		},
		it = {
			q = "Che cosa può fare Controllo Mentale?",
			a = "Prendi brevemente il controllo di un nemico umanoide e puoi usarne le abilità. Nel frattempo resti fermo e vulnerabile. Utile per tirare fuori un nemico da un gruppo o per spostare giocatori nel PvP.",
		},
		ru = {
			q = "Что умеет «Контроль над разумом»?",
			a = "Вы ненадолго берёте под контроль врага-гуманоида и можете использовать его способности. Всё это время вы стоите на месте и уязвимы. Полезно, чтобы вытащить врага из группы или переместить игроков в PvP.",
		},
		pt = {
			q = "O que Controle Mental pode fazer?",
			a = "Você assume por pouco tempo o controle de um inimigo humanoide e pode usar as habilidades dele. Enquanto isso você fica parado e vulnerável. Bom para tirar um inimigo de um grupo ou mover jogadores no JxJ.",
		},
	},
})
