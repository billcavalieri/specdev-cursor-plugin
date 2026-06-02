# SpecDev Cursor Plugin — Agent Overview

This repository ships Cursor rules (`.mdc`) for **Spec-Driven Development (SDD)** inspired by Kiro.

## Phased workflow

```text
Requirements (EARS) → Architecture & design → Task planning → Property-based verification
```

Spec artifacts live under `.specdev/specs/<feature-name>/` as `requirements.md`, `design.md`, and `tasks.md`.

## Agents (rules)

| Rule file | Phase | Apply mode |
| --- | --- | --- |
| `rule-generator.mdc` | Bootstrap / meta | Intelligent + globs on `**/*.mdc` |
| `core-sdd.mdc` | Foundation | Always apply (BIL-59) |
| `requirements-agent.mdc` | Requirements | Intelligent + `.specdev` globs (planned) |
| `design-agent.mdc` | Design | Intelligent + `.specdev` globs (planned) |
| `task-planner.mdc` | Tasks | Intelligent + `.specdev` globs (planned) |
| `verifier-agent.mdc` | Verification | Intelligent + tests/spec globs (planned) |

## Bootstrap: rule generator

Start here when authoring or updating plugin rules:

- @-mention **`rule-generator`** or open `.cursor/rules/rule-generator.mdc`
- Use **`/create-rule [name]`** to scaffold a new rule (see `rule-generator.mdc` for workflows)

The rule generator maintains mirrored copies in:

- `.cursor/rules/` — active while developing this repo
- `rules/` — shipped via `.cursor-plugin/plugin.json`

## Orchestration (planned)

Slash commands and full orchestration (`/sdd-plan`, `/spec`, etc.) are tracked in **BIL-56**.

## License

MIT — see [LICENSE](LICENSE).
