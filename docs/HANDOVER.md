# Project Handover - Tales from Ulcantron: Purity Wars

Read this before making changes. This document is the current source of truth for the production repo state.

## Project State

| Track | Status |
|---|---|
| Technical spike | Complete and archived |
| Vertical slice | Complete |
| Foundation pass | Complete |
| Pre-production | Complete |
| Full production | Active |

This repository is now the production baseline for the full game. The spike-era cleanup has been completed, the major technical debt identified in the foundation audit has been addressed, and future work should build forward from the conventions documented here.

## Game Summary

Tales from Ulcantron: Purity Wars is a 2D top-down narrative RPG in Godot 4. The current playable baseline covers Frontier Hamlet, the Kobold Mine, the Shaman branch resolution, and the Crossroads follow-through. The project theme remains the Pure versus Mixed class conflict at the center of the larger campaign.

## Proven Production-Ready Systems

- `scenes/title/TitleScreen.tscn` is now the boot entry state and provides the current intro/title scaffold with config-driven asset slots.
- `SceneManager.gd` now routes map play into authored location scenes instead of a single mutable map scene.
- `scenes/map/Map.gd` is a shared controller for exploration, triggers, return context, and mine progression logic only. Runtime tile painting and scripted collision building have been removed.
- `autoloads/DialogueManager.gd` loads dialogue from JSON files in `data/dialogue/` and no longer hardcodes dialogue trees in the autoload.
- `scenes/npc/NPC.tscn` uses a scene-authored collider sized to the visible NPC footprint.
- `scenes/main/Main.gd` hosts the persistent HUD, dialogue box, prompt modal, and screen fader without the old debug overlay path.
- `Battle.gd` supports the production slice battle loop without the old placeholder boss branch.
- `AudioManager.gd` and `ActorVisuals.gd` remain the shared presentation layers for music, SFX, portraits, map sprites, battle art, and follower visuals.
- Save/load flow is live and keeps return-region, return-location, trigger suppression, and resume position context.
- `SaveManager.start_new_game()` is the canonical fresh-start path and resets player, stat, and clock state before entering Frontier Hamlet.

## Current Slice Truth

The baseline loop is:

1. Start in Frontier Hamlet.
2. Speak to the town NPCs for gated intel and warning beats.
3. Commit to leaving town.
4. Enter the mine through the cutscene.
5. Clear three ordered encounters.
6. Resolve the Shaman branch by recruitment or combat.
7. Exit the mine.
8. Arrive at the Crossroads with the correct consequence state.

Current gameplay facts that remain true:

- Fresh boot now always opens the title screen first.
- `New Game` defaults to the Pure/Fighter profile and enters Frontier Hamlet after an overwrite confirmation when a save exists.
- `Continue` is only exposed when a save exists and loads directly into the saved map state.
- Mixed/Battlemage remains supported through save data and current player-path state.
- The bookstore interaction still sets the dialogue/progression flag path, but it does not yet unlock a new production combat spell.
- The HUD `Map` tab is still an informational placeholder for a future authored map view.

These are active feature boundaries, not unresolved foundation debt.

## Production Conventions

### Repo Structure

```text
autoloads/          Global singletons, one responsibility per file
data/
  dialogue/         Dialogue JSON, one file per dialogue id
  items/            Item definition files
  enemies/          Enemy definition files
  classes/          Class and specialization definition files
scenes/
  main/             Entry point and overlay host
  map/              Authored location scenes plus shared map controller
  battle/           Battle state
  hud/              HUD overlay
  cutscene/         Cutscene state
  npc/              NPC base scene and follower scenes
  ui/               Shared dialogue, prompt, and transition UI
assets/
  art/              Runtime art plus source-asset organization
  proprietary/      First-party visual pipeline for concepts, prompts, and production exports
  audio/            Production-facing audio conventions
docs/               Live handover, audit, and archived planning
tools/archive/      Archived harnesses and vertical-slice evidence
```

Important asset-location note:

- The current locked slice music and SFX still live under `assets/Music/` and `assets/SFX/`.
- The new `assets/audio/` directories define the production convention for future content without forcing a risky asset migration during the foundation pass.
- `assets/proprietary/` is the future first-party art workspace. Leave current `assets/art/` placeholders in place until documented replacements are ready to wire in.

### Visual Asset Pipeline

- Start with `docs/visual_asset_handover.md` for the current visual-language audit and replacement rules.
- Use `docs/asset_registry.md` as the single backlog tracker for visual asset replacement status.
- Use `docs/intro_scene_art_brief.md` for the current title/intro art scope and immediate next proprietary art targets.
- Keep concept work in `assets/proprietary/concepts/`, prompt/reference source in `assets/proprietary/source_prompts/` and `assets/proprietary/references/`, and runtime-ready exports in `assets/proprietary/production/`.
- Do not migrate or delete placeholder runtime art until the replacement asset, config path, and registry entry are ready together.

### Dialogue Data

- Dialogue lives in `data/dialogue/`.
- One file maps to one `dialogue_id`.
- Dialogue nodes preserve the existing structure: `speaker`, `text`, `portrait_id`, `portrait`, `conditions`, `set_flags`, `fallback`, and `next`.
- Add future NPC dialogue as data first, then wire the NPC id to the correct dialogue id.

### Map Authoring

- Use one authored scene per playable location.
- Keep collision authored in the scene and/or TileSet physics data.
- Use `Map.gd` for shared behavior, not for drawing maps at runtime.
- Prefer named trigger nodes, spawn markers, and bounds markers over hardcoded positions.

### Runtime Naming

- Use the live game name, Tales from Ulcantron: Purity Wars, in production-facing docs and metadata.
- Do not introduce new "spike", "slice debug", or placeholder workflow language into active runtime files.
- Archive historical slice-only tooling or evidence under `docs/archive/vertical_slice/` or `tools/archive/vertical_slice/`.

## Archived History

The vertical slice is finished. Historical planning, tickets, playtest packets, and evidence remain in-repo, but they are archived:

- `docs/vertical_slice_plan.md`
- `docs/archive/vertical_slice/`
- `tools/archive/vertical_slice/`

Treat those as historical reference, not as the current implementation plan.

## Validation

Foundation-pass validation command:

```powershell
C:\Users\johnf\Downloads\Godot_v4.6.2-stable_win64.exe\Godot_v4.6.2-stable_win64_console.exe --headless --path . --quit-after 4
```

Current result: passes with zero warnings and zero errors.

Additional spot check performed during the pass: direct scene loads for `FrontierHamlet.tscn`, `KoboldMine.tscn`, `Crossroads.tscn`, and `Battle.tscn` completed successfully in headless mode.

## Open Decisions

- No `REVIEW` items from `docs/foundation_audit.md` are currently blocking production.
- The next feature milestone should be defined by the developer before the next build session.

## Next Phase

Developer fill-in required before the next session:

`[Define the first full-production milestone here before resuming implementation.]`
