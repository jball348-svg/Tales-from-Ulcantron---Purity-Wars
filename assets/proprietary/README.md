# Proprietary Art Pipeline

This directory is the source-of-truth home for first-party visual asset development.

## Folder Guide

- `concepts/`
  - early ideation, compositions, silhouette passes, palette studies
- `references/`
  - internal reference boards, mood notes, approved look targets, trace notes
- `source_prompts/`
  - reusable prompt specs, art briefs, shot notes, export instructions
- `production/`
  - approved runtime-ready exports by category

## Production Subfolders

- `production/title/`
- `production/ui/`
- `production/tilesets/`
- `production/portraits/`
- `production/environments/`
- `production/sprites/`
- `production/vfx/`

## Working Rules

- Keep source masters and runtime exports separate whenever possible
- Use lowercase snake_case naming
- Update `docs/asset_registry.md` when an asset becomes live
- Update runtime config or code only after the new asset exists here
- Do not remove existing placeholder assets until the proprietary replacement is wired and validated
