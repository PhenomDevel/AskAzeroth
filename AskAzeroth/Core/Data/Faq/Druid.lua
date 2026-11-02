local _, ns = ...

-- FAQ: Druid. See Core/Faq.lua for the format.
ns.Faq.Add("druid", {
	{
		id = "druid-forms",
		de = {
			q = "Wie bekomme ich die Druidengestalten?",
			a = "Über Klassenquests: Bärengestalt etwa ab Stufe 10, Wassergestalt ab 16. Katzengestalt (ab 20) und Reisegestalt (ab 30) lernst du beim Lehrer. Die Mondkingestalt gibt es über den Gleichgewicht-Talentbaum.",
		},
		en = {
			q = "How do I get the druid forms?",
			a = "Through class quests: Bear Form from about level 10, Aquatic Form from 16. Cat Form (from 20) and Travel Form (from 30) are taught by your trainer. Moonkin Form comes from the Balance talent tree.",
		},
		fr = {
			q = "Comment obtenir les formes de druide ?",
			a = "Par des quêtes de classe : Forme d'ours vers le niveau 10, Forme aquatique à partir de 16. Forme de félin (dès 20) et Forme de voyage (dès 30) sont enseignées par votre maître. Forme de sélénien vient de l'arbre de talents Équilibre.",
		},
		es = {
			q = "¿Cómo consigo las formas de druida?",
			a = "Con misiones de clase: Forma de oso hacia el nivel 10 y Forma acuática a partir del 16. Forma felina (desde el 20) y Forma de viaje (desde el 30) te las enseña tu instructor. Forma de lechúcico lunar viene del árbol de talentos Equilibrio.",
		},
		it = {
			q = "Come ottengo le forme del druido?",
			a = "Con missioni di classe: Forma d'Orso verso il livello 10, Forma Acquatica dal 16. Forma Felina (dal 20) e Forma da Viaggio (dal 30) te le insegna l'istruttore. Forma di Lunagufo arriva dall'albero di talenti Equilibrio.",
		},
		ru = {
			q = "Как получить облики друида?",
			a = "За классовые задания: «Облик медведя» примерно с 10-го уровня, «Водный облик» с 16-го. «Облику кошки» (с 20-го) и «Походному облику» (с 30-го) учит наставник. «Облик лунного совуха» даёт ветка талантов «Баланс».",
		},
		pt = {
			q = "Como consigo as formas de druida?",
			a = "Por missões de classe: Forma de Urso por volta do nível 10, Forma Aquática a partir do 16. Forma de Felino (a partir do 20) e Forma de Viagem (a partir do 30) são ensinadas pelo instrutor. Forma de Luniscante vem da árvore de talentos Equilíbrio.",
		},
	},
	{
		id = "druid-form-use",
		de = {
			q = "Welche Gestalt nehme ich wann?",
			a = "Bär zum Tanken und wenn viel Schaden auf dich zukommt, Katze für viel Schaden und Schleichen, Reisegestalt zum schnelleren Laufen draußen, Wassergestalt zum Schwimmen. In Gestalten kannst du nicht heilen oder die meisten Zauber wirken; dafür nimmst du deine normale Gestalt an.",
		},
		en = {
			q = "Which form do I use when?",
			a = "Bear for tanking and when a lot of damage comes your way, Cat for high damage and stealth, Travel Form to run faster outdoors, Aquatic Form for swimming. In forms you cannot heal or cast most spells; switch back to caster form for that.",
		},
		fr = {
			q = "Quelle forme utiliser et quand ?",
			a = "L'ours pour tanker et quand vous subissez beaucoup de dégâts, le félin pour de gros dégâts et la discrétion, la Forme de voyage pour courir plus vite en extérieur, la Forme aquatique pour nager. En forme, vous ne pouvez ni soigner ni lancer la plupart des sorts ; repassez en forme humanoïde pour cela.",
		},
		es = {
			q = "¿Qué forma uso en cada momento?",
			a = "Oso para tanquear y cuando recibes mucho daño, felino para mucho daño y sigilo, Forma de viaje para correr más rápido al aire libre y Forma acuática para nadar. En forma no puedes curar ni lanzar la mayoría de hechizos; vuelve a tu forma normal para ello.",
		},
		it = {
			q = "Quale forma uso e quando?",
			a = "Orso per fare da tank e quando subisci molti danni, Felina per danni elevati e furtività, Forma da Viaggio per correre più veloce all'aperto, Forma Acquatica per nuotare. In forma non puoi curare né lanciare la maggior parte degli incantesimi; torna alla forma normale per farlo.",
		},
		ru = {
			q = "Какой облик когда использовать?",
			a = "Медведь — для танкования и когда по вам идёт много урона, кошка — для большого урона и скрытности, «Походный облик» — чтобы быстрее бегать на открытой местности, «Водный облик» — для плавания. В облике нельзя лечить и применять большинство заклинаний; для этого вернитесь в обычный облик.",
		},
		pt = {
			q = "Qual forma uso em cada caso?",
			a = "Urso para tanquear e quando vem muito dano, Felino para muito dano e furtividade, Forma de Viagem para correr mais rápido ao ar livre, Forma Aquática para nadar. Em forma você não pode curar nem lançar a maioria dos feitiços; volte à forma normal para isso.",
		},
	},
	{
		id = "druid-form-mana",
		de = {
			q = "Warum geht mir beim Gestaltwandeln das Mana aus?",
			a = "Jeder Wechsel in eine Gestalt kostet Mana. In Bär und Katze nutzt du Wut und Energie, dein Mana erholt sich aber nur langsam. Wechsle also nicht ständig, und heil dich am besten vor dem Kampf oder danach.",
		},
		en = {
			q = "Why do I run out of mana when shapeshifting?",
			a = "Every shift into a form costs mana. In Bear and Cat you use rage and energy, but your mana only recovers slowly. So do not switch all the time, and heal yourself before or after a fight.",
		},
		fr = {
			q = "Pourquoi suis-je à court de mana en changeant de forme ?",
			a = "Chaque passage dans une forme coûte du mana. En ours et en félin, vous utilisez rage et énergie, mais votre mana ne revient que lentement. Ne changez donc pas sans arrêt, et soignez-vous avant ou après un combat.",
		},
		es = {
			q = "¿Por qué me quedo sin maná al cambiar de forma?",
			a = "Cada cambio de forma cuesta maná. En oso y felino usas ira y energía, pero tu maná se recupera despacio. Así que no cambies constantemente y cúrate antes o después de un combate.",
		},
		it = {
			q = "Perché resto senza mana cambiando forma?",
			a = "Ogni cambio di forma costa mana. In Orso e Felina usi ira ed energia, ma il mana si recupera lentamente. Quindi non cambiare di continuo e curati prima o dopo un combattimento.",
		},
		ru = {
			q = "Почему при смене облика заканчивается мана?",
			a = "Каждый переход в облик стоит маны. В медведе и кошке вы используете ярость и энергию, но мана восстанавливается медленно. Поэтому не переключайтесь постоянно и лечитесь до или после боя.",
		},
		pt = {
			q = "Por que fico sem mana ao mudar de forma?",
			a = "Cada mudança de forma custa mana. Em Urso e Felino você usa raiva e energia, mas a mana só se recupera devagar. Então não troque o tempo todo e cure-se antes ou depois de uma luta.",
		},
	},
	{
		id = "druid-shift-snare",
		de = {
			q = "Kann ich mich mit Gestaltwandeln befreien?",
			a = "Ja: Ein Wechsel der Gestalt entfernt Verlangsamungen und Verwandlungen. Wirst du festgehalten, wechsle in die Katze oder Reisegestalt und lauf weg.",
		},
		en = {
			q = "Can I break free by shapeshifting?",
			a = "Yes: shifting forms removes slows and polymorph effects. If you are snared, shift into Cat or Travel Form and run.",
		},
		fr = {
			q = "Puis-je me libérer en changeant de forme ?",
			a = "Oui : changer de forme retire les ralentissements et les effets de métamorphose. Si vous êtes ralenti, passez en félin ou en Forme de voyage et fuyez.",
		},
		es = {
			q = "¿Puedo liberarme cambiando de forma?",
			a = "Sí: cambiar de forma elimina ralentizaciones y efectos de polimorfia. Si estás ralentizado, cambia a felino o a Forma de viaje y huye.",
		},
		it = {
			q = "Posso liberarmi cambiando forma?",
			a = "Sì: cambiare forma rimuove rallentamenti ed effetti di metamorfosi. Se sei rallentato, passa a Felina o a Forma da Viaggio e scappa.",
		},
		ru = {
			q = "Можно ли освободиться сменой облика?",
			a = "Да: смена облика снимает замедления и эффекты превращения. Если вас замедлили, перейдите в облик кошки или «Походный облик» и убегайте.",
		},
		pt = {
			q = "Posso me libertar mudando de forma?",
			a = "Sim: mudar de forma remove lentidão e efeitos de polimorfia. Se estiver lento, mude para Felino ou Forma de Viagem e corra.",
		},
	},
	{
		id = "druid-leveling",
		de = {
			q = "Wie kämpfe ich als Druide beim Leveln?",
			a = "Früh mit „Zorn“ und „Mondfeuer“ aus der Ferne, später meist in Bär- oder Katzengestalt im Nahkampf. Eröffne mit einem Zauber, wechsle dann die Gestalt. Nach dem Kampf heilst du dich in Normalgestalt mit „Verjüngung“ oder „Heilende Berührung“.",
		},
		en = {
			q = "How do I fight as a druid while levelling?",
			a = "Early on with Wrath and Moonfire from range, later mostly in Bear or Cat Form in melee. Open with a spell, then shift. After the fight, heal yourself in caster form with Rejuvenation or Healing Touch.",
		},
		fr = {
			q = "Comment combattre en druide pendant la montée de niveau ?",
			a = "Au début avec Colère et Éclat lunaire à distance, plus tard surtout en Forme d'ours ou de félin au corps à corps. Ouvrez avec un sort, puis changez de forme. Après le combat, soignez-vous en forme humanoïde avec Récupération ou Toucher guérisseur.",
		},
		es = {
			q = "¿Cómo lucho como druida mientras subo de nivel?",
			a = "Al principio con Cólera y Fuego lunar a distancia; más adelante, sobre todo en Forma de oso o felina cuerpo a cuerpo. Abre con un hechizo y luego cambia de forma. Tras el combate, cúrate en tu forma normal con Rejuvenecimiento o Toque de sanación.",
		},
		it = {
			q = "Come combatto da druido mentre salgo di livello?",
			a = "All'inizio con Ira e Fuoco Lunare a distanza, più avanti soprattutto in Forma d'Orso o Felina in mischia. Apri con un incantesimo, poi cambia forma. Dopo il combattimento curati in forma normale con Ringiovanimento o Tocco Curativo.",
		},
		ru = {
			q = "Как друиду сражаться при прокачке?",
			a = "Поначалу «Гневом» и «Лунным огнём» издалека, позже в основном в облике медведя или кошки в ближнем бою. Начните с заклинания, затем смените облик. После боя лечитесь в обычном облике «Омоложением» или «Целительным прикосновением».",
		},
		pt = {
			q = "Como luto como druida enquanto subo de nível?",
			a = "No começo com Ira e Fogo Lunar à distância; depois, principalmente em Forma de Urso ou de Felino, corpo a corpo. Abra com um feitiço e depois mude de forma. Após a luta, cure-se na forma normal com Rejuvenescer ou Toque de Cura.",
		},
	},
	{
		id = "druid-cat",
		de = {
			q = "Wie spiele ich die Katzengestalt?",
			a = "In der Katze nutzt du Energie und Combopunkte wie ein Schurke. „Schleichen“ macht dich unsichtbar, „Krallenhieb“ und „Klaue“ bauen Punkte auf, „Wilder Biss“ und „Zerfetzen“ verbrauchen sie. Eröffne aus dem Schleichen von hinten.",
		},
		en = {
			q = "How do I play Cat Form?",
			a = "In Cat Form you use energy and combo points like a rogue. Prowl makes you stealthed, Rake and Claw build points, Ferocious Bite and Rip spend them. Open from Prowl from behind.",
		},
		fr = {
			q = "Comment jouer en Forme de félin ?",
			a = "En Forme de félin, vous utilisez l'énergie et les points de combo comme un voleur. Rôder vous rend discret, Griffure et Griffe accumulent des points, Morsure féroce et Déchirure les dépensent. Ouvrez depuis Rôder, par-derrière.",
		},
		es = {
			q = "¿Cómo juego en Forma felina?",
			a = "En Forma felina usas energía y puntos de combo como un pícaro. Acechar te pone en sigilo, Arañazo y Garra acumulan puntos, y Mordedura feroz y Destripar los gastan. Abre desde Acechar por la espalda.",
		},
		it = {
			q = "Come si gioca in Forma Felina?",
			a = "In Forma Felina usi energia e punti combo come un ladro. Acquattarsi ti rende furtivo, Squarcio e Artiglio accumulano punti, Morso Feroce e Squartamento li consumano. Apri da Acquattarsi, da dietro.",
		},
		ru = {
			q = "Как играть в облике кошки?",
			a = "В облике кошки вы используете энергию и приёмы серии, как разбойник. «Крадущийся зверь» делает вас незаметным, «Глубокая рана» и «Когти» набирают очки, «Свирепый укус» и «Разорвать» их тратят. Начинайте из «Крадущегося зверя» со спины.",
		},
		pt = {
			q = "Como jogo em Forma de Felino?",
			a = "Em Forma de Felino você usa energia e pontos de combo como um ladino. Espreitar deixa você furtivo, Rasgar e Garra acumulam pontos, Mordida Feroz e Rasgo os gastam. Abra a partir de Espreitar, pelas costas.",
		},
	},
	{
		id = "druid-bear",
		de = {
			q = "Wie tanke ich in Bärengestalt?",
			a = "Die Bärengestalt gibt viel Rüstung und Gesundheit und nutzt Wut. „Zermalmen“ macht viel Bedrohung, „Prankenhieb“ trifft mehrere Gegner, „Knurren“ zieht einen Gegner zu dir, „Demoralisierendes Gebrüll“ senkt ihren Schaden.",
		},
		en = {
			q = "How do I tank in Bear Form?",
			a = "Bear Form gives a lot of armour and health and uses rage. Maul creates a lot of threat, Swipe hits several enemies, Growl pulls an enemy to you, Demoralizing Roar lowers their damage.",
		},
		fr = {
			q = "Comment tanker en Forme d'ours ?",
			a = "La Forme d'ours donne beaucoup d'armure et de vie et utilise la rage. Mutiler génère beaucoup de menace, Balayage touche plusieurs ennemis, Grondement attire un ennemi vers vous, Rugissement démoralisant réduit leurs dégâts.",
		},
		es = {
			q = "¿Cómo tanqueo en Forma de oso?",
			a = "La Forma de oso da mucha armadura y salud y usa ira. Magullar genera mucha amenaza, Flagelo golpea a varios enemigos, Gruñido atrae a un enemigo hacia ti y Rugido desmoralizador reduce su daño.",
		},
		it = {
			q = "Come faccio da tank in Forma d'Orso?",
			a = "La Forma d'Orso dà molta armatura e salute e usa l'ira. Sbranamento genera molta minaccia, Spazzata colpisce più nemici, Ringhio attira un nemico su di te, Ruggito Demoralizzante riduce i loro danni.",
		},
		ru = {
			q = "Как танковать в облике медведя?",
			a = "«Облик медведя» даёт много брони и здоровья и использует ярость. «Трепка» создаёт много угрозы, «Размах» бьёт нескольких врагов, «Рык» притягивает врага к вам, «Устрашающий рёв» снижает их урон.",
		},
		pt = {
			q = "Como tanqueio em Forma de Urso?",
			a = "A Forma de Urso dá muita armadura e vida e usa raiva. Malhar gera muita ameaça, Golpe Amplo atinge vários inimigos, Rosnar puxa um inimigo para você e Rugido Desmoralizante reduz o dano deles.",
		},
	},
	{
		id = "druid-heals",
		de = {
			q = "Wie heile ich als Druide?",
			a = "„Verjüngung“ heilt über Zeit, „Nachwachsen“ heilt sofort etwas und dann über Zeit, „Heilende Berührung“ heilt viel, braucht aber lange. Leg Verjüngung früh auf den Tank und nutz Heilende Berührung, wenn viel fehlt.",
		},
		en = {
			q = "How do I heal as a druid?",
			a = "Rejuvenation heals over time, Regrowth heals a bit instantly and then over time, Healing Touch heals a lot but takes long. Put Rejuvenation on the tank early and use Healing Touch when a lot of health is missing.",
		},
		fr = {
			q = "Comment soigner en tant que druide ?",
			a = "Récupération soigne sur la durée, Rétablissement soigne un peu instantanément puis sur la durée, Toucher guérisseur soigne beaucoup mais prend du temps. Placez Récupération tôt sur le tank et utilisez Toucher guérisseur quand il manque beaucoup de vie.",
		},
		es = {
			q = "¿Cómo curo como druida?",
			a = "Rejuvenecimiento cura con el tiempo, Recrecimiento cura un poco al instante y luego con el tiempo, y Toque de sanación cura mucho pero tarda. Pon Rejuvenecimiento al tanque pronto y usa Toque de sanación cuando falte mucha salud.",
		},
		it = {
			q = "Come curo da druido?",
			a = "Ringiovanimento cura nel tempo, Ricrescita cura un po' all'istante e poi nel tempo, Tocco Curativo cura molto ma richiede tempo. Metti presto Ringiovanimento sul tank e usa Tocco Curativo quando manca molta salute.",
		},
		ru = {
			q = "Как друиду лечить?",
			a = "«Омоложение» лечит со временем, «Восстановление» немного лечит сразу, а потом со временем, «Целительное прикосновение» лечит много, но долго. Заранее накладывайте «Омоложение» на танка и используйте «Целительное прикосновение», когда не хватает много здоровья.",
		},
		pt = {
			q = "Como curo como druida?",
			a = "Rejuvenescer cura ao longo do tempo, Recrescimento cura um pouco na hora e depois ao longo do tempo, Toque de Cura cura muito, mas demora. Coloque Rejuvenescer no tanque cedo e use Toque de Cura quando faltar muita vida.",
		},
	},
	{
		id = "druid-buffs",
		de = {
			q = "Welche Buffs hat ein Druide?",
			a = "„Mal der Wildnis“ erhöht alle Werte und Widerstände, leg es auf jedes Gruppenmitglied. „Dornen“ fügt Angreifern Schaden zu, ideal auf dem Tank. Beide halten eine ganze Weile.",
		},
		en = {
			q = "Which buffs does a druid have?",
			a = "Mark of the Wild increases all stats and resistances; put it on every party member. Thorns damages attackers, ideal on the tank. Both last quite a while.",
		},
		fr = {
			q = "Quelles améliorations a un druide ?",
			a = "Marque du fauve augmente toutes les caractéristiques et résistances ; placez-la sur chaque membre du groupe. Épines inflige des dégâts aux attaquants, idéal sur le tank. Les deux durent assez longtemps.",
		},
		es = {
			q = "¿Qué beneficios tiene un druida?",
			a = "Marca de lo Salvaje aumenta todos los atributos y resistencias; pónsela a cada miembro del grupo. Espinas daña a los atacantes, ideal en el tanque. Ambos duran bastante.",
		},
		it = {
			q = "Quali benefici ha un druido?",
			a = "Marchio Selvaggio aumenta tutte le statistiche e le resistenze; mettilo su ogni membro del gruppo. Spine danneggia chi attacca, ideale sul tank. Entrambi durano parecchio.",
		},
		ru = {
			q = "Какие усиления есть у друида?",
			a = "«Знак дикой природы» повышает все характеристики и сопротивления; накладывайте его на каждого члена группы. «Шипы» наносят урон атакующим, идеально на танке. Оба действуют довольно долго.",
		},
		pt = {
			q = "Quais bônus o druida tem?",
			a = "Marca do Selvagem aumenta todos os atributos e resistências; coloque-a em cada membro do grupo. Espinhos causa dano a quem ataca, ideal no tanque. Os dois duram bastante.",
		},
	},
	{
		id = "druid-roots",
		de = {
			q = "Wie halte ich Gegner auf Abstand?",
			a = "„Wucherwurzeln“ halten einen Gegner draußen eine Weile fest. Er kann dabei noch zaubern oder zuschlagen, wenn du nah stehst, also geh auf Abstand. In Innenräumen wirkt der Zauber nicht.",
		},
		en = {
			q = "How do I keep enemies at a distance?",
			a = "Entangling Roots hold an enemy in place outdoors for a while. It can still cast or hit you if you stand close, so keep your distance. The spell does not work indoors.",
		},
		fr = {
			q = "Comment garder les ennemis à distance ?",
			a = "Sarments immobilisent un ennemi en extérieur pendant un moment. Il peut encore lancer des sorts ou vous frapper si vous êtes près, alors gardez vos distances. Le sort ne fonctionne pas en intérieur.",
		},
		es = {
			q = "¿Cómo mantengo a los enemigos a distancia?",
			a = "Raíces enredadoras inmovilizan a un enemigo al aire libre durante un tiempo. Aún puede lanzar hechizos o golpearte si estás cerca, así que mantén la distancia. El hechizo no funciona en interiores.",
		},
		it = {
			q = "Come tengo i nemici a distanza?",
			a = "Radici Avvolgenti bloccano un nemico all'aperto per un po'. Può ancora lanciare incantesimi o colpirti se sei vicino, quindi mantieni la distanza. L'incantesimo non funziona al chiuso.",
		},
		ru = {
			q = "Как держать врагов на расстоянии?",
			a = "«Гнев деревьев» на время обездвиживает врага на открытой местности. Он всё ещё может колдовать или бить вас, если вы рядом, поэтому держите дистанцию. В помещениях заклинание не работает.",
		},
		pt = {
			q = "Como mantenho inimigos à distância?",
			a = "Raízes Constritoras prendem um inimigo no lugar ao ar livre por um tempo. Ele ainda pode lançar feitiços ou bater em você se estiver perto, então mantenha distância. O feitiço não funciona em ambientes fechados.",
		},
	},
	{
		id = "druid-rebirth",
		de = {
			q = "Kann ich im Kampf wiederbeleben?",
			a = "Ja, mit „Wiedergeburt“: Sie belebt ein totes Gruppenmitglied auch mitten im Kampf wieder. Sie braucht ein Reagenz vom Händler und hat eine lange Abklingzeit, also setz sie gezielt ein, am besten auf Heiler oder Tank.",
		},
		en = {
			q = "Can I resurrect during combat?",
			a = "Yes, with Rebirth: it brings a dead party member back even mid-fight. It needs a reagent from a vendor and has a long cooldown, so use it on purpose, ideally on the healer or tank.",
		},
		fr = {
			q = "Puis-je ressusciter pendant un combat ?",
			a = "Oui, avec Renaissance : elle ramène un membre du groupe mort même en plein combat. Elle nécessite un composant vendu par un marchand et a un long temps de recharge, utilisez-la donc à bon escient, idéalement sur le soigneur ou le tank.",
		},
		es = {
			q = "¿Puedo resucitar durante un combate?",
			a = "Sí, con Renacer: devuelve a la vida a un miembro del grupo muerto incluso en pleno combate. Necesita un componente de un vendedor y tiene un tiempo de reutilización largo, así que úsalo con intención, idealmente en el sanador o el tanque.",
		},
		it = {
			q = "Posso resuscitare durante un combattimento?",
			a = "Sì, con Rinascita: riporta in vita un membro del gruppo morto anche nel mezzo di un combattimento. Richiede un reagente da un venditore e ha un lungo tempo di recupero, quindi usala con criterio, idealmente sul guaritore o sul tank.",
		},
		ru = {
			q = "Можно ли воскрешать во время боя?",
			a = "Да, «Возрождением»: оно возвращает погибшего члена группы даже посреди боя. Нужен реагент от торговца, а время восстановления долгое, поэтому используйте его осознанно, лучше всего на лекаря или танка.",
		},
		pt = {
			q = "Posso ressuscitar durante o combate?",
			a = "Sim, com Renascimento: traz de volta um membro do grupo morto até no meio da luta. Precisa de um reagente de um mercador e tem um tempo de recarga longo, então use com propósito, de preferência no curador ou no tanque.",
		},
	},
	{
		id = "druid-innervate",
		de = {
			q = "Was macht „Anregen“?",
			a = "Es lässt das Mana eines Ziels eine Weile sehr schnell regenerieren. Gib es einem Heiler, dem das Mana ausgeht, oder dir selbst. Lange Abklingzeit, also gut überlegen.",
		},
		en = {
			q = "What does Innervate do?",
			a = "It makes a target's mana regenerate very quickly for a while. Give it to a healer running out of mana, or to yourself. It has a long cooldown, so use it wisely.",
		},
		fr = {
			q = "Que fait Innervation ?",
			a = "Elle fait régénérer très vite le mana d'une cible pendant un moment. Donnez-la à un soigneur à court de mana, ou à vous-même. Elle a un long temps de recharge, utilisez-la judicieusement.",
		},
		es = {
			q = "¿Qué hace Estimular?",
			a = "Hace que el maná de un objetivo se regenere muy rápido durante un tiempo. Dáselo a un sanador que se esté quedando sin maná, o a ti mismo. Tiene un tiempo de reutilización largo, así que úsalo con cabeza.",
		},
		it = {
			q = "Che cosa fa Innervazione?",
			a = "Fa rigenerare molto in fretta il mana di un bersaglio per un po'. Dalla a un guaritore che sta finendo il mana, o a te stesso. Ha un lungo tempo di recupero, quindi usala con giudizio.",
		},
		ru = {
			q = "Что делает «Озарение»?",
			a = "Оно на время очень быстро восполняет ману цели. Используйте его на лекаря, у которого заканчивается мана, или на себя. Время восстановления долгое, так что применяйте с умом.",
		},
		pt = {
			q = "O que Inervar faz?",
			a = "Faz a mana de um alvo se regenerar muito rápido por um tempo. Dê a um curador que está ficando sem mana, ou a você mesmo. Tem um tempo de recarga longo, então use com sabedoria.",
		},
	},
	{
		id = "druid-cleanse",
		de = {
			q = "Was kann ein Druide entfernen?",
			a = "Flüche mit „Fluch aufheben“ und Gifte mit „Vergiftung heilen“. Krankheiten und Magie nicht. Achte in Dungeons auf die Symbole am Gruppenfenster.",
		},
		en = {
			q = "What can a druid remove?",
			a = "Curses with Remove Curse and poisons with Cure Poison. Not diseases or magic. In dungeons, watch the icons on the party frames.",
		},
		fr = {
			q = "Que peut retirer un druide ?",
			a = "Les malédictions avec Délivrance de la malédiction et les poisons avec Guérison du poison. Pas les maladies ni la magie. En donjon, surveillez les icônes sur les cadres du groupe.",
		},
		es = {
			q = "¿Qué puede eliminar un druida?",
			a = "Maldiciones con Eliminar maldición y venenos con Curar veneno. No enfermedades ni magia. En mazmorras, vigila los iconos de los marcos del grupo.",
		},
		it = {
			q = "Che cosa può rimuovere un druido?",
			a = "Le maledizioni con Rimuovi Maledizione e i veleni con Cura Veleno. Non malattie né magia. Nelle spedizioni osserva le icone sui riquadri del gruppo.",
		},
		ru = {
			q = "Что может снимать друид?",
			a = "Проклятия — «Снятием проклятия», яды — «Излечением отравления». Болезни и магию — нет. В подземельях следите за значками на рамках группы.",
		},
		pt = {
			q = "O que um druida pode remover?",
			a = "Maldições com Remover Maldição e venenos com Curar Veneno. Doenças e magia, não. Em masmorras, fique de olho nos ícones dos quadros do grupo.",
		},
	},
	{
		id = "druid-moonglade",
		de = {
			q = "Was ist „Teleportieren: Mondlichtung“?",
			a = "Druiden können sich zur Mondlichtung teleportieren, wo Druidenlehrer und Quests warten. Von dort fliegst du mit dem Flugmeister weiter. Praktisch, um schnell zum Lehrer zu kommen.",
		},
		en = {
			q = "What is Teleport: Moonglade?",
			a = "Druids can teleport to Moonglade, where druid trainers and quests are. From there you fly on with the flight master. Handy for reaching a trainer quickly.",
		},
		fr = {
			q = "Qu'est-ce que Téléportation : Reflet-de-Lune ?",
			a = "Les druides peuvent se téléporter à Reflet-de-Lune, où se trouvent des maîtres et des quêtes de druide. De là, vous repartez avec le maître de vol. Pratique pour rejoindre vite un maître.",
		},
		es = {
			q = "¿Qué es Teletransporte: Claro de la Luna?",
			a = "Los druidas pueden teletransportarse al Claro de la Luna, donde hay instructores y misiones de druida. Desde allí sigues volando con el maestro de vuelo. Útil para llegar rápido a un instructor.",
		},
		it = {
			q = "Che cos'è Teletrasporto: Radaluna?",
			a = "I druidi possono teletrasportarsi a Radaluna, dove ci sono istruttori e missioni dei druidi. Da lì prosegui in volo con il maestro di volo. Comodo per raggiungere in fretta un istruttore.",
		},
		ru = {
			q = "Что такое «Телепортация: Лунная поляна»?",
			a = "Друиды могут телепортироваться на Лунную поляну, где есть наставники и задания друидов. Оттуда вы летите дальше с распорядителем полётов. Удобно, чтобы быстро добраться до наставника.",
		},
		pt = {
			q = "O que é Teleporte: Clareira da Lua?",
			a = "Druidas podem se teletransportar para a Clareira da Lua, onde ficam instrutores e missões de druida. De lá você segue voando com o mestre de voo. Prático para chegar rápido a um instrutor.",
		},
	},
	{
		id = "druid-hibernate",
		de = {
			q = "Was kann „Winterschlaf“?",
			a = "Damit schickst du ein Wildtier oder einen Drachkin eine Weile schlafen. Schaden weckt ihn auf. In Dungeons mit solchen Gegnern ist das deine Kontrollaufgabe.",
		},
		en = {
			q = "What can Hibernate do?",
			a = "It puts a beast or dragonkin to sleep for a while. Damage wakes it up. In dungeons with such enemies, this is your crowd-control job.",
		},
		fr = {
			q = "Que permet Hibernation ?",
			a = "Elle endort une bête ou un draconien pendant un moment. Les dégâts la réveillent. Dans les donjons avec de tels ennemis, c'est votre tâche de contrôle.",
		},
		es = {
			q = "¿Qué puede hacer Hibernar?",
			a = "Duerme a una bestia o a un dragonante durante un tiempo. El daño la despierta. En mazmorras con este tipo de enemigos, es tu tarea de control.",
		},
		it = {
			q = "Che cosa può fare Ibernazione?",
			a = "Addormenta una bestia o un dragonide per un po'. I danni la risvegliano. Nelle spedizioni con nemici simili è il tuo compito di controllo.",
		},
		ru = {
			q = "Что умеет «Спячка»?",
			a = "Она на время усыпляет зверя или драконида. Урон его будит. В подземельях с такими врагами это ваша задача по контролю.",
		},
		pt = {
			q = "O que Hibernar pode fazer?",
			a = "Faz uma fera ou dracônico dormir por um tempo. Dano o acorda. Em masmorras com esses inimigos, essa é a sua tarefa de controle.",
		},
	},
	{
		id = "druid-stats",
		de = {
			q = "Welche Werte sind für Druiden wichtig?",
			a = "Das hängt von der Rolle ab: Katze Beweglichkeit und Stärke, Bär Ausdauer, Rüstung und Beweglichkeit, Heiler und Mondkin Intelligenz, Willenskraft und Heilung oder Zauberschaden. In Gestalten zählt die Waffe kaum, Werte schon.",
		},
		en = {
			q = "Which stats matter for druids?",
			a = "It depends on the role: Cat agility and strength, Bear stamina, armour and agility, healer and Moonkin intellect, spirit and healing or spell damage. In forms your weapon barely matters, its stats do.",
		},
		fr = {
			q = "Quelles caractéristiques comptent pour les druides ?",
			a = "Cela dépend du rôle : en félin, agilité et force ; en ours, endurance, armure et agilité ; en soigneur et en sélénien, intelligence, esprit et soins ou dégâts des sorts. En forme, votre arme compte à peine, ses caractéristiques si.",
		},
		es = {
			q = "¿Qué atributos importan a los druidas?",
			a = "Depende del rol: felino, agilidad y fuerza; oso, aguante, armadura y agilidad; sanador y lechúcico lunar, intelecto, espíritu y sanación o daño con hechizos. En forma tu arma apenas importa, pero sus atributos sí.",
		},
		it = {
			q = "Quali statistiche contano per i druidi?",
			a = "Dipende dal ruolo: Felina agilità e forza, Orso tempra, armatura e agilità, guaritore e Lunagufo intelletto, spirito e cure o danni degli incantesimi. In forma l'arma conta poco, le sue statistiche sì.",
		},
		ru = {
			q = "Какие характеристики важны друиду?",
			a = "Зависит от роли: кошке ловкость и сила, медведю выносливость, броня и ловкость, лекарю и совуху интеллект, дух и сила исцеления или урон от заклинаний. В облике само оружие почти не важно, а его характеристики — важны.",
		},
		pt = {
			q = "Quais atributos importam para druidas?",
			a = "Depende do papel: Felino, agilidade e força; Urso, vigor, armadura e agilidade; curador e Luniscante, intelecto, espírito e cura ou dano mágico. Em forma a arma quase não importa, mas os atributos dela sim.",
		},
	},
	{
		id = "druid-gear",
		de = {
			q = "Welche Rüstung und Waffen nutzen Druiden?",
			a = "Leder und Stoff. Als Waffen Stäbe, Streitkolben, Dolche und Faustwaffen. Ein Schild ist nicht möglich, dafür kannst du einen Nebenhand-Gegenstand für Zauberwerte tragen.",
		},
		en = {
			q = "What armour and weapons do druids use?",
			a = "Leather and cloth. Weapons: staves, maces, daggers and fist weapons. Shields are not possible, but you can hold an off-hand item for spell stats.",
		},
		fr = {
			q = "Quelle armure et quelles armes utilisent les druides ?",
			a = "Du cuir et du tissu. Armes : bâtons, masses, dagues et armes de pugilat. Les boucliers ne sont pas possibles, mais vous pouvez tenir un objet en main gauche pour les caractéristiques de sorts.",
		},
		es = {
			q = "¿Qué armadura y armas usan los druidas?",
			a = "Cuero y tela. Armas: bastones, mazas, dagas y armas de puño. No pueden usar escudos, pero sí llevar un objeto de mano secundaria con atributos de hechizos.",
		},
		it = {
			q = "Che armatura e quali armi usano i druidi?",
			a = "Cuoio e stoffa. Armi: bastoni, mazze, pugnali e armi da pugno. Gli scudi non sono possibili, ma puoi tenere un oggetto nella mano secondaria per le statistiche degli incantesimi.",
		},
		ru = {
			q = "Какую броню и оружие используют друиды?",
			a = "Кожаную и тканевую броню. Оружие: посохи, булавы, кинжалы и кистевое оружие. Щиты недоступны, но можно держать предмет в левой руке ради характеристик для заклинаний.",
		},
		pt = {
			q = "Que armadura e armas os druidas usam?",
			a = "Couro e tecido. Armas: báculos, maças, adagas e armas de punho. Escudos não são possíveis, mas você pode segurar um item de mão secundária pelos atributos mágicos.",
		},
	},
	{
		id = "druid-talents",
		de = {
			q = "Welche Talentbäume haben Druiden?",
			a = "Gleichgewicht stärkt deine Zauber und bringt die Mondkingestalt, Wilder Kampf verbessert Bär und Katze und ist beim Leveln sehr beliebt, Wiederherstellung stärkt deine Heilung. Mit der Dualspezialisierung ab Stufe 40 kannst du zum Beispiel Wilder Kampf und Wiederherstellung kombinieren.",
		},
		en = {
			q = "Which talent trees do druids have?",
			a = "Balance strengthens your spells and brings Moonkin Form, Feral Combat improves Bear and Cat and is very popular for levelling, Restoration strengthens your healing. With dual specialisation from level 40 you can, for example, combine Feral and Restoration.",
		},
		fr = {
			q = "Quels arbres de talents ont les druides ?",
			a = "Équilibre renforce vos sorts et apporte la Forme de sélénien, Combat farouche améliore l'ours et le félin et est très apprécié pour monter de niveau, Restauration renforce vos soins. Avec la double spécialisation dès le niveau 40, vous pouvez par exemple combiner Combat farouche et Restauration.",
		},
		es = {
			q = "¿Qué árboles de talentos tienen los druidas?",
			a = "Equilibrio refuerza tus hechizos y aporta la Forma de lechúcico lunar, Combate feral mejora oso y felino y es muy popular para subir de nivel, y Restauración refuerza tu sanación. Con la especialización doble desde el nivel 40 puedes, por ejemplo, combinar Feral y Restauración.",
		},
		it = {
			q = "Quali alberi di talenti hanno i druidi?",
			a = "Equilibrio potenzia gli incantesimi e porta la Forma di Lunagufo, Combattimento Ferino migliora Orso e Felina ed è molto popolare per salire di livello, Rigenerazione potenzia le cure. Con la doppia specializzazione dal livello 40 puoi, per esempio, combinare Ferino e Rigenerazione.",
		},
		ru = {
			q = "Какие ветки талантов есть у друида?",
			a = "«Баланс» усиливает заклинания и даёт «Облик лунного совуха», «Сила зверя» улучшает медведя и кошку и очень популярна для прокачки, «Исцеление» усиливает лечение. С двойной специализацией с 40-го уровня можно, например, совмещать «Силу зверя» и «Исцеление».",
		},
		pt = {
			q = "Quais árvores de talentos os druidas têm?",
			a = "Equilíbrio fortalece seus feitiços e traz a Forma de Luniscante, Combate Feral melhora Urso e Felino e é muito popular para subir de nível, Restauração fortalece suas curas. Com a especialização dupla a partir do nível 40 você pode, por exemplo, combinar Feral e Restauração.",
		},
	},
})
