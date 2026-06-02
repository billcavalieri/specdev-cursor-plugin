# SpecDev Cursor Plugin — Agent Overview

Cursor rules (`.mdc`) for **Spec-Driven Development (SDD)** inspired by Kiro.

## Phased workflow

```text
Requirements (EARS) → Architecture & design → Task planning → Property-based verification
```

Spec artifacts: `.specdev/specs/<feature-name>/` → `requirements.md`, `design.md`, `tasks.md`.

## Agents (rules)

| Rule file | Phase | Apply mode |
| --- | --- | --- |
| `core-sdd.mdc` | Foundation | **Always apply** |
| `rule-generator.mdc` | Bootstrap / meta | Intelligent + `**/*.mdc` globs |
| `requirements-agent.mdc` | Requirements | Intelligent + `.specdev` globs |
| `design-agent.mdc` | Design | Intelligent + `.specdev` globs |
| `task-planner.mdc` | Tasks | Intelligent + `.specdev` globs |
| `verifier-agent.mdc` | Verification | Intelligent + `.specdev` / test globs |

## Phase 1 — Foundation

- **`core-sdd.mdc`** — spec truth, EARS, phase gates, spec–code sync
- **`rule-generator.mdc`** — `/create-rule [name]` to author other rules

## Phase 2 — Feature specs

1. **`requirements-agent`** — draft `requirements.md` (EARS)
2. **`design-agent`** — `design.md` + Mermaid (after requirements approved)
3. **`task-planner`** — `tasks.md` checkboxes (after design approved)
4. **`verifier-agent`** — properties/tests traced to EARS criteria

## Paths in this repo

| Path | Purpose |
| --- | --- |
| `.cursor/rules/` | Active while developing this plugin |
| `rules/` | Shipped via `.cursor-plugin/plugin.json` |

Keep both directories identical when editing plugin rules.

## Orchestration (planned)

Slash commands (`/sdd-plan`, `/spec`, etc.) — future work.

## License

MIT — see [LICENSE](LICENSE).
