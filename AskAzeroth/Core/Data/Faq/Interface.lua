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
	},
})
