# Revit Dev Skill Pack

![Revit Workflow Architecture (EN)](./references/workflow-architecture-en.jpg)

> Full workflow architecture diagram (English).

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
- `revit-tunit-testing/` — test conventions
- `revit-skill-governance/` — governance rules and drift checks

Support assets:

- `scripts/check-revit-skill-guard.sh` — sensitive-info guard
- `scripts/install-precommit.sh` — installs git pre-commit hook
- `scripts/use-private-env.sh` — loads local private env before running a command
- `scripts/refresh-eval-dashboard.py` — regenerates `references/eval-dashboard.md` from eval assets
- `.env.revit-skill.example` — template only (no real values)
- `references/` and module `references/` — diagrams, dashboards, and supporting docs

---

## 2) Install on another Hermes

You can install this skill pack on any Hermes host with plain git clone:

```bash
# option A: keep exact canonical path
mkdir -p ~/.hermes/skills
git clone <your-repo-url> ~/.hermes/skills/revit

# option B: clone elsewhere and set your own path references
# (supported, as long as you update local path mappings in your usage docs)
```

After clone:

```bash
cd ~/.hermes/skills/revit
cp .env.revit-skill.example ~/.config/revit-skill.env
chmod 600 ~/.config/revit-skill.env
scripts/install-precommit.sh .
```

Then run commands via:

```bash
scripts/use-private-env.sh <your-command>
```

---

## 3) Security model (how publishing stays safe)

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

### Guard script check scope

`check-revit-skill-guard.sh` intercepts by default:

- RFC1918 private IP literals
- Hardcoded `sshpass` passwords
- Hardcoded OAuth tokens in URLs
- Key anti-patterns for workflow drift

---

## 4) Required local configuration

Create a private local env file:

```bash
cp .env.revit-skill.example ~/.config/revit-skill.env
chmod 600 ~/.config/revit-skill.env
```

Fill real values in `~/.config/revit-skill.env`.

### Environment variables

| Variable | Purpose |
|----------|---------|
| `REVIT_WINDOWS_HOST` | Windows build host IP/hostname |
| `GITLAB_HOST` | GitLab server IP/hostname |
| `DEV_HOST` | Development network host |
| `UNRAID_BR1_SRC` | Unraid bridge source address |
| `WINDOWS_USER` | Windows SSH username |
| `WINDOWS_PASSWORD` | Windows SSH password |
| `GITLAB_TOKEN` | GitLab access token |
| `REVIT_SKILL_ROOT` | Skill repo root (default: `~/.hermes/skills/revit`) |
| `REVIT_API_WIKI_PATH` | Revit API wiki root (recommended: `${REVIT_SKILL_ROOT}/references/revit-api/entities`) |
| `REVIT_CORPUS_PATH` | Revit corpus root (recommended: `${REVIT_SKILL_ROOT}/references/revit-corpus`) |

### Path portability (important)

Some skill examples include canonical local paths (for example `/home/roky/...`).
Treat them as **reference layouts**, not hard requirements.

For other Hermes users, map those paths to your own environment:

- Skill root: `~/.hermes/skills/revit`
- Private env file: `~/.config/revit-skill.env`
- Project workspace: your own repo path (for example `~/revit-plugin-dev`)
- Wiki and corpus paths: your own local paths or mounted volumes

Rule: keep command structure, replace machine-specific prefixes.

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

## 5) Mechanism and execution flow

### 5.1 Development-side mechanism

1. Start from workflow module (`revit-plugin-dev-workflow`)
2. Use coding patterns and API references to constrain implementation
3. Use build/deploy module to execute platform-specific build path
4. Run validations and update references if needed

### 5.2 Publish-side mechanism

1. Guard scan (local): `bash scripts/check-revit-skill-guard.sh .`
2. Pre-commit hook gate (local): installed by `scripts/install-precommit.sh .`
3. Optional remote check: configure your own CI/runner to run the same guard script

This gives consistent checks and keeps publishing safe even without platform-specific CI templates.

---

## 6) Daily usage workflow

### 6.1 First-time setup

```bash
# from repo root
scripts/install-precommit.sh .
```

### 6.2 Before running any Revit workflow commands

```bash
source ~/.config/revit-skill.env
# or: scripts/use-private-env.sh <cmd>
```

### 6.3 Before commit / push

```bash
bash scripts/check-revit-skill-guard.sh .
```

If guard fails, fix placeholders/secrets first, then commit.

---

## 7) Required references by module

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

## 8) Remote CI (optional)

This repository does not require a fixed platform CI template.

If your platform has runners available, configure one remote job to run:

```bash
bash scripts/check-revit-skill-guard.sh .
```

If your platform has no runner, local pre-commit + manual guard is still a complete safe path.

---

## 9) Quick troubleshooting & FAQ

### Troubleshooting

- `guard FAIL: private IP literal`
  Replace private IP with placeholder variable in committed docs.

- `guard FAIL: hardcoded sshpass password`
  Replace plaintext password with approved placeholder.

- `guard FAIL: hardcoded oauth token in URL`
  Replace token with approved placeholder.

- Wrapper cannot find env file
  Create `~/.config/revit-skill.env` from `.env.revit-skill.example`.

### FAQ

**Q1: Do I need to `source` the env file every time?**
- Manual `source`: only effective in the current shell.
- Recommended: use `scripts/use-private-env.sh <cmd>` for per-command auto-loading.

**Q2: Why are example files devoid of real values?**
- The repo targets public publishing. Real values must stay in the local private env file.

**Q3: What if the guard blocks my commit?**
- Replace flagged items with approved placeholders, or move real values to `~/.config/revit-skill.env`.

---

## 10) Release checklist

1. `bash scripts/check-revit-skill-guard.sh .` passes
2. `git status` is clean and reviewed
3. README docs are up to date in both languages
4. No private values in committed files

For Chinese full documentation, see [README.zh-CN.md](./README.zh-CN.md).

---

## 11) Maintenance recommendations

- Update both English and Chinese READMEs together whenever the workflow changes
- When adding new sensitive-field rules, update the guard script first, then update doc examples
- Use `revit-skill-governance` as the final pre-release authority

---

## 12) Upstream foundation repositories

This skill pack references and builds on practices/components from the following upstream repositories:

- [scotec-Software-Solutions-AB/Bim.FamilyManager](https://github.com/scotec-Software-Solutions-AB/Bim.FamilyManager)
- [Nice3point/RevitExtensions](https://github.com/Nice3point/RevitExtensions)
