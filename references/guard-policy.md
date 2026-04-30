# Guard Policy Reference

本文件是 `scripts/check-revit-skill-guard.sh` 的策略细则。
脚本本身是唯一的可执行真相源；此文档仅解释各规则的意图、允许模式和排除机制。

## 扫描范围

文件类型：`*.md` `*.html` `*.yml` `*.yaml` `*.sh` `*.py` `*.jsonl`

默认排除：
- `scripts/check-revit-skill-guard.sh`、`scripts/test-revit-skill-guard.sh`、`references/guard-policy.md`（这些文件含规则样例，避免 self-trigger）
- `references/revit-corpus/**`（外部语料镜像，不做 literal 扫描）
- `.venv/**` `node_modules/**`

## 规则清单

### R1 — 遗留架构引用 / 工作流漂移

禁止出现的字面量：
- `references/architecture.md`
- `references/revit-workflow-architecture`
- `token: .*revit-build-server`（旧 token 模式）

**Why**：这些文件名/路径已废弃，残留引用说明文档未与当前拓扑同步。

### R2 — Phase 排序反模式

仅在 `revit-plugin-dev-workflow/SKILL.md` 和 `revit-build-deploy/SKILL.md` 中禁止：
```
OrderBy(p => p.Id.Value)
```

**允许**：`revit-coding-patterns/`、eval 证据、治理文档中作为反面示例出现该字符串。
**Why**：主流程入口不得把 `Id.Value` 当作业务排序推荐；教学文档提及该字符串作为警示是合理的。

### R3 — scp 绕过文案

禁止：`绕过方案（scp 直传 Windows）`

**Why**：scp 直传已从默认工作流降级为 break-glass only。文档中不得出现暗示其为常规操作的措辞。

### R4 — RFC1918 私网 IP 字面量

禁止：`10.x.x.x`、`192.168.x.x`、`172.16-31.x.x` 的字面量。

**替代**：`${REVIT_WINDOWS_HOST}`、`${GITLAB_HOST}` 等环境变量占位符。

### R5 — sshpass 明文密码

禁止：`sshpass -p '<明文>'`（非占位符内容）

**允许的占位符**：
- `sshpass -p '***'`
- `sshpass -p '<WINDOWS_PASSWORD>'`
- `sshpass -p '${WINDOWS_PASSWORD}'`

### R6 — OAuth token in URL

禁止：`oauth2:<非占位符>@`

**允许的占位符**：
- `oauth2:***@`
- `oauth2:<GITLAB_TOKEN>@`
- `oauth2:${GITLAB_TOKEN}@`

### R7 — 个人绝对路径

禁止：维护者个人 home 绝对路径字面量（当前 guard 精准拦截本仓维护者路径）。

**允许例外**：`revit-skill-governance/SKILL.md` 可作为规则说明文档被过滤。

**替代**：
- 文档展示：`~/...`
- 可执行配置：`${HOME}`、`${REVIT_SKILL_ROOT}`、`${REVIT_*_PATH}`

本节定义文档展示与可执行配置的推荐替代写法。

### R8 — 嵌套 .git 目录

禁止：仓库内任何 `mindepth 2` 的 `.git` 目录。

**Why**：通常由 `rsync` 镜像外部仓库时带入。同步后应清理。
验收：`find . -mindepth 2 -name .git -type d` 应为空。

### R9 — Gitlink / submodule 条目

禁止：`git ls-files --stage` 中 mode 为 `160000` 的条目。

**Why**：镜像引用资料时不应保留 submodule 元数据。

### R10 — 重复测试目录

禁止：`tests/tests/` 路径出现。

**Why**：通常是构建/同步 artifact 的误拷贝。

## 排除机制

### GUARD_SKIP 环境变量

临时排除指定路径（空格分隔），用于 review scope 排除：

```bash
GUARD_SKIP='revit-plugin-dev-workflow/references/**' bash scripts/check-revit-skill-guard.sh .
```

**注意**：不要把临时排除写死为永久默认。`GUARD_SKIP` 只在当次调用生效。

### 自身排除

guard 脚本默认排除自身、fixture 测试脚本与 `references/guard-policy.md`，
避免规则样例触发 self-trigger。

## 漂移监控模式

治理审计时额外关注的漂移信号（不一定是 guard 脚本直接拦截，但应人工检查）：

- guard regex 过度转义导致 drift check 静默失败（如 `\\(` 传给 ripgrep 而非 `\(`）
- 拓扑版本漂移（如文档仍引用 `v3` 而 README 已提升 `v5-light` 为基准）
- icon 同步矛盾（PNG 文件 vs `.addin` icon 字段）
- eval dashboard 用 `date.today()` 伪造最新运行日期（应以 result 文件名为准）
- SOP 红线数量与 SKILL.md 不一致
- commit 质量塌陷（连续 10+ 条 auto-commit）

## 变更流程

修改 guard 规则后必跑：

```bash
bash -n scripts/check-revit-skill-guard.sh          # 语法检查
bash -n scripts/test-revit-skill-guard.sh            # 语法检查
bash scripts/test-revit-skill-guard.sh               # fixture matrix
bash scripts/check-revit-skill-guard.sh .            # 全仓扫描
```
