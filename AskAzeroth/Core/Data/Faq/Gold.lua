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
	},
})
