# Prologue Royal Portraits — Drop Notes (Batch A of the prologue art pass)

This note records the first proprietary visual drop for the **prologue royal cast** — Princess, King Aldren, Queen, and Captain of the Royal Guard — generated via ChatGPT desktop with the locked Style Anchor + Per-Category C (Portrait) conventions and the per-asset PR-01..PR-04 prompt blocks from `docs/asset_generation_prompts.md`.

## What Shipped

- PR-01 Princess portrait
- PR-02 King Aldren portrait
- PR-03 Queen portrait
- PR-04 Captain of the Royal Guard portrait
- Hybrid placeholder/proprietary registry helper in `autoloads/ActorVisuals.gd` (`_build_prologue_npc_entry` now accepts an optional `portrait_path`) so portraits could land in this batch without waiting on the matching CH map sprites
- Dialogue JSON portrait paths wired in `prologue_inciting_incident.json` and `prologue_unwinnable_fight.json`
- Four `Replaced` rows added to `docs/asset_registry.md`
- Verbatim source prompts captured under `assets/proprietary/source_prompts/PR-0[1-4]_v01.md` for v02 regeneration parity

## Runtime Asset Locations

- `assets/proprietary/production/portraits/princess_portrait_v01.png`
- `assets/proprietary/production/portraits/king_aldren_portrait_v01.png`
- `assets/proprietary/production/portraits/queen_portrait_v01.png`
- `assets/proprietary/production/portraits/captain_royal_guard_portrait_v01.png`
- Prompt / source notes:
  - `assets/proprietary/source_prompts/PR-01_v01.md`
  - `assets/proprietary/source_prompts/PR-02_v01.md`
  - `assets/proprietary/source_prompts/PR-03_v01.md`
  - `assets/proprietary/source_prompts/PR-04_v01.md`

## First-Pass Status

These are first-pass proprietary assets, not final locked masters.

- Strongest first-pass surfaces: Princess (warm directional candlelight reads exactly as the spec asked), King Aldren (cool gold from above with the deep-violet face shadow), Queen (the deliberately ambiguous lighting hits)
- Good enough for runtime now: Captain (helmless, low warm brazier light, tired expression — slight palette drift toward saturated orange in places but inside tolerance)
- Still intentionally placeholder: all four map sprites (CH-03..CH-07) — still rendering as LPC bookstore-keeper region tinted per actor. Portrait visual identity is now anchored; map sprites follow in the next batch.

## Implementation Notes

- `_build_prologue_npc_entry(tint, portrait_path = "")` in `autoloads/ActorVisuals.gd` now returns either an LPC-atlas portrait entry (placeholder, when `portrait_path` is empty) or a proprietary texture entry pointing at the supplied path. Only the four royal cast entries pass a portrait path today; the other seven prologue NPCs continue to use the placeholder fallback so they still render.
- The dialogue JSON files (`prologue_inciting_incident.json`, `prologue_unwinnable_fight.json`) now embed the proprietary portrait paths in each affected node's `portrait` field. The runtime still resolves via `portrait_id` → `ActorVisuals.get_portrait(actor_id)` when needed, but the embedded path means the JSON is now a fully-resolved source of truth and survives future ActorVisuals refactors.
- `prologue_smoke_test.tscn` still passes **0 failures across 64 checks** with the new wiring.

## Follow-Up For The Next Art Pass

- Generate the matching CH-03..CH-07 map sprites so the in-engine prologue stops tinting bookstore keepers. The portrait visual language locks the costume direction; the map sheets should mirror it.
- Decide whether the dialogue JSON `portrait` path field becomes the canonical resolver for v02 or whether the runtime should keep relying on `portrait_id` + `ActorVisuals`. The current belt-and-suspenders works but should be one or the other once the dust settles.
- Consider a small audit pass over the four portraits — Captain in particular has a hint of saturated orange in the armor highlights that drifts slightly past the ember-orange palette anchor; a v02 regeneration could trim that without touching the strong portraits.

## Session Stop Conditions

Batches B, C, and D (royal map sprites, player attendant assets + selector, supporting cast) did not ship in this session.

- **Image generation rate limit hit.** ChatGPT free tier showed "You've reached your image creation limit. Try again tomorrow after 1:12 PM" immediately after the CH-03 attempt. No further image generations are possible from this account today.
- **Sprite-sheet layout drift.** The single sprite generation that did complete before the limit (CH-03 Princess) produced a 1024×1536 PNG laid out as a 5×3 character turnaround sheet, not the spec'd 4×3 grid of 64×64 frames. The character design (violet silk + rogue belt rigging, gold/ember accents) reads well and matches PR-01, but the sheet is not engine-ready as a `sheet_frames` source. The PNG is preserved under `assets/proprietary/production/sprites/princess_map_v01.png` as a concept anchor (intentionally not wired into `ActorVisuals.gd`) and `assets/proprietary/source_prompts/CH-03_v01.md` documents the situation.
- **Recommendation for continuation.** Pick up Batch B no earlier than 2026-05-12 13:12 local. Before regenerating the map sheets, decide between: (a) prompting harder on the 4×3 grid layout (likely to fail again — ChatGPT's image tool treats it as art direction rather than a technical constraint), (b) using a sprite-sheet-specialised pipeline (a custom GPT trained on sheets, ComfyUI + pixel LoRA, or an Aseprite-side workflow), or (c) upgrading the account so the daily limit isn't the controlling constraint. The CH-03 v01 PNG is good enough as a costume reference to seed any of those paths.
