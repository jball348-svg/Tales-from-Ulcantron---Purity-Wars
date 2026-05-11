# Prologue Inciting Incident — Refactor Plan

## Context

The current `scenes/prologue/PrologueInciting.tscn` + `.gd` implements the climactic chapel fight as a **narrative stub**: a fullscreen `Control` scene with a vignette label, a 3-button choice panel (Defend / Strike / Improvise), and three scripted "telegraph → choice → resolution" rounds before a hardcoded defeat dialogue and transition into character creation.

User feedback from the 2026-05-11 playthrough: *"boss fight was basically a stub — it should be the same as the fight sequence in the vertical slice."* The vertical slice uses `scenes/battle/Battle.tscn` + `Battle.gd` — a proper turn-based combat scene with player & enemy sprites, HP bars, a main menu (Attack / Spell / Item / Flee / Ability), submenus, a center banner, loot/game-over panels, and a HitFlash shader. That's the visual and mechanical language the user wants the inciting fight to share.

## Goal

Replace the choice-button stub with an unwinnable combat encounter rendered through the existing `Battle.tscn` flow:
- Player attendant vs Captain of the Royal Guard
- Three "choice" turns mapped to Defend / Attack / Ability (or similar) menu picks
- Unbeatable opponent — the Captain has effectively infinite HP relative to the attendant's damage output; the attendant's HP drains over three turns regardless of choices
- Same camera, same HP bar layout, same turn flow, same UI chrome as the kobold/shaman fights
- After the scripted defeat, the existing post-defeat dialogue (`prologue_unwinnable_fight.json`) plays as a cutscene overlay, then `SceneManager.change_state("character_creation")` fires — preserving the current downstream flow

## Approach

### 1. Extend `Battle.gd` with a new `BATTLE_KIND`

Add a third battle kind alongside `BATTLE_KIND_STANDARD` and `BATTLE_KIND_BOSS_SHAMAN`:

```gdscript
const BATTLE_KIND_PROLOGUE_INCITING := "prologue_inciting"
```

Stat block for the Captain (numbers chosen so the attendant always dies on turn 3 regardless of choices, but the math still feels combat-shaped, not arbitrary):

```gdscript
const CAPTAIN_MAX_HP := 240   # effectively unbeatable vs ~10 dmg/turn attendant
const CAPTAIN_ATTACK_DAMAGE := 12   # attendant has 30 HP → dies in 3 hits
const CAPTAIN_DEFENCE := 8
const CAPTAIN_RESISTANCE := 8
const ATTENDANT_MAX_HP := 30
const ATTENDANT_ATTACK_DAMAGE := 10  # narrative "you struck him" feel, never enough
```

### 2. Route into Battle from `PrologueInciting`

The current `PrologueInciting.gd._run_sequence()` does:
1. Pre-fight dialogue
2. 3 narrative choice rounds
3. Post-defeat dialogue
4. Fade to character_creation

Replace step 2 with a Battle invocation:

```gdscript
SceneManager.change_state("battle", {
    "kind": BATTLE_KIND_PROLOGUE_INCITING,
    "scripted_defeat": true,
    "return_state": "prologue_inciting_post_fight",
    "captain_telegraphs": ROUND_TELEGRAPHS,
    "captain_vignettes": ROUND_VIGNETTES,
})
```

…and split the existing post-defeat flow into a new lightweight state `prologue_inciting_post_fight` that just plays the post-defeat dialogue and routes onward. Or keep it in-scene by having Battle emit a signal that PrologueInciting awaits.

### 3. Battle-side scripted-defeat hook

In `Battle.gd`, branch on `kind == BATTLE_KIND_PROLOGUE_INCITING`:
- Skip the standard victory/defeat panels; on player HP=0, fade out and route to `return_state` from the context
- Use the captain's `ROUND_TELEGRAPHS` array as `_center_banner` text per turn (overrides the kobold/shaman banner copy)
- Show the chosen `ROUND_VIGNETTES` line as a turn-resolution flavor label (could reuse the existing `_status_label` or add a new `_vignette_label` to the battle UI)
- The Defend / Attack / Ability buttons map to the existing narrative choices:
  - Defend → DEFEND choice (reduce captain damage by attendant DEFENCE bonus; HP still drops by enough to die on turn 3)
  - Attack → STRIKE choice (attendant deals minimal damage; captain HP barely moves; captain hits back harder)
  - Ability (`improvise`) → CLEVER choice (no damage either way; captain narrates the failure)
- Set `prologue_choice_round1/2/3` flags exactly as the current stub does (so the smoke test's now-live assertions still pass)

### 4. Sprite assets

This is where the recent ChatGPT/Gemini sprite-sheet exploration intersects:

- **Player attendant battle sprite (BS-01):** single-pose painted half-body of the male/female attendant in their chapel livery, facing right. Use `ACTOR_PLAYER_ATTENDANT_MALE/FEMALE` once those exist (Batch C is unblocked once the cutscene-sprite pipeline runs).
- **Captain battle sprite (BS-02):** single-pose painted half-body of the Captain in plate armor with a drawn longsword, facing left. Use `ACTOR_CAPTAIN_ROYAL_GUARD.battle.type = "texture"` with a `res://assets/proprietary/production/battles/captain_battle_v01.png`. Spec already exists in `docs/prologue/03_prologue_asset_specs.md` (BS-02).
- **Backdrop:** the chapel altar / dais. Could reuse the existing `monster2_combat_backgrounds/keep.png` placeholder while waiting on BG-01, or swap to a violet-tinted variant.

### 5. Smoke test impact

The current smoke test (`tools/prologue_smoke_test.gd`) verifies the choice-button flow directly — checks `DefendButton`, `StrikeButton`, `CleverButton` clicks register, vignettes drain, post-defeat dialogue plays. The refactor would invalidate ~15 of the 67 checks (every check in `_verify_inciting_full_sequence`).

Replacement assertions to add:
- `Battle scene loaded with kind == prologue_inciting`
- `Attendant + Captain sprites rendered`
- `Defend button click registers + prologue_choice_round1 flag set to "defend"`
- `Attack button click + round2 flag`
- `Ability/Improvise click + round3 flag`
- `Attendant HP hits 0 within scripted turn count`
- `Post-defeat dialogue plays after defeat`
- `Routes to character_creation`

Keep test count at or above the current 67 — ideally land at 75+.

## Critical files

- `scenes/battle/Battle.gd` — add BATTLE_KIND_PROLOGUE_INCITING branch + captain stats + scripted_defeat handling
- `scenes/battle/Battle.tscn` — possibly add a vignette label slot if the existing UI doesn't have one
- `scenes/prologue/PrologueInciting.gd` — replace `_run_sequence` choice loop with a Battle invocation
- `scenes/prologue/PrologueInciting.tscn` — keep the pre-fight / post-defeat dialogue plumbing, strip the in-scene choice panel
- `autoloads/ActorVisuals.gd` — add `"battle"` entries to `ACTOR_CAPTAIN_ROYAL_GUARD` (BS-02) and the attendant actor IDs (BS-01) once those sprites exist
- `autoloads/SceneManager.gd` (or wherever scenes route) — confirm "battle" state accepts the new kind / payload shape
- `tools/prologue_smoke_test.gd` — rewrite `_verify_inciting_full_sequence` against the Battle UI instead of the current Control scene
- `docs/asset_registry.md` — add Replaced rows for BS-01 and BS-02 when their sprites land

## Open decisions

- **Where the dialogue plays.** Pre-fight dialogue currently runs inside `PrologueInciting.tscn` before the choice loop. Easiest path: keep it there, then transition into Battle. Alternative: render it inside Battle as a "pre-combat cinematic" overlay.
- **What "Ability" maps to.** The fighter has `Shield Bash`, the battlemage has `Arcane Strike`. The attendant has neither — they're untrained. The current `CLEVER` choice translates as "throw the censer / pull the bell-rope / go for the eyes" — improvised desperation. The Ability button could just be labelled `Improvise` for this fight, with no extra mechanical effect.
- **Whether to ship the captain battle sprite now or land the refactor with placeholder.** Battle.gd currently requires `_enemy_sprite.texture` to be set — if we land the refactor before BS-02 exists, the captain will be a tinted-LPC-bookstore-region sprite at battle scale, which is ugly. Alternative: reuse an existing placeholder battle sprite (e.g., the goblinsword.png the shaman currently uses) tinted to violet.

## Out of scope

- Multiple inciting-incident endings (the user has firmly committed to "scripted defeat → character creation")
- The proprietary BG-01 ceremonial floor backdrop (separate art-pass deliverable)
- Polishing the post-defeat dialogue lines (every line is still `[POLISH PASS]`-tagged)

## When to do this

This is a substantial refactor (probably 2–4 hours of focused work plus smoke-test rewrite). It should land **after** the cutscene-sprite pipeline produces at least BS-02 (Captain battle pose), so the refactor doesn't ship with a placeholder enemy that defeats the visual point of using the proper battle UI. Until then, the choice-button stub is *acceptable* — it's narratively legible and the user can play through it.
