---
name: revit-skill-governance
description: Review and harden the Revit skill ecosystem against the latest dual-diagram architecture, single-source-of-truth rules, guardrails, and eval evidence. Use when auditing `revit-plugin-dev-workflow`, `revit-build-deploy`, `revit-coding-patterns`, related references, or when skill docs start drifting from the actual Revit development topology/SOP.
---

# Revit Skill Governance

## 路由声明

- 默认由根入口 `revit-root-router` 路由调用。
- 仅用于技能治理与漂移修复，不替代业务开发流程入口。

## 职责边界

本 skill 只管 Revit skill 体系治理：规则漂移、门禁、发布审计、eval 证据链。业务开发流程回到 `revit-plugin-dev-workflow`，编译部署回到 `revit-build-deploy`。

保护的单点真相：

- workflow routing / 红线 / phase gates → `revit-plugin-dev-workflow`
- build / deploy / sync / `.addin` / script behavior → `revit-build-deploy`
- API behavior / WPF / coding pitfalls → `revit-coding-patterns`
- environment facts / paths / credentials entry points → `revit-plugin-dev-workflow/references/environment.md`
- guard 规则细则 → `references/guard-policy.md`
- 发布审计 → `references/release-audit-checklist.md`
- Revit 实机冒烟 → `references/revit-smoke-checklist.md`
- FmRoky warning 基线 → `references/fmroky-warning-baseline.md`

## Review checklist

1. **先定 scope**：如果用户排除 reference/wiki mirror（例如 `revit-plugin-dev-workflow/references/`），不要把 excluded subtree 的问题提升为主 findings。
2. **架构一致性**：确认 topology/SOP 双图、workflow 主 skill、build/coding 子 skill 没有互相打架。
3. **路由一致性**：根 `SKILL.md` 是薄封装；每个子 skill 有 `## 路由声明`，且不越权。
4. **危险默认清理**：默认禁止 Windows 写代码/push、默认 scp 直传、Git 失败后绕过主线、跳过 spec。
5. **Phase 排序热点**：数字阶段名按数值；非数字阶段名按 Collector 顺序；禁止把 `Id.Value` 当业务排序。
6. **guard 真实可执行**：规则不能只写在文档里，必须被 `scripts/check-revit-skill-guard.sh` 或 fixture 测试覆盖。
7. **eval 证据链**：skill 改动后补 result，刷新 dashboard；dashboard freshness 必须来自 result 文件名，不用 wall-clock 日期伪造。

## 必跑命令

日常治理改动后：

```bash
bash scripts/check-revit-skill-guard.sh .
python3 scripts/refresh-eval-dashboard.py
```

改过 guard 逻辑后额外必跑：

```bash
bash -n scripts/check-revit-skill-guard.sh
bash -n scripts/test-revit-skill-guard.sh
bash scripts/test-revit-skill-guard.sh
bash scripts/check-revit-skill-guard.sh .
```

发布前完整审计按：

```bash
bash scripts/check-revit-skill-guard.sh .
bash scripts/test-revit-skill-guard.sh
python3 scripts/refresh-eval-dashboard.py
git status --short
git diff --stat
git ls-files --stage | awk '$1==160000{print $4}'
find . -mindepth 2 -name .git -type d
find . -path '*/tests/tests' -type d
```

详见 `references/release-audit-checklist.md`。

## Guard policy 快速口径

`check-revit-skill-guard.sh` 当前覆盖：

- legacy architecture / workflow drift
- Phase `OrderBy(p => p.Id.Value)` 主线回流
- scp 直传默认绕过文案
- RFC1918 私网 IP 字面量
- `sshpass` 明文密码
- OAuth token URL
- 个人绝对路径
- 嵌套 `.git`
- gitlink/submodule
- `tests/tests/` 重复目录 artifact

临时排除用户明确 out-of-scope 的 reference/wiki 子树：

```bash
GUARD_SKIP='revit-plugin-dev-workflow/references/**' bash scripts/check-revit-skill-guard.sh .
```

不要把临时排除写死成永久默认。详见 `references/guard-policy.md`。

## Claude Code CLI enforcement

当任务涉及审查或修改代码/脚本（包括 `*.sh`、`*.py`、自动化逻辑），先用 Claude Code CLI 做实际 review/edit pass，再由 Hermes 验证落地。

推荐：

```bash
claude -p "<review or edit prompt>" --allowedTools 'Read,Write,Edit,Bash' --max-turns 20
```

Hermes 负责最终验证：读 diff、跑 guard/test、确认文件确实写入。

## 输出格式

返回治理审查时使用：

### Executive summary
- overall state
- stable or drifting

### Findings
- P0 must-fix
- P1 should-fix
- P2 optional

### Changes applied
- exact files touched
- what was hardened

### Verification
- guard result
- fixture/eval/dashboard result

### Remaining follow-ups
- next best 1-3 actions only

## Notes from actual use

- 2026-04-30：guard 从文档扫描升级为真门禁，新增 fixture matrix：10 个 expected FAIL + 2 个 expected PASS。
- 2026-04-30：dashboard freshness 改为 `_Last evidence: <result-stem>_`，不再使用 `date.today()` 伪造新鲜度。
- Scope discipline matters：用户显式排除的 reference/wiki mirror 不进入主 findings。
