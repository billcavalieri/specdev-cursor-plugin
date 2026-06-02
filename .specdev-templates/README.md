# SpecDev specifications

This folder holds **feature specs** for Spec-Driven Development (SDD).

## Layout

```text
specs/<feature-name>/
  requirements.md   # User stories + EARS acceptance criteria
  design.md         # Architecture, diagrams, technical decisions
  tasks.md          # Ordered implementation checklist
```

- `<feature-name>` uses **kebab-case** (e.g. `payment-checkout`).
- Complete phases in order: **requirements → design → tasks → implementation → verification**.

## Cursor commands

| Command | Purpose |
| --- | --- |
| `/sdd-init` | Create this layout in your workspace |
| `/sdd-plan` | Full guided workflow |
| `/spec` | Requirements only |
| `/design` | Design only |
| `/tasks` | Task breakdown only |
| `/verify` | Test against EARS criteria |

Install the **SpecDev Cursor Plugin** rules so `core-sdd` and phase agents apply automatically.
