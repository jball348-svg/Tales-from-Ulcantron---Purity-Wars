# Prologue Asset Brief

This is the working asset brief for the prologue build pass. It enumerates the runtime art the prologue scenes need so the asset-production pass and the implementation pass don't drift from each other.

The matching gameplay structure lives in `docs/prologue/01_prologue_implementation_plan.md`. The matching world tone lives in `docs/visual_asset_handover.md`.

## Tilemaps

### Chapel Main Hall

Used by the opening room. ~25–40 unique tiles.

- Floor tiles — stone, worn, neutral; at least one variant for centred aisle vs. side flooring
- Pew tiles — left and right orientations
- Aisle tile — centre run from entry to altar
- Wall tiles — stone interior; corner and edge variants
- Door tiles — closed and open
- Decorative tiles or props:
  - Banners showing class symbols
  - Candle stands
  - An altar piece

### Side Passage / Antechamber

Used by room 2. Small tile budget — should reuse Chapel materials where possible.

- Narrow stone floor tiles
- Wall tiles, simpler than the chapel
- Chair / bench prop variants
- Doorway tile back to the chapel and forward to the inciting-incident space
- Small decorative props (a sconce, a folded banner, a stack of ritual cloth) that read as *backstage of a ceremony*

### Inciting Incident / Fight Space

Used for the public reveal and the unwinnable fight. Will likely be a separate authored area or a "ceremonial floor" set rather than a tile-driven room.

- Floor: ceremonial central space (round or octagonal motif), tile or hand-painted backdrop acceptable
- Surround: visible witness rows, banners, sky / dome above
- Lighting: directional, ceremonial; should be readable as a *stage*

## Characters / Sprites

- **Player attendant sprite** — court-servant silhouette, gender variants if personalisation in the prologue exposes that choice
- **Princess** — recognisable enough to carry recurring identity in later scenes; design must read across both prologue staging and later promotional / portrait use
- **King** — silhouette anchored in armour or robes of office; presence must read as authority even in long-shot
- **Queen** — silhouette readable as monarch and as mother
- **Initiate (the youth at the centre of the inciting incident)** — younger than the player, deliberately ordinary
- **Captain of the Royal Guard (antagonist)** — visibly superior on every axis; should read as obvious mismatch the moment the player sees them
- **Pew NPCs** — at least four civilian variants (gendered, aged, dressed for ritual)
- **Temple attendant / junior priest** — at least one for ambient grounding
- **Palace staff** — at least one named-style figure for the Side Passage interaction

## UI

- The prologue HUD is *suppressed* during the opening. The shared HUD scaffold can stay loaded but invisible.
- The unwinnable fight needs the same battle UI the rest of the game uses. No special UI for the prologue beyond what the existing `scenes/battle/` framework already provides.
- The opening text-on-black sequence ("At first, there was only silence." / "And then—") needs only a screen fader and a typewriter label. The existing `scenes/ui/ScreenFader.tscn` should cover the visual side; the typewriter is small new code.

## Audio

- Quiet ambient room tone for the chapel and the side passage
- A single ceremony-music cue that builds across rooms and cuts at the inciting incident
- A combat cue for the unwinnable fight that is tonally close to a tragic-loss music piece, not a power piece
- Stinger SFX for: door opens, banner cloth, ceremonial bell, sword draw, the final disarm
- Silence track for the closing beat

## Source Of Truth

- Visual direction and naming conventions: `docs/visual_asset_handover.md`
- Asset registry and replacement priorities: `docs/asset_registry.md`
- Source-prompt notes for any AI-generated production art: `assets/proprietary/source_prompts/`

## What This Brief Does Not Cover

- Final-form character designs (silhouette work and portrait identity-anchor work is its own pass)
- Cinematic / cutscene-specific art that is not part of the playable flow
- Post-prologue character-creation-screen art (that scene owns its own brief)
- The map-view animation that opens the broader campaign after character creation (that beat is downstream of the prologue and is out of scope for this build pass)

## Open Questions To Resolve Before Implementation

- Does the prologue stage the unwinnable fight as a standard turn-based battle (matching the rest of the game) or as a special set-piece scripted encounter?
- Does the player have a default starter weapon during the prologue, or do they enter the fight unarmed and improvise?
- How much of the chapel's interior is walkable vs. visible-but-blocked? The asset list scales with the answer.
- Which named civic figure does the player meet in the Side Passage, and does that figure recur post-prologue?
