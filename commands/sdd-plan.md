---
name: sdd-plan
description: End-to-end SpecDev workflow — requirements, design, tasks, then hand off to implementation
---

# /sdd-plan — Full SDD orchestration

Guide the user through Spec-Driven Development from idea to an approved **implementation plan** (not full coding unless they ask).

## User input

Text after `/sdd-plan` is the feature idea. Derive **kebab-case** `<feature-name>` for `.specdev/specs/<feature-name>/`.

## Rules

- Follow **`@.cursor/rules/core-sdd.mdc`** for phase gates and approvals.
- Do **not** narrate “step 1, step 2” — work naturally and state what artifact you produced.
- Do **not** implement production code in this command unless the user explicitly switches to implementation.

## Detect current state

Check which files exist under `.specdev/specs/<feature-name>/`:

| Files present | Next action |
| --- | --- |
| None | Run **Requirements** (`@.cursor/rules/requirements-agent.mdc`), create `requirements.md` |
| `requirements.md` only | If user previously approved requirements → **Design**; else finish requirements approval |
| + `design.md` | If design approved → **Tasks**; else finish design approval |
| + `tasks.md` | If tasks approved → summarize plan; offer **`/verify`** after implementation |
| All three approved | Offer to execute **first unchecked task** (one at a time) |

## Phase execution

### Requirements

- Apply `@.cursor/rules/requirements-agent.mdc`
- Get explicit approval before leaving this phase

### Design

- Apply `@.cursor/rules/design-agent.mdc`
- Get explicit approval before leaving this phase

### Tasks

- Apply `@.cursor/rules/task-planner.mdc`
- Get explicit approval; then tell the user planning is complete

## Completion message

When `tasks.md` is approved, say clearly:

- Spec planning is **complete**
- Implementation should proceed **task-by-task** (open `tasks.md` or ask to run the next task)
- Use **`/verify <feature>`** when code is ready to validate against EARS criteria

## Quick commands

| Command | Phase |
| --- | --- |
| `/sdd-init` | Scaffold `.specdev/` |
| `/spec` | Requirements only |
| `/design` | Design only |
| `/tasks` | Tasks only |
| `/verify` | Verification |
