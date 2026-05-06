# Asset Generation Prompts

This document is the working prompt library for proprietary art generation. It exists so every asset produced for *Tales from Ulcantron: Purity Wars* speaks the same visual language — the same palette, the same lighting, the same line economy — regardless of which asset is generated when, by whom.

These prompts are tuned for **GPT Image 2 / DALL·E** style image generators that take natural-language input. They are not Midjourney parameter strings.

## How To Use This Document

1. Find the prompt template for the asset you want.
2. Paste **the full prompt block** — including the Style Anchor at the top — into your image generator.
3. Replace the bracketed `[CHARACTER NAME]` / `[ROOM NAME]` placeholders with the specific asset's identity.
4. Save the result to `assets/proprietary/production/<category>/<asset_id>_v01.png`.
5. Save the *exact prompt you used* (including the filled placeholders) to `assets/proprietary/source_prompts/<asset_id>_v01.md` so the next iteration can be regenerated to match.

## Why The Style Anchor Matters

**Uniformity comes from the Style Anchor.** Every prompt in this file leads with the same Style Anchor block. If you change a word in it later, change it in *every* prompt. The model treats the leading style block as the dominant guide for the whole render.

Per-category conventions add the technical constraints (sprite-sheet layouts, transparent backgrounds, tile sizes). Per-asset prompts only describe the specific subject — they never re-state the style or technical rules.

---

## ★ STYLE ANCHOR ★

**Copy this block, unchanged, at the top of every generation prompt below.**

```
Visual style anchor for the game "Tales from Ulcantron: Purity Wars".

Setting: a mythic political fantasy kingdom called Azzentia. Tone: ceremonial, pre-storm, beautiful, slightly oppressive. Reference visual: a painted key-art piece showing a caped sword-bearing figure on a cliff before a violet-lit fortress under an eclipsed sun.

Palette anchor: deep violet, near-black, ember orange highlights, candlelight gold, parchment cream, restrained teal accents. Avoid pure-saturation reds and pure-saturation greens. No neon. No modern brand colors.

Lighting: directional and candlelit, with strong silhouette readability against muted backgrounds. Subjects should read at small sizes.

Cultural register: high fantasy with a JRPG sensibility, sitting between Final Fantasy and Dungeons & Dragons. Magik (with a 'k') is woven into daily life — recognizable and regulated, not marvelled at. Ceremonial and civic spaces matter. No modern technology, no modern clothing, no fourth-wall winks.

Composition rules: clean focal silhouette; quiet negative space; no frames, watermarks, captions, signatures, or text labels of any kind unless explicitly requested. Do not overlay UI mockups, menus, or button shapes onto the artwork unless the prompt asks for them.

The asset to generate is described below.
```

---

## PER-CATEGORY CONVENTIONS

Add the matching block for the asset's category *immediately after the Style Anchor*, before the per-asset description.

### A. Map / Cutscene Character Sprite (Sheet)

```
Category: top-down RPG character sprite sheet for in-engine use.

Output a single PNG with a fully transparent background.

Layout: a 4x3 grid of 64x64-pixel frames, total image 192x256 pixels. Rows from top to bottom: walking-down, walking-left, walking-right, walking-up. Each row contains 3 frames: contact-left, neutral, contact-right.

Render as crisp pixel art with no soft anti-aliasing. Clean palette anchored to the project palette. Visible silhouette at 32x32 display size — silhouette readability is more important than fine detail.

Camera: high three-quarter view from above and slightly behind, consistent across every frame. Character centered in each frame. No shadow on the ground unless explicitly requested.

The character to render is described below.
```

### B. Battle / Cutscene Single-Pose Sprite

```
Category: side-on battle sprite for use against a backdrop in turn-based combat.

Output a single PNG with a fully transparent background.

Render as crisp pixel art with no soft anti-aliasing. Clean palette anchored to the project palette.

Single static pose, character facing right (the default battle camera looks at enemies from the player's left). Character vertically centered in the frame, with their feet near the bottom edge. Pose should read instantly as the character's combat stance.

The pose and character to render are described below.
```

### C. Portrait

```
Category: dialogue / cutscene character portrait.

Output a single 512x512 PNG. Painterly illustration style — the same medium and finish as the title key art, not pixel art. Strong directional candlelight, palette anchored as above.

Framing: shoulders-up, head three-quarters toward viewer. Quiet near-black background that fades to deeper violet at the edges (no transparent background, no environment behind the character). The portrait should sit naturally against a dark dialogue panel without a hard rectangular cutout.

The character to render is described below.
```

### D. Tilemap / Tileset Sheet

```
Category: top-down RPG tilemap sheet for in-engine use.

Output a single PNG with a fully transparent background.

Layout: a grid of 32x32-pixel tiles, arranged 8 columns wide. Each tile is the same exact pixel size; do not insert margins or gutters between tiles.

Render as crisp pixel art with no soft anti-aliasing. Clean palette anchored to the project palette. Tiles must seam-tile cleanly with their neighbors — corners and edges must be drawn as separate tiles where indicated.

Do not overlay grid lines, labels, or numbers onto the sheet.

The set of tiles to render is described below.
```

### E. Painted Background

```
Category: painted environment background for a cutscene or staged scene.

Output a single PNG, 960x540 pixels (this will downscale to the 480x270 runtime). No transparency. No characters in the frame unless explicitly requested. No UI, no overlay text, no menu mockups.

Painterly illustration style — the same medium and finish as the title key art. Strong directional candlelight where appropriate. Palette anchored as above.

The environment to render is described below.
```

### F. UI Element (9-Slice Friendly)

```
Category: stretchable UI chrome element for a Godot StyleBoxTexture.

Output a single PNG with a fully transparent background.

Render as crisp pixel art with no soft anti-aliasing — the central area of the asset must be uniform enough to safely 9-slice and stretch without artifacts. Clearly defined corners and edges. Palette anchored as above.

No baked text, no icons, no interior decoration in the central region. The asset will hold live engine text or a child element on top.

The UI element to render is described below.
```

---

## PROLOGUE ASSET PROMPTS

Each prompt below assumes you have already pasted **the Style Anchor + the matching Per-Category block** above it. Paste this prompt as the *third* and final block.

Asset IDs match `docs/prologue/03_prologue_asset_specs.md`.

### TM-01 — Chapel Main Hall Tileset

```
Subject: a tilemap sheet for an Azzentian Class Chapel — the main hall where the Rite of Naming ceremony happens.

Tiles to include (as separate, clearly distinct tiles in the grid):
- 3 variants of stone floor (centered, edge, worn)
- 1 centered aisle floor tile that connects entrance to altar
- 2 pew tiles, one left-facing and one right-facing
- 4-6 interior stone wall tiles covering plain wall, left corner, right corner, top edge, and bottom edge variants
- 1 closed door tile and 1 open door tile, suitable for a tall ceremonial doorway
- 2-3 hanging banner tiles in different muted colors, each showing a stylized class symbol
- 1 lit candle stand and 1 unlit candle stand
- 1 dominant altar piece tile (may occupy a 2x2 region in the grid)

Tone: ceremonial, candlelit, restrained grandeur. Worn rather than pristine. The chapel should feel old and lived-in.
```

### TM-02 — Side Passage Tileset

```
Subject: a tilemap sheet for a narrow stone antechamber connecting the Class Chapel to the inner ceremony hall — backstage of a ceremony, not a destination.

Tiles to include:
- 2 variants of narrow stone floor
- 3-4 plain interior wall tiles (plain, corner, top edge, bottom edge)
- 1 doorway tile back to the chapel and 1 doorway tile forward to the inner hall
- 1 wall-mounted lit sconce
- 1 small folded banner / ritual cloth prop sitting against a wall
- 1 wooden bench prop

Tone: quieter, simpler, and dimmer than the chapel. Less ornament, more utility. This space should read as a service corridor where palace staff move between rituals.
```

### BG-01 — Ceremonial Floor Backdrop

```
Subject: a painted environment for the staged ceremony floor where the prologue's inciting incident happens.

Composition:
- centered octagonal ceremonial floor with subtle inset class motifs in the stonework
- the floor occupies the lower-center of the frame, framed by surrounding witness stands rendered as dim silhouettes / abstract crowd
- two large hanging banners flanking what would be the throne side (left and right of frame)
- ceremonial light from above, suggesting a dome or oculus, casting a soft circular pool on the floor
- distant braziers or candle stands at the edges providing warm orange counter-light against the dominant violet

Mood: a moment before something terrible. The space is beautiful and breathless. No characters present. No UI.
```

### CH-01 — Player Attendant (presented-male)

```
Subject: a young court attendant of Azzentia, presenting male, mid-to-late teens, working as a junior royal servant during a ceremony.

Wardrobe: restrained palace livery — a fitted tunic in muted violet with bronze trim, dark trousers, soft leather shoes for indoor service. No weapons, no class iconography. A single small embroidered house mark at the collar.

Build: lean, average height, alert posture. Hair short to medium, dark.

Silhouette must read as "junior staff at a formal court event" — formal but unmistakably the lowest rung in the room.
```

### CH-02 — Player Attendant (presented-female)

```
Subject: a young court attendant of Azzentia, presenting female, mid-to-late teens, working as a junior royal servant during a ceremony.

Wardrobe: restrained palace livery matching the male attendant — same muted violet and bronze palette, same single small embroidered house mark at the collar. Long fitted tunic over dark leggings, soft leather shoes for indoor service. No weapons, no class iconography.

Build: lean, average height, alert posture. Hair tied back to keep it out of the way during service.

Silhouette must read as the same "junior staff at a formal court event" register as the male attendant — design parity is required so neither sprite reads as the canonical one.
```

### CH-03 — Princess (Map Sprite)

```
Subject: the Princess of Azzentia, early twenties, walking into the chapel ahead of a ritual.

Wardrobe: ceremonial robes layering two contradictory cuts — a mage's draped sleeves of violet silk over a rogue's belt rigging of small leather pouches and crossed straps. The contradiction should be subtle enough that a casual glance reads "well-dressed royalty" but a careful look reads "she is not pure."

Bearing: composed, public-facing, not yet defiant. Her eyes are forward, not down.

Silhouette must be recurring-cast distinctive — she will appear again in this design.
```

### CH-04 — King Aldren (Map Sprite)

```
Subject: King Aldren of Azzentia, mature, the public guarantor of class purity, attending a ceremony in his own throne hall.

Wardrobe: ceremonial royal armor over deep violet robes; a cape hanging from one shoulder; cream and gold trim instead of red. A circlet rather than a full crown. No drawn weapon, but a sheathed ceremonial sword at his hip.

Bearing: built for "authority on first sight." Tall, deliberate, weight low. He does not need to gesture for the room to listen.
```

### CH-05 — Queen (Map Sprite)

```
Subject: the Queen of Azzentia, mature, standing near the King during a ceremony.

Wardrobe: a long cream-and-rose-violet ceremonial gown with a quiet violet cloak. Restrained jewelry — a circlet matching the King's, a small house emblem at the collar. No weapons.

Bearing: monarch-and-mother read. She is watching the room more carefully than she is performing for it.
```

### CH-06 — Initiate (Map / Cutscene Sprite)

```
Subject: a teenage commoner attending the Rite of Naming as the candidate at the center of the inciting incident.

Wardrobe: a clean civilian best-dress in undyed linen with a simple cloth sash — the family scraped together what they could for the day. No house emblem. No class iconography.

Bearing: nervous but composed. They are looking at the King and Queen, not the player.

Silhouette must read as "this could be anyone's kid" — deliberately ordinary.
```

### CH-07 — Captain of the Royal Guard (Map Sprite)

```
Subject: the Captain of the Royal Guard, the King's elite ceremonial protector, present at the chapel.

Wardrobe: full plate armor with a closed visor helm; a cape in deep violet hanging from the shoulders; the royal sigil discreetly worked into the breastplate. A longsword sheathed at the hip. Visibly larger silhouette than every other character on screen.

Bearing: parade-rest stillness. He should read as "this is a man who has done this hundreds of times" — not coiled, just absolute.
```

### CH-08a — Pew NPC: Older Civilian Man

```
Subject: a middle-aged Azzentian commoner attending the ceremony, seated in the pews.

Wardrobe: plain civilian best-dress — wool tunic in muted ochre, trousers, a worn cloak draped over the bench. No class iconography.

Bearing: leaned slightly forward, paying attention but tired. Salt-and-pepper hair.
```

### CH-08b — Pew NPC: Older Civilian Woman

```
Subject: a middle-aged Azzentian commoner attending the ceremony, seated in the pews.

Wardrobe: long civilian dress in muted teal with a cream shawl, hair tied back under a simple cloth. No class iconography.

Bearing: composed, hands folded in her lap.
```

### CH-08c — Pew NPC: Younger Civilian Man

```
Subject: a young adult Azzentian commoner attending the ceremony, seated in the pews.

Wardrobe: simple civilian tunic in muted slate, dark trousers, a small embroidered ribbon at the cuff suggesting an ordinary apprenticeship. No class iconography.

Bearing: visibly excited, leaning to whisper to a neighbor.
```

### CH-08d — Pew NPC: Younger Civilian Woman

```
Subject: a young adult Azzentian commoner attending the ceremony, seated in the pews.

Wardrobe: muted violet civilian dress with a cream collar, hair braided. No class iconography.

Bearing: attentive, a small ceremonial program clutched in her hands.
```

### CH-09 — Temple Attendant

```
Subject: a junior priest of Azzentia performing minor ritual duties in the chapel.

Wardrobe: cream and pale-gold robes with a violet sash; a small censer hanging from one hand on a chain.

Bearing: practiced, quiet, unglamorous. They have done this every week for years.
```

### CH-10 — Named Palace Staff (Side Passage Steward)

```
Subject: a middle-aged steward of the Azzentian palace, a recurring NPC who acknowledges the player by their attendant role in the antechamber.

Wardrobe: sober court livery — fitted dark-violet long-coat with bronze buttons, plain dark trousers, soft leather shoes. A small ledger or set of keys at the hip suggesting administrative authority.

Bearing: composed, faintly impatient — they have a list of things going wrong today, and the player is not at the top of it.

Silhouette must read as recurring-cast, not background dressing.
```

### BS-01 — Player Attendant Battle Sprite

```
Subject: the player attendant in a battle pose during the unwinnable fight in the chapel ceremony hall.

Pose: a defensive forward stance, weight on the back foot, holding a borrowed ceremonial dagger in a reverse grip. Eyes forward, jaw set. Tunic torn at one shoulder.

Output frame: 96x128 pixels.

This is the player at their most outmatched moment. The pose should read as resolve, not skill.
```

### BS-02 — Captain of the Royal Guard Battle Sprite

```
Subject: the Captain of the Royal Guard in a battle pose during the unwinnable fight in the chapel ceremony hall.

Pose: drawn longsword held low and ready, weight forward, helm closed. Composed. Nothing about the pose suggests he is straining. The blade catches faint candlelight along its edge.

Output frame: 128x160 pixels — visibly larger than the player attendant battle sprite.
```

### PR-01 — Princess Portrait

```
Subject: the Princess of Azzentia, early twenties, captured a moment before she speaks publicly against her father's purity doctrine.

Framing: shoulders-up, three-quarters toward viewer. Her mouth is closed but her eyes carry the decision.

Wardrobe: the same ceremonial robes from her map sprite — violet silk sleeves layered with rogue belt rigging — read more clearly here at portrait scale. A single thin silver chain at the collar.

Lighting: warm directional candlelight from her left, deep violet shadow on her right.
```

### PR-02 — King Aldren Portrait

```
Subject: King Aldren of Azzentia, mature, the public guarantor of class purity, in a moment of restrained anger after his daughter has spoken.

Framing: shoulders-up, three-quarters toward viewer.

Wardrobe: ceremonial royal armor under deep violet robes, cream-and-gold trim, a circlet, the sheathed ceremonial sword visible at the bottom edge.

Lighting: cooler than the Princess — pale gold from above and behind, deep violet across the face. The expression should read as "a man who cannot afford to look surprised in public."
```

### PR-03 — Queen Portrait

```
Subject: the Queen of Azzentia, mature, standing between her husband and her daughter in the moment of public fracture.

Framing: shoulders-up, three-quarters toward viewer.

Wardrobe: cream-and-rose-violet ceremonial gown with a quiet violet cloak, a circlet matching the King's, a small house emblem at the collar.

Lighting: soft, even, ambiguous — neither warmly lit like the Princess nor cooly lit like the King. She is the moral hinge; the lighting refuses to take a side.
```

### PR-04 — Captain of the Royal Guard Portrait

```
Subject: the Captain of the Royal Guard, helmless for the first and only time, in a quiet moment after the unwinnable fight.

Framing: shoulders-up, three-quarters toward viewer.

Wardrobe: the same plate armor from his map sprite, helm in the crook of one arm at the bottom of the frame. A small ceremonial scar across one cheek.

Lighting: low warm candlelight from below, suggesting a brazier just out of frame. Expression: tired, not satisfied.
```

### PR-05 — Named Palace Staff (Steward) Portrait

```
Subject: the middle-aged palace steward who acknowledged the player in the antechamber.

Framing: shoulders-up, three-quarters toward viewer.

Wardrobe: the same dark-violet long-coat with bronze buttons from the map sprite. A small ledger held in one hand at the bottom of the frame.

Lighting: practical, balanced, no drama — they live in service light.
```

### PR-06 — Initiate Portrait

```
Subject: the teenage commoner at the center of the inciting incident, in the seconds after the King's authority froze the chapel.

Framing: shoulders-up, three-quarters toward viewer.

Wardrobe: the same undyed linen civilian best-dress from the map sprite, the cloth sash slightly disturbed.

Lighting: dim, ceremonial light fading. Their face should read as someone who suddenly cannot tell whether they are about to be a victim or a martyr.
```

### PR-07a — Player Attendant Portrait (presented-male)

### PR-07b — Player Attendant Portrait (presented-female)

```
Subject: the player attendant from the prologue, captured in the chapel after the inciting incident, before the unwinnable fight begins.

Framing: shoulders-up, three-quarters toward viewer.

Wardrobe: the muted violet livery with bronze trim and the small embroidered house mark at the collar, matching the map sprite (use presented-male variant for PR-07a, presented-female variant for PR-07b — same house, same livery, same lighting, same finish).

Lighting: warm directional candlelight from the chapel altar at the player's left, deep violet on the right.
```

---

## NON-PROLOGUE ASSET PROMPT TEMPLATES

These exist as reusable shapes for assets that will come later. Each one is unfilled — when you need a real version of one of these, write the per-asset block to match the other prompts above.

### Generic NPC (Map Sheet)

```
[Style Anchor]

[Per-Category A — Map / Cutscene Character Sprite (Sheet)]

Subject: an Azzentian [ROLE — e.g. baker, blacksmith, militia private, town guard, herbalist], adult, going about their daily work in [LOCATION — e.g. Frontier Hamlet, the capital market, a coastal village].

Wardrobe: appropriate civilian dress for the role, in muted palette colors (no saturated reds or pure greens). At most one small house emblem or class symbol if it is essential to the character.

Bearing: [POSTURE — e.g. tired but proud, watchful, distracted, at ease].
```

### Named NPC (Map Sheet)

```
[Style Anchor]

[Per-Category A]

Subject: [CHARACTER NAME], [AGE / GENDER PRESENTATION], [ROLE]. Recurring named NPC; this design must read as distinct enough to be memorable across multiple appearances.

Wardrobe: [DETAILED WARDROBE — emphasize one or two recognizable features that will read at small scale].

Bearing: [POSTURE / EXPRESSION].

Silhouette must be recurring-cast distinctive at 32x32 display size.
```

### Battle Backdrop

```
[Style Anchor]

[Per-Category E]

Subject: [LOCATION — e.g. Kobold Mine entrance, Frontier Hamlet square at dusk, capital throne room mid-ceremony].

Composition:
- [FOREGROUND]
- [MIDGROUND]
- [BACKGROUND]
- [LIGHT SOURCES]

No characters in the frame. No UI. The backdrop must work as a 480x270 stage on which battle sprites stand.
```

### UI Chrome (9-Slice)

```
[Style Anchor]

[Per-Category F]

Subject: a [PURPOSE — e.g. dialogue panel, inventory inset, button] for the gameplay UI of Tales from Ulcantron: Purity Wars.

Material reference: worn stone with bronze edging, restrained teal-copper accents. The asset should sit comfortably alongside the title key art's palette.

[ANY SPECIFIC CORNER / EDGE TREATMENT NOTES]

Center area must be uniform and 9-slice safe.
```

### Tileset (Generic)

```
[Style Anchor]

[Per-Category D]

Subject: a tilemap sheet for [LOCATION — e.g. Frontier Hamlet exterior, capital plaza, mine interior, coastal cliff path].

Tiles to include:
- [ENUMERATED TILES with corner / edge variants where needed]

Tone: [WORLD-BUILDING NOTES specific to this region's mood and palette].
```

---

## Version Discipline

When an asset is regenerated:

- Bump the file version (`_v01.png` → `_v02.png`); do not overwrite v01.
- Save the new prompt to `assets/proprietary/source_prompts/<asset_id>_v02.md`.
- Update `docs/asset_registry.md` to point at the new version.
- Update `docs/intro_title_asset_drop_notes.md` (or the relevant drop notes file) with what changed and why.
