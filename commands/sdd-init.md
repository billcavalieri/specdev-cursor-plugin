---
name: sdd-init
description: Scaffold .specdev/specs/ for Spec-Driven Development in this workspace
---

# /sdd-init — Initialize SpecDev layout

Create the SpecDev spec directory structure if it does not exist:

```text
.specdev/
  README.md
  specs/
```

## Steps

1. Create `.specdev/specs/` (and `.specdev/README.md` with a one-paragraph explanation of the three artifacts: `requirements.md`, `design.md`, `tasks.md`).
2. Tell the user they can start a feature with **`/spec <feature-idea>`** or **`/sdd-plan <feature-idea>`**.
3. Do **not** create a feature folder until the user describes a feature.

Follow `@.cursor/rules/core-sdd.mdc`.
