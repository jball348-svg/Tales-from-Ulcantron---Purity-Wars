# Prologue Implementation Plan — "The Day of Choosing"

This document captures the working implementation plan for the prologue (the first playable scene of *Tales from Ulcantron: Purity Wars*). The structure below is the canonical reference for the next prologue build pass. Dialogue is illustrative and may be polished further during implementation.

## Purpose Of The Prologue

The prologue must do five things, fast:

1. Teach the tone.
2. Introduce the world rule of class and purity.
3. Create immediate emotional attachment to the royal family — especially the princess.
4. Foreshadow the central fracture.
5. End with a *controlled loss* that feels mythic, not pathetic.

The first scene should not explain the whole war. It should show the last moment when the world still feels intact. That makes everything after hit harder.

## Player Position In The Prologue

The player is **not yet** their RPG character. They are playing a court-attached young royal servant or attendant — a believable witness inside the palace ceremony. Personalisation is light (presented gender at most). Full character creation comes immediately after the prologue, in the post-prologue character-creation scene, where Pure / Mixed alignment becomes the systemic spine of the rest of the campaign.

## Sequence

### 0. Start Sequence — Black Screen

Letter-by-letter, on a fully black screen:

> "At first, there was only silence."
>
> *(beat)*
>
> "And then—"

→ Immediate fade into gameplay. No extra flourish — the cut to the chapel is the next beat.

### 1. Room — Class Chapel (Intro Space)

**Player control state**

- Movement enabled
- Interact prompt enabled
- HUD hidden

**Ambient NPCs (auto-trigger or interact-triggered)**

A pair of attendees gossip in a pew:

> NPC 1: "Can you believe it? The Princess herself."
> NPC 2: "She's been spending time with the Classes, they say."
> NPC 1: "That explains the guards."
> NPC 2: "Still… a ceremony's a ceremony."
> NPC 1: "Especially when it's Magik."

Optional alt closing line for sharper tone:

> NPC 1: "Magik always draws a crowd."

**Purpose of the room**

Ground the world before anything happens. The pew NPC chatter quietly establishes that *something is unusual today*, that the Princess is unusually present, that guards are unusually deployed, and that the ceremony is a Magik ritual — i.e. the Rite of Naming touched by magik specialists. None of that needs to be explained out loud later.

The room should also let the player wander past at least one banner of class iconography (so the visual vocabulary of class lands without dialogue), at least one civic figure quietly performing their role (a temple attendant, a junior priest), and the door to the next space.

### 2. Room — Side Passage / Antechamber

A short connective space between the chapel and the moment of inciting incident. The player should:

- Pass at least one *named* civic figure who acknowledges them by their attendant role (anchoring the player's social position before character creation).
- Encounter one short interaction that hints at the ideological pressure on the princess (a hushed conversation between palace staff, an overheard line from a guard officer, a passing reference to "what the King has been told").
- Be visibly close to power — the corridor's framing should feel like backstage of something important.

This room is the on-ramp into the unwinnable encounter. It should be quick. Its job is positioning, not exposition.

### 3. The Inciting Incident

The player witnesses the public moment that ends the kingdom's polite consensus. The exact form of this beat will be determined during the build pass — possible shapes include the Princess publicly defending an initiate whose Rite is about to be denied, the Princess revealing her own multiclass identity before the assembled court, or the Princess refusing a doctrinal ritual in front of the King and the witnesses.

What matters: the moment must be *seen* by the player, not narrated to them, and must produce an immediate physical confrontation that draws the player into the next beat.

### 4. The Unwinnable Fight

The player is forced into a fight they are not allowed to win. The opponent is a deliberately unbeatable figure — a **Captain of the Royal Guard**, an elite palace knight, a holy adjudicator, the king's chosen protector. Visibly superior on every axis: armour, height, training, presence.

**Why the loss can feel satisfying**

If the player does well during the fight:

- They protect the princess (or the initiate) for a moment.
- They earn the princess's visible respect.
- They expose the brutality of the system in front of witnesses.
- The fight ends by intervention, not humiliation.
- They lose physically but win morally or emotionally.

That is what makes an unwinnable fight land.

**Example ending beat**

The player is finally disarmed or struck down. The princess shouts for it to stop. The queen intervenes. The king's authority freezes the scene. The initiate is taken away anyway. The player sees, from the ground, the first clear image of what this kingdom really is.

### 5. How The Prologue Should End

Not with a clean resolution. The closing beats should give:

- silence after chaos
- ceremony broken
- trust fractured
- the player physically defeated
- the princess emotionally broken

That is the exit image. Smash-cut or slow-fade into the post-prologue character-creation scene.

## What This Plan Does Not Cover Yet

- Final-form dialogue lines for the inciting incident, the unwinnable fight, and the ending beats. Those are dialogue-pass work, not implementation-plan work.
- The visual treatment for the unwinnable fight. The art direction for the antagonist's silhouette is in `02_prologue_asset_brief.md`.
- The post-prologue character-creation scene. That scene is the *handover* point from this set-piece prologue into the main RPG, and it owns its own implementation note.

## References

- Series-level narrative framing: `docs/narrative/01_narrative_overview.md`
- World rules and the Rite of Naming: `docs/narrative/02_world_setting.md`
- Royal-family characters and writing principles: `docs/narrative/05_characters.md`
- Story structure (the prologue sits inside Act I): `docs/narrative/07_story_structure.md`
- Asset brief for the prologue build pass: `docs/prologue/02_prologue_asset_brief.md`
