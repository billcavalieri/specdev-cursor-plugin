# specdev-cursor-plugin

A Cursor plugin for **Spec-Driven Development (SDD)** inspired by Kiro.

Phased workflow: **Requirements (EARS)** → **Architecture & design** → **Task planning** → **Property-based verification**.

## Rules layout

| Path | Purpose |
| --- | --- |
| `.cursor/rules/` | Active rules when developing this repo in Cursor |
| `rules/` | Same rules, shipped with the plugin via `.cursor-plugin/plugin.json` |

## Core rules

- **`core-sdd.mdc`** — always on: spec truth, EARS, phase gates, spec–code sync
- **`rule-generator.mdc`** — bootstrap meta-agent for authoring other rules (`/create-rule [name]`)

See [AGENTS.md](AGENTS.md) for the full agent map.

## Install

1. Open this repository in Cursor (or install as a [Cursor plugin](https://cursor.com/docs/plugins)).
2. Confirm rules appear under **Settings → Rules** (`core-sdd` should always apply).
3. @-mention `rule-generator` when authoring new `.mdc` rules.

## License

MIT — see [LICENSE](LICENSE).
