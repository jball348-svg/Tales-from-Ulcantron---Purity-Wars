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
