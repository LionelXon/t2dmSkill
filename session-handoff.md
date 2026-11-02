
# Session Handoff

> Purpose: Preserve actionable development context between
> independent Agent sessions.
>
> This file is the primary handoff document for the next
> development session. It does not replace AGENTS.md,
> feature_list.json or progress.md.

## 1. Handoff Metadata

- Project: Universal Health Agent Skills Platform
- Last Updated: YYYY-MM-DD HH:mm
- Session ID: SESSION-XXX
- Current Milestone: M0
- Current Feature: F001
- Session Status: completed / interrupted / blocked

## 2. Current Objective

Describe the specific objective of the current session.

What was the Agent expected to accomplish?

## 3. Work Completed

List concrete changes made during this session.

| Item | Description | Status |
|---|---|---|
| | | |
| | | |

Include:
- Files created
- Files modified
- Functions implemented
- Skills created or updated
- Architecture decisions

## 4. Current Implementation State

Describe the actual implementation state.

### Completed

- Verified implementations.
- Passing tests.
- Available functionality.

### In Progress

- Partially implemented functionality.
- Incomplete files.
- Remaining work.

### Not Started

- Planned but untouched functionality.

## 5. Important Decisions

Record decisions that the next session must preserve.

Examples:

- Core Skill packages must remain platform-independent.
- Follow the open Agent Skills specification.
- Use JSON Schema for tool contracts.
- Keep platform-specific logic inside adapters/.
- Use synthetic health data by default.
- Reuse existing Skills before creating new ones.

Include the rationale when necessary.

## 6. Verification Results

Record actual commands and their results.

| Command | Result | Details |
|---|---|---|
| bash init.sh | PASS / FAIL / NOT RUN | |
| pytest | PASS / FAIL / NOT RUN | |
| Skill validation | PASS / FAIL / NOT RUN | |
| Compatibility tests | PASS / FAIL / NOT RUN | |

Do not report unexecuted tests as passed.

## 7. Known Issues and Blockers

List unresolved problems.

For each issue, describe:

- Problem
- Affected files or components
- Reproduction steps
- Expected behavior
- Actual behavior
- Suggested investigation

## 8. Uncommitted Changes

Record:

- Modified files
- New files
- Deleted files
- Pending Git changes
- Changes that must not be overwritten

Do not assume all changes have been committed.

## 9. Next Session Instructions

Provide an actionable continuation plan.

### First Action

The exact first task the next Agent should perform.

### Remaining Tasks

1.
2.
3.

### Expected Deliverables

List the files or functionality expected to be completed.

### Acceptance Criteria

Describe how the next session can verify completion.

## 10. Important References

List relevant files that the next Agent should inspect.

- AGENTS.md
- feature_list.json
- progress.md
- docs/architecture.md
- Relevant source files
- Relevant Skill packages
- Relevant test cases

## 11. Handoff Notes

Additional context that would otherwise be lost.

Examples:

- Important implementation details.
- Failed approaches and why they failed.
- Temporary workarounds.
- Pending architectural questions.

---

## Handoff Rules

1. Update this file before ending a development session.
2. Record actual implementation state, not assumptions.
3. Include exact file paths and relevant commands.
4. Record failed experiments when they affect future decisions.
5. Clearly distinguish completed and incomplete work.
6. Never overwrite unresolved work without inspection.
7. Do not duplicate the entire progress.md.
8. Do not include credentials or sensitive health records.
9. Keep the next action specific and executable.
10. Preserve context needed for independent continuation.
