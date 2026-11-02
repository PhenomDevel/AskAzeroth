local _, ns = ...

-- FAQ: Gold and trade. See Core/Faq.lua for the format.
ns.Faq.Add("gold", {
	{
		id = "gold-earn",
		de = {
			q = "Wie verdiene ich Gold?",
			a = "Verkauf graue Gegenstände und alles, was du nicht brauchst, beim Händler, erledige Quests und verkauf gesammelte Rohstoffe wie Erz, Kräuter oder Leder im Auktionshaus. Kauf nie Gold auf anderen Seiten: WoW: Forever bestraft Käufer und Verkäufer.",
		},
		en = {
			q = "How do I earn gold?",
			a = "Sell grey items and things you do not need to a vendor, complete quests and sell gathered materials such as ore, herbs or leather in the auction house. Never buy gold from other sites: WoW: Forever punishes both buyers and sellers.",
		},
		fr = {
			q = "Comment gagner de l'or ?",
			a = "Vendez les objets gris et ce dont vous n'avez pas besoin à un marchand, terminez des quêtes et vendez à l'hôtel des ventes les matériaux récoltés comme le minerai, les herbes ou le cuir. N'achetez jamais d'or sur d'autres sites : WoW: Forever sanctionne les acheteurs comme les vendeurs.",
		},
		es = {
			q = "¿Cómo gano oro?",
			a = "Vende a un vendedor los objetos grises y lo que no necesites, completa misiones y vende en la casa de subastas materiales recolectados como mineral, hierbas o cuero. Nunca compres oro en otras páginas: WoW: Forever castiga tanto a quien compra como a quien vende.",
		},
		it = {
			q = "Come guadagno oro?",
			a = "Vendi a un mercante gli oggetti grigi e ciò che non ti serve, completa missioni e vendi alla casa d'aste i materiali raccolti come minerali, erbe o cuoio. Non comprare mai oro da altri siti: WoW: Forever punisce sia chi compra sia chi vende.",
		},
		ru = {
			q = "Как заработать золото?",
			a = "Продавайте торговцу серые и ненужные предметы, выполняйте задания и продавайте на аукционе собранные материалы: руду, травы или кожу. Никогда не покупайте золото на сторонних сайтах: в WoW: Forever наказывают и покупателей, и продавцов.",
		},
		pt = {
			q = "Como ganho ouro?",
			a = "Venda a um mercador itens cinzas e o que você não precisa, complete missões e venda na casa de leilões materiais coletados como minério, ervas ou couro. Nunca compre ouro em outros sites: o WoW: Forever pune quem compra e quem vende.",
		},
	},
	{
		id = "gold-item-quality",
		de = {
			q = "Was bedeuten die Farben der Gegenstände?",
			a = "Grau ist Plunder für den Händler, Weiß ist gewöhnlich, Grün selten, Blau rar, Lila episch und Orange legendär. Höhere Qualität heißt meist bessere Werte.",
		},
		en = {
			q = "What do the colours of items mean?",
			a = "Grey is junk for the vendor, white is common, green uncommon, blue rare, purple epic and orange legendary. Higher quality usually means better stats.",
		},
		fr = {
			q = "Que signifient les couleurs des objets ?",
			a = "Gris est de la camelote pour le marchand, blanc est commun, vert inhabituel, bleu rare, violet épique et orange légendaire. Une qualité plus élevée signifie généralement de meilleures caractéristiques.",
		},
		es = {
			q = "¿Qué significan los colores de los objetos?",
			a = "Gris es chatarra para el vendedor, blanco es común, verde poco común, azul raro, morado épico y naranja legendario. Más calidad suele significar mejores atributos.",
		},
		it = {
			q = "Cosa indicano i colori degli oggetti?",
			a = "Grigio è robaccia da vendere, bianco è comune, verde non comune, blu raro, viola epico e arancione leggendario. Una qualità più alta di solito significa statistiche migliori.",
		},
		ru = {
			q = "Что означают цвета предметов?",
			a = "Серый — хлам на продажу, белый — обычный, зелёный — необычный, синий — редкий, фиолетовый — эпический, оранжевый — легендарный. Чем выше качество, тем обычно лучше характеристики.",
		},
		pt = {
			q = "O que significam as cores dos itens?",
			a = "Cinza é lixo para o mercador, branco é comum, verde incomum, azul raro, roxo épico e laranja lendário. Qualidade maior costuma significar atributos melhores.",
		},
	},
	{
		id = "gold-binding",
		de = {
			q = "Was heißt „Wird beim Aufheben gebunden“ und „Wird beim Anlegen gebunden“?",
			a = "Gegenstände, die beim Aufheben gebunden werden, gehören dir ab dem Plündern und lassen sich nicht handeln. Gegenstände, die beim Anlegen gebunden werden, kannst du handeln oder verkaufen, bis du sie einmal trägst.",
		},
		en = {
			q = "What do \"Binds when picked up\" and \"Binds when equipped\" mean?",
			a = "Items that bind when picked up belong to you from the moment you loot them and cannot be traded. Items that bind when equipped can be traded or sold until you wear them once.",
		},
		fr = {
			q = "Que signifient « Lié quand ramassé » et « Lié quand équipé » ?",
			a = "Les objets liés quand ramassés vous appartiennent dès que vous les récupérez et ne peuvent pas être échangés. Les objets liés quand équipés peuvent être échangés ou vendus tant que vous ne les avez pas portés.",
		},
		es = {
			q = "¿Qué significan «Se liga al recogerlo» y «Se liga al equiparlo»?",
			a = "Los objetos que se ligan al recogerlos son tuyos desde que los despojas y no se pueden comerciar. Los que se ligan al equiparlos se pueden comerciar o vender hasta que te los pones una vez.",
		},
		it = {
			q = "Cosa significano «Si vincola alla raccolta» e «Si vincola all'equipaggiamento»?",
			a = "Gli oggetti che si vincolano alla raccolta sono tuoi da quando li prendi e non si possono scambiare. Quelli che si vincolano all'equipaggiamento si possono scambiare o vendere finché non li indossi una volta.",
		},
		ru = {
			q = "Что значит «Персональный при поднятии» и «Становится персональным при надевании»?",
			a = "Предметы, персональные при поднятии, принадлежат вам с момента добычи, и передать их нельзя. Предметы, становящиеся персональными при надевании, можно передать или продать, пока вы их ни разу не надели.",
		},
		pt = {
			q = "O que significam \"Vinculado quando coletado\" e \"Vinculado quando equipado\"?",
			a = "Itens vinculados quando coletados são seus a partir do saque e não podem ser trocados. Itens vinculados quando equipados podem ser trocados ou vendidos até você usá-los uma vez.",
		},
	},
	{
		id = "gold-auction-house",
		de = {
			q = "Wie funktioniert das Auktionshaus?",
			a = "Bei den Auktionatoren in den großen Städten kaufst und verkaufst du Gegenstände mit anderen Spielern. Für ein Angebot zahlst du eine kleine Anzahlung, die verfällt, wenn nichts verkauft wird. Vergleich die Preise, bevor du anbietest oder kaufst.",
		},
		en = {
			q = "How does the auction house work?",
			a = "Auctioneers in the big cities let you buy and sell items with other players. When you list an item you pay a small deposit, which you lose if it does not sell. Compare prices before you list or buy.",
		},
		fr = {
			q = "Comment fonctionne l'hôtel des ventes ?",
			a = "Les commissaires-priseurs des grandes villes vous permettent d'acheter et de vendre des objets avec d'autres joueurs. Quand vous mettez un objet en vente, vous payez un petit dépôt, perdu si l'objet ne se vend pas. Comparez les prix avant de vendre ou d'acheter.",
		},
		es = {
			q = "¿Cómo funciona la casa de subastas?",
			a = "Los subastadores de las grandes ciudades te permiten comprar y vender objetos con otros jugadores. Al poner un objeto en venta pagas un pequeño depósito, que pierdes si no se vende. Compara precios antes de vender o comprar.",
		},
		it = {
			q = "Come funziona la casa d'aste?",
			a = "I banditori delle grandi città ti permettono di comprare e vendere oggetti con altri giocatori. Quando metti in vendita un oggetto paghi un piccolo deposito, che perdi se non si vende. Confronta i prezzi prima di vendere o comprare.",
		},
		ru = {
			q = "Как работает аукцион?",
			a = "Аукционисты в больших городах позволяют покупать и продавать предметы другим игрокам. Выставляя предмет, вы платите небольшой залог, который пропадёт, если предмет не продастся. Сравнивайте цены, прежде чем выставлять или покупать.",
		},
		pt = {
			q = "Como funciona a casa de leilões?",
			a = "Os leiloeiros das grandes cidades permitem comprar e vender itens com outros jogadores. Ao anunciar um item você paga um pequeno depósito, que perde se não vender. Compare preços antes de anunciar ou comprar.",
		},
	},
	{
		id = "gold-mail",
		de = {
			q = "Wie verschicke ich Post?",
			a = "Nutze einen Briefkasten, meist steht einer neben dem Gasthaus. Du kannst Briefe, Gegenstände und Gold an andere Charaktere schicken, auch an deine eigenen Twinks im selben Regelwerk und in derselben Fraktion. Jeder Brief kostet ein wenig Porto.",
		},
		en = {
			q = "How do I send mail?",
			a = "Use a mailbox, there is usually one next to an inn. You can send letters, items and gold to other characters, including your own alts on the same rule set and faction. Each letter costs a little postage.",
		},
		fr = {
			q = "Comment envoyer du courrier ?",
			a = "Utilisez une boîte aux lettres, il y en a généralement une près de chaque auberge. Vous pouvez envoyer des lettres, des objets et de l'or à d'autres personnages, y compris vos rerolls du même ensemble de règles et de la même faction. Chaque lettre coûte un petit affranchissement.",
		},
		es = {
			q = "¿Cómo envío correo?",
			a = "Usa un buzón; suele haber uno junto a cada posada. Puedes enviar cartas, objetos y oro a otros personajes, también a tus alters del mismo conjunto de reglas y facción. Cada carta cuesta un poco de franqueo.",
		},
		it = {
			q = "Come invio la posta?",
			a = "Usa una cassetta delle lettere, di solito ce n'è una vicino a ogni locanda. Puoi inviare lettere, oggetti e oro ad altri personaggi, compresi i tuoi alt dello stesso set di regole e della stessa fazione. Ogni lettera costa un po' di affrancatura.",
		},
		ru = {
			q = "Как отправить почту?",
			a = "Воспользуйтесь почтовым ящиком, обычно он стоит рядом с таверной. Можно отправлять письма, предметы и золото другим персонажам, в том числе своим альтам того же набора правил и фракции. Каждое письмо стоит немного за пересылку.",
		},
		pt = {
			q = "Como envio correspondência?",
			a = "Use uma caixa de correio; costuma haver uma ao lado das estalagens. Você pode enviar cartas, itens e ouro a outros personagens, inclusive seus alts do mesmo conjunto de regras e facção. Cada carta custa um pouco de postagem.",
		},
	},
	{
		id = "gold-bags",
		de = {
			q = "Wie bekomme ich mehr Taschenplatz?",
			a = "Taschen gibt es bei Händlern (oft Gemischtwaren- oder Handwerkswarenhändler), bei Schneidern oder im Auktionshaus der großen Städte. Jede Tasche kommt in einen der Taschenplätze neben deinem Rucksack. Die Bank in den Hauptstädten bietet noch mehr Platz.",
		},
		en = {
			q = "How do I get more bag space?",
			a = "Bags are sold by vendors (often general goods or trade supplies vendors), by tailors or in the auction house of the big cities. Each bag goes into one of the bag slots next to your backpack. The bank in the capital cities stores even more.",
		},
		fr = {
			q = "Comment avoir plus de place dans mes sacs ?",
			a = "Les sacs sont vendus par des marchands (souvent de fournitures générales ou de matériel d'artisanat), par les tailleurs ou à l'hôtel des ventes des grandes villes. Chaque sac se place dans un des emplacements à côté de votre sac à dos. La banque des capitales stocke encore plus.",
		},
		es = {
			q = "¿Cómo consigo más espacio en las bolsas?",
			a = "Las bolsas las venden vendedores (a menudo de suministros generales o de artesanía), los sastres o la casa de subastas de las grandes ciudades. Cada bolsa va en una de las ranuras junto a tu mochila. El banco de las capitales guarda aún más.",
		},
		it = {
			q = "Come ottengo più spazio nelle borse?",
			a = "Le borse si comprano dai mercanti (spesso di articoli vari o forniture artigianali), dai sarti o alla casa d'aste delle grandi città. Ogni borsa va in uno degli spazi accanto allo zaino. La banca delle capitali conserva ancora di più.",
		},
		ru = {
			q = "Как получить больше места в сумках?",
			a = "Сумки продают торговцы (часто товарами повседневного спроса или ремесленными товарами), портные или аукцион в больших городах. Каждая сумка ставится в одну из ячеек рядом с рюкзаком. Ещё больше хранит банк в столицах.",
		},
		pt = {
			q = "Como consigo mais espaço nas bolsas?",
			a = "Bolsas são vendidas por mercadores (muitas vezes de artigos gerais ou suprimentos de ofício), por alfaiates ou na casa de leilões das grandes cidades. Cada bolsa vai num dos espaços ao lado da mochila. O banco das capitais guarda ainda mais.",
		},
	},
	{
		id = "gold-coins",
		de = {
			q = "Wie rechnet man Gold, Silber und Kupfer um?",
			a = "100 Kupfer sind 1 Silber, 100 Silber sind 1 Gold. Am Anfang verdienst du vor allem Kupfer und Silber; dein erstes Gold ist ein guter Meilenstein.",
		},
		en = {
			q = "How do gold, silver and copper add up?",
			a = "100 copper make 1 silver, 100 silver make 1 gold. Early on you mostly earn copper and silver; your first gold is a nice milestone.",
		},
		fr = {
			q = "Comment se convertissent l'or, l'argent et le cuivre ?",
			a = "100 pièces de cuivre font 1 pièce d'argent, 100 pièces d'argent font 1 pièce d'or. Au début, vous gagnez surtout du cuivre et de l'argent ; votre première pièce d'or est une belle étape.",
		},
		es = {
			q = "¿Cómo se convierten oro, plata y cobre?",
			a = "100 de cobre son 1 de plata y 100 de plata son 1 de oro. Al principio ganas sobre todo cobre y plata; tu primera moneda de oro es un buen hito.",
		},
		it = {
			q = "Come si convertono oro, argento e rame?",
			a = "100 rame fanno 1 argento, 100 argento fanno 1 oro. All'inizio guadagni soprattutto rame e argento; il tuo primo oro è un bel traguardo.",
		},
		ru = {
			q = "Как соотносятся золото, серебро и медь?",
			a = "100 медных монет — это 1 серебряная, 100 серебряных — 1 золотая. Поначалу вы зарабатываете в основном медь и серебро; первая золотая монета — приятная веха.",
		},
		pt = {
			q = "Como se convertem ouro, prata e cobre?",
			a = "100 de cobre fazem 1 de prata, 100 de prata fazem 1 de ouro. No começo você ganha principalmente cobre e prata; sua primeira peça de ouro é um belo marco.",
		},
	},
	{
		id = "gold-trade-window",
		de = {
			q = "Wie handle ich mit anderen Spielern?",
			a = "Rechtsklick auf den Spieler und „Handeln“. Legt beide eure Gegenstände und Gold ins Handelsfenster, prüft alles genau und klickt dann beide auf „Handeln“. Erst wenn beide bestätigt haben, wird getauscht.",
		},
		en = {
			q = "How do I trade with other players?",
			a = "Right-click the player and choose Trade. Both put items and gold into the trade window, check everything carefully, then both click Trade. The exchange only happens once both have confirmed.",
		},
		fr = {
			q = "Comment faire un échange avec d'autres joueurs ?",
			a = "Clic droit sur le joueur puis « Échanger ». Chacun place objets et or dans la fenêtre d'échange, vérifiez tout attentivement, puis cliquez tous les deux sur Échanger. L'échange n'a lieu qu'une fois que les deux ont confirmé.",
		},
		es = {
			q = "¿Cómo comercio con otros jugadores?",
			a = "Clic derecho en el jugador y elige «Comerciar». Ambos ponéis objetos y oro en la ventana de comercio, revisad todo con cuidado y luego pulsad los dos Comerciar. El intercambio solo se hace cuando ambos confirman.",
		},
		it = {
			q = "Come scambio con altri giocatori?",
			a = "Clic destro sul giocatore e scegli «Scambia». Entrambi mettete oggetti e oro nella finestra di scambio, controllate tutto con attenzione e poi cliccate entrambi su Scambia. Lo scambio avviene solo quando entrambi hanno confermato.",
		},
		ru = {
			q = "Как обмениваться с другими игроками?",
			a = "Щёлкните правой кнопкой по игроку и выберите «Обмен». Оба кладут предметы и золото в окно обмена, внимательно всё проверяют и нажимают «Обмен». Сделка проходит только после подтверждения обоими.",
		},
		pt = {
			q = "Como negocio com outros jogadores?",
			a = "Clique com o botão direito no jogador e escolha \"Negociar\". Os dois colocam itens e ouro na janela de negociação, conferem tudo com atenção e clicam em Negociar. A troca só acontece quando os dois confirmam.",
		},
	},
	{
		id = "gold-scams",
		de = {
			q = "Wie schütze ich mich vor Betrug?",
			a = "Handle nur über das Handelsfenster und prüf Gegenstand und Betrag, bevor du bestätigst. Schick nie Gold im Voraus per Post an Fremde. Links zu fremden Seiten, Gold-Angebote oder „Blizzard-Mitarbeiter“, die dein Passwort wollen, sind immer Betrug: melden und ignorieren.",
		},
		en = {
			q = "How do I protect myself from scams?",
			a = "Only trade through the trade window and check the item and amount before confirming. Never send gold in advance by mail to strangers. Links to other sites, gold offers or Blizzard staff asking for your password are always scams: report and ignore.",
		},
		fr = {
			q = "Comment me protéger des arnaques ?",
			a = "N'échangez que par la fenêtre d'échange et vérifiez l'objet et le montant avant de confirmer. N'envoyez jamais d'or d'avance par courrier à des inconnus. Les liens vers d'autres sites, les offres d'or ou les « employés Blizzard » qui demandent votre mot de passe sont toujours des arnaques : signalez et ignorez.",
		},
		es = {
			q = "¿Cómo me protejo de las estafas?",
			a = "Comercia solo con la ventana de comercio y revisa el objeto y la cantidad antes de confirmar. Nunca envíes oro por adelantado por correo a desconocidos. Los enlaces a otras páginas, las ofertas de oro o los «empleados de Blizzard» que piden tu contraseña son siempre estafas: denuncia e ignora.",
		},
		it = {
			q = "Come mi proteggo dalle truffe?",
			a = "Scambia solo tramite la finestra di scambio e controlla oggetto e importo prima di confermare. Non spedire mai oro in anticipo per posta a sconosciuti. Link ad altri siti, offerte di oro o «dipendenti Blizzard» che chiedono la password sono sempre truffe: segnala e ignora.",
		},
		ru = {
			q = "Как защититься от мошенников?",
			a = "Обменивайтесь только через окно обмена и проверяйте предмет и сумму перед подтверждением. Никогда не отправляйте незнакомцам золото по почте заранее. Ссылки на сторонние сайты, предложения золота или «сотрудники Blizzard», просящие пароль, — всегда мошенничество: жалуйтесь и игнорируйте.",
		},
		pt = {
			q = "Como me protejo de golpes?",
			a = "Negocie só pela janela de negociação e confira o item e o valor antes de confirmar. Nunca mande ouro adiantado pelo correio a desconhecidos. Links para outros sites, ofertas de ouro ou \"funcionários da Blizzard\" pedindo sua senha são sempre golpe: denuncie e ignore.",
		},
	},
	{
		id = "gold-cod",
		de = {
			q = "Was ist Nachnahme bei der Post?",
			a = "Mit Nachnahme verschickst du einen Gegenstand, und der Empfänger muss den festgelegten Betrag zahlen, um ihn zu bekommen. Prüf vor dem Annehmen, was drin ist und ob der Preis stimmt; du kannst den Brief auch zurückschicken.",
		},
		en = {
			q = "What is cash on delivery in the mail?",
			a = "With COD you send an item and the recipient must pay the set amount to take it. Before accepting, check what it is and whether the price is right; you can also return the letter.",
		},
		fr = {
			q = "Qu'est-ce que le contre-remboursement au courrier ?",
			a = "Avec le contre-remboursement, vous envoyez un objet et le destinataire doit payer le montant fixé pour le récupérer. Avant d'accepter, vérifiez ce que c'est et si le prix est juste ; vous pouvez aussi renvoyer la lettre.",
		},
		es = {
			q = "¿Qué es el contra reembolso en el correo?",
			a = "Con el contra reembolso envías un objeto y el destinatario tiene que pagar la cantidad fijada para recogerlo. Antes de aceptar, comprueba qué es y si el precio es correcto; también puedes devolver la carta.",
		},
		it = {
			q = "Cos'è il contrassegno nella posta?",
			a = "Con il contrassegno spedisci un oggetto e il destinatario deve pagare l'importo stabilito per ritirarlo. Prima di accettare controlla cos'è e se il prezzo è giusto; puoi anche rispedire la lettera.",
		},
		ru = {
			q = "Что такое наложенный платёж на почте?",
			a = "С наложенным платежом вы отправляете предмет, а получатель должен заплатить указанную сумму, чтобы его забрать. Прежде чем принять, проверьте, что это и верна ли цена; письмо можно и вернуть.",
		},
		pt = {
			q = "O que é pagamento na entrega no correio?",
			a = "Com pagamento na entrega você envia um item e o destinatário precisa pagar o valor definido para pegá-lo. Antes de aceitar, veja o que é e se o preço está certo; você também pode devolver a carta.",
		},
	},
	{
		id = "gold-mail-expiry",
		de = {
			q = "Wie lange bleibt Post im Briefkasten?",
			a = "Briefe bleiben eine Weile liegen, die verbleibenden Tage stehen am Brief. Danach werden sie zurückgeschickt oder gelöscht. Hol Gold und Gegenstände also rechtzeitig ab.",
		},
		en = {
			q = "How long does mail stay in the mailbox?",
			a = "Letters stay for a while; the days left are shown on the letter. After that they are returned or deleted. Collect gold and items in time.",
		},
		fr = {
			q = "Combien de temps le courrier reste-t-il dans la boîte ?",
			a = "Les lettres restent un moment ; les jours restants sont indiqués sur la lettre. Ensuite, elles sont renvoyées ou supprimées. Récupérez l'or et les objets à temps.",
		},
		es = {
			q = "¿Cuánto tiempo se queda el correo en el buzón?",
			a = "Las cartas se quedan un tiempo; los días que faltan aparecen en la carta. Después se devuelven o se borran. Recoge el oro y los objetos a tiempo.",
		},
		it = {
			q = "Quanto resta la posta nella cassetta?",
			a = "Le lettere restano per un po'; i giorni rimasti sono indicati sulla lettera. Poi vengono rispedite o eliminate. Ritira oro e oggetti in tempo.",
		},
		ru = {
			q = "Сколько почта хранится в ящике?",
			a = "Письма хранятся какое-то время; оставшиеся дни указаны на письме. Потом они возвращаются или удаляются. Забирайте золото и предметы вовремя.",
		},
		pt = {
			q = "Quanto tempo a correspondência fica na caixa?",
			a = "As cartas ficam por um tempo; os dias restantes aparecem na carta. Depois são devolvidas ou apagadas. Retire ouro e itens a tempo.",
		},
	},
	{
		id = "gold-ah-fees",
		de = {
			q = "Was kostet das Verkaufen im Auktionshaus?",
			a = "Beim Einstellen zahlst du eine Anzahlung, die du verlierst, wenn nichts verkauft wird. Bei einem Verkauf behält das Auktionshaus einen kleinen Anteil. Setz deshalb realistische Preise und vergleich mit anderen Angeboten.",
		},
		en = {
			q = "What does selling in the auction house cost?",
			a = "When listing you pay a deposit, which you lose if it does not sell. When it sells, the auction house keeps a small cut. So set realistic prices and compare with other listings.",
		},
		fr = {
			q = "Combien coûte la vente à l'hôtel des ventes ?",
			a = "En mettant en vente, vous payez un dépôt, perdu si rien ne se vend. En cas de vente, l'hôtel des ventes garde une petite commission. Fixez donc des prix réalistes et comparez avec les autres offres.",
		},
		es = {
			q = "¿Cuánto cuesta vender en la casa de subastas?",
			a = "Al poner algo en venta pagas un depósito, que pierdes si no se vende. Si se vende, la casa de subastas se queda una pequeña comisión. Así que pon precios realistas y compara con otras ofertas.",
		},
		it = {
			q = "Quanto costa vendere alla casa d'aste?",
			a = "Quando metti in vendita paghi un deposito, che perdi se non si vende. Se si vende, la casa d'aste trattiene una piccola percentuale. Quindi fissa prezzi realistici e confronta con le altre offerte.",
		},
		ru = {
			q = "Сколько стоит продажа на аукционе?",
			a = "При выставлении вы платите залог, который пропадёт, если ничего не продастся. При продаже аукцион удерживает небольшую комиссию. Поэтому ставьте реальные цены и сравнивайте с другими лотами.",
		},
		pt = {
			q = "Quanto custa vender na casa de leilões?",
			a = "Ao anunciar você paga um depósito, que perde se não vender. Quando vende, a casa de leilões fica com uma pequena comissão. Então defina preços realistas e compare com outros anúncios.",
		},
	},
	{
		id = "gold-ah-bid-buyout",
		de = {
			q = "Was ist der Unterschied zwischen Gebot und Sofortkauf?",
			a = "Beim Gebot bietest du mit, und wer bei Ablauf der Auktion am meisten geboten hat, bekommt den Gegenstand. Beim Sofortkauf zahlst du den festen Preis und hast ihn gleich. Das Gold bei einem überbotenen Gebot bekommst du per Post zurück.",
		},
		en = {
			q = "What is the difference between bid and buyout?",
			a = "With a bid you join the bidding, and whoever bid the most when the auction ends gets the item. With buyout you pay the fixed price and get it right away. If you are outbid, your gold comes back by mail.",
		},
		fr = {
			q = "Quelle est la différence entre enchère et achat immédiat ?",
			a = "Avec une enchère, vous participez aux enchères, et celui qui a proposé le plus à la fin obtient l'objet. Avec l'achat immédiat, vous payez le prix fixe et l'obtenez tout de suite. Si quelqu'un surenchérit, votre or vous revient par courrier.",
		},
		es = {
			q = "¿Qué diferencia hay entre puja y precio de compra?",
			a = "Con una puja participas en la subasta, y quien haya pujado más al terminar se lleva el objeto. Con el precio de compra pagas un precio fijo y lo recibes al momento. Si te superan la puja, el oro te vuelve por correo.",
		},
		it = {
			q = "Che differenza c'è tra offerta e acquisto immediato?",
			a = "Con un'offerta partecipi all'asta, e chi ha offerto di più alla scadenza ottiene l'oggetto. Con l'acquisto immediato paghi il prezzo fisso e lo ricevi subito. Se qualcuno offre di più, l'oro ti torna per posta.",
		},
		ru = {
			q = "Чем ставка отличается от выкупа?",
			a = "Делая ставку, вы участвуете в торгах, и предмет получает тот, кто предложил больше всех к концу аукциона. При выкупе вы платите фиксированную цену и сразу получаете предмет. Если вашу ставку перебили, золото вернётся по почте.",
		},
		pt = {
			q = "Qual a diferença entre lance e arremate?",
			a = "Com um lance você entra na disputa, e quem tiver dado o maior lance no fim do leilão leva o item. Com o arremate você paga o preço fixo e recebe na hora. Se superarem seu lance, o ouro volta pelo correio.",
		},
	},
	{
		id = "gold-bank",
		de = {
			q = "Wie funktioniert die Bank?",
			a = "Bei den Bankiers in den Hauptstädten lagerst du Gegenstände, die du nicht ständig brauchst. Weitere Taschenplätze in der Bank kannst du gegen Gold dazukaufen. Die Bank gehört nur diesem Charakter.",
		},
		en = {
			q = "How does the bank work?",
			a = "At the bankers in capital cities you store items you do not need all the time. You can buy more bag slots in the bank for gold. The bank belongs to this character only.",
		},
		fr = {
			q = "Comment fonctionne la banque ?",
			a = "Chez les banquiers des capitales, vous entreposez les objets dont vous n'avez pas besoin en permanence. Vous pouvez acheter des emplacements de sac supplémentaires à la banque contre de l'or. La banque appartient à ce personnage uniquement.",
		},
		es = {
			q = "¿Cómo funciona el banco?",
			a = "Con los banqueros de las capitales guardas objetos que no necesitas siempre. Puedes comprar más ranuras de bolsa en el banco con oro. El banco pertenece solo a este personaje.",
		},
		it = {
			q = "Come funziona la banca?",
			a = "Dai banchieri delle capitali depositi gli oggetti che non ti servono sempre. Puoi comprare altri spazi per borse in banca con l'oro. La banca appartiene solo a questo personaggio.",
		},
		ru = {
			q = "Как работает банк?",
			a = "У банкиров в столицах вы храните предметы, которые нужны не постоянно. За золото в банке можно купить дополнительные ячейки для сумок. Банк принадлежит только этому персонажу.",
		},
		pt = {
			q = "Como funciona o banco?",
			a = "Com os banqueiros das capitais você guarda itens que não precisa o tempo todo. Dá para comprar mais espaços de bolsa no banco com ouro. O banco pertence só a este personagem.",
		},
	},
	{
		id = "gold-stacks",
		de = {
			q = "Wie teile ich einen Stapel?",
			a = "Halt die Umschalttaste gedrückt und klick auf den Stapel; dann wählst du, wie viele du nehmen willst. So kannst du zum Beispiel einen Teil verkaufen oder verschicken.",
		},
		en = {
			q = "How do I split a stack?",
			a = "Hold Shift and click the stack; then choose how many to take. That way you can, for example, sell or mail part of it.",
		},
		fr = {
			q = "Comment diviser une pile ?",
			a = "Maintenez Maj et cliquez sur la pile ; choisissez ensuite combien en prendre. Vous pouvez ainsi, par exemple, en vendre ou en envoyer une partie.",
		},
		es = {
			q = "¿Cómo divido un montón?",
			a = "Mantén Mayús y haz clic en el montón; luego elige cuántos coger. Así puedes, por ejemplo, vender o enviar una parte.",
		},
		it = {
			q = "Come divido una pila?",
			a = "Tieni premuto Maiusc e clicca sulla pila; poi scegli quanti prenderne. Così puoi, per esempio, venderne o spedirne una parte.",
		},
		ru = {
			q = "Как разделить стопку?",
			a = "Удерживайте Shift и щёлкните по стопке, затем выберите, сколько взять. Так можно, например, продать или отправить часть.",
		},
		pt = {
			q = "Como divido uma pilha?",
			a = "Segure Shift e clique na pilha; depois escolha quantos pegar. Assim você pode, por exemplo, vender ou enviar parte dela.",
		},
	},
	{
		id = "gold-destroy-item",
		de = {
			q = "Wie werfe ich einen Gegenstand weg?",
			a = "Zieh ihn aus der Tasche auf eine freie Stelle der Spielwelt und bestätige das Zerstören. Das lässt sich nicht rückgängig machen, also verkauf lieber, was noch Gold bringt.",
		},
		en = {
			q = "How do I throw an item away?",
			a = "Drag it out of your bag onto an empty spot in the game world and confirm destroying it. This cannot be undone, so sell anything that still brings gold.",
		},
		fr = {
			q = "Comment jeter un objet ?",
			a = "Faites-le glisser hors de votre sac sur un endroit vide du monde et confirmez la destruction. C'est irréversible, alors vendez plutôt ce qui rapporte encore de l'or.",
		},
		es = {
			q = "¿Cómo tiro un objeto?",
			a = "Arrástralo fuera de la bolsa a un punto vacío del mundo del juego y confirma que quieres destruirlo. No se puede deshacer, así que vende lo que todavía dé oro.",
		},
		it = {
			q = "Come butto via un oggetto?",
			a = "Trascinalo fuori dalla borsa in un punto vuoto del mondo di gioco e conferma la distruzione. Non si può annullare, quindi vendi ciò che porta ancora oro.",
		},
		ru = {
			q = "Как выбросить предмет?",
			a = "Перетащите его из сумки на пустое место в игровом мире и подтвердите уничтожение. Это нельзя отменить, поэтому лучше продайте то, за что ещё дают золото.",
		},
		pt = {
			q = "Como jogo um item fora?",
			a = "Arraste-o da bolsa para um ponto vazio do mundo do jogo e confirme a destruição. Não dá para desfazer, então venda o que ainda rende ouro.",
		},
	},
	{
		id = "gold-save-for-mount",
		de = {
			q = "Wie spare ich Gold für mein Reittier?",
			a = "Verkauf allen Plunder, gib nur Gold für wirklich nötige Dinge aus (Fähigkeiten, Reparaturen) und verkauf Rohstoffe aus Sammelberufen. Viele Händlergegenstände sind unnötig, da Questbelohnungen und Beute meist besser sind.",
		},
		en = {
			q = "How do I save gold for my mount?",
			a = "Sell all junk, only spend gold on things you really need (abilities, repairs) and sell materials from gathering professions. Many vendor items are unnecessary, since quest rewards and loot are usually better.",
		},
		fr = {
			q = "Comment économiser de l'or pour ma monture ?",
			a = "Vendez toute la camelote, ne dépensez de l'or que pour ce qui est vraiment nécessaire (techniques, réparations) et vendez les matériaux de vos métiers de récolte. Beaucoup d'objets de marchand sont inutiles, car les récompenses de quête et le butin sont généralement meilleurs.",
		},
		es = {
			q = "¿Cómo ahorro oro para mi montura?",
			a = "Vende toda la chatarra, gasta oro solo en lo que de verdad necesites (habilidades, reparaciones) y vende los materiales de las profesiones de recolección. Muchos objetos de vendedor no hacen falta, porque las recompensas de misión y el botín suelen ser mejores.",
		},
		it = {
			q = "Come risparmio oro per la cavalcatura?",
			a = "Vendi tutta la robaccia, spendi oro solo per ciò che serve davvero (abilità, riparazioni) e vendi i materiali delle professioni di raccolta. Molti oggetti dei mercanti sono inutili, perché ricompense delle missioni e bottino di solito sono migliori.",
		},
		ru = {
			q = "Как накопить золото на ездовое животное?",
			a = "Продавайте весь хлам, тратьте золото только на действительно нужное (способности, ремонт) и продавайте материалы собирательских профессий. Многие товары у торговцев не нужны: награды за задания и добыча обычно лучше.",
		},
		pt = {
			q = "Como economizo ouro para a montaria?",
			a = "Venda todo o lixo, gaste ouro só com o que realmente precisa (habilidades, reparos) e venda materiais das profissões de coleta. Muitos itens de mercador são desnecessários, já que recompensas de missão e saque costumam ser melhores.",
		},
	},
	{
		id = "gold-unique",
		de = {
			q = "Was bedeutet „Einzigartig“ bei einem Gegenstand?",
			a = "Du kannst davon nur einen gleichzeitig besitzen oder tragen. Willst du einen zweiten, musst du den ersten erst loswerden. Oft betrifft das Questgegenstände oder besondere Schmuckstücke.",
		},
		en = {
			q = "What does Unique mean on an item?",
			a = "You can only own or wear one of it at a time. To get a second one you first have to get rid of the first. This often applies to quest items or special trinkets.",
		},
		fr = {
			q = "Que signifie « Unique » sur un objet ?",
			a = "Vous ne pouvez en posséder ou en porter qu'un seul à la fois. Pour en avoir un second, il faut d'abord vous débarrasser du premier. Cela concerne souvent les objets de quête ou des bijoux particuliers.",
		},
		es = {
			q = "¿Qué significa «Único» en un objeto?",
			a = "Solo puedes tener o llevar uno a la vez. Para conseguir otro, primero tienes que deshacerte del primero. Suele pasar con objetos de misión o abalorios especiales.",
		},
		it = {
			q = "Cosa significa «Unico» su un oggetto?",
			a = "Puoi possederne o indossarne solo uno alla volta. Per averne un secondo devi prima liberarti del primo. Riguarda spesso oggetti delle missioni o monili speciali.",
		},
		ru = {
			q = "Что значит «Уникальный» на предмете?",
			a = "Можно иметь или носить только один такой предмет за раз. Чтобы получить второй, сначала избавьтесь от первого. Часто это касается предметов для заданий или особых аксессуаров.",
		},
		pt = {
			q = "O que significa \"Único\" num item?",
			a = "Você só pode ter ou usar um de cada vez. Para ter um segundo, primeiro precisa se livrar do primeiro. Isso vale muitas vezes para itens de missão ou berloques especiais.",
		},
	},
})
