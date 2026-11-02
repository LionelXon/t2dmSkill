# AGENTS.md

# Health Skill Workbench

## 1. Project Mission

Build an Agent Skill Workbench using Codex.

The project demonstrates how an AI agent can:

1. Discover and reuse mature open-source Agent Skills.
2. Process structured and unstructured health records.
3. Generate health profile summaries and metric trend assessments.
4. Create new Skills from natural-language requirements.
5. Validate, register, configure and execute generated Skills.
6. Display actual Skill invocations and execution traces.

The primary objective is to demonstrate a working Skill lifecycle,
not merely build a chatbot or a collection of static prompts.

## 2. Scope and Source of Truth

- feature_list.json is the authoritative feature scope.
- progress.md records implementation progress and decisions.
- init.sh initializes the development environment.
- Do not silently expand project scope.
- Do not mark a feature completed without verification evidence.
- Ask before introducing major architectural changes.

## 3. Development Workflow

Before starting any task:

1. Read AGENTS.md.
2. Read feature_list.json.
3. Read progress.md.
4. Inspect existing source code and Skills.
5. Identify the smallest unfinished feature.
6. Implement and test that feature.
7. Update progress.md and feature_list.json.

Work incrementally. Avoid implementing multiple unrelated features
in one iteration.

## 4. Skill Reuse Principles

Reuse existing Skills before creating new ones.

Preferred references:

- anthropics/skills
- openai/skills
- Codex skill-creator
- Agent Skills open standard

For every imported Skill:

- Inspect its SKILL.md.
- Inspect its scripts and dependencies.
- Check its license.
- Record its original repository and version.
- Check compatibility with Codex.
- Preserve upstream attribution.

Do not blindly execute third-party scripts.

Prefer adapting an existing Skill over rewriting it.

Project Skills must be stored in:

.agents/skills/<skill-name>/

Every Skill must have:

- SKILL.md
- Valid YAML frontmatter
- A unique name
- A clear description and triggering conditions

Add scripts, references and assets only when needed.

## 5. Skill Creation Workflow

When the user requests a new Skill:

1. Understand the intended capability.
2. Identify its inputs and outputs.
3. Search the existing Skill Registry.
4. Reuse an existing Skill if suitable.
5. Otherwise generate a Skill specification.
6. Create the Skill directory and SKILL.md.
7. Generate supporting scripts and references if necessary.
8. Run static validation.
9. Generate realistic evaluation cases.
10. Execute tests in an isolated workspace.
11. Register the Skill only after successful validation.
12. Start a fresh Codex invocation when needed to discover it.
13. Demonstrate its actual execution.

Never register an unvalidated Skill as production-ready.

## 6. Health Data Rules

All health data must preserve:

- Original value
- Normalized value
- Unit
- Measurement timestamp
- Measurement context
- Data source
- Original record identifier

Support at least:

- Health profile
- Blood glucose
- Blood pressure
- Heart rate
- Weight
- Laboratory reports

Use a consistent canonical data schema.

Use deterministic code for unit conversion, aggregation,
statistical calculations and data validation.

Do not fabricate missing measurements or infer missing units.

Keep raw records and normalized records separately.

## 7. Medical Safety and Privacy

This project is for health information organization,
trend analysis and educational support.

It must not:

- Claim to diagnose a disease.
- Prescribe or change medication.
- Invent clinical thresholds.
- Replace professional medical advice.
- Treat incomplete data as confirmed medical facts.

Assessment rules must be versioned and traceable to their sources.

Use synthetic health records for development and demonstrations.

Never expose sensitive health information in application logs,
test reports or Skill execution traces.

Do not send real health data to untrusted third-party Skills.

Require appropriate authorization before accessing real
health records or performing external mutations.

## 8. Engineering Rules

- Keep business logic separate from agent orchestration.
- Use typed schemas for health records and tool inputs.
- Prefer deterministic scripts for numerical calculations.
- Handle missing data and invalid units explicitly.
- Add unit tests for new data processing logic.
- Add integration tests for Skill execution.
- Add evaluation cases for agent behavior.
- Avoid unnecessary dependencies.
- Never hardcode API keys or credentials.

## 9. Definition of Done

A feature is complete only when:

1. Its acceptance criteria in feature_list.json are satisfied.
2. Relevant automated tests pass.
3. Skill validation passes if a Skill is involved.
4. Actual execution has been verified when applicable.
5. No critical safety or data integrity issue remains.
6. Verification evidence is recorded.
7. progress.md and feature_list.json are updated.

A generated file alone is not proof of a working feature.
A successful API response alone is not proof of a successful workflow.
