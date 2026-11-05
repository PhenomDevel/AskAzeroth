# Changelog

## Unreleased

- New command `/aa channels`: shows whether the addon's chat channels are
  joined (with their number), what was sent and received on them, and all
  channels of your client. `/aa channels debug` prints channel events to chat
  as they happen (joins, notices, messages), also after a reload, until
  `/aa channels debug off`. Helpful when questions don't arrive.
- Forever: questions and answers reach other players again. Forever blocks
  addon messages in chat channels, so AskAzeroth now finds the other users
  through the channel's member list and sends to them by (hidden) whisper;
  they pass new questions and answers on.
- Forever: names without a realm ("First Surname") are recognized, so your
  own questions, answers and whispers to other players work again.

## v1.0.2 (2026-11-03)

- Search: searches by words instead of the exact phrase. "how does aggro" or
  "wie funktioniert Aggro" now find the Aggro glossary term and the FAQ
  entries about threat; question words are ignored, and other names from
  the glossary count too (aggro = threat = Bedrohung).
- FAQ: a search in "All topics" also shows matching glossary terms (marked
  "Glossary"). Terms whose name matches come first, then the FAQ entries.
- FAQ: the glossary now sits right below "All topics" in the topic list.
- Search: plurals find the singular too. "HoTs" finds HoT in the glossary,
  "bosses" finds the FAQ entries about bosses. The glossary search now also
  ignores accents and the case of Russian letters.

## v1.0.1 (2026-11-03)

- Glossary: new term "Enrage" in all languages.
- Glossary: plurals are marked too ("DoTs", "HoTs", "Tanks", "bosses",
  Russian "ДоТы"), in texts and in chat.

## v1.0.0 (2026-11-03)

First release. AskAzeroth is community driven: questions only reach players
running the addon, so the more players and mentors use it, the faster
answers come. Tell your guild and friends!

### Ask and answer
- Ask a question with a category (quest, class, dungeon, profession,
  interface, other), a short summary, optional details and its language.
  Questions go from player to player over hidden addon channels, one per
  language; there's no website and no external tool.
- Threads: any number of answers per question. Mark your question as
  solved or withdraw it. Questions stay in the list for 3 days (1 day once
  solved), the thread shows the time left.
- Questions and answers show who wrote them with level, race and class.
  Solved questions are marked green, your own questions blue.
- Limits against spam: one question per minute (the buttons count down the
  seconds), up to 5 open questions at once.
- Questions asked while you were offline are fetched from other players
  after login.
- Questions page filter dropdown: "Hide solved", "Hide answered" (shows
  only questions that still wait for help) and "Keep the ones I answered"
  (on by default).
- FAQ suggestions while you ask: matching FAQ entries show up as you type,
  so you often have the answer before anyone has to reply.

### For mentors
- Mentor mode with notifications per category ("Silent" or "With sound"),
  optionally only for certain classes or up to a level. Questions from
  favourites and answers to your own questions always notify you.
- Notifications never pop up in combat, optionally wait in instances, can
  be limited to one every 1 to 15 minutes and moved in Edit Mode. Choose
  the sound and whether a counter shows on the minimap button and the
  Questions tab.
- Attach up to 3 FAQ entries or glossary terms to an answer; readers open
  them with one click, FAQ entries in their own FAQ language.

### FAQ and glossary
- Built-in FAQ with hundreds of beginner questions in topics such as first
  steps, quests, each class, combat, travel, gold, professions, groups,
  chat, interface and AskAzeroth itself. Search by word (also other word
  forms and without accents). The FAQ can be shown in every addon
  language; entries not translated yet appear in English.
- A hint points to Wowhead for looking up quests, items and NPCs.
- Glossary with over 160 game terms and chat abbreviations (Aggro, DoT,
  BoP, LFG, roles, raid words, stats, spec short forms, chat slang, dungeon
  short names …), in all seven addon languages. Terms in FAQ answers,
  threads and the normal chat show their explanation on hover and open the
  glossary on click (the chat part can be switched off). In the chat, the
  AskAzeroth logo in front of a marked term shows where the marking comes
  from.
- Abilities named in FAQ answers, the glossary and threads are real spell
  links with icon and tooltip; shift-click posts them in chat.
- FAQ answers show keys, buttons, menu entries and chat commands in their
  own colours.

### Your own lists
- My questions: your questions with their answers, kept as long as you
  like.
- Pinned: pin any helpful answer, also on other players' questions; it's
  kept with the question and never expires.
- Players: favourites (their questions first), ignored players (folded
  away), notes and a "helped me" counter, all kept on your computer only.

### Window and setup
- Main window (`/aa`) with the pages Questions, My questions, Pinned,
  Players, FAQ and Settings, in the look of the game's own windows.
- First-run setup on the first login: languages, new player or mentor,
  which questions should notify you. `/aa setup` starts it again.
- Minimap button and addon compartment entry; the tooltip shows how many
  questions are waiting for an answer.
- 7 languages: English, Deutsch, Français, Español, Italiano, Русский,
  Português.
