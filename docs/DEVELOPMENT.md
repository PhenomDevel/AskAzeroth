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
  Core/                      namespace and events (Init.lua), constants, saved data,
                             slash commands, language channels, transport
  UI/                        widgets, main window with its pages (placeholders until
                             their milestone), settings page, minimap button, commands
  Probe/                     transport test tools (/aa probe); not packaged
docs/                        developer docs, spike test guide, release process,
                             logo/ (logo.svg, 400x400 logo.png for README/CurseForge/Wago)
tools/                       fetch-libs.sh (libraries for local development)
.pkgmeta                     packaging config (BigWigs packager)
PLAN.md                      implementation plan (not packaged)
```

* Settings, players and own questions are stored account-wide in
  `AskAzerothDB`, the character's own state (window position) in
  `AskAzerothCharDB` (window position). Public
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

Release builds get them from the `.pkgmeta` externals (Ace3 from the CurseForge
SVN trunk, LibDeflate from GitHub). They are not committed; for local
development run

```bash
tools/fetch-libs.sh
```

(Git Bash on Windows). It fills `AskAzeroth/Libs/` from the Ace3 GitHub
repository and the pinned LibDeflate tag. Run it again to update.

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

## Release

Rename `## Unreleased` in `CHANGELOG.md` to `## vX.Y.Z (YYYY-MM-DD)`, merge
it, then run *Actions → Release → Run workflow* on `main` with the version
(`v0.1.0`, or `v0.1.0-beta1` / `-alpha1` for test releases). The workflow
tags the commit and uploads to CurseForge, Wago and GitHub. Details, including
the local test build:
[`RELEASE.md`](RELEASE.md) (same process in all PhenomDevel addons).

## Interface version

The `.toc` lists `16001` (Forever) only. If the client shows the addon as out
of date, read its value via `/dump select(4, GetBuildInfo())` and update
`## Interface`.
