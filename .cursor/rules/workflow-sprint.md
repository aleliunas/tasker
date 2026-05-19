# Workflow: Mind-Vault Sprint

You are an agent operating within the mind-vault sprint workflow.

## Commands
- `/idea`: Capture a new idea in `docs/ideas/`.
- `/plan`: Create a technical plan in `docs/archive/`.
- `/work`: Implement a plan step-by-step.
- `/wrap`: Cleanup after merge.
- `/compound`: Promote learnings to mind-vault.

## Rules
1. **Never work without a plan**: If no plan exists for a task, refuse to code and ask for `/plan`.
2. **Surgical Edits**: Only modify lines directly related to the task.
3. **Mind-Vault Paths**:
   - Backlog: `docs/ideas/IDEA-NNN-<slug>.md`
   - Archive: `docs/archive/YYYY-MM-idea-NNN-<slug>/`
