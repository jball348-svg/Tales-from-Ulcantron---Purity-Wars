# Intro Title Asset Drop Notes

This note records the first proprietary intro/title visual drop.

## What Shipped

- Frontier-first title background matte
- Decorative title plate for the hybrid lockup
- Neutral frontier emblem
- Atmosphere overlay for the title background
- Title-only panel, inset, button, and pressed-button chrome
- Config and title-screen integration for all of the above

## Runtime Asset Locations

- `assets/proprietary/production/title/title_background_frontier_v01.png`
- `assets/proprietary/production/title/title_logo_plate_v01.png`
- `assets/proprietary/production/title/title_emblem_frontier_v01.png`
- `assets/proprietary/production/title/title_atmosphere_overlay_v01.png`
- `assets/proprietary/production/ui/ui_title_panel_v01.png`
- `assets/proprietary/production/ui/ui_title_inset_v01.png`
- `assets/proprietary/production/ui/ui_title_button_v01.png`
- `assets/proprietary/production/ui/ui_title_button_pressed_v01.png`
- Prompt/source notes: `assets/proprietary/source_prompts/intro_title_pass_v01.md`

## First-Pass Status

These are first-pass proprietary assets, not final locked production masters.

- Strongest first-pass surfaces: background matte, title plate, emblem
- Good enough for runtime now: title panel, inset, button, and pressed-button chrome
- Still intentionally placeholder: shared HUD/battle/cutscene/dialogue chrome, app icon, opening-area environment kit outside the title background

## Implementation Notes

- The title screen now loads title-specific UI textures from config first and falls back to the existing Kenney textures if any slot is missing.
- The live title and subtitle text are still rendered by Godot and are not baked into the title art.
- Background fallback behavior remains intact through the existing programmatic bands and texture fallback path.
- The title atmosphere overlay is optional and safe to remove through config if a later background matte carries enough mood on its own.

## Follow-Up For The Next Art Pass

- Tighten the title plate and emblem into a more singular heraldic language if the broader faction/world direction becomes more concrete
- Refine the title-only button family with a dedicated disabled state so the title screen no longer leans on the Kenney grey fallback
- Replace the title screen typography with a production-ready font stack or bitmap font treatment that matches the new art package
- Extend the same proprietary language into the opening-area environment reference art for Frontier Hamlet
- Begin player identity-anchor work so the title-screen look and opening-world look do not drift apart

## v02 — Key Art Drop

This second pass replaces the layered v01 frontier composition with a single full-canvas key art delivered through GPT Image 2.

### What Shipped

- Full-canvas painted key art: caped hero overlooking a violet-lit fortress under a corona, painted title lockup at upper left, painted menu column at left-of-centre, painted copyright + version markings in the bottom corners
- Title-screen runtime support for a `menu_layout_mode = "keyart_overlay"` configuration that suppresses every legacy chrome layer
- Six-item interactive menu (New Game, Continue, Load Game, Options, Extras, Quit Game) overlaid on the painted menu column with dark button bands that cover the painted text and brighten on hover/focus
- Live `Ver. 1.0.0` and `© 2024 Luminaris Games` corner labels rendered over the painted markings so version metadata can change without re-exporting the canvas
- Stub handlers for Load Game (mirrors Continue while a single save slot is the only persistence layer), Options, and Extras (status-line "Coming soon")

### Runtime Asset Location

- `assets/proprietary/production/title/title_keyart_purity_wars_v01.png`
- Prompt / source notes: `assets/proprietary/source_prompts/title_keyart_pass_v02.md`

### Behavior In `keyart_overlay` Mode

- `asset_slots.background` points at the key art; `logo`, `emblem`, `overlay` are intentionally blanked
- `ui_slots.panel`, `inset`, `button`, `button_pressed` are intentionally blanked so no chrome textures are drawn over the artwork
- The script auto-detects keyart mode if a background is configured without a logo or panel, so a future plain-background drop can also use this layout without setting the explicit mode flag
- Default focus is `New Game` (matching the painted highlight in the artwork). `Continue` only appears when a save exists; `Load Game` mirrors Continue's enable state until a multi-slot selector exists

### Follow-Up

- Refine the keyart-button styling once a real font/typography pass lands so the runtime menu matches the painted lettering more tightly
- Replace the Load Game stub with a save-selector screen when multiple slots are introduced
- Build out the Options and Extras screens (audio sliders, controls, credits, gallery)
- Re-export the painted version label from the key art if marketing requires the visible version to track the build
- Re-evaluate whether the painted menu text should be cropped or blurred out of the canvas master so the runtime buttons can use lighter / more transparent bands
