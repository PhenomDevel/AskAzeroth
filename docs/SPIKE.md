# M0 – Spike

Before the store, protocol and UI are built, this test checks in-game whether
the transport works on Forever: hidden custom channels (one per language),
addon messages over `CHANNEL`, their reach, throttling, the chat messaging
lockdown and which player values are secret. It answers the questions in
[`PLAN.md`](../PLAN.md), section 2.

All commands are under `/aa probe`; `/aa probe` alone lists them. The probe
loads only from a git checkout; release builds leave it out (`.pkgmeta`).

Every result is printed and also written to a log in the saved data
(`AskAzerothDB.probe.log`, last 300 lines, in
`WTF\Account\<ACCOUNT>\SavedVariables\AskAzeroth.lua`). Easiest way to
report: paste `/aa probe log 50` output, or that table from each account, and
fill in the result tables below.

## Setup

1. `tools/fetch-libs.sh`, then link `AskAzeroth/` into the AddOns folder (see
   [`DEVELOPMENT.md`](DEVELOPMENT.md)). Restart the client.
2. `/console scriptErrors 1`.
3. Optional: `/aa probe clear` for a clean log.

### Single account (default)

If the server echoes `CHANNEL` addon messages back to the sender (Guild
Finder Forever's probe suggests it does), loopback (default on,
`/aa probe loopback on|off`) handles own messages like those of another
player: the probe answers its own pings, counts its own bursts and checks its
own large messages. Every test except the reach matrix (4) and the marked
steps then runs on one account.

If the first ping logs `Own ping #1 did not come back …`, there is no echo and
a second player is needed for tests 3, 5, 6 and 7.

## Tests

### 1. Client and folder

- `/aa probe status`: note the interface number and build.
- Note the AddOns folder path of the Forever client.

### 2. Join and hide the channels

- Log in, wait ~10 s. Expected: `Channel AskAzerothDE joined (#n, m channels
  in total).` (the channel of the client language; English for non-listed
  locales).
- `/aa probe status`: channels `de #n (hidden, …)`, lockdown `no`.
- The default channels keep their numbers (General is still 1, Trade 2 …),
  nothing of our channel shows up in any chat tab, and it is not ticked in
  the chat tab settings (right-click tab → Settings → Channels).
- Repeat after `/reload` and after a full client restart.
- `/aa probe show` puts the channels into the main chat frame (debug),
  `/aa probe hide` removes them again.

### 3. Channel slots

The client allows only a limited number of channels at once (General, Trade,
LocalDefense, Services … count too; Guild Finder Forever adds one).

- `/aa probe join all` joins all seven language channels.
- Note which joins succeed and the `channels in total` count when the first
  one fails (`Could not join channel …`), plus any channel notice in the log.
- Repeat with Guild Finder Forever enabled.
- Afterwards `/aa probe leave all`, then `/reload`.

### 4. Message A → B and reach (second player)

- A: `/aa probe ping` → `Ping #1 (de) sent: Success`.
- A: `Own ping #1 (de) came back (echo).`
- B: `Ping from A (de, realm …, faction, level), 0 s on the way.`
- A, within ~3 s: `Answer from B …`.

Reach cannot be tested alone. Run the ping for each pair (✓ = arrived):

| A ↔ B | A → B | B → A |
|-------|-------|-------|
| same realm, same faction | | |
| same realm, other faction | | |
| other realm, same faction | | |
| other realm, other faction | | |
| same realm, different layer/shard (other zone, far away) | | |
| other ruleset (e.g. normal ↔ hardcore) | | |

### 5. Large and parallel messages (AceComm + LibDeflate)

A sync answer carries up to 30 questions with their answers, so several KB.

- A: `/aa probe big` (4 KB), then `/aa probe big 24` (24 KB).
- B: `Large message from A (#n, de, … bytes): intact`.
- A: `… all … bytes sent after … s` and `B received large message #n: intact`.
- A: `/aa probe join en`, then `/aa probe parallel 8`: one 8 KB message on
  each joined channel at the same time. Both must arrive intact (see design
  note 1).

### 6. Throttling

- A: `/aa probe burst` (20 × 200 bytes, sent in one go without
  ChatThrottleLib), then `/aa probe burst 100 250`.
- A logs the result codes, e.g. `Success=20` or
  `Success=40, ChannelThrottle=60`. B logs how many arrived; A gets B's count.
- Then `/aa probe big 24` three times in a row: everything should arrive
  intact, just slower (ChatThrottleLib).

### 7. Lockdown and secret values (boss fight, dungeon)

- A, before the pull: `/aa probe auto 15` (raw ping + queue message every
  15 s).
- Expected during the fight on A: `Encounter started …`,
  `Chat messaging lockdown started.`, raw pings fail with a lockdown result
  code (note its name), queue messages are `held for now`.
- After the fight: `Chat messaging lockdown ended.`, `Held messages sent.`;
  B logs `Queue message from A (#n, de), … s after it was created.`
- The probe logs a `Context (ENCOUNTER_START)` line and one when entering an
  instance: which of name, level, race, class, faction, zone, map are
  `<secret>` there? `/aa probe context` logs the same anywhere (open world,
  combat, dungeon, battleground).
- *Second player:* meanwhile B (outside the instance) sends
  `/aa probe ping`: does A receive it during the lockdown?
- Watch for Lua errors during the fight.
- Note whether the lockdown also starts outside boss fights (dungeon trash,
  battlegrounds, …). Then `/aa probe auto off`.

### 8. Channel ownership and moderation

The first character in a custom channel usually becomes its owner and may be
able to set a password, kick or ban – a risk for a shared public channel.
Channel notices (owner changes, kicks, password changes) end up in the log.

- After joining: `/owner AskAzerothDE` prints the owner (also with
  `/aa probe show`). Did you become owner?
- Try `/password AskAzerothDE test`; with a password set, can a second
  player still join (`/aa probe join de` on B after `/reload`)? Remove it
  again with `/password AskAzerothDE` (empty).
- *Second player:* can the owner kick the other one
  (`/ckick AskAzerothDE <name>`)? Does the kicked one rejoin with
  `/aa probe join de`?
- What happens to ownership when the owner logs out?

### 9. Saved data

- The login line `Saved data: login #n (account), #n (character), last
  logout …` counts up on every `/reload` and login.
- Warning signs: `Saved data incomplete! …` or `No saved data loaded …` on a
  login where data existed before.

### 10. Links in the addon's own texts (glossary)

`/aa probe links` opens a small test window. Every line has a custom link
(`askazeroth-glossary:`), an item link and an `addon:` link, in a frame with
a font string and `SetHyperlinksEnabled(true)`:

- **A**: the frame on its own,
- **D**: inside a frame that clips its children (`SetClipsChildren`),
- **E**: as the element of a `WowScrollBoxList` (like FAQ entries and thread
  answers),
- **F**: prepared by `GlossaryLinks.Enable` itself (shows the glossary
  tooltip for "Aggro").

Hover and click every link in every line, then run `/aa probe links` again
to close it. The chat (and `/aa probe log`) shows which line got
`enter`/`click` events.

Result 2026-11-02 (Kevin, first version of the test): A gets enter, leave
and click for all three link types. A plain frame without
`SetHyperlinksEnabled` and a `SimpleHTML` frame get no link events.

Result 2026-11-02 (Kevin, second version): A, D and E get enter, leave and
click for all link types; F gets enter. So clipping and scroll boxes do not
block link events.

`/aa probe glossary` logs every link event (and mouse up) in the real
windows prepared by `GlossaryLinks.Enable`, with the glossary entry found
and whether the tooltip is shown afterwards.

## Design notes from building the probe

1. **One addon message prefix per language** (`AA1de`, `AA1en`, …) instead of
   one `AA1`. AceComm reassembles split messages per prefix + distribution +
   sender and doesn't see the channel; ChatThrottleLib queues per prefix +
   channel and sends queues round-robin. Two split messages with the same
   prefix on two channels would mix their parts on the receiver. The prefix
   also tells the receiver which language a message came in. Test 5
   (`parallel`) checks it.
2. The same mixing applies to two split messages with the same prefix and
   channel but different ChatThrottleLib priorities (e.g. a `BULK` sync
   answer and a `NORMAL` new question). Plan for M2/M3: keep `Q`, `A`, `S`,
   `D` small enough for one part, or send all multi-part messages with one
   priority.
3. Nothing goes out during a lockdown; `ns.Comm` holds messages per language
   and sends them afterwards in order. A multi-part message interrupted by a
   starting lockdown is lost; the login sync repairs that.
4. The server echoes own `CHANNEL` messages (to be confirmed in test 4);
   `ns.Comm` drops own messages unless loopback is on.
5. Sync answers (`SP`) relay other players' questions, answers and solved
   states, so the sender check of section 6 cannot apply to them. To be
   specified in `docs/PROTOCOL.md` (M2): synced data may add, never
   overwrite, and `S`/`D` count only when received from the author directly.

## Spell links (to confirm in game)

`Core/SpellRefs.lua` and `UI/GlossaryLinks.lua` rely on these Retail APIs;
by our rule they should behave the same on Forever:

- `C_Spell.DoesSpellExist`, `C_Spell.GetSpellName`, `C_Spell.GetSpellTexture`
  and `C_Spell.GetSpellLink` for the IDs in `Core/Data/Spells.lua`.
- `C_SpellBook.GetNumSpellBookSkillLines`, `GetSpellBookSkillLineInfo`
  (`itemIndexOffset`, `numSpellBookItems`) and `GetSpellBookItemInfo` with
  `Enum.SpellBookSpellBank.Player` (`spellID`, `itemType`, `isPassive`) to
  add the reader's own spells.
- `GameTooltip:SetSpellByID` on hover; a texture escape (`|T…|t`) inside an
  addon hyperlink; `ChatFrameUtil.InsertLink` (fallback
  `ChatEdit_InsertLink`) for shift-click.

`/aa probe spells` prints how many names were found;
`/aa probe spells <text>` shows which spells a text links. If the list count
is 0 on Forever, the client does not know these spell IDs; links from the
own spellbook still work.

## Results

Fill in after testing (or paste the logs into the PR and I'll fill it in).

| # | Question | Result |
|---|----------|--------|
| 1 | Interface number, build, AddOns folder | |
| 2 | Hidden channel joined, numbering unchanged, nothing in chat | |
| 3 | Channel slots: how many language channels fit (with/without GFF) | |
| 4 | Echo of own messages; reach matrix | |
| 5 | Large (24 KB) and parallel messages intact; time for 24 KB | |
| 6 | Burst result codes and loss rate | |
| 7 | Lockdown result code; when it starts; received during lockdown; secret values in instance/combat | |
| 8 | Owner on join; password/kick possible; owner after logout | |
| 9 | Saved data reliable | |

### Consequences for the protocol

To be written after the results are in.

## Category icons (to confirm in game)

`Core/Data/Categories.lua` and `W.CategoryIcon` use these textures:

- `Interface\GossipFrame\AvailableQuestIcon` (Quest),
  `Interface\Icons\INV_Misc_Book_09` (Class),
  `Interface\Icons\INV_Misc_Head_Dragon_01` (Dungeon),
  `Interface\Icons\Trade_BlackSmithing` (Profession),
  `Interface\Icons\INV_Misc_Gear_01` (Interface),
  `Interface\Icons\INV_Misc_QuestionMark` (Other). A missing one shows
  as a green square.
- Class questions show the asker's class icon through the atlas
  `classicon-<class>` (e.g. `classicon-warrior`), only when
  `C_Texture.GetAtlasInfo` knows it; otherwise the book icon.

## Glossary in the chat (to confirm in game)

`UI/ChatGlossary.lua` relies on these Retail behaviours:

- `ChatFrameUtil.AddMessageEventFilter` (fallback
  `ChatFrame_AddMessageEventFilter`) may return a changed message; lines
  with secret values skip the filters.
- Links of the type `addon:AskAzeroth:glossary:<id>` in a chat frame: the
  chat's own click handling accepts the `addon:` type without an error; our
  `HookScript` on `OnHyperlinkEnter`/`Leave`/`Click` of `ChatFrame1`–`N`
  shows the tooltip and opens the glossary.
- Chat frames are found through `NUM_CHAT_WINDOWS`, `CHAT_FRAMES` and a
  `hooksecurefunc` on `FCF_OpenTemporaryWindow` (whisper windows).

## Whisper mode (to confirm in game on Forever)

`Core/Peers.lua` and the whisper mode in `Core/Comm.lua` rely on:

- `ListChannelByName` is protected: calling it from addon code raises
  `ADDON_ACTION_BLOCKED` (Forever, 2026-11-06). The addon only reads member
  lists the player requests with `/chatlist AskAzerothDE`
  (`CHAT_MSG_CHANNEL_LIST`: arg 1 the comma-separated members, arg 4
  `"5. AskAzerothDE"`, arg 9 the base name).
- `CHAT_MSG_CHANNEL_JOIN`/`LEAVE` fire for our channels (arg 2 the player);
  the welcome depends on it. Check with two characters: log in A, then B;
  some seconds later `/dump AskAzeroth.Peers.Count("de")` on B → 1 or more.
- Addon whispers to "First Surname" arrive (confirmed for GFF 2026-11-05).
- A whisper to a player who went offline returns `ERR_CHAT_PLAYER_NOT_FOUND_S`
  as `CHAT_MSG_SYSTEM`.
- `/dump AskAzeroth.Comm.mode` → `"whisper"` on Forever, `"channel"` on
  retail.
