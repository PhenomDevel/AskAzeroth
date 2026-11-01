local _, ns = ...

-- Eingebautes FAQ, Deutsch (PLAN.md, Abschnitt 3). Gleicher Aufbau wie
-- FaqEN.lua. Nur einfacher Text: keine "|"-Escape-Sequenzen.
ns.FAQ = ns.FAQ or {}

ns.FAQ.de = {
	{
		cat = "misc",
		q = "Wie stelle ich mit AskAzeroth eine Frage?",
		a = "Öffne das Fenster mit /aa oder dem Minimap-Button, klicke auf der Seite „Fragen“ auf „Frage stellen“, wähle eine Kategorie und schreib eine kurze Zusammenfassung. Erfahrene Spieler mit dem Addon sehen deine Frage und antworten im Thread. Für jede Antwort bekommst du eine Benachrichtigung.",
	},
	{
		cat = "misc",
		q = "Warum ist meine Frage verschwunden?",
		a = "Fragen bleiben nur eine Weile in der öffentlichen Liste: 2 Stunden ohne Antwort, 45 Minuten nach der letzten Antwort, 10 Minuten nachdem du sie als gelöst markiert hast. Deine eigenen Fragen bleiben mit allen Antworten unter „Meine Fragen“.",
	},
	{
		cat = "misc",
		q = "Wie behalte ich eine hilfreiche Antwort?",
		a = "Klick auf das Notiz-Symbol neben einer Antwort, um sie anzupinnen. Angepinnte Antworten werden samt Frage auf deinem Rechner gespeichert und laufen nie ab. Du findest sie auf der Seite „Angepinnt“.",
	},
	{
		cat = "misc",
		q = "Was ist der Mentor-Modus?",
		a = "Wer gerne hilft, schaltet in den Einstellungen den Mentor-Modus ein. Mentoren werden über neue Fragen benachrichtigt und können wählen, zu welchen Kategorien und Klassen sie etwas hören möchten.",
	},
	{
		cat = "class",
		q = "Wo lerne ich neue Zauber und Fähigkeiten?",
		a = "Beim Klassenlehrer. Lehrer gibt es in den Startgebieten und in den Städten, alle paar Stufen haben sie neue Ränge und Zauber für dich. Jede Stadtwache zeigt dir auf Nachfrage den Weg.",
	},
	{
		cat = "class",
		q = "Was sind Talente?",
		a = "Mit Talentpunkten spezialisierst du deine Klasse. Den ersten Punkt bekommst du auf Stufe 10, danach einen pro Stufe. Das Talentfenster öffnest du über die Menüleiste oder mit der Taste N. Lehrer setzen deine Talente gegen Gebühr zurück.",
	},
	{
		cat = "quest",
		q = "Was bedeuten die Symbole über den Figuren?",
		a = "Ein gelbes Ausrufezeichen ist eine Quest zum Annehmen, ein gelbes Fragezeichen eine Quest zum Abgeben. Ein graues Ausrufezeichen heißt, die Quest ist noch zu schwer für dich, ein graues Fragezeichen eine angenommene, aber noch nicht erledigte Quest.",
	},
	{
		cat = "quest",
		q = "Ich finde ein Questziel nicht. Was kann ich tun?",
		a = "Lies den Questtext im Questlog (Taste L) noch einmal: Meist steht dort eine Richtung oder ein Ort. Schau auf die Weltkarte (Taste M) und die Gebietsnamen. Wenn du weiter feststeckst, frag hier und nenne Quest und Gebiet.",
	},
	{
		cat = "misc",
		q = "Was ist Ruhebonus?",
		a = "Solange du ausgeloggt bist oder in einem Gasthaus oder einer Stadt rastest, sammelt dein Charakter Ruhebonus. Monster geben dann extra Erfahrung, bis der Bonus aufgebraucht ist. Die Erfahrungsleiste ist in der Zeit blau.",
	},
	{
		cat = "misc",
		q = "Was passiert, wenn ich sterbe?",
		a = "Lass deinen Geist frei und lauf als Geist zu deinem Körper zurück, um wiederbelebt zu werden. Alternativ holt dich der Geistheiler am Friedhof sofort zurück, dann verliert deine Ausrüstung aber Haltbarkeit und du bist eine Weile geschwächt.",
	},
	{
		cat = "misc",
		q = "Wie repariere ich meine Ausrüstung?",
		a = "Ausrüstung nutzt sich im Kampf und beim Sterben ab. Viele Händler, vor allem Rüstungs- und Waffenschmiede, reparieren sie: Sprich sie an und nutze den Amboss-Knopf im Händlerfenster.",
	},
	{
		cat = "misc",
		q = "Wie reise ich schneller?",
		a = "Dein Ruhestein bringt dich zum gewählten Gasthaus zurück; beim Gastwirt legst du es fest. Flugmeister fliegen dich zu Orten, deren Flugpunkt du schon entdeckt hast, also sprich jeden Flugmeister an, an dem du vorbeikommst.",
	},
	{
		cat = "prof",
		q = "Wie lerne ich einen Beruf?",
		a = "Berufslehrer in Städten und Dörfern bringen ihn dir bei. Du kannst zwei Hauptberufe lernen, zum Beispiel Bergbau und Schmiedekunst oder Kräuterkunde und Alchemie. Kochen, Angeln und Erste Hilfe gehen zusätzlich.",
	},
	{
		cat = "prof",
		q = "Wie bekomme ich mehr Taschenplatz?",
		a = "Taschen gibt es bei Händlern (oft Gemischtwaren- oder Handwerkswarenhändler), bei Schneidern oder im Auktionshaus der großen Städte. Jede Tasche kommt in einen der Taschenplätze neben deinem Rucksack.",
	},
	{
		cat = "dungeon",
		q = "Wie finde ich eine Gruppe für einen Dungeon?",
		a = "Frag im Chatkanal SucheNachGruppe oder Allgemein oder in deiner Gilde. Sag, welchen Dungeon du machen willst und welche Rolle du spielst (Tank, Heiler oder Schaden). Klärt die Beuteregeln vor dem Start.",
	},
	{
		cat = "ui",
		q = "Welche Tasten öffnen die wichtigsten Fenster?",
		a = "Standardmäßig: M Weltkarte, L Questlog, P Zauberbuch, N Talente, C Charakter, B Taschen, O Kontakte und Gilde. Ändern kannst du sie im Spielmenü unter Tastaturbelegung.",
	},
}
