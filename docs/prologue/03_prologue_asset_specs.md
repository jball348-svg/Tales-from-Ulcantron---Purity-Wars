# Prologue Asset Specs

This is the detailed per-asset spec sheet for the prologue art-production pass. It enumerates every visual asset the prologue build needs, with target dimensions, format, framing, and style anchors so each can be sent to an image generator with a self-contained brief.

Companion docs:

- `docs/prologue/01_prologue_implementation_plan.md` — what each asset is *for* in the scene
- `docs/prologue/02_prologue_asset_brief.md` — high-level brief
- `docs/asset_generation_prompts.md` — copy-paste prompt templates for the assets below
- `docs/visual_asset_audit.md` — what already exists on disk
- `docs/visual_asset_handover.md` — viewport, scale, and pipeline conventions

## Project Visual Targets (Recap)

These come from `docs/visual_asset_handover.md`; every spec below conforms to them.

- **Logical viewport:** 480 × 270 (canvas_items + expand)
- **Map tile grid:** 32 × 32
- **Map actor sprite source frames:** 64 × 64 (rendered at ~0.5 scale on the map)
- **Battle / cutscene actor on-screen height:** ~72–88 px
- **Battle backdrop runtime size:** 480 × 270 (source can be larger)

## Style Anchor

The prologue art must read as the same world as `title_keyart_purity_wars_v01.png`. The painted key art is illustration-resolution; the in-game sprites and tiles are low-resolution pixel art. The translation rule is: **inherit the palette and mood; simplify the medium.**

- Palette: deep violet, near-black, ember orange highlights, candlelight gold, parchment cream, restrained teal accents
- Mood: ceremonial, pre-storm, beautiful, slightly oppressive
- Lighting: directional, candlelit, with strong silhouette readability against muted backgrounds
- Edges: clean pixel edges; no soft anti-aliasing on map sprites; portraits and key art may be painterly

---

## Tilemaps

### TM-01 — Chapel Main Hall

- **Use:** Room 1 (Class Chapel), the player's first interactive space.
- **Tile size:** 32 × 32 px.
- **Output format:** A single PNG sheet with all unique tiles laid out in a grid (8 columns × N rows), transparent background, no labels.
- **Tile budget:** 25–40 unique tiles.
- **Tile inventory:**
  - Stone floor — 3 variants (centred, edge, worn)
  - Aisle floor — 1 (centred run from entry to altar)
  - Pew — left-facing and right-facing variants
  - Wall — interior stone, with corner and edge variants (4–6)
  - Door — closed and open
  - Banner — class symbols on cloth (2–3 colour variants)
  - Candle stand — lit and unlit
  - Altar piece — single dominant tile (may span 2 × 2)
- **Constraints:** each tile must seam-tile with its neighbours; no perspective skew; ceremonial-grandeur read at 32 × 32.

### TM-02 — Side Passage / Antechamber

- **Use:** Room 2 (Side Passage), the antechamber connecting the chapel to the inciting incident.
- **Tile size:** 32 × 32 px.
- **Output format:** PNG sheet, transparent background, grid layout.
- **Tile budget:** 12–18 unique tiles. Reuse Chapel wall / floor tiles where possible — only ship truly new variants here.
- **Tile inventory:**
  - Narrow stone floor — 2 variants
  - Plain interior wall — corner and edge variants (3–4)
  - Doorway tiles — back to chapel, forward to incident space
  - Sconce — wall-mounted lit
  - Folded banner / ritual cloth prop — small static prop
  - Bench / chair — 1 prop variant
- **Constraints:** simpler / quieter than the Chapel tileset; reads as *backstage of a ceremony*.

### TM-03 — Inciting Incident / Fight Space

- **Use:** Room 3, where the public reveal and the unwinnable fight happen.
- **Recommendation:** *Hand-painted backdrop* rather than a tilemap. The space is staged like a ceremony floor, not a free-roam exploration zone.
- **See BG-01.**

---

## Backgrounds

### BG-01 — Ceremonial Floor Backdrop

- **Use:** Room 3 fight space, full-screen.
- **Output:** One painted PNG, **960 × 540** master (will downscale to the 480 × 270 runtime), no transparency, no characters, no UI.
- **Composition:**
  - Centred octagonal or circular ceremonial floor with class motifs inset
  - Surrounding witness stands (rendered as dim silhouettes / abstract crowd)
  - Hanging banners flanking the throne side
  - Ceremonial light from above (dome / oculus)
- **Palette:** dominant deep violet and near-black, candlelit gold accents, banner cream, faint ember orange in distant braziers.

### BG-02 — Optional Black-Screen Stinger Plate

- **Use:** Room 0 (start sequence) — flat black plate with the typewriter text overlaid in code. No painted asset required; flag here for completeness.

---

## Character Sprites — Map / Cutscene

All character sprites in this section follow the same technical format unless noted:

- **Source frame:** 64 × 64 px.
- **Sheet layout:** 4-direction walk cycle (down, left, right, up), 3 frames per direction → 4 × 3 grid → final sheet 192 × 256 px.
- **Background:** fully transparent.
- **Style:** clean pixel art, no soft anti-aliasing, palette anchored to the project palette.

### CH-01 — Player Attendant (presented-male)

- **Role:** Player character in the prologue.
- **Design notes:** young court servant; restrained palace livery in muted violet and bronze trim; no class iconography; readable silhouette.

### CH-02 — Player Attendant (presented-female)

- **Role:** Alternate prologue player sprite if presented-gender personalisation is exposed.
- **Design notes:** matching livery and silhouette to CH-01; design parity is required so neither sprite is "the canonical one."

### CH-03 — Princess (Map Sprite)

- **Role:** Visible in Room 1 and Room 3.
- **Design notes:** mid-teens to early twenties; ceremonial robes; carries the multiclass silhouette subtly (e.g. mage-style sleeves with rogue-style belt rigging — readable as *not pure*); recurring sprite — must match the portrait identity.

### CH-04 — King Aldren (Map Sprite)

- **Role:** Background presence in Room 1 (throne / ceremony seat); on-stage in Room 3.
- **Design notes:** mature, armoured-or-robed; built for *authority on first sight*; cape; royal palette in deep violet with cream and gold rather than red.

### CH-05 — Queen (Map Sprite)

- **Role:** Background presence in Room 1; intervenes in Room 3.
- **Design notes:** monarch-and-mother read; standing posture; no weapon; quiet palette dominated by cream and rose-violet.

### CH-06 — Initiate (Map / Cutscene Sprite)

- **Role:** The youth at the centre of the inciting incident.
- **Design notes:** younger than the player; deliberately ordinary; civilian dress; the sprite must read as "this could be anyone's kid."

### CH-07 — Captain of the Royal Guard (Antagonist Map Sprite)

- **Role:** Visible in Room 1 (silent presence) and Room 3 (the unwinnable fight).
- **Design notes:** plate armour with full helm; visibly larger silhouette than the player; ceremonial-but-deadly read; weapon is a longsword or greatsword sheathed in Room 1 and drawn in Room 3.

### CH-08 — Pew NPC Set

- **Role:** Ambient civilians in Room 1.
- **Output:** 4 separate sheets (CH-08a–d), one per NPC, same technical format.
- **Design notes:** four civilian variants — male / female / older / younger; ritual best-clothes; quiet palette; no class iconography (these are commoners attending).

### CH-09 — Temple Attendant

- **Role:** Ambient civic figure performing minor duties in Room 1.
- **Design notes:** junior priest robes; carries a censer or ritual cloth; cream and pale gold palette.

### CH-10 — Named Palace Staff (Side Passage)

- **Role:** The named civic figure who acknowledges the player by their attendant role in Room 2.
- **Design notes:** middle-aged steward; sober court livery similar in palette to the player but more elaborate; reads as *recurring NPC*, not background dressing.

---

## Battle Sprites

### BS-01 — Player Attendant (Battle Frame)

- **Use:** the player's combat sprite in the unwinnable fight.
- **Output:** single battle pose, **96 × 128** centred figure, transparent background.
- **Pose:** ready stance, light improvised weapon (a ceremonial knife, a guard's spear taken in panic, or unarmed if the design favours that).

### BS-02 — Captain of the Royal Guard (Battle Frame)

- **Use:** antagonist combat sprite in the unwinnable fight.
- **Output:** **128 × 160** centred figure, transparent background.
- **Pose:** drawn longsword, stance reading as "this is a routine for him," visibly larger than BS-01.

### BS-03 — Battle Sprite Variants (Optional)

If the existing battle framework supports per-character idle / attack / hit frames, request matching variants for BS-01 and BS-02 (idle, attack, hit, victory). Otherwise the single static pose is sufficient for a v1 implementation.

---

## Portraits

All portraits share format:

- **Output:** **512 × 512** PNG, painterly style anchored to the title key art, no background bleed (solid dark or transparent), shoulders-up framing, character looking three-quarters toward viewer.
- **Style:** painterly, not pixel; treat as the same medium as the title key art so portraits sit naturally in dialogue and cutscenes.

### PR-01 — Princess

### PR-02 — King Aldren

### PR-03 — Queen

### PR-04 — Captain of the Royal Guard

### PR-05 — Named Palace Staff (CH-10)

### PR-06 — Initiate

### PR-07 — Player Attendant (presented-male, presented-female)

Two portraits matching the CH-01 / CH-02 silhouettes.

---

## UI

### UI-01 — Typewriter Stinger

- **Use:** Room 0 black-screen open ("At first, there was only silence." / "And then—").
- **Asset needed:** none. Implement as a Godot Label with a typewriter timing effect over a black `ScreenFader` plate. Flag here for completeness so it isn't accidentally art-prompted.

### UI-02 — Prologue HUD

- **Use:** Suppressed in the prologue. The shared HUD scaffold stays loaded but invisible.
- **Asset needed:** none.

### UI-03 — Battle UI

- **Use:** the unwinnable fight uses the existing `scenes/battle/` UI as-is.
- **Asset needed:** none. If the proprietary shared-UI replacement pass lands before the prologue ships, the battle UI inherits whatever ships there.

---

## Audio (Reference Only)

Audio is owned outside this asset spec. Cross-reference: chapel ambient, side-passage ambient, ceremony cue (escalating across rooms), tragic-loss combat cue, stinger SFX (door, banner, ceremonial bell, sword draw, final disarm), and silence track for the closing beat. See `docs/prologue/02_prologue_asset_brief.md`.

---

## Out Of Scope For This Spec

- Post-prologue character-creation scene art
- Map-view animation that opens the campaign after character creation
- Identity-anchor portraits for the broader cast (only prologue characters are listed here)
- Tilesets for the rest of the campaign — these will be planned per-region in their own briefs

---

## How To Use This Document

1. Pick an asset ID (e.g. **CH-04**).
2. Open `docs/asset_generation_prompts.md` and find the matching prompt template (it will reuse the style anchor and per-category conventions from this doc).
3. Generate.
4. Save to `assets/proprietary/production/<category>/<id>_v01.png` per the proprietary path convention.
5. Update `docs/asset_registry.md` with the new entry's status.
6. Wire it into the runtime config or `ActorVisuals.gd` as appropriate.
7. Capture the prompt used in `assets/proprietary/source_prompts/` so subsequent versions stay consistent.
