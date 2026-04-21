# Intro Title Pass v01

This file records the first proprietary intro/title production pass for Tales from Ulcantron: Purity Wars.

## Tooling

- Generation tool: built-in `image_gen`
- Pass focus: title screen only
- Direction lock: frontier-first, no cast illustration, hybrid lockup with live engine text

## Selected Runtime Assets

- `assets/proprietary/production/title/title_background_frontier_v01.png`
- `assets/proprietary/production/title/title_logo_plate_v01.png`
- `assets/proprietary/production/title/title_emblem_frontier_v01.png`
- `assets/proprietary/production/title/title_atmosphere_overlay_v01.png`
- `assets/proprietary/production/ui/ui_title_panel_v01.png`
- `assets/proprietary/production/ui/ui_title_inset_v01.png`
- `assets/proprietary/production/ui/ui_title_button_v01.png`
- `assets/proprietary/production/ui/ui_title_button_pressed_v01.png`

## Prompt Notes

### Background

- Asset type: title screen background matte
- Direction: overcast frontier ridge at dusk, distant hamlet perimeter, worn path foreground, layered hills and fog
- Constraints: no characters, no logos, no ornate architecture, keep the centered menu area readable

### Title Plate

- Asset type: decorative title lockup plate
- Direction: horizontal stone-and-worn-metal banner with a quiet center field for live title text
- Constraints: no words, no runes, no logos, simple strong silhouette, restrained teal-copper and bronze accents

### Emblem

- Asset type: title screen crest
- Direction: neutral frontier sigil suggesting an old outpost and long conflict without locking to a specific faction
- Constraints: symbolic rather than character-led, readable at small size, no letters or propaganda

### Atmosphere Overlay

- Asset type: full-frame overlay
- Direction: soft fog, vignette, and faint particulate wear over the title background
- Constraints: supportive only, keep center readability, no magical sparkle treatment

### Panel and Inset

- Asset type: title-only UI chrome
- Direction: worn stone-and-parchment frame family with restrained corner language and modest teal accents
- Constraints: stretch cleanly in Godot, avoid dense ornament, keep large quiet interior areas

### Buttons

- Asset type: title menu button family
- Direction: long tactile brown-grey buttons with worn bronze edging and live text only
- Constraints: no baked text, no icons, readable in compact low-resolution menu states, pressed state must clearly read as the same family

## Integration Notes

- The generated logo plate is decorative only. `Tales from Ulcantron` and `Purity Wars` remain live text in `TitleScreen.gd`.
- Title chrome is config-driven through `data/ui/title_screen_config.json`.
- Shared gameplay UI is intentionally untouched in this pass.
- Some isolated generated assets were exported with flat backdrops and were cleaned into runtime-ready PNGs during repo prep so the title screen could use them as intended.
