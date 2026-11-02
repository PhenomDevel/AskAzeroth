local _, ns = ...

-- Eingebautes FAQ, Deutsch (PLAN.md, Abschnitt 3). Gleicher Aufbau und
-- gleiche Reihenfolge wie FaqEN.lua. Nur einfacher Text: keine
-- "|"-Escape-Sequenzen.
ns.FAQ = ns.FAQ or {}

ns.FAQ.de = {
	-- AskAzeroth
	{
		topic = "addon",
		q = "Wie stelle ich mit AskAzeroth eine Frage?",
		a = "Öffne das Fenster mit /aa oder dem Minimap-Button, klicke auf der Seite „Fragen“ auf „Frage stellen“, wähle eine Kategorie und schreib eine kurze Zusammenfassung. Erfahrene Spieler mit dem Addon sehen deine Frage und antworten im Thread. Für jede Antwort bekommst du eine Benachrichtigung.",
	},
	{
		topic = "addon",
		q = "Wer beantwortet meine Fragen?",
		a = "Andere Spieler, die AskAzeroth nutzen und dieselbe Sprache lesen, oft im Mentor-Modus. Sie helfen freiwillig und sind keine Blizzard-Mitarbeiter, eine Antwort kann also ein paar Minuten dauern. Am schnellsten klappt es mit einer klaren Zusammenfassung samt Stufe, Gebiet und Questname.",
	},
	{
		topic = "addon",
		q = "In welcher Sprache soll ich fragen?",
		a = "Jede Sprache hat einen eigenen Kanal, und nur Spieler mit dieser Sprache sehen deine Frage. In den Einstellungen legst du fest, welche Sprachen du liest und welche neue Fragen nutzen; im Fenster „Frage stellen“ kannst du sie auch ändern.",
	},
	{
		topic = "addon",
		q = "Warum ist meine Frage verschwunden?",
		a = "Fragen bleiben nur eine Weile in der öffentlichen Liste: 2 Stunden ohne Antwort, 45 Minuten nach der letzten Antwort, 10 Minuten nachdem du sie als gelöst markiert hast. Deine eigenen Fragen bleiben mit allen Antworten unter „Meine Fragen“.",
	},
	{
		topic = "addon",
		q = "Wie behalte ich eine hilfreiche Antwort?",
		a = "Klick auf das Notiz-Symbol neben einer Antwort, um sie anzupinnen. Angepinnte Antworten werden samt Frage auf deinem Rechner gespeichert und laufen nie ab. Du findest sie auf der Seite „Angepinnt“.",
	},
	{
		topic = "addon",
		q = "Was ist der Mentor-Modus?",
		a = "Wer gerne hilft, schaltet in den Einstellungen den Mentor-Modus ein. Mentoren werden über neue Fragen benachrichtigt und können wählen, zu welchen Kategorien und Klassen sie etwas hören möchten.",
	},
	{
		topic = "addon",
		q = "Was gehört nie in eine Frage?",
		a = "Gib nie dein Passwort, deine Account-E-Mail oder Authenticator-Codes weiter, auch nicht an jemanden, der sich als Blizzard ausgibt: Blizzard fragt im Spiel nie danach. Bei Problemen mit Account, Zahlung oder Technik hilft der Blizzard-Support über den Hilfe-Knopf im Spielmenü.",
	},

	-- Erste Schritte
	{
		topic = "start",
		q = "Was mache ich als Erstes?",
		a = "Folge den Quests in deinem Startgebiet: Sie erklären Schritt für Schritt die Grundlagen und führen dich in die nächsten Gebiete. Besuch alle paar Stufen deinen Klassenlehrer, verkauf Plunder beim Händler und lass dir Zeit. Niemand erwartet, dass du alles weißt.",
	},
	{
		topic = "start",
		q = "Welche Klasse passt zu mir?",
		a = "WoW: Forever hat die neun klassischen Klassen: Krieger, Paladin, Jäger, Schurke, Priester, Schamane, Magier, Hexenmeister und Druide. Überleg dir zuerst deine Rolle: Tanks halten Gegner fest, Heiler halten die Gruppe am Leben, Schadensklassen besiegen die Gegner. Jäger und Hexenmeister haben Begleiter und lassen sich gut allein leveln. Nimm, was dir Spaß macht, das zählt am meisten.",
	},
	{
		topic = "start",
		q = "Welches Regelwerk soll ich wählen?",
		a = "Statt Realms wählst du beim Erstellen deines Charakters ein Regelwerk. Normal ist zum gemeinsamen Spielen ohne erzwungenes PvP, bei PvP kann dich die andere Fraktion in vielen Gebieten angreifen, und Rollenspiel ist für Spieler, die in ihrer Rolle bleiben. Hardcore, wo ein Tod endgültig ist, folgt später. Gruppen gibt es nur mit Spielern im selben Regelwerk, also nimm das, in dem deine Freunde spielen.",
	},
	{
		topic = "start",
		q = "Was ist die Höchststufe?",
		a = "Stufe 60, und dabei bleibt es. Neue Dungeons, Schlachtzüge, Gebiete und das accountweite Legacy-System bringen Fortschritt, ohne die Höchststufe anzuheben.",
	},
	{
		topic = "start",
		q = "Was ist Ruhebonus?",
		a = "Solange du ausgeloggt bist oder in einem Gasthaus oder einer Stadt rastest, sammelt dein Charakter Ruhebonus. Monster geben dann extra Erfahrung, bis der Bonus aufgebraucht ist. Die Erfahrungsleiste ist in der Zeit blau.",
	},
	{
		topic = "start",
		q = "Wie bekomme ich schnell Gesundheit und Mana zurück?",
		a = "Iss nach dem Kampf etwas für Gesundheit und trink Wasser für Mana; dabei setzt du dich hin und bist nach ein paar Sekunden wieder voll. Gastwirte und Lebensmittelhändler verkaufen beides, Magier können es herbeizaubern. Wer jeden Kampf mit voller Gesundheit und vollem Mana beginnt, stirbt viel seltener.",
	},

	-- Quests
	{
		topic = "quest",
		q = "Was bedeuten die Symbole über den Figuren?",
		a = "Ein gelbes Ausrufezeichen ist eine Quest zum Annehmen, ein gelbes Fragezeichen eine Quest zum Abgeben. Ein graues Ausrufezeichen heißt, die Quest ist noch zu schwer für dich, ein graues Fragezeichen eine angenommene, aber noch nicht erledigte Quest.",
	},
	{
		topic = "quest",
		q = "Was bedeutet die Farbe eines Questnamens?",
		a = "Sie vergleicht die Stufe der Quest mit deiner. Grau liegt weit unter dir und bringt kaum Erfahrung, Grün ist leicht, Gelb passt zu deiner Stufe, Orange ist schwer und Rot sehr gefährlich. Rote Quests machst du am besten in einer Gruppe oder ein paar Stufen später.",
	},
	{
		topic = "quest",
		q = "Ich finde ein Questziel nicht. Was kann ich tun?",
		a = "Lies den Questtext im Questlog (Taste L) noch einmal: Meist steht dort eine Richtung oder ein Ort. Schau auf die Weltkarte (Taste M) und die Gebietsnamen. Wenn du weiter feststeckst, frag hier und nenne Quest und Gebiet.",
	},
	{
		topic = "quest",
		q = "Warum droppt der Questgegenstand nicht?",
		a = "Oft tragen nur bestimmte Gegner den Gegenstand, und das auch nur mit einer gewissen Chance, es kann also ein paar Versuche dauern. Du musst die Quest im Questlog haben. Hat ein anderer Spieler den Gegner zuerst angegriffen, gehört die Beute ihm: Ladet euch in eine Gruppe ein, dann zählt es für beide.",
	},
	{
		topic = "quest",
		q = "Kann ich eine Quest abbrechen?",
		a = "Ja: Wähl sie im Questlog aus und klick auf „Abbrechen“. Die meisten Quests kannst du später beim selben Auftraggeber wieder annehmen. So machst du auch Platz, wenn dein Questlog voll ist.",
	},
	{
		topic = "quest",
		q = "Mir sind die Quests ausgegangen. Wohin jetzt?",
		a = "Such dir Gebiete, die zu deiner Stufe passen: Die Weltkarte zeigt den Stufenbereich, wenn du mit der Maus über ein Gebiet fährst. In jedem Ort gibt es Auftraggeber, und Gastwirte und Wachen schicken dich zu weiteren Orten. Auch Dungeons in deinem Stufenbereich haben Quests mit guten Belohnungen. Wenn du unsicher bist, frag hier und nenne Stufe und Fraktion.",
	},

	-- Klasse und Talente
	{
		topic = "class",
		q = "Wo lerne ich neue Zauber und Fähigkeiten?",
		a = "Beim Klassenlehrer. Lehrer gibt es in den Startgebieten und in den Städten, alle paar Stufen haben sie neue Ränge und Zauber für dich. Jede Stadtwache zeigt dir auf Nachfrage den Weg.",
	},
	{
		topic = "class",
		q = "Was sind Talente?",
		a = "Mit Talentpunkten spezialisierst du deine Klasse. Den ersten Punkt bekommst du auf Stufe 10, danach einen pro Stufe. Das Talentfenster öffnest du über die Menüleiste oder mit der Taste N. Ab Stufe 40 kannst du eine zweite Talentverteilung (Dualspezialisierung) freischalten und zwischen beiden wechseln.",
	},
	{
		topic = "class",
		q = "Tank, Heiler oder Schaden: Was heißt das?",
		a = "Das sind die Rollen in einer Gruppe. Der Tank beschäftigt die Gegner und steckt die Treffer ein, der Heiler hält alle am Leben, und die Schadensklassen besiegen die Gegner. Krieger, Paladine und Druiden können tanken; Priester, Paladine, Schamanen und Druiden können heilen; Schaden machen alle Klassen.",
	},
	{
		topic = "class",
		q = "Welche Werte sind für mich wichtig?",
		a = "Stärke hilft Kriegern und Paladinen, Beweglichkeit Schurken und Jägern, Intelligenz gibt Zauberklassen Mana und Zaubermacht, Ausdauer gibt allen Gesundheit. Willenskraft beschleunigt die Regeneration von Gesundheit und Mana. Vergleich die Tooltips zweier Gegenstände, bevor du dich entscheidest.",
	},
	{
		topic = "class",
		q = "Warum kann ich einen Gegenstand nicht anlegen?",
		a = "Roter Text im Tooltip zeigt, was fehlt: die nötige Stufe, die Rüstungsart (Stoff, Leder, Schwere Rüstung, Platte) oder die Waffenart. Manche Waffenarten kannst du bei einem Waffenmeister in den großen Städten lernen.",
	},
	{
		topic = "class",
		q = "Wie lege ich Zauber auf die Aktionsleiste?",
		a = "Öffne das Zauberbuch (Taste P) und zieh einen Zauber auf einen freien Platz deiner Aktionsleiste. Mit den Zahlentasten 1 bis 0 wirkst du dann die Zauber der ersten Leiste. Neue Ränge eines Zaubers ersetzen den alten auf der Leiste meist von selbst.",
	},

	-- Kampf und Tod
	{
		topic = "combat",
		q = "Was passiert, wenn ich sterbe?",
		a = "Lass deinen Geist frei und lauf als Geist zu deinem Körper zurück, um wiederbelebt zu werden. Alternativ holt dich der Geistheiler am Friedhof sofort zurück, dann verliert deine Ausrüstung aber Haltbarkeit und du bist eine Weile geschwächt.",
	},
	{
		topic = "combat",
		q = "Wie sterbe ich seltener?",
		a = "Kämpf gegen einen Gegner nach dem anderen und lock ihn von seinen Freunden weg; in WoW: Forever können schon zwei Gegner gleichzeitig zu viel sein. Prüf vor dem Angriff die Stufe des Gegners, iss und trink zwischen den Kämpfen und achte auf Patrouillen. Läuft ein Kampf schief, flieh den Weg zurück, den du gekommen bist.",
	},
	{
		topic = "combat",
		q = "Was bedeuten die Farben der Gegnerstufen?",
		a = "Die Stufe im Zielfenster ist wie Questnamen gefärbt: Grau bringt keine Erfahrung, Grün ist leicht, Gelb ebenbürtig, Orange schwer und Rot sehr gefährlich. Ein Totenkopf heißt, der Gegner ist weit über dir oder ein Elite-Boss: Allein lieber Abstand halten.",
	},
	{
		topic = "combat",
		q = "Warum sind Namen rot, gelb oder grün?",
		a = "Rot heißt feindlich: Der Gegner greift dich an, wenn du ihm zu nahe kommst. Gelb ist neutral und wehrt sich nur, wenn du angreifst. Grün ist freundlich.",
	},
	{
		topic = "combat",
		q = "Wie repariere ich meine Ausrüstung?",
		a = "Ausrüstung nutzt sich im Kampf und beim Sterben ab. Viele Händler, vor allem Rüstungs- und Waffenschmiede, reparieren sie: Sprich sie an und nutze den Amboss-Knopf im Händlerfenster.",
	},

	-- Reisen
	{
		topic = "travel",
		q = "Wie reise ich schneller?",
		a = "Dein Ruhestein bringt dich zum gewählten Gasthaus zurück; beim Gastwirt legst du es fest. Flugmeister fliegen dich zu Orten, deren Flugpunkt du schon entdeckt hast, also sprich jeden Flugmeister an, an dem du vorbeikommst.",
	},
	{
		topic = "travel",
		q = "Wann bekomme ich ein Reittier?",
		a = "Ab einer bestimmten Stufe bringt dir der Reitlehrer deines Volkes das Reiten bei, und in WoW: Forever bekommst du mit der Fertigkeit gleich ein Reittier dazu. Leg beim Leveln etwas Gold dafür zur Seite. Fliegen gibt es in WoW: Forever nicht.",
	},
	{
		topic = "travel",
		q = "Wie komme ich auf einen anderen Kontinent?",
		a = "Die Allianz reist mit dem Schiff, zum Beispiel ab dem Hafen von Menethil, die Horde mit dem Zeppelin, zum Beispiel ab Orgrimmar oder Unterstadt. Die Tiefenbahn verbindet Sturmwind und Eisenschmiede. Wenn du die nächste Station nicht kennst, frag hier.",
	},
	{
		topic = "travel",
		q = "Wie finde ich mich in einer Stadt zurecht?",
		a = "Sprich eine Stadtwache an und frag nach dem Weg: Sie markiert Lehrer, Bank, Auktionshaus, Gasthaus und mehr auf deiner Karte. Die Weltkarte (Taste M) zeigt, wo du bist.",
	},

	-- Gold und Handel
	{
		topic = "gold",
		q = "Wie verdiene ich Gold?",
		a = "Verkauf graue Gegenstände und alles, was du nicht brauchst, beim Händler, erledige Quests und verkauf gesammelte Rohstoffe wie Erz, Kräuter oder Leder im Auktionshaus. Kauf nie Gold auf anderen Seiten: WoW: Forever bestraft Käufer und Verkäufer.",
	},
	{
		topic = "gold",
		q = "Was bedeuten die Farben der Gegenstände?",
		a = "Grau ist Plunder für den Händler, Weiß ist gewöhnlich, Grün selten, Blau rar, Lila episch und Orange legendär. Höhere Qualität heißt meist bessere Werte.",
	},
	{
		topic = "gold",
		q = "Was heißt „Wird beim Aufheben gebunden“ und „Wird beim Anlegen gebunden“?",
		a = "Gegenstände, die beim Aufheben gebunden werden, gehören dir ab dem Plündern und lassen sich nicht handeln. Gegenstände, die beim Anlegen gebunden werden, kannst du handeln oder verkaufen, bis du sie einmal trägst.",
	},
	{
		topic = "gold",
		q = "Wie funktioniert das Auktionshaus?",
		a = "Bei den Auktionatoren in den großen Städten kaufst und verkaufst du Gegenstände mit anderen Spielern. Für ein Angebot zahlst du eine kleine Anzahlung, die verfällt, wenn nichts verkauft wird. Vergleich die Preise, bevor du anbietest oder kaufst.",
	},
	{
		topic = "gold",
		q = "Wie verschicke ich Post?",
		a = "Nutze einen Briefkasten, meist steht einer neben dem Gasthaus. Du kannst Briefe, Gegenstände und Gold an andere Charaktere schicken, auch an deine eigenen Twinks im selben Regelwerk und in derselben Fraktion. Jeder Brief kostet ein wenig Porto.",
	},
	{
		topic = "gold",
		q = "Wie bekomme ich mehr Taschenplatz?",
		a = "Taschen gibt es bei Händlern (oft Gemischtwaren- oder Handwerkswarenhändler), bei Schneidern oder im Auktionshaus der großen Städte. Jede Tasche kommt in einen der Taschenplätze neben deinem Rucksack. Die Bank in den Hauptstädten bietet noch mehr Platz.",
	},

	-- Berufe
	{
		topic = "prof",
		q = "Wie lerne ich einen Beruf?",
		a = "Berufslehrer in Städten und Dörfern bringen ihn dir bei. Du kannst zwei Hauptberufe lernen, zum Beispiel Bergbau und Schmiedekunst oder Kräuterkunde und Alchemie. Kochen, Angeln und Erste Hilfe gehen zusätzlich.",
	},
	{
		topic = "prof",
		q = "Welche Berufe passen zusammen?",
		a = "Ein Sammelberuf versorgt einen Herstellungsberuf: Bergbau für Schmiedekunst oder Ingenieurskunst, Kräuterkunde für Alchemie, Kürschnerei für Lederverarbeitung. Schneiderei nutzt Stoff von Gegnern und passt gut zu Verzauberkunst. Zwei Sammelberufe bringen das meiste Gold.",
	},
	{
		topic = "prof",
		q = "Wie steigere ich meine Berufsfertigkeit?",
		a = "Die Farbe eines Rezepts zeigt, wie wahrscheinlich ein Fertigkeitspunkt ist: Orange immer, Gelb oft, Grün selten, Grau nie. Ab bestimmten Fertigkeitswerten bringt dir dein Lehrer den nächsten Rang bei, der das Maximum anhebt. Selbst gekochtes Essen gibt in WoW: Forever sogar einen kleinen Erfahrungsbonus.",
	},
	{
		topic = "prof",
		q = "Wie finde ich Kräuter und Erze?",
		a = "Kräuterkunde und Bergbau bringen eine Suchfähigkeit mit, die Kräuter oder Erzvorkommen auf deiner Minikarte zeigt. Du schaltest sie über den Verfolgungsknopf an der Minikarte ein. Jedes Gebiet hat Vorkommen für einen bestimmten Fertigkeitsbereich.",
	},

	-- Gruppen und Dungeons
	{
		topic = "group",
		q = "Wie finde ich eine Gruppe für einen Dungeon?",
		a = "Nutze die Gruppensuche: Stell deine eigene Gruppe ein oder bewirb dich bei einer, der Anführer lädt von Hand ein. Einen automatischen Dungeonfinder gibt es in WoW: Forever nicht. Fragen im Chat oder in deiner Gilde klappt auch. Sag, welchen Dungeon du machen willst und welche Rolle du spielst (Tank, Heiler oder Schaden), und klärt die Beuteregeln vor dem Start.",
	},
	{
		topic = "group",
		q = "Was sollte ich vor meinem ersten Dungeon wissen?",
		a = "Sag, dass du neu bist, die meisten Gruppen erklären gern. Lass den Tank die Gegner anlocken, greif sein Ziel an und halte dich aus Kämpfen raus, die die Gruppe nicht begonnen hat. Kontrolleffekte wie Verwandlung, Kopfnuss oder Fesseln sind wichtig, denn Dungeons passen sich nicht an deine Stufe an.",
	},
	{
		topic = "group",
		q = "Wie wird Beute in der Gruppe verteilt?",
		a = "Bei vielen Gegenständen würfeln alle auf Bedarf, Gier oder Passen. Wähl Bedarf nur, wenn dein Charakter den Gegenstand wirklich nutzt, sonst Gier. Frag lieber nach, bevor du auf etwas Bedarf würfelst, das auch andere brauchen könnten.",
	},
	{
		topic = "group",
		q = "Wie lade ich jemanden in meine Gruppe ein?",
		a = "Klick mit der rechten Maustaste auf den Namen im Chat oder auf das Porträt und wähl „Einladen“. Danach erscheinen links die Gruppenfenster.",
	},
	{
		topic = "group",
		q = "Was ist ein Schlachtzug?",
		a = "Ein Schlachtzug (Raid) ist ein Dungeon für eine große Gruppe auf Höchststufe. WoW: Forever startet mit Schlachtzügen für 10, 20 und 40 Spieler. Die meisten gehen mit ihrer Gilde in Schlachtzüge.",
	},

	-- Chat und Gilde
	{
		topic = "social",
		q = "Wie schreibe ich im Chat?",
		a = "Drück Enter, schreib deinen Text und drück wieder Enter. Befehle legen fest, wohin er geht: /s sagen, /y schreien, /p Gruppe, /g Gilde, /w Name flüstern, /1 Allgemein-Kanal des Gebiets. Auf das letzte Flüstern antwortest du mit R.",
	},
	{
		topic = "social",
		q = "Wie finde ich eine Gilde?",
		a = "Gilden werben in den Chatkanälen der Städte, und das Addon Guild Finder Forever listet Gilden, die Mitglieder suchen. Sprich vor dem Beitritt mit ein paar Offizieren und such dir eine Gilde, die zu ähnlichen Zeiten spielt wie du.",
	},
	{
		topic = "social",
		q = "Wie füge ich Freunde hinzu?",
		a = "Öffne das Kontaktfenster (Taste O), klick auf „Freund hinzufügen“ und gib den Namen ein. Du kannst auch mit der rechten Maustaste auf einen Spieler klicken und ihn dort hinzufügen.",
	},
	{
		topic = "social",
		q = "Wie gehe ich mit nervigen Spielern um?",
		a = "Klick mit der rechten Maustaste auf den Namen und wähl „Ignorieren“; in AskAzeroth kannst du einen Spieler zusätzlich auf der Seite „Spieler“ ignorieren. Beleidigendes Verhalten meldest du über dasselbe Menü.",
	},

	-- Oberfläche
	{
		topic = "ui",
		q = "Welche Tasten öffnen die wichtigsten Fenster?",
		a = "Standardmäßig: M Weltkarte, L Questlog, P Zauberbuch, N Talente, C Charakter, B Taschen, O Kontakte und Gilde. Ändern kannst du sie im Spielmenü unter Tastaturbelegung.",
	},
	{
		topic = "ui",
		q = "Wie installiere ich Addons?",
		a = "Nutze die CurseForge- oder Wago-App oder entpack den Addon-Ordner in den Ordner AddOns deiner WoW-Forever-Installation. In der Charakterauswahl zeigt der Knopf „AddOns“, welche Addons aktiv sind.",
	},
	{
		topic = "ui",
		q = "Meine Oberfläche spinnt. Was kann ich tun?",
		a = "Gib /reload ein, um die Oberfläche neu zu laden; das behebt die meisten Fehler. Wenn ein Addon Fehler verursacht, schalte es in der Charakterauswahl unter „AddOns“ ab und versuch es noch einmal.",
	},
}
