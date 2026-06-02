---
name: spec
description: Write or refine EARS requirements.md for a feature (Requirements phase)
---

# /spec — Requirements phase

You are running the **Requirements** phase of Spec-Driven Development.

## User input

The text after `/spec` is the feature idea and/or kebab-case feature name. Examples:

- `/spec team invites for projects`
- `/spec user-authentication`

If no feature name is given, derive a **kebab-case** name from the idea (e.g. `team-invites`).

## Instructions

1. Apply **`@.cursor/rules/requirements-agent.mdc`** completely.
2. Ensure output path: `.specdev/specs/<feature-name>/requirements.md`
3. Generate the first draft **without** a long questionnaire; then iterate until the user explicitly approves.
4. **Stop** after requirements approval — do not write `design.md` or `tasks.md` in this command unless the user explicitly asks to continue.

## Output

When done, report:

- Feature folder path
- Requirement count
- Whether the user approved (if not, what to review next)
