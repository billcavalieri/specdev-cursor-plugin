---
name: design
description: Create or update design.md from approved requirements (Design phase)
---

# /design — Design phase

You are running the **Architecture & design** phase.

## User input

Text after `/design` should include the **feature name** (kebab-case) or enough context to identify `.specdev/specs/<feature>/`.

## Instructions

1. Apply **`@.cursor/rules/design-agent.mdc`** completely.
2. **MUST** read `.specdev/specs/<feature>/requirements.md` first.
3. If requirements are missing or not approved, stop and tell the user to run **`/spec`** first.
4. Write or update `.specdev/specs/<feature>/design.md` with architecture, decisions, traceability, and at least one **Mermaid** diagram when non-trivial.
5. Ask for explicit approval before suggesting **`/tasks`**.
