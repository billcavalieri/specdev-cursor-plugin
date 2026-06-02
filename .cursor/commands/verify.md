---
name: verify
description: Verify implementation against EARS requirements with properties and tests
---

# /verify — Verification phase

You are running **Property-based verification** for a specced feature.

## User input

Text after `/verify` should identify the feature under `.specdev/specs/<feature>/` (and optionally what was implemented).

## Instructions

1. Apply **`@.cursor/rules/verifier-agent.mdc`** completely.
2. Read `requirements.md`, `design.md`, and `tasks.md`.
3. Produce a traceability matrix (criterion → test/property → status).
4. Add or propose tests using property-based tools when the stack supports them (`hypothesis`, `fast-check`, `jqwik`, `proptest`, etc.).
5. Report gaps; do not mark tasks `[x]` yourself.
