---
name: revit-skill-governance
description: Review and harden the Revit skill ecosystem against the latest dual-diagram architecture, single-source-of-truth rules, guardrails, and eval evidence. Use when auditing `revit-plugin-dev-workflow`, `revit-build-deploy`, `revit-coding-patterns`, related references, or when skill docs start drifting from the actual Revit development topology/SOP.
---

# Revit Skill Governance

## 路由声明

- 默认由根入口 `revit-root-router` 路由调用。
- 仅用于技能治理与漂移修复，不替代业务开发流程入口。


Use this skill when the task is not "build the plugin", but **audit and maintain the skills that define how Revit work should be done**.

## What this skill protects

- Dual-diagram truth stays aligned:
  - topology = roles / infra / push-pull boundaries
  - SOP = execution order / gates / rollback
- 根入口 `revit-root-router` 保持薄封装（只分流 + 环境规则，不承载实现细节）
- `revit-plugin-dev-workflow` 作为主流程入口保持精简，不变成信息堆场
- `revit-build-deploy` does not reintroduce dangerous default bypasses
- `revit-coding-patterns` keeps API rules correct and does not regress to stale folklore
- evals are not just skeletons; they leave evidence

## Review checklist

### 1. Check architecture alignment first
Open and compare:
- `revit-plugin-dev-workflow/references/revit-workflow-topology.html`
- `revit-plugin-dev-workflow/references/revit-workflow-sop.html`
- `revit-plugin-dev-workflow/SKILL.md`
- `revit-build-deploy/SKILL.md`
- `revit-coding-patterns/SKILL.md`

Look for drift in these areas:
- Windows must remain **pull/build/deploy only**
- Ubuntu remains the main control plane
- GitLab remains the sync hub
- Hermes must not directly edit Revit source
- dual-diagram gate must stay visible near the top of workflow entrypoints

### 2. Enforce single-source-of-truth
When the same rule appears in multiple skills, decide which file owns it.

Additionally verify routing contract consistency:
- root `SKILL.md` (`revit-root-router`) exists and is the default dispatcher
- each child skill contains a `## 路由声明` section
- child declarations do not contradict root routing and boundary rules

Preferred ownership:
- workflow routing / red lines / phase gates → `revit-plugin-dev-workflow`
- build / deploy / sync / `.addin` / script behavior → `revit-build-deploy`
- API behavior / WPF / coding pitfalls → `revit-coding-patterns`
- environment facts / paths / credentials entry points → `revit-plugin-dev-workflow/references/environment.md`

Do not let one skill silently become a second truth source.

### 3. Kill dangerous defaults
Watch especially for:
- `scp` or direct-copy bypasses presented like normal workflow
- Windows-side source edits or push paths
- stale architecture file references (`architecture.md`, old workflow asset names)
- wording that weakens hard rules into suggestions

If a bypass must exist, downgrade it to **break-glass** with:
- default forbidden
- explicit approval requirement
- audit log requirement
- return-to-mainline cleanup requirement

### 4. Check known regression hotspot: Phase ordering
The correct rule is:
- numeric phase names → sort numerically
- non-numeric phase names → keep `FilteredElementCollector` returned order
- do **not** use `Id.Value` as business ordering

If any skill reintroduces `OrderBy(p => p.Id.Value)` as the recommended business sort, patch it immediately.

### 5. Keep workflow skill lean
`revit-plugin-dev-workflow` should hold:
- quick card
- dual-diagram gate
- routing logic
- red lines
- spec pattern
- phase gates / break-glass governance

Push environment matrices and static lookup material into `references/` files.
If the workflow skill starts carrying large environment tables again, split them out.

Also remove stale low-value ballast when it accumulates:
- historical maintenance logs that have already been absorbed into current rules
- text-mode topology/ASCII architecture duplicates once the dual diagrams are authoritative
- viewer command blocks (`xdg-open ...`) when a short reference note is enough
- old references to workflow chapter names after content has moved into `references/environment.md`

### 6. Maintain eval evidence, not just eval definitions
Minimum eval stack for core Revit skills:
- `evals/evals.json`
- `evals/results/<date>-run-xxx.md`
- shared guidance in `revit/references/eval-runbook.md`
- portfolio view in `revit/references/eval-dashboard.md`
- auto-refresh script: `revit/scripts/refresh-eval-dashboard.py`

When updating the skills:
1. update the relevant eval definition if coverage changed
2. add a new results file for the review/run
3. regenerate the dashboard with `python3 scripts/refresh-eval-dashboard.py`
4. verify the dashboard points at the latest run instead of hand-editing stale status

## Recommended workflow

1. Read the dual diagrams and core skills
2. Search for drift patterns across `~/.hermes/skills/revit/`
3. Classify findings into P0 / P1 / P2
4. Patch the highest-risk drift first
5. Run the guard script:
   - `bash scripts/check-revit-skill-guard.sh .`
6. Validate eval assets still exist and latest runs are referenced by the dashboard
7. Summarize what was changed and what follow-ups remain

### Claude Code CLI enforcement for review/edit tasks

When the task is **reviewing or editing code/scripts** in this repo (including `*.sh`, `*.py`, and automation logic), run the actual review/edit pass through Claude Code CLI first, then apply vetted changes.

- Preferred review invocation:
  - `claude -p "<review prompt>"`
- If review is long-running, run Claude in background and poll process output instead of skipping review.
- Keep Hermes as orchestrator: gather context, call Claude CLI, then execute concrete file patches and verification.
- For pure markdown/doc updates, direct patching is fine; for code/script changes, Claude CLI review is the default gate.

## GitHub 发布前脱敏基线（新增）

当 Revit skills 准备发布到公开仓库时，除常规治理外，必须额外完成：

1. **环境变量占位符化**
   - 主机/IP/凭据示例改为 `${REVIT_WINDOWS_HOST}`、`${GITLAB_HOST}`、`${GITLAB_TOKEN}`、`${WINDOWS_PASSWORD}` 等。
2. **私有配置外置**
   - 提供 `.env.*.example` 模板；真实值只放本地私有 env，不入库。
3. **仓库忽略规则**
   - `.gitignore` 显式忽略本地密钥文件（如 `*.local.env`, `*.secret`）。
4. **守卫脚本门禁**
   - 在 `scripts/check-revit-skill-guard.sh` 增加并验证：
     - RFC1918 私网 IP 字面量拦截
     - `sshpass -p '<WINDOWS_PASSWORD>'` 明文口令拦截（仅允许 `***` / `<WINDOWS_PASSWORD>` / `${WINDOWS_PASSWORD}`）
     - `oauth2:${GITLAB_TOKEN}@` URL 凭据拦截（仅允许占位符）
   - 扫描范围覆盖 `*.md/*.html/*.yml/*.yaml/*.sh/*.py`，避免“文档层安全、脚本层漏检”。
   - 必须显式排除 guard 自身文件（如 `scripts/check-revit-skill-guard.sh`），避免正则样例触发 self-trigger。
5. **本地提交门禁（强制）**
   - 安装 pre-commit：`bash scripts/install-precommit.sh <skills-root>`
   - 验证：`<skills-root>/.git/hooks/pre-commit` 存在且可执行。
   - 实现细节：安装脚本里先 `cd <skills-root>` 再 `git rev-parse --git-path hooks/pre-commit`，避免 `git -C` + 相对 hook 路径导致 hook 写到错误目录。
6. **发布前必跑**
   - `bash scripts/check-revit-skill-guard.sh <skills-root>` 通过后再发布。
7. **本地私有环境加载（不入库）**
   - 维护 `.env.revit-skill.example`（仅模板）+ 私有 `~/.config/revit-skill.env`（真实值）。
   - 使用 `bash scripts/use-private-env.sh <command...>` 执行命令，避免把真实值写回文档。
8. **双远端发布一致性（GitLab + GitHub）**
   - 发布后同时执行 `git push origin main` 与 `git push github main`，避免只在单端更新。
   - 若 GitHub 用户名或组织名变更，先 `git remote -v` 检查是否出现 `has moved` 提示，再 `git remote set-url github <new-url>`。
   - 推送后用 `git ls-remote --heads origin` 与 `git ls-remote --heads github` 双端核对 `main` 指向一致。
9. **大体量引用资料入库门禁（新增）**
   - 在把 `references/revit-api`、`references/revit-corpus` 这类资料整体复制进 skill 仓库前，先检查是否包含嵌套 git 仓库（如 `chm-converter/.git`）与超大文件（尤其 `*.db`、索引文件）。
   - 命中嵌套仓库时，默认禁止直接提交 `160000` gitlink；要么移除 `.git` 后当普通目录入库，要么明确改成正式 submodule 并在 README 说明拉取方式。
   - 命中大文件时（接近或超过 GitHub 50MB 建议阈值），默认优先三选一：`git lfs`、发布工件外链、或在仓库中仅保留最小索引并给下载脚本。
   - 任何一次“大规模拷贝入库”都要在提交说明里写清：数据来源、体积、是否可复现、后续更新策略。

## High-value drift patterns to search for

### Code / text drift
- `OrderBy(p => p.Id.Value)`
- stale architecture file references (`architecture.md`, old workflow asset names)
- plain-text dangerous bypass instructions in正文
- Windows push/edit language
- wiki path drift between diagrams and skills
- plaintext secrets or passwords in build/deploy scripts (`REMOTE_PASS=...`, SSH passwords, tokens)
- private network literals in docs/examples (e.g. `172.16-31.x.x`, `192.168.x.x`, `10.x.x.x`) that should be replaced with env placeholders before public release
- credentials embedded in URL examples (`oauth2:${GITLAB_TOKEN}@${GITLAB_HOST}`) instead of placeholders (`<GITLAB_TOKEN>` / `${GITLAB_TOKEN}`)
- **guard self-trigger risk**：文档示例若写成 `sshpass -p '<WINDOWS_PASSWORD>'`、`oauth2:${GITLAB_TOKEN}@` 也会被门禁命中；示例请统一写成可豁免占位符（`***`、`<GITLAB_TOKEN>` 或 `${...}`）
- duplicate test tree leftovers (for example `tests/tests/`) and other sync artifacts that should be deleted

### Enforcement drift (rules that exist on paper but not in practice)
- **SOP redline mismatch**：SOP 图（`sop.html`）列的红线数量与 `revit-plugin-dev-workflow` SKILL.md 的 10 条红线是否一致
- **Commit quality collapse**：`git log --oneline -20` 检查 auto-commit 占比。如果连续 10+ 条全为 `auto: build.sh 同步`，红线 #3（语义化 commit）已破窗
- **Spec template usage**：检查 `docs/plans/` 目录是否存在、是否包含 spec 文件。如果目录为空或不存在，spec 门禁未落地
- **Guard script presence**：`revit/scripts/check-revit-skill-guard.sh` 是否存在且可执行
- **CI/CD gap**：是否存在 `.gitlab-ci.yml`、GitLab Runner 是否注册。注意：Revit WPF 项目 Ubuntu 无法编译，Runner 必须在 Windows 上
- **Agent delegation health**：`delegate_task` 是否可正常调用（简单 E2E 测试：读/写 `/tmp/test.txt`）

## Output format

Return the review as:

### Executive summary
- overall state
- whether the skill stack is stable or drifting

### Findings
- P0 must-fix
- P1 should-fix
- P2 optional

### Changes applied
- exact files touched
- what was hardened

### Verification
- guard result
- eval/dashboard integrity result

### Remaining follow-ups
- next best 1-3 actions only

## Notes from actual use

This skill was created after a real hardening pass on the Revit skill stack where the agent had to:
- demote an `scp` bypass from default workflow to break-glass only
- unify wiki paths between topology and workflow docs
- remove stale Phase-ordering guidance
- move environment facts out of the main workflow skill into `references/environment.md`
- create `eval-runbook.md`, bootstrap/live-run records, and `eval-dashboard.md`
- add `scripts/refresh-eval-dashboard.py` so the dashboard is regenerated from eval assets instead of hand-maintained
- clean stale ballast from the main workflow skill

**2026-04-26 Review session additions:**
- Added enforcement drift patterns (commit quality collapse, spec template usage, SOP redline mismatch, CI/CD gap, agent delegation health)
- Discovered that SuperRoky had 20 consecutive auto-commits — redline #3 was completely broken in practice
- Confirmed that `docs/plans/` directory never existed — spec template was pure paper
- Verified `delegate_task` E2E health via simple `/tmp/test.txt` read/write test (23s, 4 tool calls)
- Validated that `.gitlab-ci.yml` for Revit WPF projects MUST target a Windows GitLab Runner (Ubuntu can't compile WPF)

These are not hypothetical nice-to-haves. They are the first places this skill should check next time.