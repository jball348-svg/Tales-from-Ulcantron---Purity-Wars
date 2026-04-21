# Visual Asset Handover

This document is the live visual handover for Tales from Ulcantron: Purity Wars. It is written for future Codex sessions and future production passes so proprietary art can replace the current placeholder stack without destabilizing the playable game.

## Current Visual State Overview

The current project is a readable, production-minded placeholder build with a clear functional visual language but mixed provenance.

- Base viewport: `480x270`
- Stretch mode: `viewport`
- Map camera: continuous scrolling, authored bounds, smoothing enabled
- Core world grid: `32x32`
- Map actor source frames: typically `64x64`, displayed at `0.5` scale for a one-tile gameplay read
- Battle and cutscene actors: roughly `72-88` px target height on screen
- Battle backdrop target size: `480x270`

Current runtime visual dependency surface:

- `project.godot`
- `autoloads/ActorVisuals.gd`
- `scenes/map/Map.gd`
- `scenes/map/TownTileset.tres`
- `scenes/battle/Battle.gd`
- `scenes/hud/HUD.gd`
- `scenes/cutscene/Cutscene.gd`
- `scenes/ui/DialogueBox.gd`

## Current Placeholder and Provenance Notes

- Shared UI skin currently comes from `assets/art/UI/kenney_ui-pack-rpg-expansion/` and is approved `CC0`.
- Stage 8.5 fighter and battlemage walk sheets under `assets/art/external/stage_8_5/` are documented third-party placeholders.
- The shaman portrait under `assets/art/portraits/stage_8_5/` is a documented third-party placeholder.
- `assets/art/player/universal-lpc-sprite_male_01_full.png` is still `needs source trace`.
- `assets/art/battle/goblinsword.png` is still `needs source trace`.
- LPC starhat and LPC weapons assets remain reference or fallback material only and should not anchor the proprietary pipeline.
- `scenes/map/TownTileset.tres` is now an embedded resource, but it should still be treated as placeholder-derived environment content for future replacement planning.
- Several runtime presentation assets in `assets/art/generated/stage_8_5/` are generated placeholder composites and should not be treated as final art direction.

## Visual Qualities To Preserve

These qualities should remain stable even as the specific art is replaced.

- Desaturated earth-tone palette with restrained accent use
- Strong silhouette-first readability at gameplay scale
- `32x32` tile density and grid discipline
- One-tile map actor readability with simple, clear class-based identity
- Readable darkness rather than crushed black scenes
- Stone and parchment UI language
- Practical scene composition that prioritizes clarity over decoration
- Consistent faction accent reads without loud saturation
- Modular presentation surfaces where art can be swapped without rewriting logic

## What Should Change Or Evolve

- Replace traced and untraced third-party character art with first-party map, battle, cutscene, and portrait assets
- Replace generated placeholder presentation cards with proprietary equivalents or remove the need for them
- Replace the Kenney UI skin over time with a first-party panel, button, and icon set
- Replace placeholder-derived environment visuals, especially the town environment surface and any legacy tileset dependencies
- Move title, intro, and opening-area art toward a proprietary identity first, because those surfaces establish the game’s brand most directly

## Practical Visual Read Notes

### Camera and View Constraints

- The game is authored for a low-resolution pixel presentation and scaled up cleanly.
- Maps use authored scene bounds rather than procedural world generation.
- Continuous camera motion means environment detail should support navigation, not fight it.

### Scale and Proportions

- World interaction is built around `32x32` tile spacing.
- Map actors need to read instantly at small size, so silhouette and contrast matter more than intricate shading.
- Battle and cutscene actors have modest room for richer costume and gear reads, but they still live inside a compact frame.

### Tile Density and Scene Density

- Town uses embedded tileset content.
- Mine and Crossroads currently lean on programmatic geometry and color blocking.
- Future environment art should preserve clean lane readability and not overfill small screens with noise.

### Palette Tendencies and Mood

- The current look leans toward worn browns, greys, mossy greens, muted ambers, and restrained blue-violet accents.
- The tone is grim fantasy, atmospheric but readable, and avoids cartoony brightness.

### UI Style

- The current UI reads as stone-frame and parchment-adjacent rather than glossy fantasy chrome.
- Buttons and panels should continue to feel tactile and diegetic.

### Silhouette and Detail Level

- Map sprites should stay silhouette-led and class-readable.
- Battle and portrait work can carry more identity markers, but costume language should remain grounded and legible.

## Full-Game Asset Categories Needed

- Title and branding assets
- Shared UI skin and icons
- Map sprites for player classes, followers, named NPCs, and enemies
- Battle sprites and overlays
- Dialogue portraits and presentation cards where still needed
- Environment tilesets for town, wilderness, interior, mine, faction spaces, and story-critical locations
- Battle backdrops and cutscene environment mattes
- Emblems, heraldry, insignia, and faction motifs
- VFX textures and spell effect source art

## Replacement Strategy

Replace by stable surface area rather than by raw folder.

1. Title and intro-facing assets
2. Shared UI skin
3. Player identity assets across map, battle, portrait, and cutscene
4. Named NPC identity assets
5. Opening-area environment assets
6. Deeper environment and enemy backlog

Rules for replacement:

- Never replace by rewriting code paths first when a config or asset-slot change is sufficient.
- Prefer adding proprietary assets under `assets/proprietary/production/` first, then wiring runtime references deliberately.
- Preserve old placeholder assets until the replacement is live and verified.
- Update this handover doc and `docs/asset_registry.md` whenever an asset becomes runtime content.

## Priority Order

### Highest Priority

- Title logo
- Title background
- Title emblem or crest
- Title and menu button skin
- Opening-area environment reference art
- First-party player class identity anchors

### Later Priority

- Broader environment tilesets beyond the opening path
- Deeper enemy library
- Expanded portrait set
- Secondary UI icon families
- VFX library expansion

## Naming, Foldering, Export, and Variant Rules

Naming rules:

- Use lowercase snake_case
- Use category-led prefixes: `title_`, `ui_`, `env_frontier_`, `env_mine_`, `portrait_`, `sprite_`, `vfx_`
- Use explicit variant suffixes: `_v01`, `_v02`, `_pure`, `_mixed`, `_idle`, `_pressed`, `_disabled`

Folder rules:

- Concepts go in `assets/proprietary/concepts/`
- Reference boards and trace notes go in `assets/proprietary/references/`
- Generation briefs and source prompts go in `assets/proprietary/source_prompts/`
- Runtime-ready exports go in `assets/proprietary/production/` by category

Export rules:

- Tile and map art should stay on `32x32` multiples
- Portrait masters should target at least `256x256`
- Presentation-card crops should target `128x160` if that format is retained
- Runtime battle backdrops should be safe at `480x270`, but source masters should be authored larger
- Keep source masters separate from final runtime exports whenever possible

Consistency rules:

- One named actor must stay visually coherent across map, battle, cutscene, portrait, and dialogue uses
- Pure and mixed variants should share a base identity and diverge through accent, motif, and finish, not by becoming different characters
- Any new UI art must coexist with compact low-resolution layouts

## Recommended Workflow For Proprietary Asset Creation

1. Define the asset need in `docs/asset_registry.md`
2. Create or update a brief in `assets/proprietary/source_prompts/` or the relevant doc
3. Produce concept or reference work in `assets/proprietary/concepts/` or `assets/proprietary/references/`
4. Approve direction before runtime export
5. Export final runtime asset into `assets/proprietary/production/<category>/`
6. Wire the asset through config or stable load path
7. Validate in game
8. Update `docs/asset_registry.md` and this document

## Guidance For Original Assets

Create original assets that preserve the game’s functional feel without copying third-party packs directly.

- Match mood, scale, and readability goals rather than reproducing exact silhouettes or surface patterns
- Preserve the game’s dark-fantasy restraint and class readability
- Avoid tracing, near-cloning, or repainting over third-party pack output
- Use current placeholders as functional reference only: size, framing, contrast level, and role in the scene
- When in doubt, simplify. Small-screen clarity matters more than ornamental detail

## Future Codex Instructions

When a later session works on visual production:

- Put early concept passes in `assets/proprietary/concepts/`
- Put reference boards, shape studies, and palette studies in `assets/proprietary/references/`
- Put prompt specs, art notes, and generation instructions in `assets/proprietary/source_prompts/`
- Put approved runtime exports in the matching `assets/proprietary/production/` subfolder
- Update `data/ui/title_screen_config.json` or the relevant runtime path only after the asset exists
- Update `docs/asset_registry.md` status rows when an asset changes from planned to live
- Update this handover doc when a shared visual rule changes

Specific future task guidance:

- Concept art: establish mood, silhouette, palette, and shape language first
- Production art: export final runtime-ready assets into `assets/proprietary/production/`
- UI art: preserve compact readability and support explicit states like `_pressed` and `_disabled`
- Portraits: keep identity continuity with map and battle actors
- Tilesets: stay on `32x32` multiples and support clean scene authoring
- Title assets: treat logo, emblem, background, and menu skin as one coordinated package

## Immediate Next Art Targets

- `title_logo`: first-party logo lockup for the main title screen
- `title_background`: proprietary environment matte or layered title backdrop
- `title_emblem`: crest, sigil, or motif that can anchor branding
- `ui_title_buttons`: first-party title/menu chrome compatible with compact layouts
- `env_frontier_opening`: opening-area environment reference or export set for Frontier Hamlet polish
- `player_identity_anchor_fighter`: first-party fighter map and presentation identity
- `player_identity_anchor_battlemage`: first-party battlemage map and presentation identity
- `npc_identity_anchor_shaman`: first-party shaman portrait and battle identity
