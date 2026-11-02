local _, ns = ...

-- FAQ: Interface and key bindings. See Core/Faq.lua for the format.
ns.Faq.Add("ui", {
	{
		id = "ui-keys",
		de = {
			q = "Welche Tasten öffnen die wichtigsten Fenster?",
			a = "Standardmäßig: M Weltkarte, L Questlog, P Zauberbuch, N Talente, C Charakter, B Taschen, O Kontakte und Gilde. Ändern kannst du sie im Spielmenü unter Tastaturbelegung.",
		},
		en = {
			q = "Which keys open the most important windows?",
			a = "By default: M world map, L quest log, P spellbook, N talents, C character, B bags, O friends and guild. You can change them under Key Bindings in the game menu.",
		},
		fr = {
			q = "Quelles touches ouvrent les fenêtres les plus importantes ?",
			a = "Par défaut : M carte du monde, L journal de quêtes, P grimoire, N talents, C personnage, B sacs, O amis et guilde. Vous pouvez les changer sous Raccourcis dans le menu du jeu.",
		},
		es = {
			q = "¿Qué teclas abren las ventanas más importantes?",
			a = "Por defecto: M mapa del mundo, L registro de misiones, P libro de hechizos, N talentos, C personaje, B bolsas, O amigos y hermandad. Puedes cambiarlas en Asignación de teclas del menú del juego.",
		},
		it = {
			q = "Quali tasti aprono le finestre più importanti?",
			a = "Di default: M mappa del mondo, L registro missioni, P libro degli incantesimi, N talenti, C personaggio, B borse, O amici e gilda. Puoi cambiarli in Assegnazione tasti nel menu di gioco.",
		},
		ru = {
			q = "Какие клавиши открывают главные окна?",
			a = "По умолчанию: M — карта мира, L — журнал заданий, P — книга заклинаний, N — таланты, C — персонаж, B — сумки, O — друзья и гильдия. Изменить их можно в разделе «Назначение клавиш» игрового меню.",
		},
		pt = {
			q = "Quais teclas abrem as janelas mais importantes?",
			a = "Por padrão: M mapa-múndi, L registro de missões, P grimório, N talentos, C personagem, B bolsas, O amigos e guilda. Você pode mudá-las em Atalhos de teclado no menu do jogo.",
		},
	},
	{
		id = "ui-addons",
		de = {
			q = "Wie installiere ich Addons?",
			a = "Nutze die CurseForge- oder Wago-App oder entpack den Addon-Ordner in den Ordner AddOns deiner WoW-Forever-Installation. In der Charakterauswahl zeigt der Knopf „AddOns“, welche Addons aktiv sind.",
		},
		en = {
			q = "How do I install addons?",
			a = "Use the CurseForge or Wago app, or unpack the addon folder into the AddOns folder of the WoW: Forever installation. On the character selection screen the AddOns button shows which addons are enabled.",
		},
		fr = {
			q = "Comment installer des addons ?",
			a = "Utilisez l'application CurseForge ou Wago, ou décompressez le dossier de l'addon dans le dossier AddOns de l'installation de WoW: Forever. Sur l'écran de sélection des personnages, le bouton AddOns montre les addons activés.",
		},
		es = {
			q = "¿Cómo instalo addons?",
			a = "Usa la aplicación de CurseForge o Wago, o descomprime la carpeta del addon en la carpeta AddOns de la instalación de WoW: Forever. En la pantalla de selección de personaje, el botón AddOns muestra qué addons están activados.",
		},
		it = {
			q = "Come installo gli addon?",
			a = "Usa l'app di CurseForge o Wago, oppure estrai la cartella dell'addon nella cartella AddOns dell'installazione di WoW: Forever. Nella schermata di selezione del personaggio il pulsante AddOns mostra quali addon sono attivi.",
		},
		ru = {
			q = "Как установить аддоны?",
			a = "Воспользуйтесь приложением CurseForge или Wago либо распакуйте папку аддона в папку AddOns установленной WoW: Forever. На экране выбора персонажа кнопка «Модификации» показывает, какие аддоны включены.",
		},
		pt = {
			q = "Como instalo addons?",
			a = "Use o app do CurseForge ou do Wago, ou descompacte a pasta do addon na pasta AddOns da instalação do WoW: Forever. Na tela de seleção de personagem, o botão AddOns mostra quais addons estão ativos.",
		},
	},
	{
		id = "ui-reload",
		de = {
			q = "Meine Oberfläche spinnt. Was kann ich tun?",
			a = "Gib /reload ein, um die Oberfläche neu zu laden; das behebt die meisten Fehler. Wenn ein Addon Fehler verursacht, schalte es in der Charakterauswahl unter „AddOns“ ab und versuch es noch einmal.",
		},
		en = {
			q = "My interface is acting up. What can I do?",
			a = "Type /reload to reload the interface; that fixes most glitches. If an addon causes errors, turn it off on the character selection screen under AddOns and try again.",
		},
		fr = {
			q = "Mon interface fait des siennes. Que faire ?",
			a = "Tapez /reload pour recharger l'interface ; cela corrige la plupart des bugs. Si un addon provoque des erreurs, désactivez-le sur l'écran de sélection des personnages sous AddOns et réessayez.",
		},
		es = {
			q = "Mi interfaz da problemas. ¿Qué hago?",
			a = "Escribe /reload para recargar la interfaz; eso arregla la mayoría de los fallos. Si un addon causa errores, desactívalo en la pantalla de selección de personaje en AddOns y vuelve a probar.",
		},
		it = {
			q = "La mia interfaccia fa i capricci. Cosa posso fare?",
			a = "Scrivi /reload per ricaricare l'interfaccia; risolve la maggior parte dei problemi. Se un addon causa errori, disattivalo nella schermata di selezione del personaggio in AddOns e riprova.",
		},
		ru = {
			q = "Интерфейс ведёт себя странно. Что делать?",
			a = "Введите /reload, чтобы перезагрузить интерфейс; это исправляет большинство сбоев. Если ошибки вызывает аддон, отключите его на экране выбора персонажа в разделе «Модификации» и попробуйте снова.",
		},
		pt = {
			q = "Minha interface está com problemas. O que faço?",
			a = "Digite /reload para recarregar a interface; isso resolve a maioria das falhas. Se um addon causar erros, desative-o na tela de seleção de personagem em AddOns e tente de novo.",
		},
	},
	{
		id = "ui-keybindings",
		de = {
			q = "Wie ändere ich Tastenbelegungen?",
			a = "Öffne das Spielmenü mit Esc, geh auf „Optionen“ und dort auf „Tastaturbelegung“. Klick neben eine Aktion und drück die neue Taste; mit einem zweiten Feld kannst du jeder Aktion zwei Tasten geben. Oben legst du fest, ob die Belegung für alle Charaktere oder nur für diesen gilt.",
		},
		en = {
			q = "How do I change key bindings?",
			a = "Open the game menu with Esc, go to Options and then Keybindings. Click next to an action and press the new key; the second column gives an action a second key. At the top you choose whether the bindings apply to all characters or only this one.",
		},
		fr = {
			q = "Comment changer les raccourcis clavier ?",
			a = "Ouvrez le menu du jeu avec Échap, allez dans Options puis Raccourcis. Cliquez à côté d'une action et appuyez sur la nouvelle touche ; la deuxième colonne donne une seconde touche à une action. En haut, vous choisissez si les raccourcis valent pour tous les personnages ou seulement celui-ci.",
		},
		es = {
			q = "¿Cómo cambio la asignación de teclas?",
			a = "Abre el menú del juego con Esc, ve a Opciones y luego a Asignación de teclas. Haz clic junto a una acción y pulsa la tecla nueva; la segunda columna da a una acción una segunda tecla. Arriba eliges si las teclas sirven para todos los personajes o solo para este.",
		},
		it = {
			q = "Come cambio l'assegnazione dei tasti?",
			a = "Apri il menu di gioco con Esc, vai in Opzioni e poi in Assegnazione tasti. Clicca accanto a un'azione e premi il nuovo tasto; la seconda colonna dà a un'azione un secondo tasto. In alto scegli se l'assegnazione vale per tutti i personaggi o solo per questo.",
		},
		ru = {
			q = "Как изменить назначение клавиш?",
			a = "Откройте игровое меню клавишей Esc, перейдите в «Настройки», затем в «Назначение клавиш». Щёлкните рядом с действием и нажмите новую клавишу; второй столбец задаёт действию вторую клавишу. Вверху выбирается, действуют ли назначения для всех персонажей или только для этого.",
		},
		pt = {
			q = "Como mudo os atalhos de teclado?",
			a = "Abra o menu do jogo com Esc, vá em Opções e depois em Atalhos de teclado. Clique ao lado de uma ação e aperte a nova tecla; a segunda coluna dá a uma ação uma segunda tecla. No topo você escolhe se os atalhos valem para todos os personagens ou só para este.",
		},
	},
	{
		id = "ui-bind-action-bar",
		de = {
			q = "Wie lege ich Tasten auf die anderen Aktionsleisten?",
			a = "In der Tastaturbelegung findest du unter „Aktionsleisten“ jeden einzelnen Knopf jeder Leiste. Weise dort zum Beispiel Umschalt+1 bis Umschalt+5 der zweiten Leiste zu, dann erreichst du mehr Fähigkeiten ohne Mausklick.",
		},
		en = {
			q = "How do I put keys on my other action bars?",
			a = "In Keybindings, the Action Bars section lists every button of every bar. Assign, for example, Shift+1 to Shift+5 to the second bar to reach more abilities without clicking.",
		},
		fr = {
			q = "Comment mettre des touches sur mes autres barres d'action ?",
			a = "Dans Raccourcis, la section Barres d'action liste chaque bouton de chaque barre. Attribuez par exemple Maj+1 à Maj+5 à la deuxième barre pour atteindre plus de techniques sans cliquer.",
		},
		es = {
			q = "¿Cómo asigno teclas a mis otras barras de acción?",
			a = "En Asignación de teclas, la sección Barras de acción muestra cada botón de cada barra. Asigna, por ejemplo, Mayús+1 a Mayús+5 a la segunda barra para llegar a más habilidades sin hacer clic.",
		},
		it = {
			q = "Come assegno tasti alle altre barre delle azioni?",
			a = "In Assegnazione tasti, la sezione Barre delle azioni elenca ogni pulsante di ogni barra. Assegna per esempio da Maiusc+1 a Maiusc+5 alla seconda barra per usare più abilità senza cliccare.",
		},
		ru = {
			q = "Как назначить клавиши на другие панели команд?",
			a = "В «Назначении клавиш» раздел «Панели команд» перечисляет каждую кнопку каждой панели. Назначьте, например, Shift+1 – Shift+5 на вторую панель, чтобы пользоваться большим числом способностей без мыши.",
		},
		pt = {
			q = "Como coloco teclas nas outras barras de ações?",
			a = "Em Atalhos de teclado, a seção Barras de ações lista cada botão de cada barra. Atribua, por exemplo, Shift+1 a Shift+5 à segunda barra para alcançar mais habilidades sem clicar.",
		},
	},
	{
		id = "ui-more-action-bars",
		de = {
			q = "Wie bekomme ich mehr Aktionsleisten?",
			a = "Weitere Leisten schaltest du im Spielmenü unter „Optionen“ bei den Aktionsleisten ein, oder im Bearbeitungsmodus. Danach ziehst du Zauber aus dem Zauberbuch auf die neuen Plätze.",
		},
		en = {
			q = "How do I get more action bars?",
			a = "Turn on more bars in the game menu under Options in the action bar settings, or in Edit Mode. Then drag spells from your spellbook onto the new slots.",
		},
		fr = {
			q = "Comment avoir plus de barres d'action ?",
			a = "Activez d'autres barres dans le menu du jeu, sous Options, dans les réglages des barres d'action, ou dans le mode Édition. Faites ensuite glisser des sorts de votre grimoire sur les nouveaux emplacements.",
		},
		es = {
			q = "¿Cómo consigo más barras de acción?",
			a = "Activa más barras en el menú del juego, en Opciones, dentro de los ajustes de barras de acción, o en el modo de edición. Luego arrastra hechizos del libro de hechizos a las nuevas ranuras.",
		},
		it = {
			q = "Come ottengo più barre delle azioni?",
			a = "Attiva altre barre dal menu di gioco in Opzioni, nelle impostazioni delle barre delle azioni, oppure nella modalità Modifica. Poi trascina gli incantesimi dal libro sui nuovi spazi.",
		},
		ru = {
			q = "Как получить больше панелей команд?",
			a = "Включите дополнительные панели в игровом меню в «Настройках» в разделе панелей команд или в режиме редактирования. Затем перетащите заклинания из книги заклинаний в новые ячейки.",
		},
		pt = {
			q = "Como consigo mais barras de ações?",
			a = "Ative mais barras no menu do jogo em Opções, nas configurações de barras de ações, ou no Modo de Edição. Depois arraste feitiços do grimório para os novos espaços.",
		},
	},
	{
		id = "ui-edit-mode",
		de = {
			q = "Wie verschiebe ich Leisten und Fenster?",
			a = "Öffne mit Esc das Spielmenü und wähl „Bearbeitungsmodus“. Jetzt kannst du Aktionsleisten, Minikarte, Questliste, Chat und viele weitere Elemente verschieben und in der Größe ändern. Speichere das Ergebnis als eigenes Layout.",
		},
		en = {
			q = "How do I move bars and windows?",
			a = "Open the game menu with Esc and choose Edit Mode. Now you can move and resize action bars, the minimap, the quest tracker, the chat and many other elements. Save the result as your own layout.",
		},
		fr = {
			q = "Comment déplacer les barres et les fenêtres ?",
			a = "Ouvrez le menu du jeu avec Échap et choisissez le mode Édition. Vous pouvez alors déplacer et redimensionner les barres d'action, la minicarte, le suivi des quêtes, le chat et beaucoup d'autres éléments. Enregistrez le résultat comme votre propre disposition.",
		},
		es = {
			q = "¿Cómo muevo barras y ventanas?",
			a = "Abre el menú del juego con Esc y elige Modo de edición. Ahora puedes mover y cambiar el tamaño de las barras de acción, el minimapa, el seguimiento de misiones, el chat y muchos otros elementos. Guarda el resultado como tu propio diseño.",
		},
		it = {
			q = "Come sposto barre e finestre?",
			a = "Apri il menu di gioco con Esc e scegli Modalità Modifica. Ora puoi spostare e ridimensionare barre delle azioni, minimappa, tracciamento missioni, chat e molti altri elementi. Salva il risultato come tuo layout.",
		},
		ru = {
			q = "Как перемещать панели и окна?",
			a = "Откройте игровое меню клавишей Esc и выберите режим редактирования. Теперь можно двигать и менять размер панелей команд, миникарты, списка заданий, чата и многих других элементов. Сохраните результат как свою раскладку.",
		},
		pt = {
			q = "Como movo barras e janelas?",
			a = "Abra o menu do jogo com Esc e escolha Modo de Edição. Agora você pode mover e redimensionar barras de ações, minimapa, rastreador de missões, chat e muitos outros elementos. Salve o resultado como seu próprio layout.",
		},
	},
	{
		id = "ui-lock-bars",
		de = {
			q = "Mir rutschen ständig Zauber von der Aktionsleiste. Was tun?",
			a = "Sperr die Aktionsleisten in den Optionen bei den Aktionsleisten. Dann lassen sich Zauber nur noch mit gedrückter Umschalttaste herausziehen. Ist ein Zauber schon weg, zieh ihn einfach wieder aus dem Zauberbuch (Taste P) auf die Leiste.",
		},
		en = {
			q = "Spells keep falling off my action bar. What can I do?",
			a = "Lock the action bars in the action bar options. Then spells can only be dragged off while holding Shift. If a spell is already gone, drag it back from the spellbook (P key).",
		},
		fr = {
			q = "Mes sorts tombent sans arrêt de ma barre d'action. Que faire ?",
			a = "Verrouillez les barres d'action dans leurs options. Les sorts ne peuvent alors être retirés qu'en maintenant Maj. Si un sort a déjà disparu, faites-le glisser de nouveau depuis le grimoire (touche P).",
		},
		es = {
			q = "Se me caen los hechizos de la barra de acción. ¿Qué hago?",
			a = "Bloquea las barras de acción en sus opciones. Así los hechizos solo se pueden quitar manteniendo Mayús. Si ya falta un hechizo, arrástralo de nuevo desde el libro de hechizos (tecla P).",
		},
		it = {
			q = "Gli incantesimi continuano a cadere dalla barra. Cosa posso fare?",
			a = "Blocca le barre delle azioni nelle loro opzioni. Così gli incantesimi si possono togliere solo tenendo premuto Maiusc. Se un incantesimo è già sparito, trascinalo di nuovo dal libro (tasto P).",
		},
		ru = {
			q = "Заклинания постоянно слетают с панели команд. Что делать?",
			a = "Закрепите панели команд в их настройках. Тогда заклинания можно убрать, только удерживая Shift. Если заклинание уже пропало, перетащите его обратно из книги заклинаний (клавиша P).",
		},
		pt = {
			q = "Meus feitiços vivem caindo da barra de ações. O que faço?",
			a = "Trave as barras de ações nas opções delas. Assim os feitiços só podem ser arrastados para fora segurando Shift. Se um feitiço já sumiu, arraste de volta do grimório (tecla P).",
		},
	},
	{
		id = "ui-macros",
		de = {
			q = "Was sind Makros und wie lege ich eins an?",
			a = "Ein Makro führt mehrere Befehle mit einem Knopf aus. Gib /makro ein, klick auf „Neu“, wähl Name und Symbol und schreib die Befehle in das Textfeld, zum Beispiel einen Zauber und einen Satz im Chat. Danach ziehst du das Makro auf deine Aktionsleiste.",
		},
		en = {
			q = "What are macros and how do I make one?",
			a = "A macro runs several commands from one button. Type /macro, click New, choose a name and an icon and write the commands into the text field, for example a spell and a line of chat. Then drag the macro onto your action bar.",
		},
		fr = {
			q = "Que sont les macros et comment en créer une ?",
			a = "Une macro lance plusieurs commandes depuis un seul bouton. Tapez /macro, cliquez sur Nouveau, choisissez un nom et une icône, puis écrivez les commandes dans le champ de texte, par exemple un sort et une ligne de chat. Faites ensuite glisser la macro dans votre barre d'action.",
		},
		es = {
			q = "¿Qué son las macros y cómo creo una?",
			a = "Una macro ejecuta varios comandos desde un solo botón. Escribe /macro, pulsa Nueva, elige un nombre y un icono y escribe los comandos en el campo de texto, por ejemplo un hechizo y una línea de chat. Luego arrastra la macro a tu barra de acción.",
		},
		it = {
			q = "Cosa sono le macro e come ne creo una?",
			a = "Una macro esegue più comandi da un solo pulsante. Scrivi /macro, clicca su Nuova, scegli un nome e un'icona e scrivi i comandi nel campo di testo, per esempio un incantesimo e una riga di chat. Poi trascina la macro sulla barra delle azioni.",
		},
		ru = {
			q = "Что такое макросы и как их создать?",
			a = "Макрос выполняет несколько команд одной кнопкой. Введите /macro, нажмите «Создать», выберите имя и значок и впишите команды в текстовое поле, например заклинание и строку для чата. Затем перетащите макрос на панель команд.",
		},
		pt = {
			q = "O que são macros e como crio uma?",
			a = "Uma macro executa vários comandos com um só botão. Digite /macro, clique em Nova, escolha um nome e um ícone e escreva os comandos no campo de texto, por exemplo um feitiço e uma linha de chat. Depois arraste a macro para a barra de ações.",
		},
	},
	{
		id = "ui-target-tab",
		de = {
			q = "Wie wähle ich schnell Gegner aus?",
			a = "Die Tabulatortaste springt zum nächsten Gegner vor dir, jedes weitere Drücken zum nächsten. Mit Esc hebst du das Ziel auf. F1 bist du selbst, F2 bis F5 sind deine Gruppenmitglieder.",
		},
		en = {
			q = "How do I target enemies quickly?",
			a = "Tab jumps to the nearest enemy in front of you, each further press to the next one. Esc clears your target. F1 targets yourself, F2 to F5 your party members.",
		},
		fr = {
			q = "Comment cibler rapidement les ennemis ?",
			a = "Tab passe à l'ennemi le plus proche devant vous, chaque nouvel appui au suivant. Échap annule la cible. F1 vous cible vous-même, F2 à F5 les membres de votre groupe.",
		},
		es = {
			q = "¿Cómo selecciono enemigos rápido?",
			a = "Tab salta al enemigo más cercano delante de ti, y cada pulsación al siguiente. Esc quita el objetivo. F1 te selecciona a ti mismo y F2 a F5 a los miembros del grupo.",
		},
		it = {
			q = "Come seleziono rapidamente i nemici?",
			a = "Tab passa al nemico più vicino davanti a te, ogni pressione successiva al prossimo. Esc toglie il bersaglio. F1 seleziona te stesso, da F2 a F5 i membri del gruppo.",
		},
		ru = {
			q = "Как быстро выбирать врагов целью?",
			a = "Tab выбирает ближайшего врага перед вами, каждое следующее нажатие — следующего. Esc сбрасывает цель. F1 выбирает вас самих, F2–F5 — участников группы.",
		},
		pt = {
			q = "Como seleciono inimigos rápido?",
			a = "Tab pula para o inimigo mais próximo à sua frente, e cada toque seguinte para o próximo. Esc limpa o alvo. F1 seleciona você mesmo e F2 a F5 os membros do grupo.",
		},
	},
	{
		id = "ui-nameplates",
		de = {
			q = "Wie blende ich die Lebensbalken über Gegnern ein?",
			a = "Mit der Taste V schaltest du die Namensplaketten feindlicher Gegner ein und aus. Sie zeigen Leben und Zauber über den Köpfen, sehr praktisch, wenn mehrere Gegner kämpfen. Weitere Einstellungen findest du in den Optionen unter „Namensplaketten“.",
		},
		en = {
			q = "How do I show health bars above enemies?",
			a = "V toggles enemy nameplates. They show health and casts above their heads, very handy when fighting several enemies. More settings are in the options under Nameplates.",
		},
		fr = {
			q = "Comment afficher les barres de vie au-dessus des ennemis ?",
			a = "V active ou désactive les barres de noms des ennemis. Elles montrent la vie et les incantations au-dessus de leur tête, très pratique contre plusieurs ennemis. D'autres réglages se trouvent dans les options, sous Barres de noms.",
		},
		es = {
			q = "¿Cómo muestro barras de salud sobre los enemigos?",
			a = "V activa o desactiva las placas de nombre de los enemigos. Muestran la salud y los lanzamientos sobre su cabeza, muy útil contra varios enemigos. Hay más ajustes en las opciones, en Placas de nombre.",
		},
		it = {
			q = "Come mostro le barre della salute sopra i nemici?",
			a = "V attiva o disattiva le barre dei nomi dei nemici. Mostrano salute e lanci sopra la loro testa, molto comodo contro più nemici. Altre impostazioni sono nelle opzioni, alla voce Barre dei nomi.",
		},
		ru = {
			q = "Как показать полоски здоровья над врагами?",
			a = "V включает и выключает индикаторы здоровья врагов. Они показывают здоровье и применяемые заклинания над головой — очень удобно в бою с несколькими врагами. Другие настройки — в параметрах в разделе индикаторов.",
		},
		pt = {
			q = "Como mostro barras de vida acima dos inimigos?",
			a = "V liga e desliga as placas de nome dos inimigos. Elas mostram vida e lançamentos acima da cabeça, muito útil contra vários inimigos. Mais configurações ficam nas opções, em Placas de nome.",
		},
	},
	{
		id = "ui-auto-loot",
		de = {
			q = "Wie plündere ich alles automatisch?",
			a = "Schalte in den Optionen bei der Steuerung „Automatisch plündern“ ein. Dann landet alles mit einem Rechtsklick auf die Leiche in deinen Taschen. Ohne die Option plünderst du mit gedrückter Umschalttaste automatisch.",
		},
		en = {
			q = "How do I loot everything automatically?",
			a = "Turn on Auto Loot in the control options. Then a right-click on a corpse puts everything into your bags. Without the option, holding Shift while looting does the same.",
		},
		fr = {
			q = "Comment tout ramasser automatiquement ?",
			a = "Activez le butin automatique dans les options de contrôle. Un clic droit sur un cadavre met alors tout dans vos sacs. Sans l'option, maintenir Maj en fouillant fait la même chose.",
		},
		es = {
			q = "¿Cómo despojo todo automáticamente?",
			a = "Activa el despojo automático en las opciones de control. Así un clic derecho en un cadáver mete todo en tus bolsas. Sin la opción, mantener Mayús al despojar hace lo mismo.",
		},
		it = {
			q = "Come raccolgo tutto automaticamente?",
			a = "Attiva il bottino automatico nelle opzioni dei controlli. Così un clic destro su un cadavere mette tutto nelle borse. Senza l'opzione, tenere premuto Maiusc mentre raccogli fa lo stesso.",
		},
		ru = {
			q = "Как собирать всю добычу автоматически?",
			a = "Включите автоматический сбор добычи в настройках управления. Тогда правый щелчок по трупу кладёт всё в сумки. Без этой опции то же самое делает Shift при обыске.",
		},
		pt = {
			q = "Como saqueio tudo automaticamente?",
			a = "Ative o saque automático nas opções de controle. Aí um clique direito num corpo coloca tudo nas bolsas. Sem a opção, segurar Shift ao saquear faz o mesmo.",
		},
	},
	{
		id = "ui-click-to-move",
		de = {
			q = "Kann ich mit der Maus laufen?",
			a = "Ja: Schalte in den Optionen bei der Steuerung „Klicken zum Bewegen“ ein, dann läufst du per Rechtsklick dorthin. Ohne die Option laufen beide Maustasten zusammen gedrückt geradeaus. Die Num-Lock-Taste schaltet Dauerlauf ein.",
		},
		en = {
			q = "Can I move with the mouse?",
			a = "Yes: turn on Click-to-Move in the control options, then a right-click moves you there. Without it, holding both mouse buttons runs forward. Num Lock toggles autorun.",
		},
		fr = {
			q = "Puis-je me déplacer avec la souris ?",
			a = "Oui : activez le déplacement par clic dans les options de contrôle, un clic droit vous y emmène alors. Sinon, maintenir les deux boutons de la souris fait avancer. Verr. num active la course automatique.",
		},
		es = {
			q = "¿Puedo moverme con el ratón?",
			a = "Sí: activa Hacer clic para moverse en las opciones de control y un clic derecho te lleva allí. Sin eso, mantener los dos botones del ratón te hace avanzar. Bloq Num activa la carrera automática.",
		},
		it = {
			q = "Posso muovermi con il mouse?",
			a = "Sì: attiva Clic per muoverti nelle opzioni dei controlli, poi un clic destro ti porta lì. Senza, tenere premuti entrambi i tasti del mouse fa avanzare. Bloc Num attiva la corsa automatica.",
		},
		ru = {
			q = "Можно ли передвигаться мышью?",
			a = "Да: включите перемещение щелчком в настройках управления, тогда правый щелчок отправит вас в точку. Без этого бег вперёд — при зажатых обеих кнопках мыши. Num Lock включает автобег.",
		},
		pt = {
			q = "Posso me mover com o mouse?",
			a = "Sim: ative Clicar para mover nas opções de controle e um clique direito leva você até lá. Sem isso, segurar os dois botões do mouse faz correr para frente. Num Lock liga a corrida automática.",
		},
	},
	{
		id = "ui-camera",
		de = {
			q = "Wie zoome ich die Kamera weiter heraus?",
			a = "Mit dem Mausrad zoomst du hinein und heraus. Mit gedrückter linker Maustaste drehst du die Kamera, mit der rechten auch deinen Charakter. Die maximale Entfernung stellst du in den Optionen bei der Kamera ein.",
		},
		en = {
			q = "How do I zoom the camera further out?",
			a = "The mouse wheel zooms in and out. Holding the left mouse button turns the camera, holding the right one turns your character too. Set the maximum distance in the camera options.",
		},
		fr = {
			q = "Comment éloigner davantage la caméra ?",
			a = "La molette de la souris zoome et dézoome. Maintenir le bouton gauche fait tourner la caméra, le bouton droit fait aussi tourner votre personnage. Réglez la distance maximale dans les options de caméra.",
		},
		es = {
			q = "¿Cómo alejo más la cámara?",
			a = "La rueda del ratón acerca y aleja. Con el botón izquierdo pulsado giras la cámara; con el derecho también giras a tu personaje. Ajusta la distancia máxima en las opciones de cámara.",
		},
		it = {
			q = "Come allontano di più la telecamera?",
			a = "La rotellina del mouse avvicina e allontana. Tenendo premuto il tasto sinistro ruoti la telecamera, con il destro ruoti anche il personaggio. Imposta la distanza massima nelle opzioni della telecamera.",
		},
		ru = {
			q = "Как отдалить камеру сильнее?",
			a = "Колесо мыши приближает и отдаляет. С зажатой левой кнопкой камера вращается, с правой — поворачивается и персонаж. Максимальное расстояние задаётся в настройках камеры.",
		},
		pt = {
			q = "Como afasto mais a câmera?",
			a = "A roda do mouse aproxima e afasta. Segurando o botão esquerdo você gira a câmera; segurando o direito, gira também o personagem. Ajuste a distância máxima nas opções de câmera.",
		},
	},
	{
		id = "ui-compare-items",
		de = {
			q = "Wie vergleiche ich Gegenstände mit meiner Ausrüstung?",
			a = "Fahr mit der Maus über einen Gegenstand und halt die Umschalttaste gedrückt: Daneben erscheint der Tooltip des Gegenstands, den du gerade trägst. So siehst du sofort, welche Werte besser sind.",
		},
		en = {
			q = "How do I compare items with my gear?",
			a = "Hover over an item and hold Shift: the tooltip of the item you are wearing appears next to it. That shows you right away which stats are better.",
		},
		fr = {
			q = "Comment comparer des objets avec mon équipement ?",
			a = "Survolez un objet et maintenez Maj : l'infobulle de l'objet que vous portez apparaît à côté. Vous voyez ainsi tout de suite quelles caractéristiques sont meilleures.",
		},
		es = {
			q = "¿Cómo comparo objetos con mi equipo?",
			a = "Pasa el ratón por un objeto y mantén Mayús: aparece al lado la descripción del objeto que llevas puesto. Así ves al momento qué atributos son mejores.",
		},
		it = {
			q = "Come confronto gli oggetti con il mio equipaggiamento?",
			a = "Passa sopra un oggetto e tieni premuto Maiusc: accanto compare il tooltip dell'oggetto che indossi. Così vedi subito quali statistiche sono migliori.",
		},
		ru = {
			q = "Как сравнить предметы со своей экипировкой?",
			a = "Наведите курсор на предмет и удерживайте Shift: рядом появится подсказка надетого предмета. Так сразу видно, какие характеристики лучше.",
		},
		pt = {
			q = "Como comparo itens com meu equipamento?",
			a = "Passe o mouse sobre um item e segure Shift: a dica do item que você está usando aparece ao lado. Assim você vê na hora quais atributos são melhores.",
		},
	},
	{
		id = "ui-hide-interface",
		de = {
			q = "Wie blende ich die Oberfläche für ein Bild aus?",
			a = "Alt+Z blendet die ganze Oberfläche aus und wieder ein. Mit der Druck-Taste machst du einen Screenshot; er landet im Ordner Screenshots deiner WoW-Installation.",
		},
		en = {
			q = "How do I hide the interface for a picture?",
			a = "Alt+Z hides and shows the whole interface. The Print Screen key takes a screenshot; it is saved in the Screenshots folder of your WoW installation.",
		},
		fr = {
			q = "Comment masquer l'interface pour une photo ?",
			a = "Alt+Z masque et affiche toute l'interface. La touche Impr. écran prend une capture d'écran ; elle est enregistrée dans le dossier Screenshots de votre installation de WoW.",
		},
		es = {
			q = "¿Cómo oculto la interfaz para una foto?",
			a = "Alt+Z oculta y muestra toda la interfaz. La tecla Impr Pant hace una captura de pantalla, que se guarda en la carpeta Screenshots de tu instalación de WoW.",
		},
		it = {
			q = "Come nascondo l'interfaccia per una foto?",
			a = "Alt+Z nasconde e mostra tutta l'interfaccia. Il tasto Stamp fa uno screenshot, salvato nella cartella Screenshots della tua installazione di WoW.",
		},
		ru = {
			q = "Как скрыть интерфейс для снимка?",
			a = "Alt+Z скрывает и показывает весь интерфейс. Клавиша Print Screen делает снимок экрана; он сохраняется в папке Screenshots вашей установки WoW.",
		},
		pt = {
			q = "Como escondo a interface para uma foto?",
			a = "Alt+Z esconde e mostra toda a interface. A tecla Print Screen tira uma captura de tela, salva na pasta Screenshots da sua instalação do WoW.",
		},
	},
	{
		id = "ui-chat-tabs",
		de = {
			q = "Wie ordne ich mein Chatfenster?",
			a = "Rechtsklick auf einen Chat-Reiter öffnet seine Einstellungen: Dort legst du fest, welche Nachrichten er zeigt, und änderst die Schriftgröße. Über das Menü legst du auch neue Reiter an, etwa einen nur für Gilde und Flüstern.",
		},
		en = {
			q = "How do I organise my chat window?",
			a = "Right-click a chat tab to open its settings: choose which messages it shows and change the font size. From the same menu you can create new tabs, for example one only for guild and whispers.",
		},
		fr = {
			q = "Comment organiser ma fenêtre de chat ?",
			a = "Faites un clic droit sur un onglet de chat pour ouvrir ses paramètres : choisissez les messages qu'il affiche et changez la taille de police. Depuis le même menu, vous pouvez créer de nouveaux onglets, par exemple un seulement pour la guilde et les chuchotements.",
		},
		es = {
			q = "¿Cómo organizo mi ventana de chat?",
			a = "Haz clic derecho en una pestaña del chat para abrir sus ajustes: elige qué mensajes muestra y cambia el tamaño de la letra. Desde el mismo menú puedes crear pestañas nuevas, por ejemplo una solo para la hermandad y los susurros.",
		},
		it = {
			q = "Come organizzo la finestra della chat?",
			a = "Clic destro su una scheda della chat per aprirne le impostazioni: scegli quali messaggi mostra e cambia la dimensione del carattere. Dallo stesso menu puoi creare nuove schede, per esempio una solo per gilda e sussurri.",
		},
		ru = {
			q = "Как настроить окно чата?",
			a = "Щёлкните правой кнопкой по вкладке чата, чтобы открыть её настройки: выберите, какие сообщения она показывает, и измените размер шрифта. В том же меню можно создать новые вкладки, например только для гильдии и шёпота.",
		},
		pt = {
			q = "Como organizo minha janela de chat?",
			a = "Clique com o botão direito numa aba do chat para abrir as configurações: escolha quais mensagens ela mostra e mude o tamanho da fonte. No mesmo menu dá para criar novas abas, por exemplo uma só para guilda e sussurros.",
		},
	},
	{
		id = "ui-minimap",
		de = {
			q = "Was kann die Minikarte?",
			a = "Sie zeigt deine Umgebung, Questziele in der Nähe, Gruppenmitglieder und, mit einer Aufspürfähigkeit, Kräuter, Erze oder Gegner. Mit Plus und Minus zoomst du; über den Knopf mit der Lupe wählst du, was aufgespürt wird. Fahr über Symbole, um zu sehen, was sie bedeuten.",
		},
		en = {
			q = "What does the minimap show?",
			a = "Your surroundings, nearby quest objectives, party members and, with a tracking ability, herbs, ore or enemies. Plus and minus zoom; the magnifier button chooses what is tracked. Hover over icons to see what they are.",
		},
		fr = {
			q = "Que montre la minicarte ?",
			a = "Vos environs, les objectifs de quête proches, les membres du groupe et, avec une technique de pistage, les herbes, le minerai ou les ennemis. Plus et moins zooment ; le bouton loupe choisit ce qui est pisté. Survolez les icônes pour savoir ce qu'elles sont.",
		},
		es = {
			q = "¿Qué muestra el minimapa?",
			a = "Tus alrededores, objetivos de misión cercanos, miembros del grupo y, con una habilidad de rastreo, hierbas, mineral o enemigos. Más y menos hacen zoom; el botón de la lupa elige qué se rastrea. Pasa el ratón por los iconos para ver qué son.",
		},
		it = {
			q = "Cosa mostra la minimappa?",
			a = "I dintorni, gli obiettivi delle missioni vicini, i membri del gruppo e, con un'abilità di tracciamento, erbe, minerali o nemici. Più e meno fanno lo zoom; il pulsante della lente sceglie cosa tracciare. Passa sopra le icone per vedere cosa sono.",
		},
		ru = {
			q = "Что показывает миникарта?",
			a = "Окрестности, ближайшие цели заданий, участников группы, а со способностью поиска — травы, руду или врагов. Плюс и минус меняют масштаб; кнопка с лупой выбирает, что искать. Наведите курсор на значки, чтобы узнать, что это.",
		},
		pt = {
			q = "O que o minimapa mostra?",
			a = "Seus arredores, objetivos de missão próximos, membros do grupo e, com uma habilidade de rastreamento, ervas, minério ou inimigos. Mais e menos dão zoom; o botão da lupa escolhe o que rastrear. Passe o mouse nos ícones para ver o que são.",
		},
	},
	{
		id = "ui-graphics-models",
		de = {
			q = "Kann ich zwischen alten und neuen Modellen wählen?",
			a = "Ja, WoW: Forever bietet klassische und hochauflösende Modelle. Die Auswahl findest du in den Grafikoptionen. Wenn das Spiel ruckelt, senk dort auch die Grafikqualität oder die Sichtweite.",
		},
		en = {
			q = "Can I choose between classic and new models?",
			a = "Yes, WoW: Forever offers classic and high-definition models. The choice is in the graphics options. If the game stutters, lower the graphics quality or view distance there too.",
		},
		fr = {
			q = "Puis-je choisir entre modèles classiques et nouveaux ?",
			a = "Oui, WoW: Forever propose des modèles classiques et en haute définition. Le choix se fait dans les options graphiques. Si le jeu saccade, baissez-y aussi la qualité graphique ou la distance d'affichage.",
		},
		es = {
			q = "¿Puedo elegir entre modelos clásicos y nuevos?",
			a = "Sí, WoW: Forever ofrece modelos clásicos y de alta definición. Se elige en las opciones de gráficos. Si el juego va a tirones, baja ahí también la calidad gráfica o la distancia de visión.",
		},
		it = {
			q = "Posso scegliere tra modelli classici e nuovi?",
			a = "Sì, WoW: Forever offre modelli classici e ad alta definizione. La scelta è nelle opzioni grafiche. Se il gioco scatta, abbassa lì anche la qualità grafica o la distanza visiva.",
		},
		ru = {
			q = "Можно ли выбрать между классическими и новыми моделями?",
			a = "Да, WoW: Forever предлагает классические модели и модели высокой чёткости. Выбор — в настройках графики. Если игра подтормаживает, там же снизьте качество графики или дальность обзора.",
		},
		pt = {
			q = "Posso escolher entre modelos clássicos e novos?",
			a = "Sim, o WoW: Forever oferece modelos clássicos e em alta definição. A escolha fica nas opções de gráficos. Se o jogo travar, reduza ali também a qualidade gráfica ou a distância de visão.",
		},
	},
	{
		id = "ui-reset-settings",
		de = {
			q = "Wie setze ich meine Oberfläche ganz zurück?",
			a = "Beende das Spiel und benenne im WoW-Forever-Ordner den Ordner WTF um, zum Beispiel in WTF_alt. Beim nächsten Start sind alle Einstellungen und Addon-Daten wie neu. Geht etwas schief, nennst du den Ordner einfach zurück.",
		},
		en = {
			q = "How do I reset my interface completely?",
			a = "Close the game and rename the WTF folder in your WoW: Forever folder, for example to WTF_old. On the next start all settings and addon data are fresh. If something goes wrong, simply rename the folder back.",
		},
		fr = {
			q = "Comment réinitialiser complètement mon interface ?",
			a = "Fermez le jeu et renommez le dossier WTF de votre dossier WoW: Forever, par exemple en WTF_old. Au prochain lancement, tous les réglages et données d'addons repartent de zéro. En cas de problème, renommez simplement le dossier comme avant.",
		},
		es = {
			q = "¿Cómo reinicio la interfaz por completo?",
			a = "Cierra el juego y cambia el nombre de la carpeta WTF de tu carpeta de WoW: Forever, por ejemplo a WTF_old. Al iniciar de nuevo, todos los ajustes y datos de addons empiezan de cero. Si algo sale mal, vuelve a poner el nombre original a la carpeta.",
		},
		it = {
			q = "Come azzero completamente l'interfaccia?",
			a = "Chiudi il gioco e rinomina la cartella WTF nella cartella di WoW: Forever, per esempio in WTF_old. Al prossimo avvio tutte le impostazioni e i dati degli addon ripartono da zero. Se qualcosa va storto, ridai semplicemente alla cartella il nome di prima.",
		},
		ru = {
			q = "Как полностью сбросить интерфейс?",
			a = "Закройте игру и переименуйте папку WTF в папке WoW: Forever, например в WTF_old. При следующем запуске все настройки и данные аддонов будут как новые. Если что-то пойдёт не так, просто верните папке прежнее имя.",
		},
		pt = {
			q = "Como redefino minha interface por completo?",
			a = "Feche o jogo e renomeie a pasta WTF na pasta do WoW: Forever, por exemplo para WTF_old. Na próxima vez, todas as configurações e dados de addons começam do zero. Se algo der errado, é só voltar o nome da pasta.",
		},
	},
	{
		id = "ui-sit",
		de = {
			q = "Wie setze ich mich hin?",
			a = "Die Taste X setzt dich hin und lässt dich wieder aufstehen. Beim Essen und Trinken setzt du dich automatisch. Bewegst du dich, stehst du auf und hörst auf zu essen.",
		},
		en = {
			q = "How do I sit down?",
			a = "X makes you sit down and stand up again. You sit automatically while eating and drinking. Moving makes you stand up and stop eating.",
		},
		fr = {
			q = "Comment m'asseoir ?",
			a = "X vous fait asseoir puis relever. Vous vous asseyez automatiquement en mangeant et en buvant. Bouger vous fait vous relever et interrompt le repas.",
		},
		es = {
			q = "¿Cómo me siento?",
			a = "X te sienta y te vuelve a levantar. Te sientas solo al comer y beber. Al moverte te levantas y dejas de comer.",
		},
		it = {
			q = "Come mi siedo?",
			a = "X ti fa sedere e rialzare. Ti siedi automaticamente mentre mangi e bevi. Muoverti ti fa alzare e interrompe il pasto.",
		},
		ru = {
			q = "Как сесть?",
			a = "X сажает персонажа и поднимает обратно. Во время еды и питья вы садитесь автоматически. Если сдвинуться, персонаж встанет и перестанет есть.",
		},
		pt = {
			q = "Como me sento?",
			a = "X faz você sentar e levantar de novo. Você senta automaticamente ao comer e beber. Ao se mexer, você levanta e para de comer.",
		},
	},
})
