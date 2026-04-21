# Tales from Ulcantron: Purity Wars

A Godot 4 narrative RPG now carrying a completed vertical slice and a completed foundation pass. This repository is the live production baseline for the full game, not a spike sandbox and not a frozen archive.

## Status

| Track | Status |
|---|---|
| Technical spike | Complete and archived |
| Vertical slice | Complete |
| Foundation pass | Complete |
| Pre-production | Complete |
| Full production | Active |

## What Is Production-Ready

- A title-first boot flow with a scaffolded menu state for future intro/title art
- Authored exploration scenes for Frontier Hamlet, Kobold Mine, and Crossroads
- Scene-based collision and trigger flow, without runtime tile generation or dynamic collision builders
- JSON-backed dialogue loading through `data/dialogue/`
- Turn-based battle flow for regular Kobold encounters and the Shaman boss route
- Save/load and map return-context handling
- Shared actor presentation through `ActorVisuals.gd`
- Shared music and SFX playback through `AudioManager.gd`
- HUD, dialogue, prompt, and transition overlays hosted from `scenes/main/`

## What Is In Scope In This Repo

- Ongoing production work for Tales from Ulcantron: Purity Wars
- The completed vertical-slice implementation as a proven baseline
- Archived slice planning and evidence under `docs/archive/vertical_slice/` and `tools/archive/vertical_slice/`

## What Is Not Yet Built

- A dedicated class-selection screen
- Authored production content for `data/items/`, `data/enemies/`, and `data/classes/`
- A fully authored map tab inside the HUD

These are feature/content backlog items, not leftover spike debt.

## Project Layout

```text
autoloads/          Global singletons
data/               Production data files and future content definitions
scenes/             Main game states and shared UI
assets/             Runtime assets plus production-facing art/audio structure
docs/               Live handover, audit, and archived planning
tools/archive/      Archived slice harnesses and evidence
```

Current asset-location note:

- Locked slice music and SFX still live under `assets/Music/` and `assets/SFX/`.
- `assets/audio/` exists as the production-facing directory convention for future content migration.
- `assets/proprietary/` is now the source-of-truth folder for future first-party art concepts, prompts, source files, and runtime-ready exports.

## Run

1. Open the project in Godot 4.6 or newer.
2. Run `scenes/main/Main.tscn`, or launch the project normally.
3. The project now boots to the title screen first, regardless of save presence.
4. `Continue` appears only if `user://save_game.json` exists and resumes from save.
5. `New Game` starts a fresh Pure/Fighter run in Frontier Hamlet and overwrites the current save only after confirmation.

## Controls

- `WASD` or arrow keys: move
- `E` or `Space`: interact / confirm
- `H`: toggle HUD
- `Q`: cancel / close submenu or HUD tab flow

## Key Docs

- `docs/HANDOVER.md`
- `docs/visual_asset_handover.md`
- `docs/asset_registry.md`
- `docs/intro_scene_art_brief.md`
- `docs/foundation_audit.md`
- `docs/vertical_slice_plan.md`
- `docs/archive/vertical_slice/`
- `tools/archive/vertical_slice/`
