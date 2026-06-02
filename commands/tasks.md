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
5. Suggest the **first task** to implement; remind the user implementation is **one task at a time** per `@.cursor/rules/core-sdd.mdc`.
