# Revit Skill Eval Dashboard

_Last evidence: 2026-04-30-run-007_

## 总览

| Skill | Evals | Latest Run | Mode | Verdict | Status |
|---|---:|---|---|---|---|
| `revit-plugin-dev-workflow` | 3 | `2026-04-30-run-005` | MANUAL_REVIEW | PASS | ✅ 稳定 |
| `revit-build-deploy` | 2 | `2026-04-30-run-007` | MANUAL_REVIEW | PASS | ✅ 稳定 |
| `revit-coding-patterns` | 2 | `2026-04-30-run-005` | MANUAL_REVIEW | PASS | ✅ 稳定 |

## 运行记录索引

### revit-plugin-dev-workflow
- eval 定义：`revit-plugin-dev-workflow/evals/evals.json`
- bootstrap：`revit-plugin-dev-workflow/evals/results/2026-04-21-run-001.md`
- runs：
  - `revit-plugin-dev-workflow/evals/results/2026-04-21-run-002.md` (LIVE_RUN)
  - `revit-plugin-dev-workflow/evals/results/2026-04-21-run-003.md` (LIVE_RUN)
  - `revit-plugin-dev-workflow/evals/results/2026-04-30-run-004.md` (MANUAL_REVIEW)
  - `revit-plugin-dev-workflow/evals/results/2026-04-30-run-005.md` (MANUAL_REVIEW)
- 核心验证点：
  - 双图门禁 → 选插件线 → Wiki → Spec → Claude Code → build 主线
  - 明确拒绝 Windows 端改代码 / push
### revit-build-deploy
- eval 定义：`revit-build-deploy/evals/evals.json`
- bootstrap：`revit-build-deploy/evals/results/2026-04-21-run-001.md`
- runs：
  - `revit-build-deploy/evals/results/2026-04-21-run-002.md` (LIVE_RUN)
  - `revit-build-deploy/evals/results/2026-04-21-run-003.md` (LIVE_RUN)
  - `revit-build-deploy/evals/results/2026-04-30-run-004.md` (MANUAL_REVIEW)
  - `revit-build-deploy/evals/results/2026-04-30-run-005.md` (MANUAL_REVIEW)
  - `revit-build-deploy/evals/results/2026-04-30-run-006.md` (MANUAL_REVIEW)
  - `revit-build-deploy/evals/results/2026-04-30-run-007.md` (MANUAL_REVIEW)
- 核心验证点：
  - Ubuntu → GitLab → Windows 的 build/deploy 主线
  - GitLab 故障时只允许 break-glass，不默认推荐 scp 野路子
### revit-coding-patterns
- eval 定义：`revit-coding-patterns/evals/evals.json`
- bootstrap：`revit-coding-patterns/evals/results/2026-04-21-run-001.md`
- runs：
  - `revit-coding-patterns/evals/results/2026-04-21-run-002.md` (LIVE_RUN)
  - `revit-coding-patterns/evals/results/2026-04-21-run-003.md` (LIVE_RUN)
  - `revit-coding-patterns/evals/results/2026-04-30-run-004.md` (MANUAL_REVIEW)
  - `revit-coding-patterns/evals/results/2026-04-30-run-005.md` (MANUAL_REVIEW)
- 核心验证点：
  - Phase 排序：数字按数值，非数字按 Collector 顺序，禁止 `Id.Value` 业务排序
  - WPF 后台线程 PropertyChanged 跨线程修复模式

## 未完成 Follow-ups

| Skill | Follow-up |
|---|---|
| `revit-plugin-dev-workflow` | 可补一条 LIVE_RUN：真实业务仓 `docs/plans/` spec 证据链检查。 |
| `revit-build-deploy` | 后续可把 `scripts/test-revit-skill-guard.sh` 接入 pre-commit 或 CI。 |
| `revit-coding-patterns` | 后续可加一个 negative eval，防止模型把 API 迁移示例误读成 Phase 排序建议。 |

## 使用方式

- 看最新状态：先读本页「总览」
- 看证据：跳到对应 skill 的最新 `run-00x.md`
- 看规则：读 `references/eval-runbook.md`
- skill 改动后：更新对应 `results/run-00x.md`，再运行 `python3 scripts/refresh-eval-dashboard.py`
