# Visual Asset Audit

This document is a complete inventory of every visual asset on disk in the repo, grouped by what is currently wired in vs. what exists as library / placeholder material. It is the input for the proprietary art-replacement pass.

For *replacement priority and status tracking*, see `docs/asset_registry.md`. The registry holds the working backlog; this audit holds the ground-truth inventory at the time of writing.

---

## Summary

| | Count |
|---|---|
| Image files on disk (PNG / WebP / SVG) | ~550 |
| Currently wired in (active runtime references) | 17 |
| Proprietary first-party assets | 9 |
| Third-party library assets currently unreferenced | ~530 |

The active surface is small. Almost all proprietary art-replacement effort can be planned against just the 17 active assets plus the prologue's net-new needs.

---

## Active Assets — Currently Referenced At Runtime

These are the only assets the running game actually loads. They are the priority targets for proprietary replacement.

### Player Sprites

| Path | Source | Referenced From | Notes |
|---|---|---|---|
| `assets/art/external/stage_8_5/fighter_walk_sheet.png` | stage_8_5 placeholder | `autoloads/ActorVisuals.gd` (`FIGHTER_MAP_SHEET_PATH`) | Shared by map / battle / cutscene frames |
| `assets/art/external/stage_8_5/battlemage_walk_sheet.png` | stage_8_5 placeholder | `autoloads/ActorVisuals.gd` (`BATTLEMAGE_MAP_SHEET_PATH`) | Same multi-context use |

### NPC Sprite

| Path | Source | Referenced From | Notes |
|---|---|---|---|
| `assets/art/player/universal-lpc-sprite_male_01_full.png` | LPC universal sprite | `autoloads/ActorVisuals.gd` (bookstore keeper map / portrait) | Generic NPC for the slice; will need to be split into proprietary named-NPC and generic-civilian sprites over time |

### Follower / Antagonist Sprite

| Path | Source | Referenced From | Notes |
|---|---|---|---|
| `assets/art/battle/goblinsword.png` | LPC variant | `autoloads/ActorVisuals.gd` (`SHAMAN_SPRITE_PATH`) | Used for shaman map / battle / cutscene / follower visuals |

### Enemy Sprite

| Path | Source | Referenced From | Notes |
|---|---|---|---|
| `assets/art/battle/LPC imp/attack - vanilla.png` | LPC imp | `autoloads/ActorVisuals.gd` (`KOBOLD_SPRITE_PATH`) | Region-extracted for battle frames; nine other LPC imp variants on disk are unreferenced |

### Portraits

| Path | Source | Referenced From | Notes |
|---|---|---|---|
| `assets/art/generated/stage_8_5/fighter_presentation_card.png` | stage_8_5 generated | `autoloads/ActorVisuals.gd` (`FIGHTER_PORTRAIT_PATH`) | |
| `assets/art/generated/stage_8_5/battlemage_presentation_card.png` | stage_8_5 generated | `autoloads/ActorVisuals.gd` (`BATTLEMAGE_PORTRAIT_PATH`) | |
| `assets/art/generated/stage_8_5/kobold_presentation_card.png` | stage_8_5 generated | `autoloads/ActorVisuals.gd` (`KOBOLD_PORTRAIT_PATH`) | |
| `assets/art/portraits/stage_8_5/shaman_portrait.png` | stage_8_5 generated | `data/dialogue/shaman_intro_cutscene.json`, `data/dialogue/shaman_recruit_resolution.json` | |
| `assets/art/generated/stage_8_5/shaman_portrait.png` | stage_8_5 generated | `autoloads/ActorVisuals.gd` fallback chain | Duplicate-location of shaman portrait — needs consolidation in the next cleanup |

### Battle Backdrop / Overlay

| Path | Source | Referenced From | Notes |
|---|---|---|---|
| `assets/art/generated/stage_8_5/mine_battle_backdrop.png` | stage_8_5 generated | `scenes/battle/Battle.gd` (`MINE_BACKGROUND_PATH`) | Primary mine backdrop |
| `assets/art/generated/stage_8_5/weapon_overlay.png` | stage_8_5 generated | `scenes/battle/Battle.gd` (`WEAPON_OVERLAY_PATH`) | Small modular overlay |
| `assets/art/battle/monster2_combat_backgrounds/volcano.png` | monster2 pack | `scenes/battle/Battle.gd` (`MINE_BACKGROUND_FALLBACK_PATH`) | Fallback if the generated backdrop fails to load |

### Tileset

| Path | Source | Referenced From | Notes |
|---|---|---|---|
| `scenes/map/TownTileset.tres` | Embedded resource | `scenes/map/FrontierHamlet.tscn` | `.tres` resource with embedded image data — no separate PNG to swap; will need a real tileset PNG when proprietary environment art lands |

### UI Skin (Kenney RPG Expansion)

| Path | Referenced From |
|---|---|
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/panel_brown.png` | `Battle.gd`, `Cutscene.gd`, `HUD.gd`, `LevelUpOverlay.gd`, `TitleScreen.gd` |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/panelInset_brown.png` | `Battle.gd`, `HUD.gd`, `TitleScreen.gd` |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/buttonLong_brown.png` | `Battle.gd`, `Cutscene.gd`, `HUD.gd`, `LevelUpOverlay.gd`, `TitleScreen.gd` |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/buttonLong_brown_pressed.png` | `Battle.gd`, `Cutscene.gd`, `HUD.gd`, `LevelUpOverlay.gd`, `TitleScreen.gd` |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/buttonLong_grey.png` | `Battle.gd`, `Cutscene.gd`, `HUD.gd`, `LevelUpOverlay.gd`, `TitleScreen.gd` (disabled state) |

These five Kenney files cover the entire shared gameplay UI right now. The title screen has its own button styling in `keyart_overlay` mode and does not currently rely on these for buttons (only for the modal overwrite confirmation chrome).

### Branding / Title

| Path | Source | Referenced From | Notes |
|---|---|---|---|
| `assets/proprietary/production/title/title_keyart_purity_wars_v01.png` | First-party (GPT Image 2) | `data/ui/title_screen_config.json` (`asset_slots.background`) | Active key art in keyart-overlay mode |

### Icon

| Path | Source | Referenced From | Notes |
|---|---|---|---|
| `assets/art/generated/stage_8_5/map_fighter.png` | stage_8_5 generated | `project.godot` (`config/icon`) | Application icon — temporary; should align with title branding once a proprietary icon ships |

---

## Suspended Proprietary Assets — On Disk, Not Wired

These were proprietary assets shipped during the v01 frontier title pass. They are preserved as restorable fallbacks; the keyart-overlay configuration intentionally leaves their config slots empty.

| Path | Original Slot |
|---|---|
| `assets/proprietary/production/title/title_background_frontier_v01.png` | Title background |
| `assets/proprietary/production/title/title_logo_plate_v01.png` | Title logo plate |
| `assets/proprietary/production/title/title_emblem_frontier_v01.png` | Title emblem |
| `assets/proprietary/production/title/title_atmosphere_overlay_v01.png` | Title atmosphere overlay |
| `assets/proprietary/production/ui/ui_title_panel_v01.png` | Title panel chrome |
| `assets/proprietary/production/ui/ui_title_inset_v01.png` | Title inset chrome |
| `assets/proprietary/production/ui/ui_title_button_v01.png` | Title button chrome |
| `assets/proprietary/production/ui/ui_title_button_pressed_v01.png` | Title pressed button chrome |

---

## Third-Party Library Assets — On Disk, Currently Unreferenced

These are third-party packs imported into the repo for potential future use. None of them is currently loaded by any runtime code path. They are *not blocking*; they are *not wired*; they should not influence the proprietary direction.

The intent of listing them here is so a future cleanup pass can decide whether to keep, archive, or remove each pack as proprietary replacements land.

### LPC

- **`assets/art/battle/LPC imp/`** — 10 PNGs (vanilla used for kobold; 9 unreferenced variants: pitchfork, sword, shield combinations, walk variants)
- **`assets/art/LPC starhat/`** — 5 PNGs (moon-female, moon-male, nomoon-female, nomoon-male, sample)
- **`assets/art/LPC weapons/`** — ~162 PNGs across male and female weapon animation sets (bigslash, bigthrust, shield, shoot, slash, thrust, plus arrow / items sheets)

### Kenney UI RPG Expansion

The full pack lives at `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/`. Currently 5 PNGs are wired (above). The remaining ~80 PNGs cover:

- Arrows in 4 colours × 2 directions (8)
- Bars in 5 colours (back / blue / green / red / yellow) × 6 segments each (~30)
- Long buttons in 4 colours × normal + pressed (8 — 2 of these wired)
- Round buttons in 4 colours (4)
- Square buttons in 4 colours × normal + pressed (8)
- Cursors (gauntlet × 3, hand × 3, sword × 3)
- Icons (check × 4, circle × 4, cross × 4)
- Panels in 4 colours and inset variants (8 — 2 of these wired)
- Master spritesheet `uipack_rpg_sheet.png` and SVG vector source

### Tileset Libraries (all unreferenced)

| Pack | Approx. Files |
|---|---|
| `assets/art/tilesets/Aurora Tileset/` | 1 |
| `assets/art/tilesets/Basic Caves and Dungeons 32x32/` | 9 |
| `assets/art/tilesets/Door Animation (pipo)/` | 3 |
| `assets/art/tilesets/EPIC RPG World Pack Demo/` | 2 |
| `assets/art/tilesets/Jumpstart Demo/` | ~165 (decoration, particles, vegetation, themed tilesets) |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/` | ~100 (Type 1 / 2 / 3 themes with animation variants and a SampleMap) |
| Misc unorganized | a few |

### Battle Backdrop Library

`assets/art/battle/monster2_combat_backgrounds/` — 13 backdrops (volcano wired as fallback; fort, grass, jungle, keep, keep_outer, moon, mountains, mountains_bridge, rope_bridge, sand, volc_bridge unreferenced).

### Generated stage_8_5 Variants — On Disk, Not Wired

| Path | Status |
|---|---|
| `assets/art/generated/stage_8_5/map_battlemage.png` | Unreferenced |
| `assets/art/generated/stage_8_5/map_npc.png` | Unreferenced |

These exist alongside the wired `map_fighter.png` (used as app icon) but are not picked up anywhere in code.

### Reference / Mood Material

- `assets/art/mood_board/bg3-alignment-chart-v0-lb31w8gqv26c1.webp` — reference / inspiration image, not a runtime asset.

---

## Provenance Summary

| Source | Approx. file count | Active references |
|---|---|---|
| Kenney UI RPG Expansion | ~85 | 5 |
| LPC (imp + starhat + weapons + universal) | ~178 | 3 |
| stage_8_5 generated placeholders | ~11 | 7 |
| monster2 combat backgrounds | 13 | 1 |
| Pipoya RPG Tileset | ~100 | 0 |
| Jumpstart Demo Pack | ~165 | 0 |
| Other tileset libraries | ~15 | 0 |
| First-party proprietary | 9 | 1 |
| Reference / mood | 1 | 0 |

---

## Notable Technical Debt And Cleanup Targets

1. **Two copies of the shaman portrait** — `assets/art/portraits/stage_8_5/shaman_portrait.png` (referenced by dialogue JSON) and `assets/art/generated/stage_8_5/shaman_portrait.png` (referenced via fallback chain). Consolidate when the proprietary shaman portrait lands.
2. **App icon is a stage_8_5 fighter map sprite.** Should be replaced with a proprietary icon aligned to the title key art before any external build.
3. **Goblinsword as the shaman's everything.** A single LPC frame currently stands in for the shaman's map presence, battle presence, follower presence, and (via fallback) portrait. The proprietary shaman pass needs to deliver multiple identity-anchored assets, not a single sprite.
4. **Single Kobold frame.** The kobold is region-extracted from one LPC imp attack sheet. A proprietary kobold likely wants its own walk + idle + attack frames rather than a single static.
5. **No proprietary tileset yet.** `TownTileset.tres` is embedded placeholder content. The prologue's Class Chapel and Side Passage will be the first tilemaps to need real proprietary tile art.
6. **Library packs (Jumpstart, Pipoya, etc.) are not currently used.** Either commit to using them as references for proprietary asset specs, or schedule them for archival when the proprietary pipeline replaces the slice content.

---

## Source Of Truth Hand-Off

- For *what should be replaced and in what order*, work from `docs/asset_registry.md`.
- For *what the prologue specifically needs*, work from `docs/prologue/02_prologue_asset_brief.md` and the new `docs/prologue/03_prologue_asset_specs.md`.
- For *how to write the prompts that produce uniform results*, work from `docs/asset_generation_prompts.md`.
- For *how production handles asset hand-off and folder discipline*, work from `docs/visual_asset_handover.md`.
