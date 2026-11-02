local _, ns = ...

-- FAQ: Professions. See Core/Faq.lua for the format.
ns.Faq.Add("prof", {
	{
		id = "prof-learn",
		de = {
			q = "Wie lerne ich einen Beruf?",
			a = "Berufslehrer in Städten und Dörfern bringen ihn dir bei. Du kannst zwei Hauptberufe lernen, zum Beispiel Bergbau und Schmiedekunst oder Kräuterkunde und Alchemie. Kochen, Angeln und Erste Hilfe gehen zusätzlich.",
		},
		en = {
			q = "How do I learn a profession?",
			a = "Profession trainers in cities and towns teach you. You can learn two primary professions, for example mining and blacksmithing or herbalism and alchemy. Cooking, fishing and first aid come on top.",
		},
		fr = {
			q = "Comment apprendre un métier ?",
			a = "Les maîtres de métier des villes et villages vous l'enseignent. Vous pouvez apprendre deux métiers principaux, par exemple minage et forge, ou herboristerie et alchimie. Cuisine, pêche et secourisme s'y ajoutent.",
		},
		es = {
			q = "¿Cómo aprendo una profesión?",
			a = "Te la enseñan los instructores de profesión de ciudades y pueblos. Puedes aprender dos profesiones principales, por ejemplo minería y herrería o herboristería y alquimia. Cocina, pesca y primeros auxilios se suman a ellas.",
		},
		it = {
			q = "Come imparo una professione?",
			a = "Te la insegnano gli istruttori di professione di città e villaggi. Puoi imparare due professioni principali, per esempio estrazione e forgiatura oppure erbalismo e alchimia. Cucina, pesca e primo soccorso si aggiungono.",
		},
		ru = {
			q = "Как освоить профессию?",
			a = "Профессиям учат наставники в городах и деревнях. Можно выучить две основные профессии, например горное дело и кузнечное дело или травничество и алхимию. Кулинария, рыбная ловля и первая помощь идут сверху.",
		},
		pt = {
			q = "Como aprendo uma profissão?",
			a = "Instrutores de profissão nas cidades e vilarejos ensinam. Você pode aprender duas profissões principais, por exemplo mineração e ferraria ou herborismo e alquimia. Culinária, pesca e primeiros socorros vêm de bônus.",
		},
	},
	{
		id = "prof-pairs",
		de = {
			q = "Welche Berufe passen zusammen?",
			a = "Ein Sammelberuf versorgt einen Herstellungsberuf: Bergbau für Schmiedekunst oder Ingenieurskunst, Kräuterkunde für Alchemie, Kürschnerei für Lederverarbeitung. Schneiderei nutzt Stoff von Gegnern und passt gut zu Verzauberkunst. Zwei Sammelberufe bringen das meiste Gold.",
		},
		en = {
			q = "Which professions go well together?",
			a = "A gathering profession supplies a crafting one: mining for blacksmithing or engineering, herbalism for alchemy, skinning for leatherworking. Tailoring uses cloth from enemies and pairs well with enchanting. Two gathering professions earn the most gold.",
		},
		fr = {
			q = "Quels métiers vont bien ensemble ?",
			a = "Un métier de récolte fournit un métier d'artisanat : minage pour forge ou ingénierie, herboristerie pour alchimie, dépeçage pour travail du cuir. La couture utilise le tissu des ennemis et se combine bien avec l'enchantement. Deux métiers de récolte rapportent le plus d'or.",
		},
		es = {
			q = "¿Qué profesiones combinan bien?",
			a = "Una profesión de recolección abastece a una de fabricación: minería para herrería o ingeniería, herboristería para alquimia, desuello para peletería. La sastrería usa la tela de los enemigos y combina bien con encantamiento. Dos profesiones de recolección dan más oro.",
		},
		it = {
			q = "Quali professioni vanno bene insieme?",
			a = "Una professione di raccolta rifornisce una di produzione: estrazione per forgiatura o ingegneria, erbalismo per alchimia, scuoiatura per conciatura. La sartoria usa la stoffa dei nemici e si abbina bene all'incantamento. Due professioni di raccolta fanno guadagnare più oro.",
		},
		ru = {
			q = "Какие профессии хорошо сочетаются?",
			a = "Собирательская профессия снабжает ремесленную: горное дело — кузнечное дело или инженерное дело, травничество — алхимию, снятие шкур — кожевничество. Портняжное дело использует ткань с врагов и хорошо сочетается с наложением чар. Больше всего золота приносят две собирательские профессии.",
		},
		pt = {
			q = "Quais profissões combinam bem?",
			a = "Uma profissão de coleta abastece uma de produção: mineração para ferraria ou engenharia, herborismo para alquimia, esfolamento para couraria. Alfaiataria usa o tecido dos inimigos e combina bem com encantamento. Duas profissões de coleta rendem mais ouro.",
		},
	},
	{
		id = "prof-skill-up",
		de = {
			q = "Wie steigere ich meine Berufsfertigkeit?",
			a = "Die Farbe eines Rezepts zeigt, wie wahrscheinlich ein Fertigkeitspunkt ist: Orange immer, Gelb oft, Grün selten, Grau nie. Ab bestimmten Fertigkeitswerten bringt dir dein Lehrer den nächsten Rang bei, der das Maximum anhebt. Selbst gekochtes Essen gibt in WoW: Forever sogar einen kleinen Erfahrungsbonus.",
		},
		en = {
			q = "How do I raise my profession skill?",
			a = "Recipe colours show how likely a skill point is: orange always, yellow often, green rarely, grey never. At certain skill levels your trainer teaches the next rank, which raises the maximum skill. Crafted food in WoW: Forever even gives a small experience bonus.",
		},
		fr = {
			q = "Comment augmenter ma compétence de métier ?",
			a = "Les couleurs des recettes indiquent la chance d'un point : orange toujours, jaune souvent, vert rarement, gris jamais. À certains paliers, votre maître enseigne le rang suivant, qui relève la compétence maximale. Dans WoW: Forever, les plats cuisinés donnent même un petit bonus d'expérience.",
		},
		es = {
			q = "¿Cómo subo mi habilidad de profesión?",
			a = "Los colores de las recetas indican la probabilidad de un punto: naranja siempre, amarillo a menudo, verde rara vez y gris nunca. Con cierta habilidad, tu instructor te enseña el siguiente rango, que sube la habilidad máxima. En WoW: Forever la comida cocinada incluso da una pequeña bonificación de experiencia.",
		},
		it = {
			q = "Come aumento l'abilità di professione?",
			a = "I colori delle ricette indicano la probabilità di un punto: arancione sempre, giallo spesso, verde raramente, grigio mai. A certi livelli di abilità l'istruttore insegna il grado successivo, che alza l'abilità massima. In WoW: Forever il cibo cucinato dà anche un piccolo bonus di esperienza.",
		},
		ru = {
			q = "Как повысить навык профессии?",
			a = "Цвет рецепта показывает шанс получить очко: оранжевый — всегда, жёлтый — часто, зелёный — редко, серый — никогда. На определённом уровне навыка наставник учит следующей ступени, которая поднимает максимум. В WoW: Forever приготовленная еда даже даёт небольшой бонус к опыту.",
		},
		pt = {
			q = "Como subo a perícia da profissão?",
			a = "As cores das receitas mostram a chance de ganhar um ponto: laranja sempre, amarelo muitas vezes, verde raramente, cinza nunca. Em certos níveis de perícia o instrutor ensina a próxima categoria, que aumenta o máximo. No WoW: Forever, comida preparada ainda dá um pequeno bônus de experiência.",
		},
	},
	{
		id = "prof-gathering-tracking",
		de = {
			q = "Wie finde ich Kräuter und Erze?",
			a = "Kräuterkunde und Bergbau bringen eine Suchfähigkeit mit, die Kräuter oder Erzvorkommen auf deiner Minikarte zeigt. Du schaltest sie über den Verfolgungsknopf an der Minikarte ein. Jedes Gebiet hat Vorkommen für einen bestimmten Fertigkeitsbereich.",
		},
		en = {
			q = "How do I find herbs and ore?",
			a = "Herbalism and mining come with a tracking ability that shows herbs or ore deposits on your minimap. Turn it on from the tracking button at the minimap. Each zone has deposits for a certain skill range.",
		},
		fr = {
			q = "Comment trouver des herbes et du minerai ?",
			a = "L'herboristerie et le minage apportent une technique de pistage qui montre les herbes ou les gisements sur votre minicarte. Activez-la via le bouton de pistage de la minicarte. Chaque zone a des gisements pour une certaine tranche de compétence.",
		},
		es = {
			q = "¿Cómo encuentro hierbas y mineral?",
			a = "La herboristería y la minería traen una habilidad de rastreo que muestra hierbas o filones en el minimapa. Actívala con el botón de rastreo del minimapa. Cada zona tiene recursos para cierto rango de habilidad.",
		},
		it = {
			q = "Come trovo erbe e minerali?",
			a = "Erbalismo ed estrazione danno un'abilità di tracciamento che mostra erbe o giacimenti sulla minimappa. Attivala dal pulsante di tracciamento della minimappa. Ogni zona ha giacimenti per una certa fascia di abilità.",
		},
		ru = {
			q = "Как находить травы и руду?",
			a = "Травничество и горное дело дают способность поиска, которая показывает травы или залежи руды на миникарте. Включите её кнопкой поиска у миникарты. В каждой зоне есть ресурсы для определённого диапазона навыка.",
		},
		pt = {
			q = "Como encontro ervas e minério?",
			a = "Herborismo e mineração trazem uma habilidade de rastreamento que mostra ervas ou veios de minério no minimapa. Ative pelo botão de rastreamento do minimapa. Cada zona tem recursos para certa faixa de perícia.",
		},
	},
	{
		id = "prof-where-learn",
		de = {
			q = "Wo lerne ich Berufe?",
			a = "Bei Berufslehrern. In den Hauptstädten gibt es Lehrer für jeden Beruf, in kleineren Orten oft für einige. Frag eine Stadtwache nach dem Weg, sie markiert den Lehrer auf deiner Karte. Die erste Stufe eines Berufs kostet nur wenig Gold.",
		},
		en = {
			q = "Where do I learn professions?",
			a = "From profession trainers. The capital cities have a trainer for every profession, smaller towns often for some. Ask a city guard for directions, they mark the trainer on your map. The first rank of a profession costs very little.",
		},
		fr = {
			q = "Où apprendre les métiers ?",
			a = "Auprès des maîtres de métier. Les capitales ont un maître pour chaque métier, les petites villes souvent pour quelques-uns. Demandez le chemin à un garde, il marque le maître sur votre carte. Le premier rang d'un métier coûte très peu.",
		},
		es = {
			q = "¿Dónde aprendo profesiones?",
			a = "Con los instructores de profesión. Las capitales tienen instructor para cada profesión, y los pueblos pequeños a menudo para algunas. Pregunta el camino a un guardia; te marca al instructor en el mapa. El primer rango de una profesión cuesta muy poco.",
		},
		it = {
			q = "Dove imparo le professioni?",
			a = "Dagli istruttori di professione. Le capitali hanno un istruttore per ogni professione, i paesi più piccoli spesso solo per alcune. Chiedi la strada a una guardia, che segna l'istruttore sulla mappa. Il primo grado di una professione costa pochissimo.",
		},
		ru = {
			q = "Где учиться профессиям?",
			a = "У наставников профессий. В столицах есть наставник для каждой профессии, в небольших городах — часто только для некоторых. Спросите дорогу у стражника, он отметит наставника на карте. Первая ступень профессии стоит совсем немного.",
		},
		pt = {
			q = "Onde aprendo profissões?",
			a = "Com os instrutores de profissão. As capitais têm instrutor para todas as profissões, e cidades menores muitas vezes para algumas. Peça direções a um guarda, que marca o instrutor no seu mapa. A primeira categoria de uma profissão custa muito pouco.",
		},
	},
	{
		id = "prof-list",
		de = {
			q = "Welche Berufe gibt es?",
			a = "Sammelberufe: Bergbau, Kräuterkunde und Kürschnerei. Herstellungsberufe: Alchemie, Schmiedekunst, Ingenieurskunst, Lederverarbeitung, Schneiderei und Verzauberkunst. Dazu die Nebenberufe Kochen, Angeln und Erste Hilfe, die jeder zusätzlich lernen kann.",
		},
		en = {
			q = "Which professions are there?",
			a = "Gathering: mining, herbalism and skinning. Crafting: alchemy, blacksmithing, engineering, leatherworking, tailoring and enchanting. Plus the secondary professions cooking, fishing and first aid, which everyone can learn on top.",
		},
		fr = {
			q = "Quels métiers existent ?",
			a = "Récolte : minage, herboristerie et dépeçage. Artisanat : alchimie, forge, ingénierie, travail du cuir, couture et enchantement. S'y ajoutent les métiers secondaires cuisine, pêche et secourisme, que tout le monde peut apprendre en plus.",
		},
		es = {
			q = "¿Qué profesiones hay?",
			a = "Recolección: minería, herboristería y desuello. Fabricación: alquimia, herrería, ingeniería, peletería, sastrería y encantamiento. Además están las profesiones secundarias cocina, pesca y primeros auxilios, que todos pueden aprender además.",
		},
		it = {
			q = "Quali professioni ci sono?",
			a = "Raccolta: estrazione, erbalismo e scuoiatura. Produzione: alchimia, forgiatura, ingegneria, conciatura, sartoria e incantamento. In più le professioni secondarie cucina, pesca e primo soccorso, che tutti possono imparare in aggiunta.",
		},
		ru = {
			q = "Какие есть профессии?",
			a = "Собирательские: горное дело, травничество и снятие шкур. Ремесленные: алхимия, кузнечное дело, инженерное дело, кожевничество, портняжное дело и наложение чар. Плюс второстепенные — кулинария, рыбная ловля и первая помощь, их может выучить каждый дополнительно.",
		},
		pt = {
			q = "Quais profissões existem?",
			a = "Coleta: mineração, herborismo e esfolamento. Produção: alquimia, ferraria, engenharia, couraria, alfaiataria e encantamento. Além das profissões secundárias culinária, pesca e primeiros socorros, que todos podem aprender a mais.",
		},
	},
	{
		id = "prof-beginner-choice",
		de = {
			q = "Welche Berufe sind für Anfänger gut?",
			a = "Zwei Sammelberufe wie Kräuterkunde und Bergbau bringen beim Leveln das meiste Gold, weil du die Rohstoffe im Auktionshaus verkaufst. Willst du dir lieber selbst etwas herstellen, nimm einen Sammelberuf und den passenden Herstellungsberuf. Du kannst später jederzeit wechseln.",
		},
		en = {
			q = "Which professions are good for beginners?",
			a = "Two gathering professions such as herbalism and mining earn the most gold while levelling, because you sell the materials in the auction house. If you would rather make things yourself, take a gathering profession and the matching crafting one. You can switch later at any time.",
		},
		fr = {
			q = "Quels métiers conviennent aux débutants ?",
			a = "Deux métiers de récolte comme herboristerie et minage rapportent le plus d'or en montant de niveau, car vous vendez les matériaux à l'hôtel des ventes. Si vous préférez fabriquer vous-même, prenez un métier de récolte et le métier d'artisanat qui va avec. Vous pouvez changer plus tard à tout moment.",
		},
		es = {
			q = "¿Qué profesiones van bien para empezar?",
			a = "Dos de recolección, como herboristería y minería, dan más oro mientras subes de nivel, porque vendes los materiales en la casa de subastas. Si prefieres fabricar tú, coge una de recolección y la de fabricación que encaja. Puedes cambiar más adelante cuando quieras.",
		},
		it = {
			q = "Quali professioni vanno bene per i principianti?",
			a = "Due di raccolta, come erbalismo ed estrazione, fanno guadagnare più oro mentre sali di livello, perché vendi i materiali alla casa d'aste. Se preferisci creare tu, scegli una di raccolta e quella di produzione abbinata. Puoi cambiare più avanti quando vuoi.",
		},
		ru = {
			q = "Какие профессии подходят новичкам?",
			a = "Две собирательские, например травничество и горное дело, приносят больше всего золота во время прокачки, потому что материалы продаются на аукционе. Если хочется создавать вещи самому, возьмите собирательскую профессию и подходящую ремесленную. Позже можно сменить в любой момент.",
		},
		pt = {
			q = "Quais profissões são boas para iniciantes?",
			a = "Duas de coleta, como herborismo e mineração, rendem mais ouro enquanto você sobe de nível, porque você vende os materiais na casa de leilões. Se preferir fabricar, pegue uma de coleta e a de produção que combina. Dá para trocar depois a qualquer momento.",
		},
	},
	{
		id = "prof-ranks",
		de = {
			q = "Warum steigt mein Beruf nicht mehr?",
			a = "Jeder Rang hat eine Obergrenze, zum Beispiel 75 für Lehrling. Geh zu deinem Lehrer und lern den nächsten Rang, sobald du die Grenze erreichst. Manche Ränge setzen auch eine bestimmte Charakterstufe voraus; der Lehrer sagt dir, was fehlt.",
		},
		en = {
			q = "Why does my profession skill not go up any more?",
			a = "Every rank has a cap, for example 75 for Apprentice. Visit your trainer and learn the next rank once you reach it. Some ranks also need a certain character level; the trainer tells you what is missing.",
		},
		fr = {
			q = "Pourquoi ma compétence de métier n'augmente-t-elle plus ?",
			a = "Chaque rang a un plafond, par exemple 75 pour Apprenti. Allez voir votre maître et apprenez le rang suivant une fois le plafond atteint. Certains rangs demandent aussi un niveau de personnage ; le maître vous dit ce qui manque.",
		},
		es = {
			q = "¿Por qué ya no sube mi habilidad de profesión?",
			a = "Cada rango tiene un tope, por ejemplo 75 para Aprendiz. Visita a tu instructor y aprende el siguiente rango cuando lo alcances. Algunos rangos piden también cierto nivel de personaje; el instructor te dice qué falta.",
		},
		it = {
			q = "Perché la mia abilità di professione non sale più?",
			a = "Ogni grado ha un limite, per esempio 75 per Apprendista. Quando lo raggiungi, visita l'istruttore e impara il grado successivo. Alcuni gradi richiedono anche un certo livello del personaggio; l'istruttore ti dice cosa manca.",
		},
		ru = {
			q = "Почему навык профессии больше не растёт?",
			a = "У каждой ступени есть предел, например 75 для «Ученика». Достигнув его, зайдите к наставнику и выучите следующую ступень. Некоторым ступеням нужен и определённый уровень персонажа; наставник подскажет, чего не хватает.",
		},
		pt = {
			q = "Por que minha perícia da profissão não sobe mais?",
			a = "Cada categoria tem um limite, por exemplo 75 para Aprendiz. Ao chegar nele, visite o instrutor e aprenda a próxima categoria. Algumas categorias exigem também certo nível de personagem; o instrutor diz o que falta.",
		},
	},
	{
		id = "prof-tools",
		de = {
			q = "Welche Werkzeuge brauche ich?",
			a = "Bergbau braucht eine Spitzhacke, Kürschnerei ein Kürschnermesser, Schmiedekunst einen Schmiedehammer und Angeln eine Angelrute; Ingenieure brauchen bald einen Schraubenschlüssel. Das alles gibt es bei Handwerkswarenhändlern, meist direkt neben dem Lehrer. Verzauberer stellen sich ihre Rute selbst her, aus einer Kupferrute vom Händler.",
		},
		en = {
			q = "Which tools do I need?",
			a = "Mining needs a mining pick, skinning a skinning knife, blacksmithing a blacksmith hammer and fishing a fishing pole; engineers soon need an arclight spanner. Trade supplies vendors sell all of these, usually right next to the trainer. Enchanters make their runed rod themselves from a copper rod bought from a vendor.",
		},
		fr = {
			q = "De quels outils ai-je besoin ?",
			a = "Le minage demande une pioche de mineur, le dépeçage un couteau à dépecer, la forge un marteau de forgeron et la pêche une canne à pêche ; les ingénieurs ont vite besoin d'une clé spéciale (Arclight Spanner). Les marchands de matériel d'artisanat vendent tout cela, souvent juste à côté du maître. Les enchanteurs fabriquent eux-mêmes leur bâtonnet runique à partir d'un bâtonnet en cuivre acheté chez un marchand.",
		},
		es = {
			q = "¿Qué herramientas necesito?",
			a = "La minería necesita un pico de minero, el desuello un cuchillo de desollar, la herrería un martillo de herrero y la pesca una caña de pescar; los ingenieros pronto necesitan una llave especial (Arclight Spanner). Los vendedores de suministros de artesanía venden todo esto, casi siempre junto al instructor. Los encantadores fabrican ellos mismos su vara rúnica con una vara de cobre comprada a un vendedor.",
		},
		it = {
			q = "Di quali attrezzi ho bisogno?",
			a = "L'estrazione richiede un piccone da minatore, la scuoiatura un coltello da scuoiatore, la forgiatura un martello da fabbro e la pesca una canna da pesca; gli ingegneri presto hanno bisogno di una chiave speciale (Arclight Spanner). Tutto questo lo vendono i mercanti di forniture artigianali, di solito accanto all'istruttore. Gli incantatori si fabbricano da soli la bacchetta runica partendo da una bacchetta di rame comprata da un venditore.",
		},
		ru = {
			q = "Какие инструменты мне нужны?",
			a = "Для горного дела нужна шахтёрская кирка, для снятия шкур — нож для снятия шкур, для кузнечного дела — кузнечный молот, для рыбалки — удочка; инженерам вскоре понадобится особый ключ (Arclight Spanner). Всё это продают торговцы ремесленными товарами, обычно рядом с наставником. Зачарователи сами делают рунический жезл из медного жезла, купленного у торговца.",
		},
		pt = {
			q = "De quais ferramentas preciso?",
			a = "Mineração precisa de picareta de mineração, esfolamento de faca de esfolar, ferraria de martelo de ferreiro e pesca de vara de pescar; engenheiros logo precisam de uma chave especial (Arclight Spanner). Mercadores de suprimentos de ofício vendem tudo isso, geralmente ao lado do instrutor. Encantadores fazem o próprio bastão rúnico a partir de um bastão de cobre comprado de um mercador.",
		},
	},
	{
		id = "prof-recipes",
		de = {
			q = "Wo bekomme ich neue Rezepte?",
			a = "Die meisten lernst du beim Lehrer. Weitere verkaufen Händler in bestimmten Orten, andere findest du als Beute bei Gegnern oder im Auktionshaus. WoW: Forever bringt viele neue Rezepte, frag ruhig, wo ein bestimmtes zu finden ist.",
		},
		en = {
			q = "Where do I get new recipes?",
			a = "Most are taught by your trainer. Others are sold by vendors in certain towns, dropped by enemies or found in the auction house. WoW: Forever adds many new recipes, so feel free to ask where a specific one comes from.",
		},
		fr = {
			q = "Où obtenir de nouvelles recettes ?",
			a = "La plupart sont enseignées par votre maître. D'autres sont vendues par des marchands dans certaines villes, tombent sur des ennemis ou se trouvent à l'hôtel des ventes. WoW: Forever ajoute beaucoup de nouvelles recettes, alors n'hésitez pas à demander d'où vient une recette précise.",
		},
		es = {
			q = "¿Dónde consigo recetas nuevas?",
			a = "La mayoría te las enseña tu instructor. Otras las venden vendedores de ciertos pueblos, las sueltan enemigos o están en la casa de subastas. WoW: Forever añade muchas recetas nuevas, así que pregunta sin problema de dónde sale una en concreto.",
		},
		it = {
			q = "Dove trovo nuove ricette?",
			a = "La maggior parte te le insegna l'istruttore. Altre le vendono mercanti in certi paesi, cadono dai nemici o si trovano alla casa d'aste. WoW: Forever aggiunge molte ricette nuove, quindi chiedi pure da dove viene una ricetta specifica.",
		},
		ru = {
			q = "Где брать новые рецепты?",
			a = "Большинству учит наставник. Другие продают торговцы в определённых городах, они выпадают из врагов или встречаются на аукционе. В WoW: Forever много новых рецептов, так что смело спрашивайте, откуда берётся конкретный.",
		},
		pt = {
			q = "Onde consigo receitas novas?",
			a = "A maioria o instrutor ensina. Outras são vendidas por mercadores em certas cidades, caem de inimigos ou estão na casa de leilões. O WoW: Forever traz muitas receitas novas, então pergunte à vontade de onde vem uma específica.",
		},
	},
	{
		id = "prof-recipe-colors",
		de = {
			q = "Was bedeuten die Farben im Berufefenster?",
			a = "Sie zeigen, wie wahrscheinlich ein Fertigkeitspunkt ist: Orange bringt immer einen, Gelb meistens, Grün selten, Grau nie. Stell also möglichst orange und gelbe Rezepte her, wenn du deinen Beruf steigern willst.",
		},
		en = {
			q = "What do the colours in the profession window mean?",
			a = "They show how likely a skill point is: orange always gives one, yellow usually, green rarely, grey never. So craft orange and yellow recipes when you want to raise your skill.",
		},
		fr = {
			q = "Que signifient les couleurs dans la fenêtre de métier ?",
			a = "Elles indiquent la chance d'un point de compétence : orange en donne toujours un, jaune généralement, vert rarement, gris jamais. Fabriquez donc des recettes orange et jaunes pour monter votre compétence.",
		},
		es = {
			q = "¿Qué significan los colores de la ventana de profesión?",
			a = "Indican la probabilidad de un punto de habilidad: naranja siempre da uno, amarillo casi siempre, verde rara vez y gris nunca. Así que fabrica recetas naranjas y amarillas cuando quieras subir la habilidad.",
		},
		it = {
			q = "Cosa indicano i colori nella finestra della professione?",
			a = "Mostrano la probabilità di un punto abilità: arancione lo dà sempre, giallo di solito, verde raramente, grigio mai. Quindi crea ricette arancioni e gialle quando vuoi alzare l'abilità.",
		},
		ru = {
			q = "Что означают цвета в окне профессии?",
			a = "Они показывают шанс получить очко навыка: оранжевый — всегда, жёлтый — обычно, зелёный — редко, серый — никогда. Чтобы качать навык, создавайте оранжевые и жёлтые рецепты.",
		},
		pt = {
			q = "O que significam as cores na janela da profissão?",
			a = "Elas mostram a chance de um ponto de perícia: laranja sempre dá um, amarelo geralmente, verde raramente, cinza nunca. Então produza receitas laranja e amarelas quando quiser subir a perícia.",
		},
	},
	{
		id = "prof-node-skill",
		de = {
			q = "Warum kann ich dieses Vorkommen nicht abbauen?",
			a = "Jedes Erzvorkommen, Kraut und jede Tierhaut braucht eine Mindestfertigkeit. Fahr mit der Maus darüber: Steht die Fertigkeit rot im Tooltip, ist deine noch zu niedrig. Sammle erst einfachere Vorkommen, bis du sie erreichst.",
		},
		en = {
			q = "Why can I not gather this node?",
			a = "Every ore vein, herb and hide needs a minimum skill. Hover over it: if the skill in the tooltip is red, yours is still too low. Gather easier nodes until you reach it.",
		},
		fr = {
			q = "Pourquoi ne puis-je pas récolter ce point ?",
			a = "Chaque filon, herbe et peau demande une compétence minimale. Survolez-le : si la compétence dans l'infobulle est en rouge, la vôtre est encore trop basse. Récoltez des points plus faciles jusqu'à l'atteindre.",
		},
		es = {
			q = "¿Por qué no puedo recolectar este recurso?",
			a = "Cada filón, hierba y piel pide una habilidad mínima. Pasa el ratón por encima: si la habilidad de la descripción está en rojo, la tuya aún es baja. Recolecta recursos más fáciles hasta alcanzarla.",
		},
		it = {
			q = "Perché non posso raccogliere questo punto?",
			a = "Ogni vena, erba e pelle richiede un'abilità minima. Passaci sopra: se l'abilità nel tooltip è rossa, la tua è ancora troppo bassa. Raccogli punti più facili finché non la raggiungi.",
		},
		ru = {
			q = "Почему я не могу собрать этот ресурс?",
			a = "Каждой жиле, траве и шкуре нужен минимальный навык. Наведите курсор: если навык в подсказке красный, ваш ещё слишком низок. Собирайте ресурсы попроще, пока не дорастёте.",
		},
		pt = {
			q = "Por que não consigo coletar este recurso?",
			a = "Cada veio, erva e pele exige uma perícia mínima. Passe o mouse em cima: se a perícia na dica estiver vermelha, a sua ainda é baixa. Colete recursos mais fáceis até chegar lá.",
		},
	},
	{
		id = "prof-smelting",
		de = {
			q = "Wie mache ich aus Erz Barren?",
			a = "Mit Bergbau lernst du „Verhütten“. Stell dich an eine Schmiede, wie es sie in Städten und vielen Dörfern gibt, öffne den Beruf und verhütte dein Erz zu Barren. Barren brauchen Schmiede und Ingenieure, und sie lassen sich oft besser verkaufen.",
		},
		en = {
			q = "How do I turn ore into bars?",
			a = "Mining teaches you Smelting. Stand next to a forge, found in cities and many villages, open the profession and smelt your ore into bars. Blacksmiths and engineers need bars, and they often sell better too.",
		},
		fr = {
			q = "Comment transformer le minerai en barres ?",
			a = "Le minage vous apprend la fonte. Placez-vous près d'une forge, présente dans les villes et beaucoup de villages, ouvrez le métier et fondez votre minerai en barres. Forgerons et ingénieurs ont besoin de barres, et elles se vendent souvent mieux.",
		},
		es = {
			q = "¿Cómo convierto el mineral en barras?",
			a = "La minería te enseña Fundición. Ponte junto a una forja, que hay en las ciudades y en muchos pueblos, abre la profesión y funde el mineral en barras. Herreros e ingenieros necesitan barras, y además suelen venderse mejor.",
		},
		it = {
			q = "Come trasformo i minerali in barre?",
			a = "L'estrazione ti insegna la fusione. Mettiti vicino a una forgia, presente nelle città e in molti villaggi, apri la professione e fondi i minerali in barre. Fabbri e ingegneri hanno bisogno di barre, e spesso si vendono anche meglio.",
		},
		ru = {
			q = "Как переплавить руду в слитки?",
			a = "Горное дело учит выплавке. Встаньте у горна (они есть в городах и многих деревнях), откройте профессию и переплавьте руду в слитки. Кузнецам и инженерам нужны слитки, и продаются они часто лучше.",
		},
		pt = {
			q = "Como transformo minério em barras?",
			a = "A mineração ensina Fundição. Fique perto de uma forja, presente nas cidades e em muitos vilarejos, abra a profissão e funda o minério em barras. Ferreiros e engenheiros precisam de barras, que muitas vezes vendem melhor também.",
		},
	},
	{
		id = "prof-anvil-forge",
		de = {
			q = "Warum kann ich als Schmied nichts herstellen?",
			a = "Die meisten Schmiederezepte brauchen einen Amboss in der Nähe und einen Schmiedehammer in deinen Taschen. Ambosse stehen meist neben Schmieden in Städten und Dörfern. Fehlt etwas, steht es rot im Rezept.",
		},
		en = {
			q = "Why can I not craft anything as a blacksmith?",
			a = "Most blacksmithing recipes need an anvil nearby and a blacksmith hammer in your bags. Anvils usually stand next to forges in cities and villages. Anything missing is shown in red in the recipe.",
		},
		fr = {
			q = "Pourquoi ne puis-je rien fabriquer en tant que forgeron ?",
			a = "La plupart des recettes de forge demandent une enclume à proximité et un marteau de forgeron dans vos sacs. Les enclumes se trouvent généralement près des forges, dans les villes et villages. Ce qui manque s'affiche en rouge dans la recette.",
		},
		es = {
			q = "¿Por qué no puedo fabricar nada como herrero?",
			a = "La mayoría de las recetas de herrería necesitan un yunque cerca y un martillo de herrero en las bolsas. Los yunques suelen estar junto a las forjas en ciudades y pueblos. Lo que falta aparece en rojo en la receta.",
		},
		it = {
			q = "Perché da fabbro non riesco a creare niente?",
			a = "Quasi tutte le ricette di forgiatura richiedono un'incudine vicina e un martello da fabbro nelle borse. Le incudini di solito sono accanto alle forge in città e villaggi. Ciò che manca appare in rosso nella ricetta.",
		},
		ru = {
			q = "Почему я ничего не могу сковать?",
			a = "Большинству кузнечных рецептов нужна наковальня рядом и кузнечный молот в сумке. Наковальни обычно стоят у горнов в городах и деревнях. Недостающее показано в рецепте красным.",
		},
		pt = {
			q = "Por que não consigo fabricar nada como ferreiro?",
			a = "A maioria das receitas de ferraria exige uma bigorna por perto e um martelo de ferreiro nas bolsas. As bigornas costumam ficar ao lado das forjas nas cidades e vilarejos. O que falta aparece em vermelho na receita.",
		},
	},
	{
		id = "prof-skinning",
		de = {
			q = "Wie funktioniert Kürschnerei?",
			a = "Töte ein Wildtier, plündere es und klick die Leiche danach noch einmal an, um ihr die Haut abzuziehen. Du brauchst ein Kürschnermesser in den Taschen. Leder und Häute verwendet die Lederverarbeitung.",
		},
		en = {
			q = "How does skinning work?",
			a = "Kill a beast, loot it, then click the corpse again to skin it. You need a skinning knife in your bags. Leatherworking uses the leather and hides.",
		},
		fr = {
			q = "Comment fonctionne le dépeçage ?",
			a = "Tuez une bête, fouillez-la, puis cliquez à nouveau sur le cadavre pour la dépecer. Il vous faut un couteau à dépecer dans vos sacs. Le travail du cuir utilise le cuir et les peaux.",
		},
		es = {
			q = "¿Cómo funciona el desuello?",
			a = "Mata una bestia, despójala y vuelve a hacer clic en el cadáver para desollarla. Necesitas un cuchillo de desollar en las bolsas. La peletería usa el cuero y las pieles.",
		},
		it = {
			q = "Come funziona la scuoiatura?",
			a = "Uccidi una bestia, raccogline il bottino e poi clicca di nuovo sul cadavere per scuoiarla. Ti serve un coltello da scuoiatore nelle borse. La conciatura usa cuoio e pelli.",
		},
		ru = {
			q = "Как работает снятие шкур?",
			a = "Убейте зверя, обыщите его, затем щёлкните по трупу ещё раз, чтобы снять шкуру. В сумке должен быть нож для снятия шкур. Кожу и шкуры использует кожевничество.",
		},
		pt = {
			q = "Como funciona o esfolamento?",
			a = "Mate uma fera, saqueie e clique de novo no corpo para esfolá-la. Você precisa de uma faca de esfolar nas bolsas. A couraria usa o couro e as peles.",
		},
	},
	{
		id = "prof-enchanting-disenchant",
		de = {
			q = "Woher bekomme ich Verzauberungsmaterial?",
			a = "Verzauberer zerlegen grüne und bessere Gegenstände mit „Entzaubern“ in Staub, Essenzen und Splitter. Alles Grüne, das du nicht brauchst, ist also wertvolles Material. Seelengebundene Gegenstände kannst du ebenfalls entzaubern.",
		},
		en = {
			q = "Where do I get enchanting materials?",
			a = "Enchanters break green and better items into dust, essences and shards with Disenchant. Every green item you do not need is valuable material. You can disenchant soulbound items too.",
		},
		fr = {
			q = "Où trouver des matériaux d'enchantement ?",
			a = "Les enchanteurs décomposent les objets verts et meilleurs en poussières, essences et éclats avec Désenchanter. Chaque objet vert inutile est un matériau précieux. Vous pouvez aussi désenchanter les objets liés.",
		},
		es = {
			q = "¿Dónde consigo materiales de encantamiento?",
			a = "Los encantadores descomponen objetos verdes o mejores en polvos, esencias y fragmentos con Desencantar. Cada objeto verde que no necesitas es material valioso. También puedes desencantar objetos ligados.",
		},
		it = {
			q = "Dove trovo i materiali per l'incantamento?",
			a = "Gli incantatori scompongono oggetti verdi e migliori in polveri, essenze e frammenti con Disincantare. Ogni oggetto verde che non ti serve è materiale prezioso. Puoi disincantare anche gli oggetti vincolati.",
		},
		ru = {
			q = "Где брать материалы для наложения чар?",
			a = "Зачарователи распыляют зелёные и лучшие предметы на пыль, сущности и осколки. Каждый ненужный зелёный предмет — ценный материал. Распылять можно и персональные предметы.",
		},
		pt = {
			q = "Onde consigo materiais de encantamento?",
			a = "Encantadores desfazem itens verdes ou melhores em pós, essências e fragmentos com Desencantar. Todo item verde que você não usa é material valioso. Dá para desencantar itens vinculados também.",
		},
	},
	{
		id = "prof-enchant-gear",
		de = {
			q = "Wie verzaubere ich Ausrüstung?",
			a = "Öffne Verzauberkunst, wähl eine Verzauberung und klick dann auf den Gegenstand. Für andere Spieler verzauberst du über das Handelsfenster: Sie legen den Gegenstand in das untere Feld, das nicht gehandelt wird. Eine neue Verzauberung ersetzt die alte.",
		},
		en = {
			q = "How do I enchant gear?",
			a = "Open enchanting, choose an enchantment, then click the item. For other players you enchant through the trade window: they put the item into the bottom slot, which is not traded. A new enchantment replaces the old one.",
		},
		fr = {
			q = "Comment enchanter un équipement ?",
			a = "Ouvrez l'enchantement, choisissez un enchantement, puis cliquez sur l'objet. Pour d'autres joueurs, vous enchantez via la fenêtre d'échange : ils placent l'objet dans l'emplacement du bas, qui n'est pas échangé. Un nouvel enchantement remplace l'ancien.",
		},
		es = {
			q = "¿Cómo encanto equipo?",
			a = "Abre encantamiento, elige un encantamiento y haz clic en el objeto. Para otros jugadores encantas a través de la ventana de comercio: ponen el objeto en la ranura de abajo, que no se intercambia. Un encantamiento nuevo sustituye al anterior.",
		},
		it = {
			q = "Come incanto l'equipaggiamento?",
			a = "Apri l'incantamento, scegli un incantesimo e clicca sull'oggetto. Per altri giocatori incanti tramite la finestra di scambio: mettono l'oggetto nello spazio in basso, che non viene scambiato. Un nuovo incantamento sostituisce quello vecchio.",
		},
		ru = {
			q = "Как зачаровать экипировку?",
			a = "Откройте наложение чар, выберите чары и щёлкните по предмету. Другим игрокам зачаровывают через окно обмена: они кладут предмет в нижнюю ячейку, которая не передаётся. Новые чары заменяют старые.",
		},
		pt = {
			q = "Como encanto equipamento?",
			a = "Abra encantamento, escolha um encantamento e clique no item. Para outros jogadores, você encanta pela janela de negociação: eles colocam o item no espaço de baixo, que não é trocado. Um encantamento novo substitui o antigo.",
		},
	},
	{
		id = "prof-engineering",
		de = {
			q = "Was bringt Ingenieurskunst?",
			a = "Ingenieure bauen Sprengstoffe, Zielfernrohre, Schutzbrillen, Gadgets und Spielzeug. Viele Dinge können nur Ingenieure selbst benutzen. Der Beruf ist teuer, macht aber viel Spaß und hilft auch im PvP.",
		},
		en = {
			q = "What is engineering good for?",
			a = "Engineers build explosives, scopes, goggles, gadgets and toys. Many of these can only be used by engineers. The profession is expensive but a lot of fun, and it helps in PvP too.",
		},
		fr = {
			q = "À quoi sert l'ingénierie ?",
			a = "Les ingénieurs fabriquent explosifs, lunettes de visée, lunettes, gadgets et jouets. Beaucoup ne sont utilisables que par les ingénieurs. Le métier est cher mais très amusant, et il aide aussi en JcJ.",
		},
		es = {
			q = "¿Para qué sirve la ingeniería?",
			a = "Los ingenieros fabrican explosivos, miras, gafas, artilugios y juguetes. Muchos solo los pueden usar ingenieros. Es una profesión cara pero muy divertida, y también ayuda en JcJ.",
		},
		it = {
			q = "A cosa serve l'ingegneria?",
			a = "Gli ingegneri costruiscono esplosivi, mirini, occhiali, congegni e giocattoli. Molti li possono usare solo gli ingegneri. La professione è costosa ma molto divertente, e aiuta anche nel PvP.",
		},
		ru = {
			q = "Зачем нужно инженерное дело?",
			a = "Инженеры создают взрывчатку, прицелы, очки, устройства и игрушки. Многими из них могут пользоваться только инженеры. Профессия дорогая, но очень весёлая и полезна в PvP.",
		},
		pt = {
			q = "Para que serve a engenharia?",
			a = "Engenheiros fazem explosivos, miras, óculos, engenhocas e brinquedos. Muitos só engenheiros podem usar. A profissão é cara, mas muito divertida, e ajuda também em JxJ.",
		},
	},
	{
		id = "prof-alchemy",
		de = {
			q = "Was bringt Alchemie?",
			a = "Alchemisten brauen Heil- und Manatränke, Elixiere für mehr Werte und später Fläschchen für Schlachtzüge. Die Kräuter kommen aus der Kräuterkunde. Tränke verkaufen sich immer gut.",
		},
		en = {
			q = "What is alchemy good for?",
			a = "Alchemists brew healing and mana potions, elixirs for more stats and later flasks for raids. The herbs come from herbalism. Potions always sell well.",
		},
		fr = {
			q = "À quoi sert l'alchimie ?",
			a = "Les alchimistes préparent des potions de soins et de mana, des élixirs pour plus de caractéristiques et plus tard des flacons pour les raids. Les herbes viennent de l'herboristerie. Les potions se vendent toujours bien.",
		},
		es = {
			q = "¿Para qué sirve la alquimia?",
			a = "Los alquimistas preparan pociones de sanación y de maná, elixires para más atributos y, más adelante, frascos para bandas. Las hierbas vienen de la herboristería. Las pociones siempre se venden bien.",
		},
		it = {
			q = "A cosa serve l'alchimia?",
			a = "Gli alchimisti preparano pozioni di cura e di mana, elisir per più statistiche e più avanti tonici per le incursioni. Le erbe vengono dall'erbalismo. Le pozioni si vendono sempre bene.",
		},
		ru = {
			q = "Зачем нужна алхимия?",
			a = "Алхимики варят зелья здоровья и маны, эликсиры для характеристик, а позже настойки для рейдов. Травы даёт травничество. Зелья всегда хорошо продаются.",
		},
		pt = {
			q = "Para que serve a alquimia?",
			a = "Alquimistas preparam poções de cura e de mana, elixires para mais atributos e depois frascos para raides. As ervas vêm do herborismo. Poções sempre vendem bem.",
		},
	},
	{
		id = "prof-tailoring",
		de = {
			q = "Was bringt Schneiderei?",
			a = "Schneider nähen Stoffrüstung und Taschen. Den Stoff bringen Humanoide als Beute mit, du brauchst also keinen Sammelberuf. Taschen sind bei allen Spielern gefragt.",
		},
		en = {
			q = "What is tailoring good for?",
			a = "Tailors sew cloth armour and bags. Humanoid enemies drop the cloth, so you do not need a gathering profession. Bags are always in demand.",
		},
		fr = {
			q = "À quoi sert la couture ?",
			a = "Les tailleurs cousent des armures en tissu et des sacs. Les ennemis humanoïdes donnent le tissu, vous n'avez donc pas besoin d'un métier de récolte. Les sacs sont toujours demandés.",
		},
		es = {
			q = "¿Para qué sirve la sastrería?",
			a = "Los sastres cosen armaduras de tela y bolsas. Los enemigos humanoides sueltan la tela, así que no necesitas profesión de recolección. Las bolsas siempre tienen demanda.",
		},
		it = {
			q = "A cosa serve la sartoria?",
			a = "I sarti cuciono armature di stoffa e borse. La stoffa la lasciano i nemici umanoidi, quindi non serve una professione di raccolta. Le borse sono sempre richieste.",
		},
		ru = {
			q = "Зачем нужно портняжное дело?",
			a = "Портные шьют тканевую броню и сумки. Ткань выпадает из гуманоидов, поэтому собирательская профессия не нужна. Сумки всегда в цене.",
		},
		pt = {
			q = "Para que serve a alfaiataria?",
			a = "Alfaiates costuram armaduras de tecido e bolsas. O tecido cai de inimigos humanoides, então você não precisa de profissão de coleta. Bolsas sempre têm procura.",
		},
	},
	{
		id = "prof-first-aid",
		de = {
			q = "Wie funktioniert Erste Hilfe?",
			a = "Erste Hilfe macht aus Stoff Verbände, mit denen du dich oder andere außerhalb und im Kampf heilst. Den Lehrer findest du in den Städten. Nach einem Verband musst du kurz warten, bis du den nächsten benutzen kannst. Für Klassen ohne Heilung sehr nützlich.",
		},
		en = {
			q = "How does first aid work?",
			a = "First aid turns cloth into bandages that heal you or others, in or out of combat. Trainers are in the cities. After a bandage you have to wait a moment before using the next one. Very useful for classes without healing.",
		},
		fr = {
			q = "Comment fonctionne le secourisme ?",
			a = "Le secourisme transforme le tissu en bandages qui vous soignent ou soignent les autres, en combat ou non. Les maîtres sont dans les villes. Après un bandage, il faut attendre un moment avant le suivant. Très utile pour les classes sans soins.",
		},
		es = {
			q = "¿Cómo funcionan los primeros auxilios?",
			a = "Los primeros auxilios convierten la tela en vendas que te curan a ti o a otros, en combate o fuera. Los instructores están en las ciudades. Tras una venda hay que esperar un poco antes de usar la siguiente. Muy útil para clases sin sanación.",
		},
		it = {
			q = "Come funziona il primo soccorso?",
			a = "Il primo soccorso trasforma la stoffa in bende che curano te o gli altri, in combattimento o fuori. Gli istruttori sono nelle città. Dopo una benda devi aspettare un po' prima della successiva. Utilissimo per le classi senza cure.",
		},
		ru = {
			q = "Как работает первая помощь?",
			a = "Первая помощь превращает ткань в бинты, которые лечат вас или других, в бою и вне боя. Наставники есть в городах. После бинта нужно немного подождать, прежде чем использовать следующий. Очень полезно для классов без лечения.",
		},
		pt = {
			q = "Como funcionam os primeiros socorros?",
			a = "Primeiros socorros transformam tecido em ataduras que curam você ou outros, em combate ou fora. Os instrutores ficam nas cidades. Depois de uma atadura é preciso esperar um pouco antes da próxima. Muito útil para classes sem cura.",
		},
	},
	{
		id = "prof-cooking",
		de = {
			q = "Wofür ist Kochen gut?",
			a = "Gekochtes Essen heilt und gibt oft zusätzlich Werte für eine Weile; in WoW: Forever gibt selbst gekochtes Essen außerdem etwas mehr Erfahrung. Zum Kochen brauchst du ein Feuer in der Nähe, etwa ein Lagerfeuer, das du selbst entzünden kannst. Fleisch bringen viele Tiere mit.",
		},
		en = {
			q = "What is cooking good for?",
			a = "Cooked food heals and often gives extra stats for a while; in WoW: Forever, home-cooked food also gives a little more experience. You need a fire nearby, for example a campfire you light yourself. Many beasts drop meat.",
		},
		fr = {
			q = "À quoi sert la cuisine ?",
			a = "Les plats cuisinés soignent et donnent souvent des caractéristiques en plus pendant un moment ; dans WoW: Forever, ils donnent aussi un peu plus d'expérience. Il vous faut un feu à proximité, par exemple un feu de camp que vous allumez vous-même. Beaucoup de bêtes donnent de la viande.",
		},
		es = {
			q = "¿Para qué sirve la cocina?",
			a = "La comida cocinada cura y a menudo da atributos extra durante un rato; en WoW: Forever, la comida hecha por ti también da algo más de experiencia. Necesitas un fuego cerca, por ejemplo una hoguera que enciendas tú. Muchas bestias sueltan carne.",
		},
		it = {
			q = "A cosa serve la cucina?",
			a = "Il cibo cucinato cura e spesso dà statistiche extra per un po'; in WoW: Forever il cibo fatto da te dà anche un po' più di esperienza. Ti serve un fuoco vicino, per esempio un fuoco da campo che accendi tu. Molte bestie lasciano carne.",
		},
		ru = {
			q = "Зачем нужна кулинария?",
			a = "Приготовленная еда лечит и часто на время даёт дополнительные характеристики; в WoW: Forever еда своего приготовления к тому же даёт немного больше опыта. Нужен огонь рядом, например костёр, который вы разведёте сами. Из многих зверей выпадает мясо.",
		},
		pt = {
			q = "Para que serve a culinária?",
			a = "Comida preparada cura e muitas vezes dá atributos extras por um tempo; no WoW: Forever, comida feita por você também dá um pouco mais de experiência. Você precisa de fogo por perto, por exemplo uma fogueira que você mesmo acende. Muitas feras deixam carne.",
		},
	},
	{
		id = "prof-fishing",
		de = {
			q = "Wie angle ich?",
			a = "Leg eine Angelrute an, stell dich ans Wasser und benutze „Angeln“. Wenn der Schwimmer plätschert und abtaucht, klick ihn an. In höherstufigen Gebieten brauchst du mehr Fertigkeit, sonst entkommen dir die Fische. Fisch kannst du kochen oder verkaufen.",
		},
		en = {
			q = "How do I fish?",
			a = "Equip a fishing pole, stand by the water and use Fishing. When the bobber splashes and dips, click it. Higher-level zones need more skill, otherwise the fish get away. You can cook or sell your fish.",
		},
		fr = {
			q = "Comment pêcher ?",
			a = "Équipez une canne à pêche, placez-vous au bord de l'eau et utilisez Pêche. Quand le bouchon éclabousse et plonge, cliquez dessus. Les zones de plus haut niveau demandent plus de compétence, sinon les poissons s'échappent. Vous pouvez cuisiner ou vendre vos poissons.",
		},
		es = {
			q = "¿Cómo pesco?",
			a = "Equípate una caña de pescar, ponte junto al agua y usa Pesca. Cuando el corcho salpique y se hunda, haz clic en él. Las zonas de más nivel piden más habilidad o los peces se escapan. Puedes cocinar o vender lo que pesques.",
		},
		it = {
			q = "Come si pesca?",
			a = "Equipaggia una canna da pesca, mettiti vicino all'acqua e usa Pesca. Quando il galleggiante schizza e affonda, cliccaci sopra. Le zone di livello più alto richiedono più abilità, altrimenti i pesci scappano. Puoi cucinare o vendere il pesce.",
		},
		ru = {
			q = "Как рыбачить?",
			a = "Возьмите в руки удочку, встаньте у воды и используйте «Рыбную ловлю». Когда поплавок плеснёт и уйдёт под воду, щёлкните по нему. В зонах повыше уровнем нужен больший навык, иначе рыба срывается. Рыбу можно приготовить или продать.",
		},
		pt = {
			q = "Como pesco?",
			a = "Equipe uma vara de pescar, fique perto da água e use Pesca. Quando a boia espirrar e afundar, clique nela. Zonas de nível mais alto exigem mais perícia, senão os peixes escapam. Você pode cozinhar ou vender os peixes.",
		},
	},
	{
		id = "prof-camping",
		de = {
			q = "Was ist Camping?",
			a = "Camping ist neu in WoW: Forever: An einem Lagerfeuer können Spieler in der Nähe ihre selbst hergestellten Lager-Objekte aufstellen, jeder eins. Wer sich ans Feuer setzt, bis er ausgeruht ist, bekommt deren Buffs für eine Weile. Jeder Beruf hat eigene Objekte; die ersten gibt es schon früh, bessere über Baupläne, die Dungeonbosse fallen lassen.",
		},
		en = {
			q = "What is camping?",
			a = "Camping is new in WoW: Forever: at a campfire, nearby players can each place one camp object they crafted. Sit at the fire until you are rested and you get their buffs for a while. Every profession has its own objects; the first come early, better ones from blueprints that dungeon bosses drop.",
		},
		fr = {
			q = "Qu'est-ce que le camping ?",
			a = "Le camping est nouveau dans WoW: Forever : autour d'un feu de camp, les joueurs proches peuvent chacun installer un objet de camp qu'ils ont fabriqué. Asseyez-vous près du feu jusqu'à être reposé et vous recevez leurs bonus pour un moment. Chaque métier a ses propres objets ; les premiers viennent tôt, les meilleurs grâce à des plans que lâchent les boss de donjon.",
		},
		es = {
			q = "¿Qué es la acampada?",
			a = "La acampada es nueva en WoW: Forever: junto a una hoguera, cada jugador cercano puede colocar un objeto de campamento que haya fabricado. Siéntate junto al fuego hasta estar descansado y recibes sus beneficios durante un rato. Cada profesión tiene sus propios objetos; los primeros llegan pronto, y los mejores, con planos que sueltan los jefes de mazmorra.",
		},
		it = {
			q = "Cos'è il campeggio?",
			a = "Il campeggio è una novità di WoW: Forever: presso un fuoco da campo, ogni giocatore vicino può piazzare un oggetto da campo che ha creato. Siediti vicino al fuoco finché sei riposato e ricevi i loro benefici per un po'. Ogni professione ha oggetti propri; i primi arrivano presto, quelli migliori da progetti lasciati dai boss delle spedizioni.",
		},
		ru = {
			q = "Что такое кемпинг?",
			a = "Кемпинг — новинка WoW: Forever: у костра каждый игрок поблизости может поставить один созданный им предмет лагеря. Посидите у огня, пока не отдохнёте, и получите их усиления на некоторое время. У каждой профессии свои предметы; первые доступны рано, лучшие — по чертежам, которые выпадают из боссов подземелий.",
		},
		pt = {
			q = "O que é o acampamento?",
			a = "O acampamento é novidade no WoW: Forever: numa fogueira, cada jogador por perto pode colocar um objeto de acampamento que fabricou. Sente-se perto do fogo até ficar descansado e você recebe os bônus deles por um tempo. Cada profissão tem objetos próprios; os primeiros vêm cedo, e os melhores de plantas que chefes de masmorra deixam cair.",
		},
	},
	{
		id = "prof-unlearn",
		de = {
			q = "Wie verlerne ich einen Beruf?",
			a = "Im Berufefenster gibt es eine Möglichkeit zum Verlernen. Dein ganzer Fortschritt und alle Rezepte in diesem Beruf gehen dabei verloren, also überleg es dir gut. Danach kannst du beim Lehrer einen anderen Beruf lernen.",
		},
		en = {
			q = "How do I unlearn a profession?",
			a = "The profession window has an option to unlearn it. All your progress and recipes in that profession are lost, so think it over. Afterwards you can learn another profession at a trainer.",
		},
		fr = {
			q = "Comment désapprendre un métier ?",
			a = "La fenêtre du métier propose une option pour le désapprendre. Toute votre progression et vos recettes de ce métier sont perdues, alors réfléchissez bien. Vous pouvez ensuite apprendre un autre métier auprès d'un maître.",
		},
		es = {
			q = "¿Cómo olvido una profesión?",
			a = "La ventana de la profesión tiene una opción para olvidarla. Pierdes todo tu progreso y recetas de esa profesión, así que piénsalo bien. Después puedes aprender otra con un instructor.",
		},
		it = {
			q = "Come disimparo una professione?",
			a = "La finestra della professione ha un'opzione per disimpararla. Perdi tutti i progressi e le ricette di quella professione, quindi pensaci bene. Dopo puoi impararne un'altra da un istruttore.",
		},
		ru = {
			q = "Как забыть профессию?",
			a = "В окне профессии есть вариант её забыть. Весь прогресс и рецепты этой профессии пропадут, так что подумайте заранее. После этого можно выучить другую профессию у наставника.",
		},
		pt = {
			q = "Como esqueço uma profissão?",
			a = "A janela da profissão tem uma opção para esquecê-la. Todo o progresso e as receitas dessa profissão são perdidos, então pense bem. Depois você pode aprender outra com um instrutor.",
		},
	},
	{
		id = "prof-crafting-orders",
		de = {
			q = "Wie lasse ich mir etwas herstellen?",
			a = "Frag im Handelskanal oder in deiner Gilde nach einem Handwerker mit dem Rezept. Meist bringst du die Materialien mit und gibst ein Trinkgeld. Den Handel macht ihr über das Handelsfenster: Rechtsklick auf den Spieler und „Handeln“.",
		},
		en = {
			q = "How do I get something crafted for me?",
			a = "Ask in the trade channel or your guild for a crafter with the recipe. Usually you bring the materials and give a tip. Do the exchange through the trade window: right-click the player and choose Trade.",
		},
		fr = {
			q = "Comment faire fabriquer quelque chose pour moi ?",
			a = "Demandez dans le canal Commerce ou à votre guilde un artisan qui a la recette. En général, vous apportez les matériaux et donnez un pourboire. Faites l'échange par la fenêtre d'échange : clic droit sur le joueur puis « Échanger ».",
		},
		es = {
			q = "¿Cómo consigo que me fabriquen algo?",
			a = "Pregunta en el canal de Comercio o en tu hermandad por alguien que tenga la receta. Lo normal es llevar los materiales y dar una propina. Haz el intercambio por la ventana de comercio: clic derecho en el jugador y elige «Comerciar».",
		},
		it = {
			q = "Come faccio creare qualcosa per me?",
			a = "Chiedi nel canale Commercio o in gilda un artigiano che abbia la ricetta. Di solito porti i materiali e lasci una mancia. Fate lo scambio tramite la finestra di scambio: clic destro sul giocatore e scegli «Scambia».",
		},
		ru = {
			q = "Как заказать изготовление предмета?",
			a = "Спросите в канале «Торговля» или в гильдии мастера с нужным рецептом. Обычно вы приносите материалы и даёте чаевые. Обменивайтесь через окно обмена: правый щелчок по игроку и «Обмен».",
		},
		pt = {
			q = "Como peço para fabricarem algo para mim?",
			a = "Pergunte no canal de Comércio ou na guilda por alguém com a receita. Normalmente você leva os materiais e dá uma gorjeta. Façam a troca pela janela de negociação: clique direito no jogador e escolha \"Negociar\".",
		},
	},
})
