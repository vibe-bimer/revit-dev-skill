# Revit Dev Skill Pack

![Revit Workflow Architecture (EN)](./references/workflow-architecture-en.jpg)

A publish-safe skill pack for AI-assisted Revit secondary development.
It keeps workflow rules, code patterns, build/deploy runbooks, and governance separate from private runtime values.

Default routing entry skill: `SKILL.md` (`revit-root-router`).
Chinese version: [README.zh-CN.md](./README.zh-CN.md).

## What this repo contains

- `revit-plugin-dev-workflow/` — end-to-end workflow, phase gates, operating boundaries
- `revit-build-deploy/` — build/deploy procedures and environment-specific runbooks
- `revit-coding-patterns/` — API patterns and pitfall references
- `revit-tunit-testing/` — testing conventions
- `revit-skill-governance/` — governance rules, guard policy, audit checklists
- `scripts/` — guard, pre-commit, private-env, and eval refresh helpers
- `references/` — dashboards, checklists, and supporting docs

## Install on another Hermes host

```bash
mkdir -p ~/.hermes/skills

git clone <your-repo-url> ~/.hermes/skills/revit
cd ~/.hermes/skills/revit
cp .env.revit-skill.example ~/.config/revit-skill.env
chmod 600 ~/.config/revit-skill.env
scripts/install-precommit.sh .
```

Run commands through the private env wrapper:

```bash
scripts/use-private-env.sh <your-command>
```

## Safety model

Committed files stay public-safe.
Real hosts, tokens, and passwords stay in `~/.config/revit-skill.env`.

Use placeholders in tracked files:

- `${REVIT_WINDOWS_HOST}`
- `${GITLAB_HOST}`
- `${DEV_HOST}`
- `<WINDOWS_PASSWORD>`
- `<GITLAB_TOKEN>`
- `***`

Guard coverage and exact policy live in:

- `references/guard-policy.md`
- `revit-skill-governance/SKILL.md`

## How to work

1. Start from `revit-plugin-dev-workflow`.
2. Use `revit-coding-patterns` for API/WPF/fix-up details.
3. Use `revit-build-deploy` for build and deploy runs.
4. Run the guard before commit:

```bash
bash scripts/check-revit-skill-guard.sh .
```

5. Run the fixture matrix after guard changes:

```bash
bash scripts/test-revit-skill-guard.sh
```

6. Refresh eval evidence when workflow/governance changes:

```bash
python3 scripts/refresh-eval-dashboard.py
```

## Reference docs

- `references/guard-policy.md` — guard rules and allowed placeholders
- `references/revit-smoke-checklist.md` — Revit 2026 smoke checklist
- `references/fmroky-warning-baseline.md` — known FmRoky warning baseline
- `references/release-audit-checklist.md` — release audit checklist
- `references/eval-dashboard.md` — eval summary dashboard
- `revit-plugin-dev-workflow/references/environment.md` — environment facts and path map

## License

Apache License 2.0. See [LICENSE](./LICENSE) and [NOTICE](./NOTICE).
