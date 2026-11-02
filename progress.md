
# Universal Health Agent Skills

## Current Milestone

M0 - Platform-independent foundation

## Project Status

- [ ] Project harness
- [ ] Agent Skills package specification
- [ ] Health data schemas
- [ ] Health profile Skill
- [ ] Glucose analysis Skill
- [ ] Blood pressure analysis Skill
- [ ] Open-source Skill discovery
- [ ] Natural language Skill Creator
- [ ] Skill validation and evaluation
- [ ] Tool contracts
- [ ] Platform adapter interface
- [ ] Cross-platform execution
- [ ] Execution traces
- [ ] Health data safety

## Current Task

F001 - Platform-independent project harness

## Architecture Decisions

1. Adopt the open Agent Skills format.
2. Keep Skill packages vendor-independent.
3. Use skills/ as the canonical Skill source directory.
4. Use JSON Schema for data and tool contracts.
5. Keep platform-specific logic inside adapters/.
6. Use MCP as an optional standardized tool transport.
7. Support native tools and REST through adapters.
8. Keep deterministic health calculations in reusable code.
9. Validate Skill compatibility through actual execution.
10. Use synthetic health data for demonstrations.

## Compatibility Levels

- Format compatibility
- Resource compatibility
- Script execution compatibility
- Tool integration compatibility
- Dynamic installation compatibility

## Verification

| Verification | Status |
|---|---|
| Harness validation | Pending |
| Skill validation | Pending |
| Unit tests | Pending |
| Integration tests | Pending |
| Compatibility tests | Pending |
| Safety tests | Pending |

## Known Issues

None.

## Next Steps

1. Initialize the project.
2. Implement the canonical Skill package validator.
3. Define health data schemas.
4. Implement the Skill Registry.
5. Create the first reusable health analysis Skill.

## Update Rules

- Record verified results only.
- Update feature_list.json after feature completion.
- Record compatibility limitations.
- Keep architectural decisions traceable.
