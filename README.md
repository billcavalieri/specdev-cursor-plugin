# specdev-cursor-plugin

A Cursor plugin for **Spec-Driven Development (SDD)** inspired by Kiro.

Phased workflow: **Requirements (EARS)** → **Architecture & design** → **Task planning** → **Property-based verification**.

## Slash commands

| Command | Purpose |
| --- | --- |
| `/sdd-init` | Scaffold `.specdev/specs/` in your project |
| `/sdd-plan` | Full SDD workflow (requirements → design → tasks) |
| `/spec` | Requirements (`requirements.md`, EARS) |
| `/design` | Design (`design.md`, Mermaid) |
| `/tasks` | Task plan (`tasks.md`) |
| `/verify` | Verify code against EARS criteria |

See [AGENTS.md](AGENTS.md) for orchestration and agent rules.

## Rules layout

| Path | Purpose |
| --- | --- |
| `.cursor/rules/` | Active rules when developing this repo |
| `rules/` | Shipped rules (`.cursor-plugin/plugin.json`) |
| `commands/` | Shipped slash commands |
| `.cursor/commands/` | Dogfood commands (mirror of `commands/`) |

## Core rules

- **`core-sdd.mdc`** — always on: spec truth, EARS, phase gates
- **`rule-generator.mdc`** — `/create-rule [name]` for authoring rules

## Install

1. Install as a [Cursor plugin](https://cursor.com/docs/plugins) or open this repo in Cursor.
2. Confirm **Rules** and **Commands** in **Settings → Rules, Commands**.
3. In your project: `/sdd-init`, then `/sdd-plan <feature idea>`.

## License

MIT — see [LICENSE](LICENSE).
