# Intro Scene Art Brief

## Purpose

The intro and title experience should establish tone, identity, and first-use clarity before gameplay begins. It does not need to explain the full world or replace later narrative beats yet.

## Current Runnable Scope

The current scaffold scope is title menu only.

- Boot goes to the title screen first
- The title screen provides `Continue` when a save exists
- `New Game` starts the Frontier Hamlet opening path
- A future intro card or intro scene should slot in after `New Game` without another boot-flow refactor

## Locked First-Pass Execution Decisions

- Title art tone is frontier-first: overcast ridge, hamlet perimeter, and grounded frontier atmosphere rather than lore-heavy faction spectacle
- The title treatment is a hybrid lockup: a decorative proprietary title plate plus live in-engine title and subtitle text
- The emblem slot uses a neutral frontier crest instead of character-led key art in this pass
- Proprietary UI replacement is limited to the title screen frame, inset, and button family; HUD, battle, cutscene, and dialogue UI remain on placeholder chrome

## Future Follow-On

The next stage after this scaffold can be either:

- a lightweight story card, or
- a separate intro scene that transitions into Frontier Hamlet

That follow-on should remain optional until the game’s broader narrative opening is more fully defined.

## Required Visual Components

- Title logo or text lockup
- Subtitle treatment
- Background environment matte or layered fallback
- Optional emblem, crest, or faction sigil
- Primary action button styling
- Footer or prompt text styling
- Optional opening-area reference panel or accent art

## Title and Logo Needs

- The logo must read clearly on a low-resolution screen without depending on a complex background
- The lockup should support a text-only fallback until proprietary art is ready
- A future proprietary logo should feel grim-fantasy, grounded, and readable rather than ornate to the point of noise

## Background and Environment Needs

- The title background should hint at the game’s world without forcing a final world-map view
- A strong first choice would be a moody opening-area environment reference aligned with Frontier Hamlet or the surrounding frontier
- The scene should still work if the background slot is empty by falling back to layered programmatic sky, fog, and ground bands

## Character or Emblem Needs

- A crest, sigil, standard, or symbolic motif is more important than a full cast illustration right now
- If a character-facing version is explored later, it should use first-party silhouettes rather than direct placeholder reuse

## Button and UI Styling Needs

- Buttons must stay readable in the low-resolution viewport
- Current scaffold can reuse the Kenney placeholder UI pack
- First custom UI work should focus on title/menu chrome before attempting the full HUD replacement

## Transition Ideas

- Fade from black into the title screen
- Fade out from title screen into map state on `Continue` or `New Game`
- If a future intro scene is added, keep the title scene as the stable boot layer and hand off after menu selection

## Sound and Music Hooks

- Placeholder title music should reuse the existing `victory_exit` cue
- Button interactions should keep using the current confirm and cancel SFX
- If a later title theme is added, it should replace the configured cue through data rather than code-only edits

## What Can Stay Placeholder Now

- Shared gameplay UI outside the title screen
- App icon and broader branding surfaces outside the intro/title flow
- Frontier Hamlet environment replacement beyond the title background matte
- A future intro card or intro scene

## What Should Become Custom First

- Opening-area environment reference art beyond the title screen
- Fighter and battlemage identity anchors
- Shaman portrait and named-NPC identity anchors
- Shared gameplay UI chrome after the title-only kit is proven

## Prioritized Next Proprietary Checklist

1. Produce opening-area environment reference art for Frontier Hamlet polish
2. Replace fighter and battlemage identity anchors with first-party art
3. Replace shaman portrait and named NPC identity anchors
4. Extend the title-screen visual language into shared gameplay UI chrome
5. Evaluate whether the title plate and emblem need a more specific heraldic language once wider faction/world direction is locked
