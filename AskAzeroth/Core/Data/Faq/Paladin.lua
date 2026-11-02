local _, ns = ...

-- FAQ: Paladin. See Core/Faq.lua for the format.
ns.Faq.Add("paladin", {
	{
		id = "paladin-seals",
		de = {
			q = "Wie funktionieren Siegel?",
			a = "Ein Siegel liegt eine Weile auf dir und verstärkt deine Nahkampfschläge, zum Beispiel „Siegel der Rechtschaffenheit“ mit zusätzlichem Heiligschaden. Es ist immer nur ein Siegel aktiv. Halte eines aufrecht, solange du kämpfst.",
		},
		en = {
			q = "How do seals work?",
			a = "A seal stays on you for a while and empowers your melee attacks, for example Seal of Righteousness with extra Holy damage. Only one seal is active at a time. Keep one up whenever you fight.",
		},
		fr = {
			q = "Comment fonctionnent les sceaux ?",
			a = "Un sceau reste sur vous un moment et renforce vos attaques de mêlée, par exemple Sceau de piété avec des dégâts du Sacré supplémentaires. Un seul sceau est actif à la fois. Gardez-en un actif dès que vous combattez.",
		},
		es = {
			q = "¿Cómo funcionan los sellos?",
			a = "Un sello permanece sobre ti un tiempo y potencia tus ataques cuerpo a cuerpo, por ejemplo Sello de rectitud con daño Sagrado adicional. Solo hay un sello activo a la vez. Mantén uno activo siempre que luches.",
		},
		it = {
			q = "Come funzionano i sigilli?",
			a = "Un sigillo resta su di te per un po' e potenzia i tuoi attacchi in mischia, per esempio Sigillo della Rettitudine con danni Sacri aggiuntivi. È attivo un solo sigillo alla volta. Tienine sempre uno attivo quando combatti.",
		},
		ru = {
			q = "Как работают печати?",
			a = "Печать действует на вас некоторое время и усиливает атаки ближнего боя, например «Печать праведности» добавляет урон от светлой магии. Одновременно активна только одна печать. Держите её активной всегда, когда сражаетесь.",
		},
		pt = {
			q = "Como funcionam os selos?",
			a = "Um selo fica em você por um tempo e fortalece seus ataques corpo a corpo, por exemplo Selo da Retidão com dano Sagrado extra. Só um selo fica ativo por vez. Mantenha um ativo sempre que lutar.",
		},
	},
	{
		id = "paladin-judgement",
		de = {
			q = "Was macht „Richturteil“?",
			a = "„Richturteil“ entlädt die Kraft deines aktiven Siegels auf den Gegner: Es macht Schaden oder legt einen Effekt auf ihn. In WoW: Forever bleibt dein Siegel dabei aktiv, du musst es also nicht jedes Mal neu setzen. Nutz Richturteil, sobald es wieder bereit ist.",
		},
		en = {
			q = "What does Judgement do?",
			a = "Judgement unleashes the power of your active seal on the enemy: it deals damage or puts an effect on it. In WoW: Forever your seal stays active, so you do not have to re-apply it every time. Use Judgement whenever it is ready again.",
		},
		fr = {
			q = "Que fait Jugement ?",
			a = "Jugement libère la puissance de votre sceau actif sur l'ennemi : il inflige des dégâts ou lui applique un effet. Dans WoW: Forever, votre sceau reste actif, vous n'avez donc pas à le réappliquer à chaque fois. Utilisez Jugement dès qu'il est de nouveau prêt.",
		},
		es = {
			q = "¿Qué hace Sentencia?",
			a = "Sentencia descarga el poder de tu sello activo sobre el enemigo: hace daño o le aplica un efecto. En WoW: Forever tu sello sigue activo, así que no tienes que volver a ponerlo cada vez. Usa Sentencia en cuanto vuelva a estar lista.",
		},
		it = {
			q = "Che cosa fa Giudizio?",
			a = "Giudizio scatena il potere del sigillo attivo sul nemico: infligge danni o gli applica un effetto. In WoW: Forever il sigillo resta attivo, quindi non devi riapplicarlo ogni volta. Usa Giudizio appena è di nuovo pronto.",
		},
		ru = {
			q = "Что делает «Правосудие»?",
			a = "«Правосудие» высвобождает силу активной печати на врага: оно наносит урон или накладывает эффект. В WoW: Forever печать при этом остаётся активной, так что накладывать её каждый раз заново не нужно. Применяйте «Правосудие», как только оно снова готово.",
		},
		pt = {
			q = "O que Julgamento faz?",
			a = "Julgamento libera o poder do selo ativo no inimigo: causa dano ou aplica um efeito nele. No WoW: Forever o selo continua ativo, então você não precisa reaplicá-lo toda vez. Use Julgamento assim que estiver pronto de novo.",
		},
	},
	{
		id = "paladin-blessings",
		de = {
			q = "Welchen Segen soll ich benutzen?",
			a = "Für Nahkämpfer „Segen der Macht“ (mehr Angriffskraft), für Heiler und Zauberer „Segen der Weisheit“ (Mana-Regeneration). Segen halten einige Minuten; leg sie auch auf deine Gruppe. Auf jedem Ziel kann von dir nur ein Segen liegen.",
		},
		en = {
			q = "Which blessing should I use?",
			a = "For melee, Blessing of Might (more attack power); for healers and casters, Blessing of Wisdom (mana regeneration). Blessings last a few minutes; put them on your group too. Each target can only have one blessing from you.",
		},
		fr = {
			q = "Quelle bénédiction utiliser ?",
			a = "Pour les combattants de mêlée, Bénédiction de puissance (plus de puissance d'attaque) ; pour les soigneurs et lanceurs de sorts, Bénédiction de sagesse (régénération de mana). Les bénédictions durent quelques minutes ; donnez-les aussi à votre groupe. Chaque cible ne peut avoir qu'une bénédiction de votre part.",
		},
		es = {
			q = "¿Qué bendición debo usar?",
			a = "Para cuerpo a cuerpo, Bendición de poderío (más poder de ataque); para sanadores y lanzadores de hechizos, Bendición de sabiduría (regeneración de maná). Las bendiciones duran unos minutos; ponlas también a tu grupo. Cada objetivo solo puede tener una bendición tuya.",
		},
		it = {
			q = "Quale benedizione devo usare?",
			a = "Per chi combatte in mischia, Benedizione della Potenza (più potenza d'attacco); per guaritori e incantatori, Benedizione della Saggezza (rigenerazione del mana). Le benedizioni durano alcuni minuti; dalle anche al gruppo. Ogni bersaglio può avere una sola benedizione da parte tua.",
		},
		ru = {
			q = "Какое благословение использовать?",
			a = "Бойцам ближнего боя «Благословение могущества» (больше силы атаки), лекарям и заклинателям «Благословение мудрости» (восполнение маны). Благословения действуют несколько минут; накладывайте их и на группу. На каждой цели может быть только одно ваше благословение.",
		},
		pt = {
			q = "Qual bênção devo usar?",
			a = "Para corpo a corpo, Bênção de Poderio (mais poder de ataque); para curadores e conjuradores, Bênção da Sabedoria (regeneração de mana). As bênçãos duram alguns minutos; coloque-as também no grupo. Cada alvo só pode ter uma bênção sua.",
		},
	},
	{
		id = "paladin-auras",
		de = {
			q = "Welche Aura soll ich anhaben?",
			a = "Auren wirken auf dich und deine Gruppe in der Nähe. „Aura der Hingabe“ erhöht die Rüstung und ist beim Leveln die sicherste Wahl, „Aura der Vergeltung“ fügt Angreifern Schaden zu. Es ist immer nur eine Aura von dir aktiv.",
		},
		en = {
			q = "Which aura should I use?",
			a = "Auras affect you and your nearby group. Devotion Aura increases armour and is the safest choice while levelling; Retribution Aura damages attackers. Only one of your auras is active at a time.",
		},
		fr = {
			q = "Quelle aura utiliser ?",
			a = "Les auras agissent sur vous et sur votre groupe proche. Aura de dévotion augmente l'armure et c'est le choix le plus sûr pour monter de niveau ; Aura de vindicte inflige des dégâts aux attaquants. Une seule de vos auras est active à la fois.",
		},
		es = {
			q = "¿Qué aura debo usar?",
			a = "Las auras te afectan a ti y a tu grupo cercano. Aura de devoción aumenta la armadura y es la opción más segura para subir de nivel; Aura de reprensión daña a los atacantes. Solo una de tus auras está activa a la vez.",
		},
		it = {
			q = "Quale aura devo usare?",
			a = "Le aure agiscono su di te e sul gruppo vicino. Aura della Devozione aumenta l'armatura ed è la scelta più sicura per salire di livello; Aura della Punizione danneggia chi ti attacca. È attiva una sola aura alla volta.",
		},
		ru = {
			q = "Какую ауру использовать?",
			a = "Ауры действуют на вас и группу поблизости. «Аура благочестия» повышает броню и при прокачке безопаснее всего; «Аура воздаяния» наносит урон атакующим. Одновременно активна только одна ваша аура.",
		},
		pt = {
			q = "Qual aura devo usar?",
			a = "As auras afetam você e o grupo próximo. Aura de Devoção aumenta a armadura e é a escolha mais segura ao subir de nível; Aura de Retribuição causa dano a quem ataca. Só uma das suas auras fica ativa por vez.",
		},
	},
	{
		id = "paladin-healing",
		de = {
			q = "Wie heile ich als Paladin?",
			a = "„Heiliges Licht“ heilt viel, braucht aber Zeit, „Lichtblitz“ heilt weniger, dafür schnell und günstig. In der Gruppe heilst du am besten mit dem kleinsten Zauber, der reicht, damit dein Mana hält.",
		},
		en = {
			q = "How do I heal as a paladin?",
			a = "Holy Light heals a lot but takes time; Flash of Light heals less but fast and cheaply. In a group, use the smallest heal that does the job so your mana lasts.",
		},
		fr = {
			q = "Comment soigner en tant que paladin ?",
			a = "Lumière sacrée soigne beaucoup mais prend du temps ; Éclair lumineux soigne moins mais vite et pour peu de mana. En groupe, utilisez le plus petit soin qui suffit pour que votre mana tienne.",
		},
		es = {
			q = "¿Cómo curo como paladín?",
			a = "Luz Sagrada cura mucho pero tarda; Destello de Luz cura menos pero rápido y barato. En grupo, usa la cura más pequeña que baste para que tu maná dure.",
		},
		it = {
			q = "Come curo da paladino?",
			a = "Luce Sacra cura molto ma richiede tempo; Lampo di Luce cura meno ma in fretta e costa poco. In gruppo usa la cura più piccola che basta, così il mana dura.",
		},
		ru = {
			q = "Как паладину лечить?",
			a = "«Свет небес» лечит много, но долго; «Вспышка Света» лечит меньше, зато быстро и дёшево. В группе используйте самое слабое лечение, которого достаточно, чтобы мана дольше держалась.",
		},
		pt = {
			q = "Como curo como paladino?",
			a = "Luz Sagrada cura muito mas demora; Clarão de Luz cura menos, porém rápido e barato. Em grupo, use a menor cura que resolva para que a sua mana dure.",
		},
	},
	{
		id = "paladin-lay-on-hands",
		de = {
			q = "Was ist „Handauflegung“?",
			a = "Ein Notfallzauber mit langer Abklingzeit: Er heilt ein Ziel vollständig, verbraucht aber dein ganzes Mana. Heb ihn dir für Momente auf, in denen du oder ein Gruppenmitglied sonst sterben würde.",
		},
		en = {
			q = "What is Lay on Hands?",
			a = "An emergency spell with a long cooldown: it fully heals a target but uses all your mana. Save it for moments when you or a party member would otherwise die.",
		},
		fr = {
			q = "Qu'est-ce qu'Imposition des mains ?",
			a = "Un sort d'urgence avec un long temps de recharge : il soigne entièrement une cible mais consomme tout votre mana. Gardez-le pour les moments où vous ou un membre du groupe mourriez sinon.",
		},
		es = {
			q = "¿Qué es Imposición de manos?",
			a = "Un hechizo de emergencia con un tiempo de reutilización largo: cura por completo a un objetivo pero gasta todo tu maná. Guárdalo para los momentos en que tú o alguien del grupo moriríais de otro modo.",
		},
		it = {
			q = "Che cos'è Imposizione delle Mani?",
			a = "Un incantesimo d'emergenza con un lungo tempo di recupero: cura completamente un bersaglio ma consuma tutto il tuo mana. Tienilo per i momenti in cui tu o un membro del gruppo morireste altrimenti.",
		},
		ru = {
			q = "Что такое «Возложение рук»?",
			a = "Экстренное заклинание с долгим временем восстановления: полностью исцеляет цель, но расходует всю вашу ману. Берегите его для моментов, когда иначе погибнете вы или кто-то из группы.",
		},
		pt = {
			q = "O que é Impor as Mãos?",
			a = "Um feitiço de emergência com longo tempo de recarga: cura totalmente um alvo, mas gasta toda a sua mana. Guarde-o para momentos em que você ou alguém do grupo morreria de outro jeito.",
		},
	},
	{
		id = "paladin-bubble",
		de = {
			q = "Wie rette ich mich als Paladin aus einem verlorenen Kampf?",
			a = "„Göttlicher Schutz“ und später „Gottesschild“ machen dich kurz unverwundbar. Heil dich in der Zeit oder lauf weg. Danach kannst du eine Weile keine solche Schutzfähigkeit mehr benutzen.",
		},
		en = {
			q = "How do I save myself from a lost fight as a paladin?",
			a = "Divine Protection and later Divine Shield make you briefly invulnerable. Heal yourself during that time or run away. Afterwards you cannot use such a protection again for a while.",
		},
		fr = {
			q = "Comment me sauver d'un combat perdu en tant que paladin ?",
			a = "Protection divine puis, plus tard, Bouclier divin vous rendent brièvement invulnérable. Soignez-vous pendant ce temps ou fuyez. Ensuite vous ne pouvez plus utiliser une telle protection pendant un moment.",
		},
		es = {
			q = "¿Cómo me salvo de un combate perdido como paladín?",
			a = "Protección divina y, más adelante, Escudo divino te hacen invulnerable durante un momento. Cúrate durante ese tiempo o huye. Después no puedes usar una protección así durante un rato.",
		},
		it = {
			q = "Come mi salvo da un combattimento perso da paladino?",
			a = "Protezione Divina e in seguito Scudo Divino ti rendono invulnerabile per poco tempo. Curati in quel momento o scappa. Dopo non puoi usare di nuovo una protezione simile per un po'.",
		},
		ru = {
			q = "Как паладину спастись из проигранного боя?",
			a = "«Божественная защита», а позже «Божественный щит» ненадолго делают вас неуязвимым. В это время вылечитесь или убегайте. После этого такой защитой нельзя пользоваться некоторое время.",
		},
		pt = {
			q = "Como me salvo de uma luta perdida como paladino?",
			a = "Proteção Divina e, mais tarde, Escudo Divino deixam você invulnerável por pouco tempo. Cure-se nesse tempo ou fuja. Depois você não pode usar essa proteção de novo por um tempo.",
		},
	},
	{
		id = "paladin-stun",
		de = {
			q = "Wie unterbreche ich Gegner?",
			a = "„Hammer der Gerechtigkeit“ betäubt einen Gegner für ein paar Sekunden. Nutz das, um einen gefährlichen Zauber zu verhindern, einen fliehenden Gegner aufzuhalten oder dir Zeit für eine Heilung zu verschaffen.",
		},
		en = {
			q = "How do I stop enemies?",
			a = "Hammer of Justice stuns an enemy for a few seconds. Use it to stop a dangerous spell, hold a fleeing enemy or buy time for a heal.",
		},
		fr = {
			q = "Comment arrêter les ennemis ?",
			a = "Marteau de la justice étourdit un ennemi pendant quelques secondes. Utilisez-le pour stopper un sort dangereux, retenir un ennemi en fuite ou gagner du temps pour un soin.",
		},
		es = {
			q = "¿Cómo detengo a los enemigos?",
			a = "Martillo de justicia aturde a un enemigo unos segundos. Úsalo para detener un hechizo peligroso, retener a un enemigo que huye o ganar tiempo para una cura.",
		},
		it = {
			q = "Come fermo i nemici?",
			a = "Martello della Giustizia stordisce un nemico per alcuni secondi. Usalo per fermare un incantesimo pericoloso, trattenere un nemico in fuga o guadagnare tempo per una cura.",
		},
		ru = {
			q = "Как останавливать врагов?",
			a = "«Молот правосудия» оглушает врага на несколько секунд. Используйте его, чтобы прервать опасное заклинание, задержать убегающего врага или выиграть время для лечения.",
		},
		pt = {
			q = "Como detenho inimigos?",
			a = "Martelo da Justiça atordoa um inimigo por alguns segundos. Use-o para parar um feitiço perigoso, segurar um inimigo em fuga ou ganhar tempo para uma cura.",
		},
	},
	{
		id = "paladin-resurrect",
		de = {
			q = "Wie belebe ich andere Spieler wieder?",
			a = "Mit „Erlösung“, die du über eine Klassenquest bei deinem Lehrer bekommst, sobald du die Stufe erreichst. Sie geht nur außerhalb des Kampfes und kostet viel Mana. In Gruppen ist das eine große Hilfe.",
		},
		en = {
			q = "How do I resurrect other players?",
			a = "With Redemption, which you get from a class quest at your trainer once you reach the level. It only works out of combat and costs a lot of mana. A big help in groups.",
		},
		fr = {
			q = "Comment ressusciter d'autres joueurs ?",
			a = "Avec Rédemption, que vous obtenez par une quête de classe auprès de votre maître dès que vous atteignez le niveau. Elle ne fonctionne qu'hors combat et coûte beaucoup de mana. Une grande aide en groupe.",
		},
		es = {
			q = "¿Cómo resucito a otros jugadores?",
			a = "Con Redención, que obtienes con una misión de clase de tu instructor al alcanzar el nivel. Solo funciona fuera de combate y cuesta mucho maná. Una gran ayuda en grupo.",
		},
		it = {
			q = "Come resuscito altri giocatori?",
			a = "Con Redenzione, che ottieni con una missione di classe dal tuo istruttore quando raggiungi il livello. Funziona solo fuori dal combattimento e costa molto mana. Un grande aiuto in gruppo.",
		},
		ru = {
			q = "Как воскрешать других игроков?",
			a = "С помощью «Искупления», которое вы получаете за классовое задание у наставника, когда достигнете нужного уровня. Работает только вне боя и стоит много маны. Очень полезно в группе.",
		},
		pt = {
			q = "Como ressuscito outros jogadores?",
			a = "Com Redenção, que você obtém numa missão de classe com o seu instrutor ao atingir o nível. Só funciona fora de combate e custa muita mana. Uma grande ajuda em grupo.",
		},
	},
	{
		id = "paladin-cleanse",
		de = {
			q = "Kann ich Gifte und Krankheiten entfernen?",
			a = "Ja: „Läutern“ entfernt Gifte und Krankheiten, das spätere „Reinigung des Glaubens“ zusätzlich Magie. Schau auf die Symbole am Gruppenfenster und entferne gefährliche Effekte, besonders in Dungeons.",
		},
		en = {
			q = "Can I remove poisons and diseases?",
			a = "Yes: Purify removes poisons and diseases, the later Cleanse also removes magic. Watch the icons on the party frames and remove dangerous effects, especially in dungeons.",
		},
		fr = {
			q = "Puis-je retirer les poisons et maladies ?",
			a = "Oui : Purification retire les poisons et maladies, et Épuration, plus tard, retire aussi la magie. Surveillez les icônes sur les cadres du groupe et retirez les effets dangereux, surtout en donjon.",
		},
		es = {
			q = "¿Puedo quitar venenos y enfermedades?",
			a = "Sí: Purificar elimina venenos y enfermedades, y más adelante Limpiar también elimina magia. Vigila los iconos de los marcos del grupo y quita los efectos peligrosos, sobre todo en mazmorras.",
		},
		it = {
			q = "Posso rimuovere veleni e malattie?",
			a = "Sì: Purificazione rimuove veleni e malattie, e in seguito Depurazione rimuove anche la magia. Osserva le icone sui riquadri del gruppo e rimuovi gli effetti pericolosi, soprattutto nelle spedizioni.",
		},
		ru = {
			q = "Можно ли снимать яды и болезни?",
			a = "Да: «Очищение» снимает яды и болезни, а более позднее «Полное очищение» снимает ещё и магию. Следите за значками на рамках группы и снимайте опасные эффекты, особенно в подземельях.",
		},
		pt = {
			q = "Posso remover venenos e doenças?",
			a = "Sim: Purificar remove venenos e doenças, e mais tarde Purificação também remove magia. Fique de olho nos ícones dos quadros do grupo e remova efeitos perigosos, principalmente em masmorras.",
		},
	},
	{
		id = "paladin-mana",
		de = {
			q = "Mir geht als Paladin ständig das Mana aus.",
			a = "Spar Mana, indem du nicht für jeden Kampf neue Segen und Siegel verteilst, wenn die alten noch halten. Kämpf mit Waffe, statt viel zu heilen, und trink zwischen den Kämpfen. Intelligenz und Willenskraft auf der Ausrüstung helfen.",
		},
		en = {
			q = "I keep running out of mana as a paladin.",
			a = "Save mana by not renewing blessings and seals for every fight while the old ones still last. Fight with your weapon instead of healing a lot, and drink between fights. Intellect and spirit on your gear help.",
		},
		fr = {
			q = "Je suis toujours à court de mana en paladin.",
			a = "Économisez du mana en ne renouvelant pas bénédictions et sceaux à chaque combat tant que les anciens durent. Combattez avec votre arme plutôt que de beaucoup soigner, et buvez entre les combats. L'intelligence et l'esprit sur votre équipement aident.",
		},
		es = {
			q = "Siempre me quedo sin maná como paladín.",
			a = "Ahorra maná no renovando bendiciones y sellos en cada combate mientras los anteriores sigan activos. Lucha con tu arma en lugar de curar mucho y bebe entre combates. El intelecto y el espíritu en tu equipo ayudan.",
		},
		it = {
			q = "Da paladino resto sempre senza mana.",
			a = "Risparmia mana non rinnovando benedizioni e sigilli a ogni combattimento finché i precedenti durano. Combatti con l'arma invece di curare molto, e bevi tra un combattimento e l'altro. Intelletto e spirito sull'equipaggiamento aiutano.",
		},
		ru = {
			q = "Паладину постоянно не хватает маны.",
			a = "Экономьте ману: не обновляйте благословения и печати перед каждым боем, пока старые ещё действуют. Сражайтесь оружием вместо частого лечения и пейте между боями. Интеллект и дух на экипировке помогают.",
		},
		pt = {
			q = "Fico sem mana o tempo todo como paladino.",
			a = "Economize mana não renovando bênçãos e selos a cada luta enquanto os antigos ainda duram. Lute com a arma em vez de curar muito e beba entre as lutas. Intelecto e espírito no equipamento ajudam.",
		},
	},
	{
		id = "paladin-tanking",
		de = {
			q = "Kann ein Paladin tanken?",
			a = "Ja, mit Schild und dem Schutz-Talentbaum. „Zorn der Gerechtigkeit“ erhöht deine Bedrohung durch Heiligzauber, und „Weihe“, die in WoW: Forever jeder Paladin lernt, trifft Gegner um dich herum. Dazu hast du in WoW: Forever ein eigenes Tank-Siegel, dessen Richturteil den Gegner verspottet. Gerade gegen mehrere Gegner ist ein Paladin ein guter Tank.",
		},
		en = {
			q = "Can a paladin tank?",
			a = "Yes, with a shield and the Protection talent tree. Righteous Fury increases the threat of your Holy spells, and Consecration, which every paladin learns in WoW: Forever, hits enemies around you. WoW: Forever also gives you a tanking seal whose Judgement taunts the enemy. Paladins are good tanks especially against several enemies.",
		},
		fr = {
			q = "Un paladin peut-il tanker ?",
			a = "Oui, avec un bouclier et l'arbre de talents Protection. Fureur vertueuse augmente la menace de vos sorts du Sacré, et Consécration, que tout paladin apprend dans WoW: Forever, touche les ennemis autour de vous. WoW: Forever ajoute aussi un sceau de tank dont le Jugement provoque l'ennemi. Les paladins sont de bons tanks, surtout contre plusieurs ennemis.",
		},
		es = {
			q = "¿Puede tanquear un paladín?",
			a = "Sí, con escudo y el árbol de talentos Protección. Furia recta aumenta la amenaza de tus hechizos Sagrados, y Consagración, que en WoW: Forever aprenden todos los paladines, golpea a los enemigos a tu alrededor. WoW: Forever añade además un sello de tanque cuya Sentencia provoca al enemigo. Los paladines son buenos tanques, sobre todo contra varios enemigos.",
		},
		it = {
			q = "Un paladino può fare da tank?",
			a = "Sì, con uno scudo e l'albero di talenti Protezione. Furia Virtuosa aumenta la minaccia degli incantesimi Sacri, e Consacrazione, che in WoW: Forever imparano tutti i paladini, colpisce i nemici intorno a te. WoW: Forever aggiunge anche un sigillo da tank il cui Giudizio provoca il nemico. I paladini sono buoni tank, soprattutto contro più nemici.",
		},
		ru = {
			q = "Может ли паладин танковать?",
			a = "Да, со щитом и веткой талантов «Защита». «Праведное неистовство» повышает угрозу от заклинаний Света, а «Освящение», которое в WoW: Forever изучает каждый паладин, бьёт врагов вокруг. Кроме того, в WoW: Forever есть печать для танкования, чьё «Правосудие» провоцирует врага. Паладины — хорошие танки, особенно против нескольких врагов.",
		},
		pt = {
			q = "Paladino pode tanquear?",
			a = "Sim, com escudo e a árvore de talentos Proteção. Fúria Justa aumenta a ameaça dos seus feitiços Sagrados, e Consagração, que todo paladino aprende no WoW: Forever, atinge os inimigos ao seu redor. O WoW: Forever também traz um selo de tanque cujo Julgamento provoca o inimigo. Paladinos são bons tanques, principalmente contra vários inimigos.",
		},
	},
	{
		id = "paladin-undead",
		de = {
			q = "Gegen welche Gegner sind Paladine stark?",
			a = "Gegen Untote und Dämonen: „Exorzismus“ und einige Talente machen gegen sie viel mehr Schaden. In Gebieten und Dungeons voller Untoter bist du deshalb besonders nützlich.",
		},
		en = {
			q = "Which enemies are paladins strong against?",
			a = "Undead and demons: Exorcism and some talents deal much more damage to them. That makes you especially useful in zones and dungeons full of undead.",
		},
		fr = {
			q = "Contre quels ennemis les paladins sont-ils forts ?",
			a = "Les morts-vivants et les démons : Exorcisme et certains talents leur infligent bien plus de dégâts. Cela vous rend particulièrement utile dans les zones et donjons remplis de morts-vivants.",
		},
		es = {
			q = "¿Contra qué enemigos son fuertes los paladines?",
			a = "No-muertos y demonios: Exorcismo y algunos talentos les hacen mucho más daño. Eso te hace especialmente útil en zonas y mazmorras llenas de no-muertos.",
		},
		it = {
			q = "Contro quali nemici sono forti i paladini?",
			a = "Non morti e demoni: Esorcismo e alcuni talenti infliggono loro molti più danni. Questo ti rende particolarmente utile in zone e spedizioni piene di non morti.",
		},
		ru = {
			q = "Против каких врагов паладины особенно сильны?",
			a = "Против нежити и демонов: «Экзорцизм» и некоторые таланты наносят им гораздо больше урона. Поэтому вы особенно полезны в зонах и подземельях, полных нежити.",
		},
		pt = {
			q = "Contra quais inimigos os paladinos são fortes?",
			a = "Mortos-vivos e demônios: Exorcismo e alguns talentos causam muito mais dano a eles. Isso torna você especialmente útil em zonas e masmorras cheias de mortos-vivos.",
		},
	},
	{
		id = "paladin-stats",
		de = {
			q = "Welche Werte sind für Paladine wichtig?",
			a = "Zum Leveln Stärke und Ausdauer, dazu etwas Intelligenz für Mana. Als Heiler Intelligenz und Heilung, als Tank Ausdauer, Rüstung und Verteidigung. Eine starke Zweihandwaffe macht das Leveln deutlich schneller.",
		},
		en = {
			q = "Which stats matter for paladins?",
			a = "For levelling strength and stamina, plus some intellect for mana. As a healer intellect and healing, as a tank stamina, armour and defence. A strong two-handed weapon makes levelling much faster.",
		},
		fr = {
			q = "Quelles caractéristiques comptent pour les paladins ?",
			a = "Pour monter de niveau, force et endurance, plus un peu d'intelligence pour le mana. En soigneur, intelligence et soins ; en tank, endurance, armure et défense. Une bonne arme à deux mains accélère beaucoup la montée de niveau.",
		},
		es = {
			q = "¿Qué atributos importan a los paladines?",
			a = "Para subir de nivel, fuerza y aguante, más algo de intelecto para el maná. Como sanador, intelecto y sanación; como tanque, aguante, armadura y defensa. Una buena arma a dos manos acelera mucho la subida de nivel.",
		},
		it = {
			q = "Quali statistiche contano per i paladini?",
			a = "Per salire di livello forza e tempra, più un po' di intelletto per il mana. Da guaritore intelletto e cure, da tank tempra, armatura e difesa. Una buona arma a due mani rende la salita di livello molto più veloce.",
		},
		ru = {
			q = "Какие характеристики важны паладину?",
			a = "Для прокачки сила и выносливость, плюс немного интеллекта для маны. Лекарю интеллект и сила исцеления, танку выносливость, броня и защита. Хорошее двуручное оружие сильно ускоряет прокачку.",
		},
		pt = {
			q = "Quais atributos importam para paladinos?",
			a = "Para subir de nível, força e vigor, mais um pouco de intelecto para mana. Como curador, intelecto e cura; como tanque, vigor, armadura e defesa. Uma boa arma de duas mãos acelera muito a subida de nível.",
		},
	},
	{
		id = "paladin-armor",
		de = {
			q = "Welche Rüstung tragen Paladine?",
			a = "Am Anfang Kettenrüstung, ab Stufe 40 Platte. Schilde kannst du von Anfang an tragen. Als Heiler darfst du auch leichtere Rüstung mit Intelligenz nehmen, wenn sie bessere Werte hat.",
		},
		en = {
			q = "What armour do paladins wear?",
			a = "Mail at first, plate from level 40. You can use shields from the start. As a healer you can also wear lighter armour with intellect if its stats are better.",
		},
		fr = {
			q = "Quelle armure portent les paladins ?",
			a = "Des mailles au début, des plaques à partir du niveau 40. Vous pouvez utiliser des boucliers dès le départ. En soigneur, vous pouvez aussi porter une armure plus légère avec de l'intelligence si ses caractéristiques sont meilleures.",
		},
		es = {
			q = "¿Qué armadura llevan los paladines?",
			a = "Malla al principio, placas a partir del nivel 40. Puedes usar escudos desde el inicio. Como sanador también puedes llevar armadura más ligera con intelecto si sus atributos son mejores.",
		},
		it = {
			q = "Che armatura indossano i paladini?",
			a = "Maglia all'inizio, piastre dal livello 40. Puoi usare gli scudi fin da subito. Da guaritore puoi anche indossare armature più leggere con intelletto se le statistiche sono migliori.",
		},
		ru = {
			q = "Какую броню носят паладины?",
			a = "Сначала кольчугу, с 40-го уровня латы. Щиты можно носить с самого начала. Лекарь может надевать и более лёгкую броню с интеллектом, если у неё характеристики лучше.",
		},
		pt = {
			q = "Que armadura os paladinos usam?",
			a = "Malha no começo, placas a partir do nível 40. Você pode usar escudos desde o início. Como curador, também pode vestir armadura mais leve com intelecto se os atributos forem melhores.",
		},
	},
	{
		id = "paladin-talents",
		de = {
			q = "Welche Talentbäume haben Paladine?",
			a = "Heilig für Heilung, Schutz zum Tanken und Vergeltung für Schaden mit Zweihandwaffen. Zum Leveln ist Vergeltung am schnellsten. Ab Stufe 40 kannst du per Dualspezialisierung zum Beispiel Heilig für Gruppen dazunehmen.",
		},
		en = {
			q = "Which talent trees do paladins have?",
			a = "Holy for healing, Protection for tanking and Retribution for damage with two-handed weapons. Retribution is fastest for levelling. From level 40, dual specialisation lets you add, for example, Holy for groups.",
		},
		fr = {
			q = "Quels arbres de talents ont les paladins ?",
			a = "Sacré pour soigner, Protection pour tanker et Vindicte pour les dégâts avec des armes à deux mains. Vindicte est le plus rapide pour monter de niveau. À partir du niveau 40, la double spécialisation vous permet d'ajouter par exemple Sacré pour les groupes.",
		},
		es = {
			q = "¿Qué árboles de talentos tienen los paladines?",
			a = "Sagrado para curar, Protección para tanquear y Reprensión para hacer daño con armas a dos manos. Reprensión es el más rápido para subir de nivel. Desde el nivel 40, la especialización doble te permite añadir, por ejemplo, Sagrado para grupos.",
		},
		it = {
			q = "Quali alberi di talenti hanno i paladini?",
			a = "Sacro per curare, Protezione per fare da tank e Punizione per i danni con armi a due mani. Punizione è il più veloce per salire di livello. Dal livello 40 la doppia specializzazione ti permette di aggiungere, per esempio, Sacro per i gruppi.",
		},
		ru = {
			q = "Какие ветки талантов есть у паладина?",
			a = "«Свет» для лечения, «Защита» для танкования и «Воздаяние» для урона двуручным оружием. «Воздаяние» быстрее всего для прокачки. С 40-го уровня двойная специализация позволяет добавить, например, «Свет» для групп.",
		},
		pt = {
			q = "Quais árvores de talentos os paladinos têm?",
			a = "Sagrado para curar, Proteção para tanquear e Retribuição para dano com armas de duas mãos. Retribuição é a mais rápida para subir de nível. A partir do nível 40, a especialização dupla permite adicionar, por exemplo, Sagrado para grupos.",
		},
	},
	{
		id = "paladin-rotation",
		de = {
			q = "Wie kämpfe ich als Paladin beim Leveln?",
			a = "Aura an, Segen der Macht auf dich, Siegel setzen, angreifen. Im Kampf „Richturteil“ benutzen, sobald es bereit ist; in WoW: Forever bleibt das Siegel dabei aktiv. Bei wenig Gesundheit heilst du dich mit Lichtblitz oder Heiligem Licht und kämpfst weiter.",
		},
		en = {
			q = "How do I fight as a paladin while levelling?",
			a = "Aura on, Blessing of Might on yourself, apply a seal, attack. In the fight, use Judgement whenever it is ready; in WoW: Forever your seal stays active. When your health is low, heal yourself with Flash of Light or Holy Light and keep fighting.",
		},
		fr = {
			q = "Comment combattre en paladin pendant la montée de niveau ?",
			a = "Aura activée, Bénédiction de puissance sur vous, appliquez un sceau, attaquez. Pendant le combat, utilisez Jugement dès qu'il est prêt ; dans WoW: Forever, le sceau reste actif. Quand votre vie est basse, soignez-vous avec Éclair lumineux ou Lumière sacrée et continuez à combattre.",
		},
		es = {
			q = "¿Cómo lucho como paladín mientras subo de nivel?",
			a = "Aura activa, Bendición de poderío sobre ti, aplica un sello y ataca. En el combate usa Sentencia en cuanto esté lista; en WoW: Forever el sello sigue activo. Cuando tengas poca salud, cúrate con Destello de Luz o Luz Sagrada y sigue luchando.",
		},
		it = {
			q = "Come combatto da paladino mentre salgo di livello?",
			a = "Aura attiva, Benedizione della Potenza su di te, applica un sigillo, attacca. Durante il combattimento usa Giudizio appena è pronto; in WoW: Forever il sigillo resta attivo. Quando hai poca salute, curati con Lampo di Luce o Luce Sacra e continua a combattere.",
		},
		ru = {
			q = "Как паладину сражаться при прокачке?",
			a = "Включите ауру, наложите на себя «Благословение могущества», наложите печать и атакуйте. В бою применяйте «Правосудие», как только оно готово; в WoW: Forever печать при этом остаётся. Когда здоровья мало, лечитесь «Вспышкой Света» или «Светом небес» и продолжайте бой.",
		},
		pt = {
			q = "Como luto como paladino enquanto subo de nível?",
			a = "Aura ligada, Bênção de Poderio em você, aplique um selo e ataque. Na luta, use Julgamento sempre que estiver pronto; no WoW: Forever o selo continua ativo. Quando a vida estiver baixa, cure-se com Clarão de Luz ou Luz Sagrada e continue lutando.",
		},
	},
})
