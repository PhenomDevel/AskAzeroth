# Protocol

How AskAzeroth clients talk to each other. Source of truth for the rules:
[`PLAN.md`](../PLAN.md), sections 5 to 8. Code: `Core/Protocol.lua`
(wire format, checks on receipt), `Core/Store.lua` (who may send what,
expiry, rate limits), `Core/Comm.lua` (transport).

## Transport

- One hidden chat channel per language: `AskAzerothEN`, `AskAzerothDE`,
  `AskAzerothFR`, `AskAzerothES`, `AskAzerothIT`, `AskAzerothRU`,
  `AskAzerothPT`.
- One addon message prefix per language: `AA1en`, `AA1de`, … The `1` is the
  protocol version; an incompatible format gets a new prefix, so old clients
  simply don't hear it. There is a prefix per language because AceComm puts
  split messages back together by prefix + distribution + sender and does
  not see the channel (details in [`SPIKE.md`](SPIKE.md)).
- Payload: own serializer (`Core/Serializer.lua`) → LibDeflate
  `CompressDeflate` → `EncodeForWoWAddonChannel` → AceComm over `CHANNEL`
  (retail) or `WHISPER` (Forever, see *Whisper mode* below).
- Every message uses ChatThrottleLib priority `NORMAL`. With two priorities
  on one prefix, ChatThrottleLib's turn-taking could interleave the parts of
  two long messages and the receiver would mix them up.
- Nothing is sent during the chat messaging lockdown (encounters); `ns.Comm`
  holds messages and sends them afterwards.

### Whisper mode (Forever)

Live Forever rejects addon messages in every chat channel, our own ones
included: `SendAddonMessage` returns success, 1 to 2 s later the server
answers with `CHAT_MSG_CHANNEL_NOTICE` `NOT_ALLOWED_IN_CHANNEL` and nothing
is delivered. Addon whispers work. So on Forever (`Core/Comm.lua`,
`Core/Peers.lua`, `Core/Net.lua`):

- The language channels are still joined, but only to find each other.
  Peers come from the channel's join/leave notices, the senders of addon
  whispers on our prefixes, peers remembered from earlier sessions
  (`AskAzerothDB.knownPeers`, the newest 60 per language, 14 days) and
  member lists the player requests with `/chatlist`. The addon can't
  request member lists itself: `ListChannelByName` is protected
  (`ADDON_ACTION_BLOCKED`, seen on Forever 2026-11-06).
- Welcome: when someone joins a language channel, about 3 members (each
  with probability 3 / known peers) send them an `SR` by whisper after 2 to
  8 s. The newcomer learns about them that way and has peers to sync with.
- A peer whose whisper bounces ("No player named …") is dropped (also from
  the remembered ones), the error line is hidden.
- Own messages go to 20 random peers of the language.
- Relay: a client that learns a question or answer created in the last
  15 minutes (first-hand or relayed) passes the question on as an `SP` to
  3 random peers, leaving out the sender and the author. `SP` only adds
  what is missing, so each client relays a novelty at most once and the
  spread stops by itself. `S` and `D` are not relayed (only the author's
  own message counts); clients the author didn't reach keep the question
  open until it expires.
- Received whispers are only accepted for selected languages.
- Retail starts in channel mode and switches to whisper mode on the first
  `NOT_ALLOWED_IN_CHANNEL` for one of our channels; channel messages of the
  last 10 s are then resent by whisper.
- Names on Forever are "First Surname" without a realm; whisper targets
  leave out the own realm.

## Serializer

Strings are length-prefixed, so no escaping is needed:

| Value | Written as |
|---|---|
| string | `s<len>:<bytes>` |
| number | `n<number>;` |
| boolean | `T` / `F` |
| table | `{` key value … `}` |

Reading never runs code and rejects anything malformed, nested deeper than
6 levels or with more than 6000 values.

## Messages

Every message is a table with the type in `t`. Keys are short to keep
messages small.

| Type | Fields | Who may send it |
|---|---|---|
| `Q` question | `i` id, `c` category, `ti` title, `b` body (optional), `x` context (optional), `ts` created | the author |
| `A` answer | `i` id, `q` question id, `tx` text, `f` FAQ and glossary references (optional), `x` answerer context `{ l, r, k }` (optional, level/race/class), `ts` created | anyone |
| `S` solved | `q` question id, `ts` time | the question's author |
| `D` withdrawn | `q` question id | the question's author |
| `SR` sync request | `k` list of known question ids | anyone |
| `P` presence | `m` mentor (boolean), `r` reply wanted (optional), `o` online list (optional, whisper mode) | anyone |
| `SP` sync answer | `qs` list of questions with `a` author and `an` answers (`i`, `a`, `tx`, `f`, `x`, `ts`) | anyone |

The author of `Q`, `A`, `S` and `D` is always the sender reported by the
game (`Name-Realm`); it is never part of the message. Only `SP` carries
authors, because it relays other players' messages.

References `f` (optional): list of up to 3 ids of built-in FAQ entries
(lower case letters, digits and `-`, at most 32 bytes, e.g. `hunter-tame`)
or glossary terms (the same id with the prefix `g:`, e.g. `g:aggro`).
Invalid ids and anything past the third are dropped, the answer stays. Ids
the receiver does not know are kept and shown as "FAQ entry / glossary
term from a newer version". Older versions ignore the field; an answer
always has text (when a mentor only attaches links, the text names the
linked questions and terms).

Context `x` (all optional): `l` level, `r` race (file name, e.g. `NightElf`),
`k` class (file name, e.g. `DRUID`), `f` faction (`Alliance`/`Horde`), `z`
zone name.

Example question, before compression:

```lua
{ t = "Q", i = "7F3A9C21", c = "quest", ti = "How do I get back to Darnassus?",
  x = { l = 14, r = "NightElf", k = "DRUID", f = "Alliance", z = "Darkshore" },
  ts = 1793551000 }
```

Example answer:

```lua
{ t = "A", i = "A1B2C3D4", q = "7F3A9C21", tx = "Take the boat west of the inn.", ts = 1793551200 }
```

### Ids

8 upper-case hex characters from a hash of author, time and a counter.
A message whose id is already taken by another author is dropped
(`collision`); the same id from the same author is a duplicate.

### Categories

`quest`, `class`, `dungeon`, `prof` (profession), `ui` (interface), `misc`.
Anything else is dropped.

## Checks on receipt

In `Protocol.Decode` (format):

- Valid table with a known type, ids of 8 hex characters.
- Title 1–120 bytes, body up to 500, answer 1–500, zone up to 64; no
  control characters (body and answer may contain line breaks). Text is
  stored as received and must be shown with `Util.EscapeText`, so `|` can't
  inject colours, links or textures.
- Timestamps are whole numbers and at most 5 minutes in the future.
- Invalid context fields are left out; the message is kept.
- `SP`: at most 30 questions, 50 answers each; invalid entries are skipped
  one by one.

In `Store.Receive` (rules):

- `S` and `D` only from the question's author (`not-author`).
- `A` only for a known question (`unknown`), at most 50 answers per
  question, not older than the question.
- `A`, `S` and `D` only on the channel of the question's language (`lang`).
- Rate limits per sender for first-hand messages: 1 new question per 60 s,
  6 answers per 60 s, at most 5 open (unsolved) questions per author.
  Excess messages are dropped silently.
- An already expired question is not added.
- At most 300 questions in memory; the least recently active go first.

Dropped messages fire `AA_MESSAGE_DROPPED (reason, sender, type)`; `/aa debug`
in a development checkout prints them.

### Sync answers

`SP` relays other players' questions, so the sender can't vouch for them.
It may only **add** what is missing: unknown questions and, for a known
question with the same author, unknown answers. It never changes a title,
never removes anything and never carries a solved state; that only comes
from the author's own `S`. A forged sync answer can therefore add made-up
questions under someone else's name (known limit), but it can't alter or
close real ones. Rate limits don't apply to `SP`.

## Sync

Public questions are kept in memory only, so a client that joins a language
channel asks the others for what it missed (`Core/Sync.lua`):

1. 5 to 15 s (random) after the channel is ready, send `SR` with the ids of
   the questions already known in that language (at most 200).
2. A client that receives an `SR` waits 2 to 8 s (random). If anyone sent
   an `SP` on that channel in the meantime, it does nothing. Otherwise it
   sends one `SP` with the questions the requester doesn't know: newest
   activity first, at most 30, and at most 16000 bytes before compression.
   When a question doesn't fit, its oldest answers are left out first, so
   the last answer (and with it the expiry) stays the same.
3. Each client answers at most one `SR` per language channel every
   5 minutes, so many logins at once don't set off a chain of answers.

In whisper mode the `SR` goes to 2 random peers (retried every 15 s while
none are known, or 20 s after a request no `SP` answered, up to 4 times) and each of them answers the requester by
whisper; the "someone else was faster" check doesn't apply. A client
answers the same requester at most every 5 minutes and anyone at most every
10 s. Questions from a whisper-mode `SP` that are at most 15 minutes old
still raise notifications, since that is how most clients get new
questions there.

Own questions are also put back from "My questions" at login (as long as
they haven't expired), so their thread and actions work before the sync.

## Presence

How many AskAzeroth users are online, split into players and mentors
(`Core/Presence.lua`, shown in the window header and the minimap tooltip).
Every client keeps its own estimate; there is no exact count, because the
addon can't read the channels' member lists itself.

- `P` carries the sender's role (`m`). In whisper mode it also carries `o`,
  the players the sender knows to be online, as flat triples `name, age,
  role` (age: seconds since last seen, at most 3600; role: 0 unknown,
  1 player, 2 mentor), the newest 300 first. Invalid triples are skipped.
- Every client sends a `P` every 5 minutes (±1 minute) to 2 random peers; in
  channel mode to the channel, without a list.
- 3 to 10 s after joining a language channel a client sends a `P` with
  `r = true` to 3 random peers (retried every 15 s, up to 8 times, while
  none are known). Each answers with its own `P` (with list, without `r`),
  at most once per requester every 5 minutes.
- Lists are merged: for every name the newest sighting wins, together with
  its role. First-hand sightings also come from `Core/Peers.lua` (join
  notices, `/chatlist`, received whispers; role unknown).
- A leave notice or a bounced whisper removes a player; sightings from
  before that time don't bring them back.
- Players not seen for 60 minutes (channel mode: 13 minutes) no longer
  count. Unknown roles (older versions) count as players. The own character
  counts while its channel is joined.
- Known limit: like `SP`, a forged list can add made-up names.
- Older clients drop `P` as an unknown type.

## Expiry

Every client works this out itself; there is no delete message for it.

| Status | Condition | Disappears |
|---|---|---|
| open | no answer | 3 days after `created` |
| answered | at least one answer | 3 days after the last answer |
| solved | `S` received | 1 day after `solved` |

Checked every 60 s. Own questions are also kept under "My questions",
independent of this: they show "closed" after expiry and are removed after
the retention set in the settings (forever by default; at login and with
"Clean up"). Pinned answers are local copies and never expire.

## Store messages

`AA_QUESTION_ADDED (q)`, `AA_ANSWER_ADDED (q, a)`, `AA_QUESTION_SOLVED (q)`,
`AA_QUESTION_REMOVED (q, reason)` with reason `expired`, `withdrawn` or
`cap`, `AA_STORE_CHANGED ()` after any change.
