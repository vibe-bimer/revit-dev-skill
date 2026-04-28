---
title: Lint Remediation 2026-04-26
created: 2026-04-26
updated: 2026-04-26
type: query
tags: [comparison, 实践案例, revit-api]
sources: [SCHEMA.md, revit-api-reference.md, revit-toolkit-guide.md]
confidence: high
---

# Lint Remediation 2026-04-26

## Fixed (P1)
1. `invalid_types` 2 → 0
- `revit-api-reference.md`: `type: guide` → `type: summary`
- `revit-toolkit-guide.md`: `type: guide` → `type: summary`

2. `invalid_tags` 42 → 0
- 在 `SCHEMA.md` 的 Revit 版本 taxonomy 中补齐：
  `revit-2019, revit-2020, revit-2021, revit-2022, revit-2023, revit-2024, revit-2025, revit-2026`

## Remaining (P2)
- oversized pages: 19（见 [[queries/oversized-split-plan-2026-04-26|Oversized Split Plan 2026-04-26]]）

## Context
- 修复前快照：[[queries/lint-health-2026-04-26|Lint Health 2026-04-26]]
