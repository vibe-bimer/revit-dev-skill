# Revit 二次开发工作流 Review 计划

> **日期：** 2026-04-26
> **范围：** SuperRoky + FmRoky 全生命周期（阶段 0-4 + 环境/工具链）
> **方法：** 双图对照 + skill 链审计 + 行业对标 + 实战回放

---

## Goal
对当前 Revit 二次开发工作流做一次**端到端审查**，找出架构漂移、效率瓶颈、自动化缺口，并输出一份 P0/P1/P2 优化清单。

---

## Criteria for success
1. 双图（topology + SOP）与实际行为一致，无架构漂移
2. 所有 skill 的红线规则能在当前工具链下强制执行（不是"写了但用不了"）
3. CI/CD 自动化缺口有明确评估（能做/不能做/为什么）
4. 过去 3 个月的实战痛点被纳入评估（风管分段返工、代理链路中断、429 限流）
5. 测试覆盖率现状可量化
6. 最终交付：review 报告（含改进建议 + P0/P1/P2 优先级）

---

## Project constraints
- Hermes = 控制面/编排层，不动 Revit 源码（红线不可破）
- Ubuntu ↔ GitLab ↔ Windows 三端拓扑不可乱
- SuperRoky（Nice3point/.NET 8）和 FmRoky（Scotec/.NET 10）独立审查，不混
- 所有建议必须可落地到 skill/script/配置修改，拒绝"以后再说"类建议
- 当前 Claude Code 代理链路有 429 限流，不能假设时刻可用

---

## Review 分步计划

### 阶段 0：前置调研（已完成 ✓）

| 来源 | 覆盖内容 |
|------|---------|
| `revit-plugin-dev-workflow` SKILL | 全生命周期、10 条红线、spec 模板、降级策略 |
| `revit-build-deploy` SKILL | 编译脚本、Git 同步拓扑、.addin 格式、灾备方案 |
| `revit-coding-patterns` SKILL | WPF/API 踩坑 FAQ、框架专属 pattern |
| `revit-skill-governance` SKILL | 技能审计清单、漂移检测模式 |
| `references/environment.md` | 环境路径、凭据入口 |
| `references/features.md` | 插件功能状态跟踪 |
| `references/revit-workflow-topology.html` | 系统拓扑图 |
| `references/revit-workflow-sop.html` | SOP 执行门禁图 |
| 会话 `20260422_170433` | delegation 断链诊断、降级路径实战 |
| 网络搜索 | Revit CI/CD 行业实践、GitLab Runner 模式 |

---

### 阶段 1：架构一致性审计（~15 min）

**目标**：确认双图、skill 文本、实际执行路径三者一致。

| 检查项 | 具体操作 |
|--------|---------|
| 1.1 拓扑图 vs 实际 | 对 `topology.html` 逐角色验证：Ubuntu push → GitLab → Windows pull 链路是否唯一、Windows 是否真的只 pull 不 push |
| 1.2 SOP 门禁 vs 实际 | 对 `sop.html` 逐步骤检查：每个门禁是否在执行路径上有对应 enforce 逻辑（脚本/agent 行为） |
| 1.3 红线可执行性 | 10 条红线逐个审计：是否有绕过路径（如 agent 不听话自己改代码、scp 绕过还有无残留） |
| 1.4 单点真相检查 | Phase 排序、环境事实、部署规范是否在多个 skill 间有冲突副本 |
| 1.5 双图审阅 | 打开 topology.html + sop.html，做视觉 QA：箭头方向、框线对齐、文字溢出 |

---

### 阶段 2：CI/CD 自动化缺口分析（~15 min）

**目标**：评估从"push 到上线"之间有多少步可以自动化。

| 检查项 | 具体操作 |
|--------|---------|
| 2.1 当前自动化矩阵 | 列出现有自动/手动步骤：git sync → build → deploy → Revit load → smoke test |
| 2.2 GitLab CI 可行性 | 评估 `.gitlab-ci.yml` + GitLab Runner 是否能替代 build.sh 的 SSH 手动链路 |
| 2.3 Windows Runner | 研究 GitLab Runner 能否在 Windows 上运行、能否触达 Revit 环境 |
| 2.4 测试 CI | 单元测试（TUnit）当前是否在每次 push 后自动运行 |
| 2.5 Revit smoke 自动化 | 评估 Revit 自动化测试可能性（RevitTestFramework / journal playback） |
| 2.6 发布流程 | 版本号管理、changelog 生成、产物打包是否自动化 |

---

### 阶段 3：代理链路健壮性审查（~10 min）

**目标**：评估 Hermes → Claude Code 的委托链路的可靠性和降级路径。

| 检查项 | 具体操作 |
|--------|---------|
| 3.1 ACP 端到端验证 | `delegate_task(acp_command="claude")` 是否在当前环境跑通一次完整 E2E |
| 3.2 凭证对齐 | `~/.hermes/config.yaml` delegation 配置 vs `~/.claude/settings.json` 变量名是否对齐 |
| 3.3 降级路径压力测试 | §1.5.0 降级策略（落 spec → 等代理恢复）是否覆盖所有场景 |
| 3.4 429 限流影响 | 评估 429 对日常工作流的实际影响，是否有备选代理（Codex CLI / OpenCode） |
| 3.5 代理日志/可观测性 | delegation 失败时是否有足够的错误信息用于诊断 |

---

### 阶段 4：开发效率与质量保障（~10 min）

**目标**：找出日常开发循环中可以压缩的摩擦点。

| 检查项 | 具体操作 |
|--------|---------|
| 4.1 Wiki 更新自动化 | 代码合并后 Wiki 是否自动更新？当前是手动还是 cron？ |
| 4.2 踩坑归位率 | §1.8 踩坑捕获规则：实际触发了多少条？有没有漏记的？ |
| 4.3 Spec 模板使用率 | 最近 10 次 Revit 功能开发，有多少次走了完整 spec 模板？ |
| 4.4 Commit message 质量 | 中文 commit、语义清晰 —— 抽样检查最近 20 条 |
| 4.5 图标获取流程 | Remix Icon → PNG 转换是否顺畅？有无更高效的方案 |
| 4.6 WPF 调试效率 | XAML 热重载/Revit Lookup/Add-in Manager 等工具是否被纳入流程 |

---

### 阶段 5：架构图产出（~15 min）

**目标**：产出或更新以下可视化物件。

| 产出物 | 说明 |
|--------|------|
| 架构总览图（新版） | 在现有 topology 基础上叠加 CI/CD 层 + 代理调用链路 |
| 效率热力图 | 标出当前全流程中手动步骤的耗时占比 |
| 改进路线图 | 以时间轴展示 P0/P1/P2 改进项的先后关系 |

> 图按用户偏好用 HTML + Playwright 渲染为高分辨率 PNG。

---

### 阶段 6：报告合成与交付（~10 min）

**目标**：汇总阶段 1-5 发现，输出结构化 review 报告。

输出格式：
```
# Revit 二次开发工作流 Review 报告

## 总评
## P0（阻断/安全风险）
## P1（效率显著提升）
## P2（锦上添花）
## 架构图（附 PNG）
## 改进路线图
```

---

## Mandatory questions to settle before executing

1. **GitLab CI/CD 深度**：是否只评估可行性，还是直接出 `.gitlab-ci.yml`？如果出，要不要实际部署 Runner？
2. **代理链路范围**：review 是否实际触发一次 E2E delegate_task 验证？还是仅做配置审查？
3. **架构图风格**：沿用现有双图暗色主题（JetBrains Mono + #020617 底色），还是有新偏好？
4. **交付位置**：review 报告是写 local markdown 还是直接同步到飞书文档/Wiki？

---

## Implementation defaults
- 每个阶段产出 P0/P1/P2 发现，不在阶段间互相等待
- 架构图优先迭代现有双图，不重新设计
- 报告用中文撰写，遵循用户偏好（务实、直接、不堆废话）
- 审查结果写入 skill（patch），不另开新文档

---

## 文件变更预估
| 操作 | 文件 |
|------|------|
| 新增 | `.hermes/plans/2026-04-26_revit-workflow-review-report.md` |
| 可能修改 | `revit-plugin-dev-workflow/SKILL.md`（红线执行性增强） |
| 可能修改 | `revit-build-deploy/SKILL.md`（CI/CD 集成说明） |
| 可能修改 | `revit-plugin-dev-workflow/references/revit-workflow-topology.html`（叠加 CI/CD 层） |
| 可能修改 | `revit-plugin-dev-workflow/references/revit-workflow-sop.html`（补门禁 enforce 逻辑） |

---

## Risk & Rollback
- **风险**：Claude Code 代理在验证阶段可能不可用（429），但不影响审查本身，只影响 E2E 测试
- **回滚**：所有 skill patch 通过 git 可逆；架构图 HTML 源文件保留，可回退

---

**下一步**：请确认上述计划，或提出调整。确认后我按阶段推进。
