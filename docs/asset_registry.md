# Asset Registry

This file is the single backlog tracker for art replacement status. Update it whenever an asset becomes runtime content, changes priority, or moves from placeholder to proprietary.

## Status Vocabulary

- `Live Placeholder`
- `Generated Placeholder`
- `Programmatic Placeholder`
- `Missing`
- `Planned Proprietary`
- `Replaced`
- `Suspended` — proprietary asset preserved on disk but not currently wired through config; kept as a restorable fallback

## Registry

| Category | Asset | Current Status | Current Placeholder Source / Dependency | Replacement Priority | Needed For Intro | Style / Technical Constraints | Implementation Location |
|---|---|---|---|---|---|---|---|
| Player Sprite | Fighter map and battle sheet | Live Placeholder | `assets/art/external/stage_8_5/fighter_walk_sheet.png` | High | Yes | `64x64` source frames, readable at `0.5` map scale, must preserve fighter silhouette | `autoloads/ActorVisuals.gd` |
| Player Sprite | Battlemage map and battle sheet | Live Placeholder | `assets/art/external/stage_8_5/battlemage_walk_sheet.png` | High | Yes | `64x64` source frames, readable at `0.5` map scale, battlemage silhouette must stay distinct | `autoloads/ActorVisuals.gd` |
| NPC Sprite | Generic town NPC sheet | Live Placeholder | `assets/art/player/universal-lpc-sprite_male_01_full.png` (`needs source trace`) | High | Yes | Should split into proprietary named-NPC and generic civilian variants over time | `autoloads/ActorVisuals.gd`, `scenes/npc/NPC.tscn` |
| Portrait | Shaman portrait | Live Placeholder | `assets/art/portraits/stage_8_5/shaman_portrait.png` | High | Maybe | `256x256` or higher master, must match battle and cutscene identity | `data/dialogue/shaman_intro_cutscene.json`, `data/dialogue/shaman_recruit_resolution.json` |
| Enemy Sprite | Shaman battle sprite | Live Placeholder | `assets/art/battle/goblinsword.png` (`needs source trace`) | High | Maybe | Replace with first-party named antagonist art, preserve readable boss framing | `autoloads/ActorVisuals.gd` |
| Enemy Sprite | Kobold battle sprite | Live Placeholder | `assets/art/battle/LPC imp/attack - vanilla.png` | Medium | No | Maintain small-enemy readability and battle contrast | `autoloads/ActorVisuals.gd` |
| Presentation | Fighter presentation card | Generated Placeholder | `assets/art/generated/stage_8_5/fighter_presentation_card.png` | Medium | No | `128x160` crop if retained, may be superseded by better portrait flow | `autoloads/ActorVisuals.gd` |
| Presentation | Battlemage presentation card | Generated Placeholder | `assets/art/generated/stage_8_5/battlemage_presentation_card.png` | Medium | No | `128x160` crop if retained, may be superseded by better portrait flow | `autoloads/ActorVisuals.gd` |
| Presentation | Kobold presentation card | Generated Placeholder | `assets/art/generated/stage_8_5/kobold_presentation_card.png` | Low | No | Only replace if the presentation-card pattern remains part of the UI | `autoloads/ActorVisuals.gd` |
| Background | Mine battle backdrop | Generated Placeholder | `assets/art/generated/stage_8_5/mine_battle_backdrop.png` | Medium | No | Runtime-safe at `480x270`, source master should be larger | `scenes/battle/Battle.gd` |
| Overlay | Weapon overlay | Generated Placeholder | `assets/art/generated/stage_8_5/weapon_overlay.png` | Medium | No | Tiny runtime asset, should remain modular and swappable | `scenes/battle/Battle.gd` |
| UI Skin | Shared panel and button skin | Live Placeholder | `assets/art/UI/kenney_ui-pack-rpg-expansion/` | High | Yes | Title screen now overrides panel, inset, button, and pressed textures with proprietary first-pass art; shared gameplay UI still depends on Kenney placeholder chrome | `scenes/battle/Battle.gd`, `scenes/hud/HUD.gd`, `scenes/cutscene/Cutscene.gd`, `scenes/title/TitleScreen.gd` |
| Environment | Frontier Hamlet environment kit | Live Placeholder | Embedded `scenes/map/TownTileset.tres` placeholder-derived tileset content | High | Yes | Keep `32x32` multiples, preserve walkability and low-screen clutter | `scenes/map/FrontierHamlet.tscn`, `scenes/map/TownTileset.tres` |
| Environment | Kobold Mine environment visuals | Programmatic Placeholder | Scene-authored polygons and color blocking | Medium | No | Preserve dark readability and strong lane clarity | `scenes/map/KoboldMine.tscn` |
| Environment | Crossroads environment visuals | Programmatic Placeholder | Scene-authored polygons and color blocking | Medium | Maybe | Preserve horizon, road, and signpost readability | `scenes/map/Crossroads.tscn` |
| Branding | App icon | Generated Placeholder | `assets/art/generated/stage_8_5/map_fighter.png` | Medium | Yes | Should eventually align with title branding and proprietary identity | `project.godot` |
| Branding | Title key art (full composition) | Replaced | `assets/proprietary/production/title/title_keyart_purity_wars_v01.png` | Highest | Yes | Full-canvas key art with painted title lockup, six-item menu column, and corner metadata. Runtime overlays interactive buttons over the painted menu and renders live version + copyright over the bottom corners. Active when `menu_layout_mode = "keyart_overlay"` in config. | `data/ui/title_screen_config.json`, `scenes/title/TitleScreen.gd` |
| Branding | Title logo slot (v01 frontier) | Suspended | `assets/proprietary/production/title/title_logo_plate_v01.png` | Low | No | Hybrid lockup plate from the v01 frontier pass; suppressed in keyart-overlay mode but kept on disk as a restorable fallback | `data/ui/title_screen_config.json`, `scenes/title/TitleScreen.gd` |
| Branding | Title background slot (v01 frontier) | Suspended | `assets/proprietary/production/title/title_background_frontier_v01.png` | Low | No | Frontier-first matte from v01; superseded by the v02 key art but preserved as a restorable fallback | `data/ui/title_screen_config.json`, `scenes/title/TitleScreen.gd` |
| Branding | Title emblem slot (v01 frontier) | Suspended | `assets/proprietary/production/title/title_emblem_frontier_v01.png` | Low | No | Neutral frontier crest from v01; suppressed in keyart-overlay mode | `data/ui/title_screen_config.json`, `scenes/title/TitleScreen.gd` |
| Overlay | Title atmosphere overlay (v01) | Suspended | `assets/proprietary/production/title/title_atmosphere_overlay_v01.png` | Low | No | Full-frame mood layer from v01; suppressed in keyart-overlay mode (the painted key art carries its own atmosphere) | `data/ui/title_screen_config.json`, `scenes/title/TitleScreen.gd` |
| UI Skin | Title panel chrome (v01) | Suspended | `assets/proprietary/production/ui/ui_title_panel_v01.png` | Low | No | Title-only outer frame from v01; suppressed in keyart-overlay mode where button bands sit directly over the painted artwork | `data/ui/title_screen_config.json`, `scenes/title/TitleScreen.gd` |
| UI Skin | Title inset chrome (v01) | Suspended | `assets/proprietary/production/ui/ui_title_inset_v01.png` | Low | No | v01 emblem and actions inset; suppressed in keyart-overlay mode | `data/ui/title_screen_config.json`, `scenes/title/TitleScreen.gd` |
| UI Skin | Title button chrome (v01) | Suspended | `assets/proprietary/production/ui/ui_title_button_v01.png`, `assets/proprietary/production/ui/ui_title_button_pressed_v01.png` | Low | No | v01 button family; suppressed in keyart-overlay mode in favor of the runtime keyart button style | `data/ui/title_screen_config.json`, `scenes/title/TitleScreen.gd` |

## Planned Proprietary Targets

- Frontier Hamlet opening-area environment polish
- Fighter identity anchor set
- Battlemage identity anchor set
- Shaman identity anchor set
