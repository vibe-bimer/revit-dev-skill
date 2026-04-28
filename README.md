# Revit Dev Skill Pack

Default language: English. Chinese version: [README.zh-CN.md](./README.zh-CN.md).

This repository is a publish-safe skill pack for AI-assisted Revit secondary development.
It separates **public workflow assets** (safe to publish) from **private runtime values**
(local env file, not committed).

---

## 1) What is in this repo

Default routing entry skill: `SKILL.md` (`revit-root-router`).

Core modules:

- `revit-plugin-dev-workflow/` — end-to-end Revit workflow, phase gates, and operating boundaries
- `revit-build-deploy/` — build/deploy procedures and runbook-style commands
- `revit-coding-patterns/` — coding patterns and pitfall references
- `revit-duct-segmentation-workflow/` — focused workflow for duct segmentation tasks
- `revit-tunit-testing/` — test conventions
- `revit-skill-governance/` — governance rules and drift checks

Support assets:

- `scripts/check-revit-skill-guard.sh` — sensitive-info guard
- `scripts/install-precommit.sh` — installs git pre-commit hook
- `scripts/use-private-env.sh` — loads local private env before running a command
- `.env.revit-skill.example` — template only (no real values)
- `.gitlab-ci.yml` — CI job running the guard script
- `references/` and module `references/` — diagrams, dashboards, and supporting docs

---

## 2) Security model (how publishing stays safe)

This repo uses a two-layer model:

1. **Public layer (committed):** docs, skills, scripts, placeholders only
2. **Private layer (local only):** real hosts, user/password/token in local env file

### Placeholder policy

Use placeholders in committed files only, such as:

- `${REVIT_WINDOWS_HOST}`
- `${GITLAB_HOST}`
- `${DEV_HOST}`
- `${UNRAID_BR1_SRC}`
- `<WINDOWS_PASSWORD>`
- `<GITLAB_TOKEN>`
- `***`

Do not commit real private IPs, passwords, or tokens.

---

## 3) Required local configuration

Create a private local env file:

```bash
cp .env.revit-skill.example ~/.config/revit-skill.env
chmod 600 ~/.config/revit-skill.env
```

Fill real values in `~/.config/revit-skill.env`.

### Option A: load in current shell

```bash
source ~/.config/revit-skill.env
```

### Option B (recommended): one-shot execution wrapper

```bash
scripts/use-private-env.sh <your-command>
```

This wrapper loads `~/.config/revit-skill.env` and then runs your command.

---

## 4) Mechanism and execution flow

### 4.1 Development-side mechanism

1. Start from workflow module (`revit-plugin-dev-workflow`)
2. Use coding patterns and API references to constrain implementation
3. Use build/deploy module to execute platform-specific build path
4. Run validations and update references if needed

### 4.2 Publish-side mechanism

1. Guard scan (local): `bash scripts/check-revit-skill-guard.sh .`
2. Pre-commit hook gate (local): installed by `scripts/install-precommit.sh .`
3. CI gate (remote): `.gitlab-ci.yml` runs the same guard script on push/MR

This gives consistent checks on both local and remote sides.

---

## 5) Daily usage workflow

### 5.1 First-time setup

```bash
# from repo root
scripts/install-precommit.sh .
```

### 5.2 Before running any Revit workflow commands

```bash
source ~/.config/revit-skill.env
# or: scripts/use-private-env.sh <cmd>
```

### 5.3 Before commit / push

```bash
bash scripts/check-revit-skill-guard.sh .
```

If guard fails, fix placeholders/secrets first, then commit.

---

## 6) Required references by module

### `revit-plugin-dev-workflow`

Primary references (inside module):

- `references/environment.md`
- `references/features.md`
- `references/revit-workflow-topology-*.html|png|svg`
- `references/revit-workflow-sop.html|png`

### `revit-build-deploy`

- build/deploy commands and constraints in `SKILL.md`
- eval definitions in `evals/evals.json`
- sample eval outputs in `evals/results/`

### `revit-coding-patterns`

- `references/nice3point-patterns.md`
- `references/scotec-patterns.md`
- `references/duct-segmentation.md`

### Global references

- `references/eval-dashboard.md`
- `references/eval-runbook.md`

---

## 7) GitLab CI behavior

Current CI only runs the guard scan. It is intentionally minimal.

If pipeline remains `pending`, verify whether GitLab runner exists.
Without runner, CI config is valid but jobs cannot execute.

---

## 8) Quick troubleshooting

- `guard FAIL: private IP literal`  
  Replace private IP with placeholder variable in committed docs.

- `guard FAIL: hardcoded sshpass password`  
  Replace plaintext password with approved placeholder.

- `guard FAIL: hardcoded oauth token in URL`  
  Replace token with approved placeholder.

- Wrapper cannot find env file  
  Create `~/.config/revit-skill.env` from `.env.revit-skill.example`.

---

## 9) Release checklist

1. `bash scripts/check-revit-skill-guard.sh .` passes
2. `git status` is clean and reviewed
3. README docs are up to date in both languages
4. No private values in committed files

For Chinese full documentation, see [README.zh-CN.md](./README.zh-CN.md).
