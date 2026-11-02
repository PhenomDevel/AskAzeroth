# AskAzeroth – Umsetzungsplan

Neulingshilfe-Addon für **World of Warcraft: Forever**. Neulinge stellen Fragen, Mentoren antworten in Threads. Alles läuft dezentral über Addon-Nachrichten im Spiel, ohne externen Server.

Dieser Plan ist die Arbeitsgrundlage. Die Meilensteine werden der Reihe nach abgearbeitet. Jeder Meilenstein endet mit einem lauffähigen Stand.

UI-Skizzen: Canvas „Neulingshilfe Addon UI“ (Hauptfenster, Frage stellen, Mentor-Einstellungen, Spielerliste, Benachrichtigung, Meine Fragen, Sprachen, Mentor-Antwort).

---

## 0. Entscheidungen (2026-11-01)

Abweichend vom ursprünglichen Entwurf gilt:

- **Gemeinsame Konvention der PhenomDevel-Addons** (siehe `CLAUDE.md`): Ordner `Libs/ Locales/ Media/ Core/ UI/ Modules/`, alles in der `.toc` (kein `embeds.xml`), identische `ci.yml`, `release.yml` und `docs/RELEASE.md`.
- **Bibliotheken minimal wie Guild Finder Forever:** LibStub, CallbackHandler-1.0, AceComm-3.0 (mit ChatThrottleLib) und LibDeflate. Kein AceAddon, AceDB, AceEvent, AceConsole, AceConfig, LibSerialize, LibDataBroker oder LibDBIcon. Serializer, SavedVariables-Defaults, Event-Verteilung, Einstellungen und Minimap-Button sind eigener Code.
- **Keine automatisierten Tests**, wie in den anderen Addons: `luacheck .` plus Test im Spiel. Kein gemocktes WoW-API im Repo.
- **Nur Forever** (Interface 16001), kein Retail.
- **Sieben Sprachen** wie Guild Finder Forever: Kanäle und UI-Texte für Englisch, Deutsch, Französisch, Spanisch, Italienisch, Russisch und Portugiesisch. Das FAQ gibt es ebenfalls in allen sieben Sprachen (Englisch und Deutsch Pflicht, fehlende Übersetzungen fallen auf Englisch zurück).
- **M0 mit eigener Probe** (`/aa probe`, nicht gepackt).
- **Ein PR pro Meilenstein**, danach Test im Spiel durch Kevin, erst dann der nächste.
- **Angepinnte Antworten** (neu in 1.0): Jede Antwort, auch auf fremde Fragen, lässt sich anpinnen. Sie wird samt Frage lokal gespeichert und läuft nie ab (Abschnitte 5, 7, 10).
- Dokumentation außer diesem Plan auf Englisch.

## 1. Ziele und Grundsätze

- **Keine zentrale Instanz.** Jeder Client hält seinen eigenen Zustand und leitet alles Weitere (Ablauf, Filter) selbst aus Zeitstempeln ab.
- **Lokale Bewertung statt globalem Ranking.** Favoriten und Ignorierte gelten nur für den eigenen Client.
- **Threads statt Zuständigkeit.** Jede Frage kann beliebig viele Antworten bekommen, keine „in Bearbeitung“-Sperre.
- **Last klein halten.** Ein Kanal pro Sprache, kompakte Nachrichten, Drosselung, Ablauf beantworteter Fragen.
- **Robust gegen Trolle.** Validierung, Rate-Limits pro Absender, Ignorieren lokal.

## 2. Vor dem Start klären (Spike, Meilenstein 0)

Diese Punkte entscheiden über das Protokoll. Erst testen, dann bauen. Werkzeug: `/aa probe`, Anleitung und Ergebnisse in `docs/SPIKE.md`.

1. **Interface-Version und Addon-Ordner.** `/dump select(4, GetBuildInfo())` im Client. Ordner vermutlich `World of Warcraft/forever/Interface/AddOns`.
2. **Eigene Kanäle.** Funktioniert `JoinTemporaryChannel("AskAzerothDE")`? Wie viele eigene Kanäle sind gleichzeitig erlaubt? Sind Kanäle layer-, shard- und fraktionsübergreifend auf den Megaservern? Wer wird Besitzer eines Kanals und kann ihn mit Passwort sperren?
3. **Addon-Nachrichten im Kanal.** `C_ChatInfo.RegisterAddonMessagePrefix` + `C_ChatInfo.SendAddonMessage(prefix, msg, "CHANNEL", channelIndex)`. Kommt die Nachricht bei einem zweiten Account an? Rückgabewert prüfen (`Enum.SendAddonMessageResult`).
4. **Einschränkungen (Midnight-Regeln).** Gibt es Sperren für Addon-Kommunikation im Kampf, in Instanzen oder Raids? Werden Werte als „secret values“ verborgen, die wir brauchen (Spielername, Stufe, Zone)?
5. **Drosselung.** Ab welcher Rate werden Nachrichten verworfen? Messen mit einer Testschleife.
6. **Bibliotheken.** Laufen AceComm (mit ChatThrottleLib) und LibDeflate unter Forever unverändert, auch mit mehreren Kanälen gleichzeitig?

Falls Kanäle nicht funktionieren: Fallback-Plan ist Gilde + Flüstern an bekannte Mentoren (schlechter, aber machbar). Dann Protokoll anpassen, bevor Meilenstein 2 startet.

## 3. MVP-Umfang

### In Version 1.0 (zum Release realistisch)
- Fragen stellen mit Kategorie, Kurzfassung, optionalen Details
- Queue-Liste mit Kategoriefiltern und Suche
- Thread-Ansicht mit mehreren Antworten
- Mentor-Modus an/aus
- Sprachauswahl (mehrere), ein Kanal pro Sprache
- Lokale Spielerliste: Favoriten, Ignorierte, Notiz, „hat geholfen“-Zähler
- Benachrichtigung pro Kategorie (aus / Badge / Sound), Pause im Kampf und in Instanzen, Zusammenfassen
- Ablauf: offen, beantwortet, gelöst
- Meine Fragen mit einstellbarer Aufbewahrung
- Angepinnte Antworten: lokal gespeichert, ohne Ablauf, eigene Ansicht mit Suche
- Login-Sync der aktiven Fragen
- Statisches FAQ (eingebaut, alle sieben Sprachen, Hinweis auf Wowhead)
- Minimap-Button mit Zähler
- Rate-Limits und Validierung

### Version 1.1
- Fraktionsfilter, Stufen- und Gebietsfilter für Mentoren
- Textbausteine für Mentoren
- Quest-, Item- und Kartenpunkt-Links (TomTom-kompatibel)
- FAQ-Vorschläge beim Tippen
- „Ins FAQ übernehmen“ + Export/Import-String
- Gildenmodus

### Später
- Lokale Statistik für Mentoren
- „Erneut stellen“ für geschlossene Fragen
- Spiel-Ignorierliste mitverwenden
- FAQ in den übrigen fünf Sprachen

## 4. Technische Architektur

### Abhängigkeiten
- **LibStub**, **CallbackHandler-1.0** (interne Nachrichten `AA_*`)
- **AceComm-3.0** mit **ChatThrottleLib**: teilt lange Nachrichten auf, drosselt
- **LibDeflate**: Kompression und `EncodeForWoWAddonChannel`
- Kommen über `.pkgmeta`-Externals, sind git-ignoriert; `tools/fetch-libs.sh` holt sie für die Entwicklung
- Eigener Code statt weiterer Libs: Serializer (keine Codeausführung, Tiefen- und Größenlimits), SavedVariables mit Defaults, Event-Verteilung, Slash-Befehle, Fenster und Widgets, Minimap-Button

### Ordnerstruktur
```
AskAzeroth/
  AskAzeroth.toc      lädt alles: Libs → Locales → Core → UI → Probe
  Libs/               git-ignoriert, siehe oben
  Locales/            enUS (Basis), deDE, frFR, esES (auch esMX), itIT, ruRU, ptBR
  Media/              Logo.tga, Sounds
  Core/
    Init.lua          Namespace, Events, interne Nachrichten, Ausgabe
    Constants.lua     Sprachen, Kategorien, Zeiten, Limits, Längen
    Database.lua      SavedVariables mit Defaults
    SlashCommands.lua /aa und Unterbefehle
    Util.lua          IDs, Zeit, Hilfsfunktionen
    Serializer.lua    Tabellen ↔ String
    Store.lua         Fragen/Antworten im Speicher, Ablauf, Abfragen
    Protocol.lua      Nachrichtentypen, Encode/Decode, Validierung
    Channel.lua       Sprachkanäle beitreten, verstecken
    Comm.lua          Senden, Empfangen, Halten im Lockdown, Rate-Limits
    Sync.lua          Login-Sync
    Players.lua       Favoriten, Ignorierte, Zähler
    Notify.lua        Benachrichtigungen, Sound, Drosselung
    Data/
      Categories.lua
      FaqTopics.lua
      Faq/              ein Thema pro Datei, alle sieben Sprachen je Eintrag
  UI/
    Widgets.lua
    MainFrame.lua     Fenster, Navigation
    QueueList.lua
    ThreadView.lua
    AskDialog.lua
    MyQuestions.lua
    Pinned.lua        angepinnte Antworten
    PlayersView.lua
    FaqView.lua
    Settings.lua      Einstellungen als Seite im eigenen Fenster (Mentor, Sprachen, Aufbewahrung)
    Toast.lua
    MinimapButton.lua
  Probe/              Spike-Werkzeug /aa probe, nicht gepackt
docs/
  DEVELOPMENT.md
  RELEASE.md
  PROTOCOL.md
  SPIKE.md
  logo/
tools/
  fetch-libs.sh
```

**Wichtig:** `Core/` darf nicht von `UI/` abhängen. Die UI hört auf interne Nachrichten (CallbackHandler, z. B. `AA_QUESTION_ADDED`, `AA_ANSWER_ADDED`, `AA_STORE_CHANGED`). So bleibt die Logik unabhängig von der Oberfläche.

## 5. Datenmodell

### Frage
```lua
{
  id = "7F3A9C21",       -- siehe IDs
  author = "Thalrin-Realm",
  lang = "de",
  cat = "quest",          -- quest | class | dungeon | prof | ui | misc
  title = "...",          -- max. 120 Zeichen
  body = "...",           -- optional, max. 500 Zeichen
  ctx = { lvl = 14, race = "NightElf", class = "DRUID", faction = "Alliance", zone = "Dunkelküste" },
  created = 1793551000,   -- GetServerTime()
  lastAnswer = nil,       -- Zeit der letzten Antwort
  solved = nil,           -- Zeit, wann als gelöst markiert
  answers = { [answerId] = Antwort },
}
```

### Antwort
```lua
{ id = "A1B2C3D4", qid = "7F3A9C21", author = "Varethos-Realm", text = "...", created = 1793551200 }
```

### SavedVariables
- `AskAzerothDB` (account-weit): `players`, `myQuestions`, `pinned`, `settings` (Sprachen, Mentor-Modus, Benachrichtigungen, Aufbewahrung), `faqCustom`
- `AskAzerothCharDB`: nur, was wirklich charakterbezogen ist (z. B. Fensterposition)
- Öffentliche Fragen werden **nicht** dauerhaft gespeichert, nur im Speicher gehalten und beim Login neu synchronisiert. Eigene Fragen gehen zusätzlich nach `myQuestions`.

### Angepinnte Antwort
Kopie zum Zeitpunkt des Anpinnens, unabhängig vom öffentlichen Thread. Schlüssel ist die Antwort-ID.
```lua
pinned["A1B2C3D4"] = {
  pinnedAt = 1793551500,
  question = { id = "7F3A9C21", author = "Thalrin-Realm", lang = "de", cat = "quest", title = "...", body = "...", created = 1793551000 },
  answer = { id = "A1B2C3D4", author = "Varethos-Realm", text = "...", created = 1793551200 },
}
```
- Rein lokal, wird nie gesendet.
- Pin-Symbol an jeder Antwort in der Thread-Ansicht (an/aus), auch unter „Meine Fragen“.
- Spätere Antworten im Thread kommen nicht automatisch dazu; jede wird einzeln angepinnt.
- Obergrenze als Konstante (Vorschlag: 500); beim Erreichen wird nichts gelöscht, sondern das Anpinnen mit Hinweis abgelehnt.

### IDs
8 Hex-Zeichen aus einem Hash von `author .. created .. counter`. Kollisionen sind bei der Datenmenge vernachlässigbar. Bei einer Kollision mit anderem Autor wird die neue Nachricht verworfen.

## 6. Protokoll

Präfix: `AA1` (Versionsnummer im Präfix, damit alte Clients neue Formate ignorieren).
Transport: AceComm im Sprachkanal, Payload = eigener Serializer → LibDeflate → `EncodeForWoWAddonChannel`.

| Typ | Felder | Wer darf senden |
|---|---|---|
| `Q` | id, cat, title, body, ctx, created | nur Autor |
| `A` | id, qid, text, created | jeder |
| `S` | qid, time | nur Autor der Frage (gelöst) |
| `D` | qid | nur Autor der Frage (zurückziehen) |
| `SR` | known = Liste von qid | jeder (Sync-Anfrage) |
| `SP` | Liste kompletter Fragen inkl. Antworten | jeder (Sync-Antwort) |

### Validierung beim Empfang
- Absender aus dem Event muss bei `Q`, `S`, `D` dem Autor entsprechen, bei `A` dem Antwortautor. Sonst verwerfen.
- Längen begrenzen, Kategorien und Sprachen nur aus erlaubter Liste.
- Zeitstempel mehr als 5 Minuten in der Zukunft: verwerfen.
- Rate-Limit pro Absender: max. 1 neue Frage pro 60 s, max. 3 offene Fragen, max. 6 Antworten pro 60 s. Überschreitungen werden still verworfen.
- Ignorierte Spieler: Nachrichten werden gespeichert (für korrekte Zähler), aber in der UI ausgeblendet bzw. eingeklappt.

Ausführliche Spezifikation mit Beispielen in `docs/PROTOCOL.md` anlegen.

## 7. Ablauf und Aufräumen

Jeder Client berechnet den Status selbst, es gibt keine Lösch-Nachricht für den Ablauf.

| Status | Bedingung | Verschwindet nach |
|---|---|---|
| Offen | keine Antwort | 2 h ab `created` |
| Beantwortet | ≥ 1 Antwort | 45 min ab `lastAnswer` (neue Antwort setzt zurück) |
| Gelöst | `solved` gesetzt | 10 min ab `solved` |

- Prüfung per Timer alle 60 s in `Store.lua`.
- Harte Obergrenze: 150 öffentliche Threads im Speicher, älteste zuerst raus.
- Alle Werte als Konstanten in `Core/Constants.lua`, damit sie leicht anpassbar sind.
- **Meine Fragen** bleiben unabhängig davon in `myQuestions`. Aufbewahrung einstellbar: immer (Standard), 7, 30 oder 90 Tage. Aufräumen beim Login und per Button.
- Nach öffentlichem Ablauf zeigt der Thread unter „Meine Fragen“ den Status „Geschlossen“.
- **Angepinnte Antworten** laufen nie ab und werden weder vom Ablauf, vom Zurückziehen (`D`), vom Aufräumen der Meinen Fragen noch vom Ignorieren eines Spielers entfernt. Nur „Lösen“ (Pin aus) entfernt sie.

## 8. Sync

- Nach dem Kanalbeitritt zufällig 5–15 s warten, dann `SR` mit den bereits bekannten IDs senden.
- Empfänger warten zufällig 2–8 s. Hat in der Zeit schon jemand mit `SP` geantwortet, nichts tun. Sonst `SP` mit allen nicht abgelaufenen Fragen senden, die der Anfragende nicht kennt (max. 30).
- `SR` pro Client höchstens alle 5 Minuten beantworten, um Kettenreaktionen bei vielen Logins zu vermeiden.

## 9. Benachrichtigungen

- Pro Kategorie: aus, Badge, Sound.
- Optionaler Filter auf Klassen (z. B. nur Jäger- und Druiden-Fragen).
- Pause bei `InCombatLockdown()`, in Instanzen (`IsInInstance()`) und optional bei Spielern über Stufe X.
- Zusammenfassen: höchstens ein Toast pro 2 Minuten, mit „+N weitere“.
- Fragen von Favoriten (wenn man selbst Neuling ist: Antworten von Favoriten) immer melden.

## 10. Meilensteine

Jeder Meilenstein endet mit: Code läuft fehlerfrei im Client (`/console scriptErrors 1`), `luacheck .` grün, kurzer Eintrag in `CHANGELOG.md`, ein PR mit Testliste für das Spiel.

**M0 – Spike (1 Abend)**
Repository-Gerüst und `/aa probe` (nicht gepackt). Punkte aus Abschnitt 2 testen. Ergebnis: `docs/SPIKE.md` mit Antworten und ggf. Protokollanpassungen.

**M1 – Grundgerüst**
Logo, SavedVariables-Defaults, Slash-Befehl `/aa`, leeres Hauptfenster mit Navigation, Minimap-Button, alle sieben Locale-Dateien.
*Fertig, wenn:* `/aa` öffnet das Fenster, Einstellungen bleiben nach `/reload` erhalten.

**M2 – Store und Protokoll (ohne Netzwerk)**
`Store.lua`, `Protocol.lua`, `Serializer.lua`, `Util.lua` mit Encode/Decode, Validierung, Ablauf, Rate-Limits. `/aa simulate` füttert den Store lokal.
*Fertig, wenn:* Alle Regeln aus Abschnitt 6 und 7 umgesetzt und im Spiel per `/aa simulate` und Debug-Ausgabe nachvollziehbar sind.

**M3 – Kommunikation**
Kanalbeitritt pro Sprache, Senden/Empfangen über AceComm, Debug-Befehl `/aa debug` zeigt ein- und ausgehende Nachrichten.
*Fertig, wenn:* Zwei Accounts tauschen Fragen und Antworten aus.

**M4 – Kern-UI**
Queue-Liste, Thread-Ansicht, Frage-Dialog, Antwortfeld, „Als gelöst markieren“, Ablauf-Hinweis im Thread.
*Fertig, wenn:* Der komplette Ablauf Frage → mehrere Antworten → gelöst → verschwindet funktioniert mit zwei Accounts.

**M5 – Spielerliste und Filter**
Favoriten, Ignorierte, Notizen, „hat geholfen“, Favoriten oben, Ignorierte eingeklappt.

**M6 – Mentor-Modus und Benachrichtigungen**
Mentor-Einstellungen, Toasts, Sound, Pausenregeln, Zusammenfassen, Badge am Minimap-Button.

**M7 – Meine Fragen, angepinnte Antworten, Sync, FAQ**
Aufbewahrung, Pin an Antworten und Ansicht „Angepinnt“ (Suche, Kategoriefilter, Pin lösen), Login-Sync, statisches FAQ DE/EN.

**M8 – Feinschliff und Release**
Lokalisierung in allen sieben Sprachen vollständig, Performance-Test mit vielen simulierten Nachrichten, CurseForge-/Wago-Projekt-IDs in `.toc` und `docs/RELEASE.md`, Release als Forever-Version.

Danach Version 1.1 gemäß Abschnitt 3.

## 11. Testen

- **Lint:** `luacheck .` mit `.luacheckrc`, läuft auch in CI.
- **Im Spiel:** zwei Accounts oder ein Freund. Der Server spiegelt eigene Kanalnachrichten zurück; mit Loopback lassen sich viele Tests mit einem Account machen. `/aa debug` für Nachrichtenlog, `/aa simulate 50` erzeugt lokal 50 Testfragen für UI- und Performance-Tests (nur lokal, sendet nichts).
- Keine Unit-Tests und kein gemocktes WoW-API im Repo.

## 12. Hinweise für Claude Code

- Vor jedem Meilenstein den passenden Abschnitt dieses Plans lesen, danach nur diesen Meilenstein umsetzen.
- Keine WoW-API-Funktionen raten. Bei Unsicherheit eine Notiz in `docs/SPIKE.md` anlegen und den Nutzer im Spiel testen lassen.
- Logik in `Core/` frei von UI halten, Kommunikation zwischen Modulen über interne Nachrichten.
- Konstanten (Zeiten, Limits, Längen) zentral in `Core/Constants.lua`.
- Nach jedem Meilenstein kurz zusammenfassen, was im Spiel zu testen ist.
