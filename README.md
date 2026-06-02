# specdev-cursor-plugin

A Cursor plugin for **Spec-Driven Development (SDD)** inspired by Kiro.

Phased workflow: **Requirements (EARS)** → **Architecture & design** → **Task planning** → **Property-based verification**.

## Rules layout

| Path | Purpose |
| --- | --- |
| `rules/` | Plugin rules shipped with the package |
| `.cursor/rules/` | Same rules, used when developing this repo in Cursor |

Start with the bootstrap meta-rule: `rules/specdev-000-meta-rule-generator.mdc` (also in `.cursor/rules/`). Use it to create and maintain all other SpecDev rules.

## Install (local development)

1. Open this repository in Cursor.
2. Enable the plugin from **Settings → Rules** (or symlink into `~/.cursor/plugins/local/` per [Cursor plugins docs](https://cursor.com/docs/plugins)).
3. @-mention `specdev-000-meta-rule-generator` when authoring new rules.

## License

MIT — see [LICENSE](LICENSE).
