# Development

Plan and milestones: [`PLAN.md`](../PLAN.md) (German). Spike test guide:
[`SPIKE.md`](SPIKE.md).

## Layout

```
AskAzeroth/                  addon folder (the only thing that gets installed)
  AskAzeroth.toc             load order, interface version, SavedVariables
  Libs/                      libraries (git-ignored, see below)
  Locales/                   enUS (base), deDE, frFR, esES (also esMX), itIT, ruRU, ptBR
  Media/                     Logo.tga (addon icon, 64x64, 32-bit TGA from docs/logo/logo.svg)
  Core/                      namespace and events (Init.lua), constants, helpers (Util),
                             serializer, categories and FAQ texts (Data/), protocol, store, Net (store ↔ channels),
                             login sync, presence (who is online), my questions, pinned answers, players,
                             notifications, saved data,
                             slash commands, language channels, transport
  UI/                        widgets, main window with its pages: questions (QueueList,
                             ThreadView, AskDialog), my questions, pinned, players, FAQ,
                             settings, about; player menu,
                             toast, minimap button, commands
  Modules/                   ChannelDebug (/aa channels: channel state and live channel log, packaged)
  Probe/                     development tools, not packaged: transport test (/aa probe),
                             store test (/aa simulate, /aa store, /aa debug), test actions
                             (/aa ask, answer, solve, withdraw), performance test (/aa simulate perf)
docs/                        developer docs, spike test guide, release process,
                             logo/ (logo.svg, 400x400 logo.png for README/CurseForge/Wago)
tools/                       fetch-libs.sh (libraries for local development)
.pkgmeta                     packaging config (BigWigs packager)
PLAN.md                      implementation plan (not packaged)
```

* Settings, players, own questions and pinned answers are stored account-wide in
  `AskAzerothDB`, the character's own state (window position) in
  `AskAzerothCharDB`. Public
  questions live in memory only.
* `Core/` never depends on the UI; files talk through CallbackHandler
  messages (`ns.RegisterCallback(owner, "AA_…", func)`, `ns:Fire("AA_…", …)`).
* All code is original; no code or data is taken from other addons.

## Libraries

| Library | Source | Purpose |
|---------|--------|---------|
| LibStub | Ace3 | Library registry |
| CallbackHandler-1.0 | Ace3 | Internal messages, required by AceComm |
| AceComm-3.0 + ChatThrottleLib | Ace3 | Splitting/reassembling long messages, bandwidth throttling |
| LibDeflate | [SafeteeWoW/LibDeflate](https://github.com/SafeteeWoW/LibDeflate) `1.0.2-release` | Compression, addon-channel safe encoding |
| LibDataBroker-1.1 | [tekkub/libdatabroker-1-1](https://github.com/tekkub/libdatabroker-1-1) | Launcher data object, required by LibDBIcon |
| LibDBIcon-1.0 | CurseForge SVN trunk | Minimap button that minimap addons can hide, fade or collect |

Release builds get them from the `.pkgmeta` externals (Ace3 from the CurseForge
SVN trunk, LibDBIcon from the CurseForge SVN trunk, LibDeflate and
LibDataBroker from GitHub). They are not committed; for local
development run

```bash
tools/fetch-libs.sh
```

(Git Bash on Windows). It fills `AskAzeroth/Libs/` from the Ace3 GitHub
repository, the pinned LibDeflate tag, LibDataBroker's GitHub repository and
LibDBIcon's SVN trunk. Run it again to update.

## Local setup

Link the addon folder into the client so `git pull` + `/reload` is enough. The
folder name must match the `.toc` name. Replace `<client>` with the Forever
client folder (see the spike results).

```powershell
# Windows – directory junction, no admin rights required
New-Item -ItemType Junction `
  -Path "D:\Games\World of Warcraft\<client>\Interface\AddOns\AskAzeroth" `
  -Target "D:\Dev\AskAzeroth\AskAzeroth"
```

```bash
# macOS / Linux
ln -s "$PWD/AskAzeroth" "/Applications/World of Warcraft/<client>/Interface/AddOns/AskAzeroth"
```

New files or `.toc` changes require a client restart instead of `/reload`.

## Checks

Lint: `luacheck .` (also runs in CI on every push). Functionality is verified
in-game; there are no automated tests and no mocked WoW API.

### Performance

`/aa simulate perf` (development checkout) fills the store with the worst
case: 300 questions with full-length title and details and 10 answers of
500 bytes each (1650 messages through the receive path), then prints how
long receiving, sorting the list, building a sync answer, the expiry check
and refreshing the open page took, and how much memory the questions use.
Open the window on the Questions page first to include the page refresh.
`/aa simulate reset` clears the store afterwards.

What to look for in game: no noticeable stutter while it runs, the list
refresh well below a frame (a few ms), and a sync answer of at most a few KB
compressed. Real questions are much shorter than this test, so the numbers
are an upper bound.

## Release

Rename `## Unreleased` in `CHANGELOG.md` to `## vX.Y.Z (YYYY-MM-DD)`, merge
it, then run *Actions → Release → Run workflow* on `main` with the version
(`v0.1.0`, or `v0.1.0-beta1` / `-alpha1` for test releases). The workflow
tags the commit and uploads to CurseForge, Wago and GitHub. Details, including
the local test build:
[`RELEASE.md`](RELEASE.md) (same process in all PhenomDevel addons).

## Interface version

The `.toc` lists `16001` (Forever) plus the retail Midnight builds
(`120000` … `120007`, `120100`, `120105`), the same list as Guild Finder
Forever. Retail is supported so the addon can be tested before Forever
launches; both run the same API. If a client shows the addon as out of date,
read its value via `/dump select(4, GetBuildInfo())` and add it to the
comma-separated list.

Testing on retail: the language channels (and with them questions, answers
and the sync) only reach the own realm and its connected realms. Retail has
more classes than Forever (Death Knight, Monk, Demon Hunter, Evoker); they
show up in the mentor class filter there. Forever-specific behaviour still
needs a check on Forever.
