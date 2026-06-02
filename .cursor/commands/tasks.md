---
name: tasks
description: Create or update tasks.md from approved requirements and design (Task planning phase)
---

# /tasks — Task planning phase

You are running the **Task planning** phase.

## User input

Text after `/tasks` should identify the feature under `.specdev/specs/<feature>/`.

## Instructions

1. Apply **`@.cursor/rules/task-planner.mdc`** completely.
2. **MUST** read `requirements.md` and `design.md` for that feature.
3. If design is missing or not approved, stop and tell the user to run **`/design`** first.
4. Write or update `.specdev/specs/<feature>/tasks.md` as a numbered checkbox list with traceability to requirements.
5. Append a **`## Task Dependency Graph`** section at the **end** of `tasks.md` with a fenced `json` block (`waves` of parallel task IDs by dependency depth; optional `note` for omitted tasks) per `@.cursor/rules/task-planner.mdc`.
6. Suggest the **first task** (typically wave `0`); summarize which later tasks can run in parallel per the graph.
7. Remind the user implementation is **one task at a time** unless they explicitly approve a batch from the same wave (`@.cursor/rules/core-sdd.mdc`).
