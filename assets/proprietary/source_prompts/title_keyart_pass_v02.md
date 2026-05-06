# Title Key Art Pass v02

This file records the second proprietary title pass for Tales from Ulcantron: Purity Wars. It supersedes the v01 frontier-only matte for the boot screen by replacing the layered chrome composition with a single full-art key visual.

## Tooling

- Generation tool: GPT Image 2 (via ChatGPT)
- Pass focus: title screen key art (composition, mood, identity)
- Direction lock: lone hero silhouette overlooking a violet-lit fortress under a corona/eclipse, with title lockup and menu region painted into the canvas

## Selected Runtime Assets

- `assets/proprietary/production/title/title_keyart_purity_wars_v01.png`

## Source Filename

- Original delivered file: `ChatGPT Image May 6, 2026, 05_22_44 PM.png` (placed by the user under `assets/art/title/`)
- Renamed and relocated to the proprietary path above to match the existing v01 naming convention

## Prompt Notes

- Asset type: title screen key art (full composition)
- Direction: a caped figure with a glowing greatsword stands on a cliff in the foreground, a fortress city of spires and lit windows in the middle distance, a violet eclipse / corona above, embers and falling debris in the air
- Composition reserves the upper-left for the title lockup and the left-of-centre for the menu column
- Restrained palette: deep violet, near-black, ember orange highlights, cream type accents
- Constraints: no characters reading as a specific named cast member yet, no faction-defining heraldry, leave the bottom margins quiet enough for live copyright and version overlays

## Integration Notes

- The painted title text and painted menu items act as a finished design reference; runtime UI sits over them with opaque button bands so the menu still responds to focus and hover.
- All previously used title decorative chrome (logo plate, emblem panel, panel frame, inset borders, atmosphere overlay) is suppressed when the key art is active. Their config slots are blanked rather than removed so the previous pass remains restorable.
- Live copyright and version labels are anchored to the bottom corners by code so version metadata stays editable without re-exporting the canvas.
- Shared gameplay UI is intentionally untouched in this pass.
