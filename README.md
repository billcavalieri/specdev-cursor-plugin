# specdev-cursor-plugin

A Cursor plugin for **Spec-Driven Development (SDD)** inspired by Kiro.

Phased workflow: **Requirements (EARS)** → **Architecture & design** → **Task planning** → **Property-based verification**.

## Rules layout

| Path | Purpose |
| --- | --- |
| `.cursor/rules/` | Active rules when developing this repo in Cursor |
| `rules/` | Same rules, shipped with the plugin via `.cursor-plugin/plugin.json` |

## Bootstrap

Start with **`rule-generator.mdc`** — use `/create-rule [name]` or @-mention `rule-generator` to create and maintain all SpecDev agents. See [AGENTS.md](AGENTS.md) for the full agent map and Linear-tracked roadmap.

## Install

1. Open this repository in Cursor (or install as a [Cursor plugin](https://cursor.com/docs/plugins)).
2. Confirm rules appear under **Settings → Rules**.
3. @-mention `rule-generator` when authoring new `.mdc` rules.

## License

MIT — see [LICENSE](LICENSE).
