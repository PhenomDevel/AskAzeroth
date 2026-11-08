local _, ns = ...

-- FAQ: AskAzeroth itself. See Core/Faq.lua for the format.
ns.Faq.Add("addon", {
	{
		id = "addon-ask",
		de = {
			q = "Wie stelle ich mit AskAzeroth eine Frage?",
			a = "Öffne das Fenster mit `/aa` oder dem Minimap-Button, klicke auf der Seite {Fragen} auf {Frage stellen}, wähle eine Kategorie und schreib eine kurze Zusammenfassung. Erfahrene Spieler mit dem Addon sehen deine Frage und antworten im Thread. Für jede Antwort bekommst du eine Benachrichtigung.",
		},
		en = {
			q = "How do I ask a question with AskAzeroth?",
			a = "Open the window with `/aa` or the minimap button, click {Ask a question} on the {Questions} page, pick a category and write a short summary. Experienced players who use the addon see your question and answer in its thread. You get a notification for every answer.",
		},
		fr = {
			q = "Comment poser une question avec AskAzeroth ?",
			a = "Ouvrez la fenêtre avec `/aa` ou le bouton de la minicarte, cliquez sur {Poser une question} sur la page {Questions}, choisissez une catégorie et écrivez un court résumé. Les joueurs expérimentés qui utilisent l'addon voient votre question et répondent dans son fil. Vous recevez une notification pour chaque réponse.",
		},
		es = {
			q = "¿Cómo hago una pregunta con AskAzeroth?",
			a = "Abre la ventana con `/aa` o el botón del minimapa, pulsa {Hacer una pregunta} en la página {Preguntas}, elige una categoría y escribe un resumen breve. Los jugadores con experiencia que usan el addon ven tu pregunta y responden en su hilo. Recibes un aviso por cada respuesta.",
		},
		it = {
			q = "Come faccio una domanda con AskAzeroth?",
			a = "Apri la finestra con `/aa` o il pulsante della minimappa, clicca su {Fai una domanda} nella pagina {Domande}, scegli una categoria e scrivi un breve riassunto. I giocatori esperti che usano l'addon vedono la tua domanda e rispondono nella sua discussione. Ricevi una notifica per ogni risposta.",
		},
		ru = {
			q = "Как задать вопрос в AskAzeroth?",
			a = "Откройте окно командой `/aa` или кнопкой у миникарты, нажмите {Задать вопрос} на странице {Вопросы}, выберите категорию и напишите короткое описание. Опытные игроки с этим аддоном увидят ваш вопрос и ответят в его ветке. О каждом ответе вы получите уведомление.",
		},
		pt = {
			q = "Como faço uma pergunta com o AskAzeroth?",
			a = "Abra a janela com `/aa` ou o botão do minimapa, clique em {Fazer uma pergunta} na página {Perguntas}, escolha uma categoria e escreva um resumo curto. Jogadores experientes que usam o addon veem sua pergunta e respondem no tópico dela. Você recebe um aviso a cada resposta.",
		},
	},
	{
		id = "addon-who-answers",
		de = {
			q = "Wer beantwortet meine Fragen?",
			a = "Andere Spieler, die AskAzeroth nutzen und dieselbe Sprache lesen, oft im Mentor-Modus. Sie helfen freiwillig und sind keine Blizzard-Mitarbeiter, eine Antwort kann also ein paar Minuten dauern. Am schnellsten klappt es mit einer klaren Zusammenfassung samt Stufe, Gebiet und Questname.",
		},
		en = {
			q = "Who answers my questions?",
			a = "Other players who use AskAzeroth and read the same language, often in mentor mode. They are volunteers, not Blizzard staff, so an answer can take a few minutes. A clear summary with your level, zone and quest name gets the quickest help.",
		},
		fr = {
			q = "Qui répond à mes questions ?",
			a = "D'autres joueurs qui utilisent AskAzeroth et lisent la même langue, souvent en mode mentor. Ce sont des bénévoles, pas des employés de Blizzard : une réponse peut donc prendre quelques minutes. Un résumé clair avec votre niveau, votre zone et le nom de la quête vous aide le plus vite.",
		},
		es = {
			q = "¿Quién responde a mis preguntas?",
			a = "Otros jugadores que usan AskAzeroth y leen el mismo idioma, a menudo en modo mentor. Son voluntarios, no empleados de Blizzard, así que una respuesta puede tardar unos minutos. Un resumen claro con tu nivel, tu zona y el nombre de la misión consigue ayuda más rápido.",
		},
		it = {
			q = "Chi risponde alle mie domande?",
			a = "Altri giocatori che usano AskAzeroth e leggono la stessa lingua, spesso in modalità mentore. Sono volontari, non dipendenti Blizzard, quindi una risposta può richiedere qualche minuto. Un riassunto chiaro con livello, zona e nome della missione ti fa aiutare più in fretta.",
		},
		ru = {
			q = "Кто отвечает на мои вопросы?",
			a = "Другие игроки, которые пользуются AskAzeroth и читают на том же языке, часто в режиме наставника. Это добровольцы, а не сотрудники Blizzard, поэтому ответ может занять несколько минут. Быстрее всего помогут, если в описании есть ваш уровень, зона и название задания.",
		},
		pt = {
			q = "Quem responde às minhas perguntas?",
			a = "Outros jogadores que usam o AskAzeroth e leem o mesmo idioma, muitas vezes no modo mentor. São voluntários, não funcionários da Blizzard, então uma resposta pode levar alguns minutos. Um resumo claro com seu nível, zona e nome da missão traz ajuda mais rápido.",
		},
	},
	{
		id = "addon-language",
		de = {
			q = "In welcher Sprache soll ich fragen?",
			a = "Jede Sprache hat einen eigenen Kanal, und nur Spieler mit dieser Sprache sehen deine Frage. In den Einstellungen legst du fest, welche Sprachen du liest und welche neue Fragen nutzen; im Fenster „Frage stellen“ kannst du sie auch ändern.",
		},
		en = {
			q = "Which language should I ask in?",
			a = "Every language has its own channel, and only players who chose that language see your question. In the settings you pick which languages you read and which one new questions use; you can also change it in the ask dialog.",
		},
		fr = {
			q = "Dans quelle langue dois-je poser ma question ?",
			a = "Chaque langue a son propre canal, et seuls les joueurs qui ont choisi cette langue voient votre question. Dans les paramètres, vous choisissez les langues que vous lisez et celle des nouvelles questions ; vous pouvez aussi la changer dans la fenêtre de question.",
		},
		es = {
			q = "¿En qué idioma debo preguntar?",
			a = "Cada idioma tiene su propio canal, y solo los jugadores que eligieron ese idioma ven tu pregunta. En los ajustes eliges qué idiomas lees y cuál usan las preguntas nuevas; también puedes cambiarlo en la ventana de la pregunta.",
		},
		it = {
			q = "In che lingua devo fare la domanda?",
			a = "Ogni lingua ha il suo canale, e solo i giocatori che hanno scelto quella lingua vedono la tua domanda. Nelle impostazioni scegli quali lingue leggi e quale usano le nuove domande; puoi cambiarla anche nella finestra della domanda.",
		},
		ru = {
			q = "На каком языке задавать вопрос?",
			a = "У каждого языка свой канал, и ваш вопрос видят только игроки, выбравшие этот язык. В настройках вы выбираете, на каких языках читаете и на каком задаются новые вопросы; его можно сменить и в окне вопроса.",
		},
		pt = {
			q = "Em que idioma devo perguntar?",
			a = "Cada idioma tem seu próprio canal, e só jogadores que escolheram esse idioma veem sua pergunta. Nas configurações você escolhe quais idiomas lê e qual as novas perguntas usam; também dá para trocar na janela da pergunta.",
		},
	},
	{
		id = "addon-expiry",
		de = {
			q = "Warum ist meine Frage verschwunden?",
			a = "Fragen bleiben nur eine Weile in der öffentlichen Liste: 3 Tage ohne Antwort, 3 Tage nach der letzten Antwort, 1 Tag nachdem du sie als gelöst markiert hast. Deine eigenen Fragen bleiben mit allen Antworten unter {Meine Fragen}.",
		},
		en = {
			q = "Why did my question disappear?",
			a = "Questions only stay in the public list for a while: 3 days without answers, 3 days after the last answer, 1 day after you mark it as solved. Your own questions and all their answers stay under {My questions}.",
		},
		fr = {
			q = "Pourquoi ma question a-t-elle disparu ?",
			a = "Les questions ne restent qu'un temps dans la liste publique : 3 jours sans réponse, 3 jours après la dernière réponse, 1 jour après l'avoir marquée comme résolue. Vos propres questions et toutes leurs réponses restent dans {Mes questions}.",
		},
		es = {
			q = "¿Por qué ha desaparecido mi pregunta?",
			a = "Las preguntas solo se quedan un tiempo en la lista pública: 3 días sin respuestas, 3 días tras la última respuesta y 1 día después de marcarla como resuelta. Tus propias preguntas y todas sus respuestas siguen en {Mis preguntas}.",
		},
		it = {
			q = "Perché la mia domanda è sparita?",
			a = "Le domande restano nell'elenco pubblico solo per un po': 3 giorni senza risposte, 3 giorni dopo l'ultima risposta, 1 giorno dopo averla segnata come risolta. Le tue domande e tutte le loro risposte restano in {Le mie domande}.",
		},
		ru = {
			q = "Почему мой вопрос исчез?",
			a = "Вопросы остаются в общем списке лишь на время: 3 дня без ответов, 3 дня после последнего ответа, 1 день после отметки «решено». Ваши собственные вопросы со всеми ответами остаются в разделе {Мои вопросы}.",
		},
		pt = {
			q = "Por que minha pergunta sumiu?",
			a = "As perguntas ficam na lista pública só por um tempo: 3 dias sem respostas, 3 dias depois da última resposta, 1 dia depois de marcada como resolvida. Suas próprias perguntas e todas as respostas continuam em {Minhas perguntas}.",
		},
	},
	{
		id = "addon-pin",
		de = {
			q = "Wie behalte ich eine hilfreiche Antwort?",
			a = "Klick auf das Notiz-Symbol neben einer Antwort, um sie anzupinnen. Angepinnte Antworten werden samt Frage auf deinem Rechner gespeichert und laufen nie ab. Du findest sie auf der Seite {Angepinnt}.",
		},
		en = {
			q = "How do I keep a helpful answer?",
			a = "Click the note icon next to an answer to pin it. Pinned answers are saved on your computer together with their question and never expire. You find them on the {Pinned} page.",
		},
		fr = {
			q = "Comment garder une réponse utile ?",
			a = "Cliquez sur l'icône de note à côté d'une réponse pour l'épingler. Les réponses épinglées sont enregistrées sur votre ordinateur avec leur question et n'expirent jamais. Vous les trouvez sur la page {Épinglées}.",
		},
		es = {
			q = "¿Cómo guardo una respuesta útil?",
			a = "Haz clic en el icono de nota junto a una respuesta para fijarla. Las respuestas fijadas se guardan en tu ordenador junto con su pregunta y nunca caducan. Las encuentras en la página {Fijadas}.",
		},
		it = {
			q = "Come conservo una risposta utile?",
			a = "Clicca sull'icona della nota accanto a una risposta per fissarla. Le risposte fissate vengono salvate sul tuo computer insieme alla domanda e non scadono mai. Le trovi nella pagina {Fissate}.",
		},
		ru = {
			q = "Как сохранить полезный ответ?",
			a = "Нажмите на значок заметки рядом с ответом, чтобы закрепить его. Закреплённые ответы хранятся на вашем компьютере вместе с вопросом и никогда не исчезают. Они находятся на странице {Закреплённые}.",
		},
		pt = {
			q = "Como guardo uma resposta útil?",
			a = "Clique no ícone de nota ao lado de uma resposta para fixá-la. Respostas fixadas ficam salvas no seu computador junto com a pergunta e nunca expiram. Você as encontra na página {Fixadas}.",
		},
	},
	{
		id = "addon-mentor",
		de = {
			q = "Was ist der Mentor-Modus?",
			a = "Wer gerne hilft, schaltet in den Einstellungen den Mentor-Modus ein. Mentoren werden über neue Fragen benachrichtigt und können wählen, zu welchen Kategorien und Klassen sie etwas hören möchten.",
		},
		en = {
			q = "What is mentor mode?",
			a = "Players who like to help turn on mentor mode in the settings. They are notified about new questions and can choose the categories and classes they want to hear about.",
		},
		fr = {
			q = "Qu'est-ce que le mode mentor ?",
			a = "Les joueurs qui aiment aider activent le mode mentor dans les paramètres. Ils sont prévenus des nouvelles questions et peuvent choisir les catégories et les classes qui les intéressent.",
		},
		es = {
			q = "¿Qué es el modo mentor?",
			a = "Los jugadores a los que les gusta ayudar activan el modo mentor en los ajustes. Reciben avisos de las preguntas nuevas y pueden elegir las categorías y clases que les interesan.",
		},
		it = {
			q = "Cos'è la modalità mentore?",
			a = "I giocatori a cui piace aiutare attivano la modalità mentore nelle impostazioni. Ricevono notifiche sulle nuove domande e possono scegliere le categorie e le classi che li interessano.",
		},
		ru = {
			q = "Что такое режим наставника?",
			a = "Игроки, которые любят помогать, включают режим наставника в настройках. Они получают уведомления о новых вопросах и могут выбрать интересующие их категории и классы.",
		},
		pt = {
			q = "O que é o modo mentor?",
			a = "Jogadores que gostam de ajudar ativam o modo mentor nas configurações. Eles são avisados sobre novas perguntas e podem escolher as categorias e classes que querem acompanhar.",
		},
	},
	{
		id = "addon-safety",
		de = {
			q = "Was gehört nie in eine Frage?",
			a = "Gib nie dein Passwort, deine Account-E-Mail oder Authenticator-Codes weiter, auch nicht an jemanden, der sich als Blizzard ausgibt: Blizzard fragt im Spiel nie danach. Bei Problemen mit Account, Zahlung oder Technik hilft der Blizzard-Support über den {Hilfe}-Knopf im Spielmenü.",
		},
		en = {
			q = "What should I never post in a question?",
			a = "Never share your password, account email or authenticator codes, not even with someone claiming to be from Blizzard: Blizzard never asks for them in game. For account, payment or technical problems, contact Blizzard support through the {Help} button in the game menu.",
		},
		fr = {
			q = "Que ne dois-je jamais écrire dans une question ?",
			a = "Ne communiquez jamais votre mot de passe, l'e-mail de votre compte ou vos codes d'authentification, même à quelqu'un qui prétend être de Blizzard : Blizzard ne les demande jamais en jeu. Pour les problèmes de compte, de paiement ou techniques, contactez le support Blizzard via le bouton {Aide} du menu du jeu.",
		},
		es = {
			q = "¿Qué no debo escribir nunca en una pregunta?",
			a = "Nunca compartas tu contraseña, el correo de tu cuenta ni los códigos del autenticador, ni siquiera con alguien que diga ser de Blizzard: Blizzard nunca los pide dentro del juego. Para problemas de cuenta, pagos o técnicos, contacta con el soporte de Blizzard con el botón {Ayuda} del menú del juego.",
		},
		it = {
			q = "Cosa non devo mai scrivere in una domanda?",
			a = "Non condividere mai la password, l'e-mail dell'account o i codici dell'autenticatore, nemmeno con chi dice di essere di Blizzard: Blizzard non li chiede mai in gioco. Per problemi di account, pagamenti o tecnici, contatta l'assistenza Blizzard con il pulsante {Aiuto} del menu di gioco.",
		},
		ru = {
			q = "Что никогда нельзя писать в вопросе?",
			a = "Никогда не сообщайте пароль, почту учётной записи или коды аутентификатора, даже тому, кто называет себя сотрудником Blizzard: Blizzard никогда не спрашивает их в игре. С проблемами учётной записи, оплаты или технического характера обращайтесь в поддержку Blizzard через кнопку {Помощь} в игровом меню.",
		},
		pt = {
			q = "O que nunca devo escrever numa pergunta?",
			a = "Nunca compartilhe sua senha, o e-mail da conta ou códigos do autenticador, nem com alguém que diz ser da Blizzard: a Blizzard nunca pede isso dentro do jogo. Para problemas de conta, pagamento ou técnicos, fale com o suporte da Blizzard pelo botão {Ajuda} no menu do jogo.",
		},
	},
	{
		id = "addon-good-question",
		de = {
			q = "Wie stelle ich eine gute Frage?",
			a = "Schreib in die Zusammenfassung, worum es geht, zum Beispiel „Wo finde ich den Questgeber für …?“, und nenne in den Details Quest, Gebiet oder Gegenstand. Deine Stufe, Klasse und dein Gebiet schickt AskAzeroth automatisch mit. Je genauer die Frage, desto schneller die Antwort.",
		},
		en = {
			q = "How do I ask a good question?",
			a = "Put the topic in the summary, for example \"Where do I find the quest giver for ...?\", and name the quest, zone or item in the details. AskAzeroth sends your level, class and zone automatically. The more precise the question, the faster the answer.",
		},
		fr = {
			q = "Comment poser une bonne question ?",
			a = "Indiquez le sujet dans le résumé, par exemple « Où trouver le donneur de la quête … ? », et nommez la quête, la zone ou l'objet dans les détails. AskAzeroth envoie automatiquement votre niveau, votre classe et votre zone. Plus la question est précise, plus la réponse arrive vite.",
		},
		es = {
			q = "¿Cómo hago una buena pregunta?",
			a = "Pon el tema en el resumen, por ejemplo «¿Dónde encuentro a quien da la misión …?», y nombra la misión, la zona o el objeto en los detalles. AskAzeroth envía tu nivel, clase y zona automáticamente. Cuanto más precisa sea la pregunta, antes llega la respuesta.",
		},
		it = {
			q = "Come faccio una buona domanda?",
			a = "Metti l'argomento nel riassunto, per esempio «Dove trovo chi assegna la missione …?», e indica missione, zona o oggetto nei dettagli. AskAzeroth invia automaticamente livello, classe e zona. Più la domanda è precisa, prima arriva la risposta.",
		},
		ru = {
			q = "Как задать хороший вопрос?",
			a = "Укажите тему в описании, например «Где найти того, кто выдаёт задание …?», а в подробностях назовите задание, зону или предмет. Ваш уровень, класс и зону AskAzeroth отправляет сам. Чем точнее вопрос, тем быстрее ответ.",
		},
		pt = {
			q = "Como faço uma boa pergunta?",
			a = "Coloque o assunto no resumo, por exemplo \"Onde encontro quem dá a missão ...?\", e cite a missão, a zona ou o item nos detalhes. O AskAzeroth envia seu nível, classe e zona automaticamente. Quanto mais precisa a pergunta, mais rápida a resposta.",
		},
	},
	{
		id = "addon-no-answer",
		de = {
			q = "Warum bekomme ich keine Antwort?",
			a = "Vielleicht sind gerade wenige Mentoren in deiner Sprache online, oder die Frage ist sehr speziell. Schau zuerst im FAQ nach, warte etwas und frag sonst noch einmal genauer. Mehrere Sprachen in den Einstellungen erreichen mehr Spieler.",
		},
		en = {
			q = "Why do I not get an answer?",
			a = "Maybe few mentors in your language are online right now, or the question is very specific. Check the FAQ first, wait a bit, and otherwise ask again more precisely. Several languages in the settings reach more players.",
		},
		fr = {
			q = "Pourquoi je ne reçois pas de réponse ?",
			a = "Peut-être que peu de mentors de votre langue sont en ligne, ou la question est très particulière. Consultez d'abord la FAQ, patientez un peu, sinon reformulez plus précisément. Avec plusieurs langues dans les paramètres, vous touchez plus de joueurs.",
		},
		es = {
			q = "¿Por qué no recibo respuesta?",
			a = "Quizá haya pocos mentores de tu idioma conectados ahora, o la pregunta es muy concreta. Mira primero las preguntas frecuentes, espera un poco y, si no, vuelve a preguntar con más precisión. Con varios idiomas en los ajustes llegas a más jugadores.",
		},
		it = {
			q = "Perché non ricevo risposta?",
			a = "Forse ora ci sono pochi mentori online nella tua lingua, o la domanda è molto specifica. Guarda prima le FAQ, aspetta un po' e altrimenti chiedi di nuovo in modo più preciso. Con più lingue nelle impostazioni raggiungi più giocatori.",
		},
		ru = {
			q = "Почему мне не отвечают?",
			a = "Возможно, сейчас в сети мало наставников на вашем языке или вопрос очень специфический. Сначала загляните в FAQ, немного подождите, а потом спросите ещё раз, точнее. Если выбрать в настройках несколько языков, вопрос увидит больше игроков.",
		},
		pt = {
			q = "Por que não recebo resposta?",
			a = "Talvez haja poucos mentores do seu idioma online agora, ou a pergunta é muito específica. Veja primeiro o FAQ, espere um pouco e, se não, pergunte de novo com mais precisão. Com vários idiomas nas configurações você alcança mais jogadores.",
		},
	},
	{
		id = "addon-limits",
		de = {
			q = "Warum kann ich keine weitere Frage stellen?",
			a = "Gegen Spam gibt es Grenzen: höchstens 5 offene Fragen gleichzeitig und eine neue Frage pro Minute; wie lange du noch warten musst, zeigt der Knopf {Frage stellen}. Markiere beantwortete Fragen als gelöst oder zieh alte zurück, dann geht es wieder.",
		},
		en = {
			q = "Why can I not ask another question?",
			a = "There are limits against spam: at most 5 open questions at once and one new question per minute; the {Ask a question} button shows how long you still have to wait. Mark answered questions as solved or withdraw old ones, then you can ask again.",
		},
		fr = {
			q = "Pourquoi je ne peux pas poser d'autre question ?",
			a = "Il y a des limites contre le spam : 5 questions ouvertes au maximum et une nouvelle question par minute ; le bouton {Poser une question} indique combien de temps il reste à attendre. Marquez les questions répondues comme résolues ou retirez les anciennes, puis vous pourrez de nouveau demander.",
		},
		es = {
			q = "¿Por qué no puedo hacer otra pregunta?",
			a = "Hay límites contra el spam: como mucho 5 preguntas abiertas a la vez y una pregunta nueva por minuto; el botón {Hacer una pregunta} muestra cuánto te queda por esperar. Marca como resueltas las preguntas respondidas o retira las antiguas y podrás volver a preguntar.",
		},
		it = {
			q = "Perché non posso fare un'altra domanda?",
			a = "Ci sono limiti contro lo spam: al massimo 5 domande aperte alla volta e una nuova domanda al minuto; il pulsante {Fai una domanda} mostra quanto devi ancora aspettare. Segna come risolte le domande con risposta o ritira quelle vecchie, poi potrai chiedere di nuovo.",
		},
		ru = {
			q = "Почему я не могу задать ещё один вопрос?",
			a = "Против спама действуют ограничения: не больше 5 открытых вопросов одновременно и один новый вопрос в минуту; сколько ещё ждать, показывает кнопка {Задать вопрос}. Отметьте отвеченные вопросы как решённые или отзовите старые, и можно спрашивать снова.",
		},
		pt = {
			q = "Por que não consigo fazer outra pergunta?",
			a = "Há limites contra spam: no máximo 5 perguntas abertas ao mesmo tempo e uma pergunta nova por minuto; o botão {Fazer uma pergunta} mostra quanto falta esperar. Marque as perguntas respondidas como resolvidas ou retire as antigas, e você poderá perguntar de novo.",
		},
	},
	{
		id = "addon-solve",
		de = {
			q = "Wann markiere ich eine Frage als gelöst?",
			a = "Sobald dir eine Antwort geholfen hat. Andere sehen dann, dass keine Hilfe mehr nötig ist, und die Frage verschwindet einen Tag später aus der öffentlichen Liste. Du findest sie weiterhin unter {Meine Fragen}.",
		},
		en = {
			q = "When do I mark a question as solved?",
			a = "As soon as an answer helped you. Others then see that no more help is needed, and the question disappears from the public list a day later. You still find it under {My questions}.",
		},
		fr = {
			q = "Quand marquer une question comme résolue ?",
			a = "Dès qu'une réponse vous a aidé. Les autres voient alors qu'il n'y a plus besoin d'aide, et la question disparaît de la liste publique un jour plus tard. Vous la retrouvez toujours dans {Mes questions}.",
		},
		es = {
			q = "¿Cuándo marco una pregunta como resuelta?",
			a = "En cuanto una respuesta te haya ayudado. Así los demás ven que ya no hace falta ayuda, y la pregunta desaparece de la lista pública un día después. La sigues teniendo en {Mis preguntas}.",
		},
		it = {
			q = "Quando segno una domanda come risolta?",
			a = "Appena una risposta ti ha aiutato. Gli altri vedono così che non serve più aiuto, e la domanda sparisce dall'elenco pubblico un giorno dopo. La trovi sempre in {Le mie domande}.",
		},
		ru = {
			q = "Когда отмечать вопрос как решённый?",
			a = "Как только ответ вам помог. Тогда остальные видят, что помощь больше не нужна, и через день вопрос исчезает из общего списка. В разделе {Мои вопросы} он останется.",
		},
		pt = {
			q = "Quando marco uma pergunta como resolvida?",
			a = "Assim que uma resposta tiver ajudado. Os outros veem que não precisa mais de ajuda, e a pergunta some da lista pública um dia depois. Ela continua em {Minhas perguntas}.",
		},
	},
	{
		id = "addon-withdraw",
		de = {
			q = "Wie nehme ich eine Frage zurück?",
			a = "Öffne deine Frage und klick auf {Zurückziehen}. Sie verschwindet für alle. Das ist praktisch, wenn du die Antwort selbst gefunden hast oder dich vertippt hast.",
		},
		en = {
			q = "How do I take a question back?",
			a = "Open your question and click {Withdraw}. It disappears for everyone. Handy if you found the answer yourself or made a typo.",
		},
		fr = {
			q = "Comment retirer une question ?",
			a = "Ouvrez votre question et cliquez sur {Retirer}. Elle disparaît pour tout le monde. Pratique si vous avez trouvé la réponse vous-même ou fait une faute de frappe.",
		},
		es = {
			q = "¿Cómo retiro una pregunta?",
			a = "Abre tu pregunta y pulsa {Retirar}. Desaparece para todos. Es útil si encontraste la respuesta tú mismo o te equivocaste al escribir.",
		},
		it = {
			q = "Come ritiro una domanda?",
			a = "Apri la tua domanda e clicca su {Ritira}. Sparisce per tutti. Comodo se hai trovato la risposta da solo o hai sbagliato a scrivere.",
		},
		ru = {
			q = "Как отозвать вопрос?",
			a = "Откройте свой вопрос и нажмите {Отозвать}. Он исчезнет у всех. Удобно, если вы сами нашли ответ или ошиблись при вводе.",
		},
		pt = {
			q = "Como retiro uma pergunta?",
			a = "Abra sua pergunta e clique em {Retirar}. Ela some para todos. Útil se você achou a resposta sozinho ou digitou algo errado.",
		},
	},
	{
		id = "addon-helped",
		de = {
			q = "Wie bedanke ich mich für eine gute Antwort?",
			a = "Rechtsklick auf eine Antwort auf deine Frage und {Hat mir geholfen}. Das zählt bei dir lokal, wie oft dir ein Spieler geholfen hat, und markiert die Antwort mit einem Haken. Ein kurzes Danke im Flüstern freut die meisten Mentoren zusätzlich.",
		},
		en = {
			q = "How do I thank someone for a good answer?",
			a = "Right-click an answer to your question and choose {Helped me}. It counts locally how often a player helped you and marks the answer with a check mark. A short thank-you whisper makes most mentors happy too.",
		},
		fr = {
			q = "Comment remercier quelqu'un pour une bonne réponse ?",
			a = "Faites un clic droit sur une réponse à votre question et choisissez {M'a aidé}. Cela compte localement combien de fois un joueur vous a aidé et marque la réponse d'une coche. Un petit merci en chuchotement fait aussi plaisir à la plupart des mentors.",
		},
		es = {
			q = "¿Cómo agradezco una buena respuesta?",
			a = "Haz clic derecho en una respuesta a tu pregunta y elige {Me ayudó}. Cuenta en tu equipo cuántas veces te ayudó un jugador y marca la respuesta con una marca de verificación. Un breve gracias por susurro también alegra a la mayoría de los mentores.",
		},
		it = {
			q = "Come ringrazio per una buona risposta?",
			a = "Clic destro su una risposta alla tua domanda e scegli {Mi ha aiutato}. Conta in locale quante volte un giocatore ti ha aiutato e segna la risposta con una spunta. Anche un breve grazie sussurrato fa piacere alla maggior parte dei mentori.",
		},
		ru = {
			q = "Как поблагодарить за хороший ответ?",
			a = "Щёлкните правой кнопкой по ответу на свой вопрос и выберите {Помог мне}. Аддон у вас на компьютере посчитает, сколько раз игрок вам помог, и отметит ответ галочкой. Короткое «спасибо» шёпотом тоже порадует большинство наставников.",
		},
		pt = {
			q = "Como agradeço por uma boa resposta?",
			a = "Clique com o botão direito numa resposta à sua pergunta e escolha {Me ajudou}. Isso conta localmente quantas vezes um jogador ajudou você e marca a resposta com um visto. Um obrigado curto por sussurro também alegra a maioria dos mentores.",
		},
	},
	{
		id = "addon-favorites",
		de = {
			q = "Was bringen Favoriten?",
			a = "Spieler, die du als Favorit markierst (Rechtsklick auf den Namen), stehen mit ihren Fragen oben und mit einem Stern. Über ihre Fragen wirst du immer benachrichtigt. Die Liste liegt nur auf deinem Rechner.",
		},
		en = {
			q = "What are favourites for?",
			a = "Players you mark as favourite (right-click their name) appear at the top with a star. You are always notified about their questions. The list is kept on your computer only.",
		},
		fr = {
			q = "À quoi servent les favoris ?",
			a = "Les joueurs que vous marquez comme favoris (clic droit sur leur nom) apparaissent en haut avec une étoile. Vous êtes toujours prévenu de leurs questions. La liste n'est gardée que sur votre ordinateur.",
		},
		es = {
			q = "¿Para qué sirven los favoritos?",
			a = "Los jugadores que marcas como favoritos (clic derecho en su nombre) aparecen arriba con una estrella. Siempre recibes aviso de sus preguntas. La lista solo se guarda en tu ordenador.",
		},
		it = {
			q = "A cosa servono i preferiti?",
			a = "I giocatori che segni come preferiti (clic destro sul nome) compaiono in alto con una stella. Ricevi sempre una notifica per le loro domande. L'elenco resta solo sul tuo computer.",
		},
		ru = {
			q = "Зачем нужны избранные?",
			a = "Игроки, которых вы отметили как избранных (правый щелчок по имени), показываются сверху со звёздочкой. О их вопросах вы получаете уведомление всегда. Список хранится только на вашем компьютере.",
		},
		pt = {
			q = "Para que servem os favoritos?",
			a = "Jogadores que você marca como favoritos (clique direito no nome) aparecem no topo com uma estrela. Você sempre é avisado das perguntas deles. A lista fica só no seu computador.",
		},
	},
	{
		id = "addon-ignore",
		de = {
			q = "Wie blende ich störende Spieler in AskAzeroth aus?",
			a = "Rechtsklick auf den Namen und {Ignorieren}. Ihre Fragen und Antworten werden eingeklappt; mit einem Klick kannst du sie trotzdem lesen. Auf der Seite {Spieler} hebst du das wieder auf.",
		},
		en = {
			q = "How do I hide annoying players in AskAzeroth?",
			a = "Right-click the name and choose {Ignore}. Their questions and answers are folded away; one click still lets you read them. Undo it on the {Players} page.",
		},
		fr = {
			q = "Comment masquer des joueurs gênants dans AskAzeroth ?",
			a = "Clic droit sur le nom puis {Ignorer}. Leurs questions et réponses sont repliées ; un clic permet quand même de les lire. Vous annulez cela sur la page {Joueurs}.",
		},
		es = {
			q = "¿Cómo oculto a jugadores molestos en AskAzeroth?",
			a = "Clic derecho en el nombre y elige {Ignorar}. Sus preguntas y respuestas quedan plegadas; con un clic aún puedes leerlas. Lo deshaces en la página {Jugadores}.",
		},
		it = {
			q = "Come nascondo i giocatori fastidiosi in AskAzeroth?",
			a = "Clic destro sul nome e scegli {Ignora}. Le loro domande e risposte vengono ripiegate; con un clic puoi comunque leggerle. Lo annulli nella pagina {Giocatori}.",
		},
		ru = {
			q = "Как скрыть надоедливых игроков в AskAzeroth?",
			a = "Щёлкните правой кнопкой по имени и выберите {Игнорировать}. Их вопросы и ответы свернутся; одним щелчком их всё же можно прочитать. Отменить это можно на странице {Игроки}.",
		},
		pt = {
			q = "Como escondo jogadores chatos no AskAzeroth?",
			a = "Clique com o botão direito no nome e escolha {Ignorar}. As perguntas e respostas deles ficam recolhidas; um clique ainda permite lê-las. Desfaça isso na página {Jogadores}.",
		},
	},
	{
		id = "addon-notifications",
		de = {
			q = "Wie stelle ich Benachrichtigungen ein?",
			a = "In den Einstellungen unter {Mentor-Benachrichtigungen} legst du pro Kategorie fest: {Aus}, {Ohne Ton} oder {Mit Ton}. Dort wählst du auch den Ton, wie oft Benachrichtigungen eingeblendet werden und ob der Zähler am Minimap-Button erscheint. Fragen von Favoriten und Antworten auf deine Fragen melden sich immer. Im Kampf gibt es keine Benachrichtigungen, in Instanzen auf Wunsch auch nicht.",
		},
		en = {
			q = "How do I set up notifications?",
			a = "In the settings under {Mentor notifications} you choose per category: {Off}, {Silent} or {With sound}. There you also pick the sound, how often pop-ups appear and whether the counter shows on the minimap button. Questions from favourites and answers to your questions always notify you. There are no notifications in combat, and optionally none in instances.",
		},
		fr = {
			q = "Comment régler les notifications ?",
			a = "Dans les paramètres, sous {Notifications mentor}, vous choisissez par catégorie : {Désactivé}, {Sans son} ou {Avec son}. Vous y réglez aussi le son, la fréquence d'affichage et le compteur sur le bouton de la minicarte. Les questions des favoris et les réponses à vos questions sont toujours signalées. Pas de notification en combat, et en option aucune en instance.",
		},
		es = {
			q = "¿Cómo configuro los avisos?",
			a = "En los ajustes, en {Avisos de mentor}, eliges por categoría: {Desactivado}, {Sin sonido} o {Con sonido}. Ahí también eliges el sonido, cada cuánto se muestran los avisos y si aparece el contador en el botón del minimapa. Las preguntas de favoritos y las respuestas a tus preguntas siempre avisan. No hay avisos en combate y, si quieres, tampoco en instancias.",
		},
		it = {
			q = "Come imposto le notifiche?",
			a = "Nelle impostazioni, in {Notifiche mentore}, scegli per categoria: {Disattivato}, {Senza suono} o {Con suono}. Lì scegli anche il suono, ogni quanto mostrare le notifiche e se far apparire il contatore sul pulsante della minimappa. Le domande dei preferiti e le risposte alle tue domande avvisano sempre. Niente notifiche in combattimento e, se vuoi, nemmeno nelle istanze.",
		},
		ru = {
			q = "Как настроить уведомления?",
			a = "В настройках в разделе {Уведомления наставника} вы выбираете для каждой категории: {Выкл.}, {Без звука} или {Со звуком}. Там же выбирают звук, как часто показывать уведомления и показывать ли счётчик на кнопке миникарты. О вопросах избранных и ответах на ваши вопросы уведомление приходит всегда. В бою уведомлений нет, а по желанию их нет и в подземельях.",
		},
		pt = {
			q = "Como configuro os avisos?",
			a = "Nas configurações, em {Avisos de mentor}, você escolhe por categoria: {Desligado}, {Sem som} ou {Com som}. Ali também escolhe o som, com que frequência os avisos aparecem e se o contador aparece no botão do minimapa. Perguntas de favoritos e respostas às suas perguntas sempre avisam. Não há avisos em combate e, se quiser, nem em instâncias.",
		},
	},
	{
		id = "addon-faq-links",
		de = {
			q = "Wie verweise ich in einer Antwort auf das FAQ?",
			a = "Klick neben {Senden} auf das Buch-Symbol, such den passenden Eintrag und klick ihn an; bis zu drei gehen pro Antwort. Der Fragende sieht unter deiner Antwort einen Link und öffnet den Eintrag mit einem Klick in seiner Sprache.",
		},
		en = {
			q = "How do I point to the FAQ in an answer?",
			a = "Click the book icon next to {Send}, search for the right entry and click it; up to three fit in one answer. The asker sees a link under your answer and opens the entry with one click in their own language.",
		},
		fr = {
			q = "Comment renvoyer vers la FAQ dans une réponse ?",
			a = "Cliquez sur l'icône du livre à côté d'{Envoyer}, cherchez l'entrée qui convient et cliquez dessus ; jusqu'à trois par réponse. La personne qui a demandé voit un lien sous votre réponse et ouvre l'entrée d'un clic, dans sa propre langue.",
		},
		es = {
			q = "¿Cómo enlazo las preguntas frecuentes en una respuesta?",
			a = "Pulsa el icono del libro junto a {Enviar}, busca la entrada adecuada y haz clic en ella; caben hasta tres por respuesta. Quien preguntó ve un enlace bajo tu respuesta y abre la entrada con un clic en su propio idioma.",
		},
		it = {
			q = "Come rimando alle FAQ in una risposta?",
			a = "Clicca sull'icona del libro accanto a {Invia}, cerca la voce giusta e cliccala; ne entrano fino a tre per risposta. Chi ha chiesto vede un link sotto la tua risposta e apre la voce con un clic nella propria lingua.",
		},
		ru = {
			q = "Как сослаться на FAQ в ответе?",
			a = "Нажмите на значок книги рядом с кнопкой {Отправить}, найдите нужную статью и щёлкните по ней; в один ответ помещается до трёх. Автор вопроса увидит ссылку под вашим ответом и откроет статью одним щелчком на своём языке.",
		},
		pt = {
			q = "Como indico o FAQ numa resposta?",
			a = "Clique no ícone do livro ao lado de {Enviar}, procure o item certo e clique nele; cabem até três por resposta. Quem perguntou vê um link abaixo da sua resposta e abre o item com um clique no próprio idioma.",
		},
	},
	{
		id = "addon-offline-questions",
		de = {
			q = "Sehe ich Fragen, die gestellt wurden, während ich offline war?",
			a = "Ja, zum Teil: Nach dem Einloggen fragt AskAzeroth andere Spieler im Kanal nach den aktuellen Fragen. Das dauert ein paar Sekunden. Abgelaufene Fragen kommen nicht zurück.",
		},
		en = {
			q = "Do I see questions asked while I was offline?",
			a = "Partly: after logging in, AskAzeroth asks other players on the channel for the current questions. That takes a few seconds. Expired questions do not come back.",
		},
		fr = {
			q = "Est-ce que je vois les questions posées pendant que j'étais hors ligne ?",
			a = "En partie : après la connexion, AskAzeroth demande les questions en cours aux autres joueurs du canal. Cela prend quelques secondes. Les questions expirées ne reviennent pas.",
		},
		es = {
			q = "¿Veo las preguntas hechas mientras estaba desconectado?",
			a = "En parte: al conectarte, AskAzeroth pide las preguntas actuales a otros jugadores del canal. Tarda unos segundos. Las preguntas caducadas no vuelven.",
		},
		it = {
			q = "Vedo le domande fatte mentre ero offline?",
			a = "In parte: dopo l'accesso, AskAzeroth chiede le domande attuali agli altri giocatori del canale. Ci vogliono pochi secondi. Le domande scadute non tornano.",
		},
		ru = {
			q = "Увижу ли я вопросы, заданные, пока меня не было в игре?",
			a = "Частично: после входа AskAzeroth запрашивает текущие вопросы у других игроков в канале. Это занимает несколько секунд. Истёкшие вопросы не возвращаются.",
		},
		pt = {
			q = "Vejo as perguntas feitas enquanto eu estava offline?",
			a = "Em parte: depois de entrar, o AskAzeroth pede as perguntas atuais a outros jogadores do canal. Leva alguns segundos. Perguntas expiradas não voltam.",
		},
	},
	{
		id = "addon-channel-slot",
		de = {
			q = "Warum taucht ein AskAzeroth-Kanal in meiner Kanalliste auf?",
			a = "AskAzeroth nutzt pro Sprache einen versteckten Chatkanal, um Fragen auszutauschen. Er belegt einen deiner Kanalplätze, zeigt aber keine Nachrichten im Chat. Verlass ihn nicht von Hand, sonst siehst du keine Fragen mehr.",
		},
		en = {
			q = "Why is there an AskAzeroth channel in my channel list?",
			a = "AskAzeroth uses one hidden chat channel per language to exchange questions. It takes one of your channel slots but shows no messages in chat. Do not leave it by hand, or you will not see questions any more.",
		},
		fr = {
			q = "Pourquoi y a-t-il un canal AskAzeroth dans ma liste de canaux ?",
			a = "AskAzeroth utilise un canal de discussion caché par langue pour échanger les questions. Il occupe un de vos emplacements de canal mais n'affiche aucun message dans le chat. Ne le quittez pas à la main, sinon vous ne verrez plus de questions.",
		},
		es = {
			q = "¿Por qué hay un canal de AskAzeroth en mi lista de canales?",
			a = "AskAzeroth usa un canal de chat oculto por idioma para intercambiar preguntas. Ocupa una de tus ranuras de canal, pero no muestra mensajes en el chat. No lo abandones a mano o dejarás de ver preguntas.",
		},
		it = {
			q = "Perché c'è un canale AskAzeroth nel mio elenco canali?",
			a = "AskAzeroth usa un canale di chat nascosto per ogni lingua per scambiare le domande. Occupa uno dei tuoi posti canale ma non mostra messaggi in chat. Non lasciarlo a mano, altrimenti non vedrai più le domande.",
		},
		ru = {
			q = "Почему в моём списке каналов есть канал AskAzeroth?",
			a = "AskAzeroth использует по одному скрытому каналу чата на язык для обмена вопросами. Он занимает одно место в списке каналов, но не показывает сообщений в чате. Не покидайте его вручную, иначе перестанете видеть вопросы.",
		},
		pt = {
			q = "Por que há um canal do AskAzeroth na minha lista de canais?",
			a = "O AskAzeroth usa um canal de bate-papo oculto por idioma para trocar perguntas. Ele ocupa uma das suas vagas de canal, mas não mostra mensagens no chat. Não saia dele manualmente, senão você deixa de ver perguntas.",
		},
	},
	{
		id = "addon-share-chat",
		de = {
			q = "Wie teile ich einen FAQ-Eintrag im Chat?",
			a = "Öffne das Chatfenster und klick bei gedrückter [Shift]-Taste auf einen Eintrag im FAQ. Frage und Antwort landen als „AskAzeroth: …“ in der Eingabezeile; lange Antworten werden gekürzt, damit alles in eine Nachricht passt. Mitspieler mit AskAzeroth sehen „AskAzeroth“ als Link und öffnen den ganzen Eintrag mit einem Klick in ihrer Sprache.",
		},
		en = {
			q = "How do I share a FAQ entry in chat?",
			a = "Open the chat input and hold [Shift] while you click an entry in the FAQ. Question and answer go into the input as \"AskAzeroth: …\"; long answers get shortened so everything fits in one message. Players with AskAzeroth see \"AskAzeroth\" as a link and open the whole entry with one click in their own language.",
		},
		fr = {
			q = "Comment partager une entrée de la FAQ dans la discussion ?",
			a = "Ouvrez la ligne de saisie de la discussion et cliquez sur une entrée de la FAQ en maintenant [Maj]. La question et la réponse s'y ajoutent sous la forme « AskAzeroth: … » ; les longues réponses sont raccourcies pour tenir en un seul message. Les joueurs qui ont AskAzeroth voient « AskAzeroth » comme un lien et ouvrent toute l'entrée d'un clic, dans leur langue.",
		},
		es = {
			q = "¿Cómo comparto una entrada de las preguntas frecuentes en el chat?",
			a = "Abre la línea de escritura del chat y haz clic en una entrada de las preguntas frecuentes manteniendo pulsado [Mayús]. La pregunta y la respuesta aparecen como «AskAzeroth: …»; las respuestas largas se acortan para que todo quepa en un mensaje. Los jugadores con AskAzeroth ven «AskAzeroth» como enlace y abren la entrada completa con un clic en su idioma.",
		},
		it = {
			q = "Come condivido una voce delle FAQ in chat?",
			a = "Apri la riga di scrittura della chat e clicca su una voce delle FAQ tenendo premuto [Maiusc]. Domanda e risposta finiscono nella riga come «AskAzeroth: …»; le risposte lunghe vengono accorciate perché tutto stia in un messaggio. I giocatori con AskAzeroth vedono «AskAzeroth» come link e aprono la voce intera con un clic nella propria lingua.",
		},
		ru = {
			q = "Как поделиться статьёй FAQ в чате?",
			a = "Откройте строку ввода чата и щёлкните по статье в FAQ, удерживая [Shift]. Вопрос и ответ появятся в строке в виде «AskAzeroth: …»; длинные ответы сокращаются, чтобы всё поместилось в одно сообщение. Игроки с AskAzeroth видят «AskAzeroth» как ссылку и одним щелчком открывают всю статью на своём языке.",
		},
		pt = {
			q = "Como compartilho um item do FAQ no chat?",
			a = "Abra a linha de digitação do chat e clique num item do FAQ segurando [Shift]. A pergunta e a resposta vão para a linha como \"AskAzeroth: …\"; respostas longas são encurtadas para caber numa mensagem. Jogadores com AskAzeroth veem \"AskAzeroth\" como link e abrem o item inteiro com um clique no próprio idioma.",
		},
	},
	{
		id = "addon-minimap-button",
		de = {
			q = "Wie blende ich den Minimap-Button aus?",
			a = "In den Einstellungen von AskAzeroth unter {Allgemein}. Das Fenster öffnest du dann weiter mit `/aa` oder über das Addon-Menü an der Minikarte.",
		},
		en = {
			q = "How do I hide the minimap button?",
			a = "In AskAzeroth's settings under {General}. You can still open the window with `/aa` or from the addon compartment at the minimap.",
		},
		fr = {
			q = "Comment masquer le bouton de la minicarte ?",
			a = "Dans les paramètres d'AskAzeroth, sous {Général}. Vous pouvez toujours ouvrir la fenêtre avec `/aa` ou depuis le compartiment des addons près de la minicarte.",
		},
		es = {
			q = "¿Cómo oculto el botón del minimapa?",
			a = "En los ajustes de AskAzeroth, en {General}. Puedes seguir abriendo la ventana con `/aa` o desde el compartimento de addons junto al minimapa.",
		},
		it = {
			q = "Come nascondo il pulsante della minimappa?",
			a = "Nelle impostazioni di AskAzeroth, in {Generale}. Puoi comunque aprire la finestra con `/aa` o dal vano degli addon vicino alla minimappa.",
		},
		ru = {
			q = "Как скрыть кнопку у миникарты?",
			a = "В настройках AskAzeroth в разделе {Общие}. Окно по-прежнему открывается командой `/aa` или из отсека аддонов у миникарты.",
		},
		pt = {
			q = "Como escondo o botão do minimapa?",
			a = "Nas configurações do AskAzeroth, em {Geral}. Você ainda pode abrir a janela com `/aa` ou pelo compartimento de addons junto ao minimapa.",
		},
	},
})
