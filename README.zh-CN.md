# Revit 开发技能包（中文说明）

默认文档为英文版：[README.md](./README.md)。
本文件是完整中文说明，覆盖使用方式、配置方法、机制流程和引用关系。

---

## 1. 仓库定位

`revit-dev-skill` 是一个**可公开发布**的 Revit 二次开发技能包仓库。
它不是插件源码仓，而是工作流与知识资产仓，主要用于：

- 统一 Revit 二次开发流程
- 约束构建与部署门禁
- 沉淀编码模式与踩坑
- 在公开发布时防止敏感信息泄露

---

## 2. 目录结构与职责

### 2.1 核心模块

- `revit-plugin-dev-workflow/`  
  主工作流（需求分流、阶段门禁、执行边界）

- `revit-build-deploy/`  
  构建与部署流程说明、故障处置口径

- `revit-coding-patterns/`  
  常用编码模式、框架差异与踩坑修复经验

- `revit-duct-segmentation-workflow/`  
  风管分段专题流程

- `revit-tunit-testing/`  
  测试规范与验证策略

- `revit-skill-governance/`  
  技能治理规则（含发布前脱敏基线）

### 2.2 支撑脚本

- `scripts/check-revit-skill-guard.sh`  
  敏感信息扫描门禁（本地与 CI 共用）

- `scripts/install-precommit.sh`  
  安装 git pre-commit hook（提交前自动扫描）

- `scripts/use-private-env.sh`  
  运行命令前自动加载本地私有 env

- `scripts/refresh-eval-dashboard.py`  
  刷新评估看板相关内容

### 2.3 配置与流水线

- `.env.revit-skill.example`：本地私有配置模板（示例，不含真实值）
- `.gitlab-ci.yml`：GitLab CI 最小流水线（仅执行 guard）
- `.gitignore`：忽略本地敏感配置文件

---

## 3. 安全设计（机制）

仓库采用双层机制，保证“可用 + 可公开发布”：

1. **公开层（可提交）**  
   文档、技能、脚本、占位符

2. **私有层（不提交）**  
   本地环境变量文件中的真实主机、口令、令牌

### 3.1 占位符规则

可提交内容必须使用占位符，例如：

- `${REVIT_WINDOWS_HOST}`
- `${GITLAB_HOST}`
- `${DEV_HOST}`
- `${UNRAID_BR1_SRC}`
- `<WINDOWS_PASSWORD>`
- `<GITLAB_TOKEN>`
- `***`

禁止提交真实内网 IP、真实密码、真实 token。

### 3.2 守卫脚本检查范围

`check-revit-skill-guard.sh` 默认拦截：

- RFC1918 私网 IP 字面量
- 硬编码 `sshpass` 口令
- URL 中硬编码 oauth token
- workflow drift 的关键反模式

---

## 4. 本地配置与日常使用

### 4.1 首次配置

1) 复制模板：

```bash
cp .env.revit-skill.example ~/.config/revit-skill.env
chmod 600 ~/.config/revit-skill.env
```

2) 在 `~/.config/revit-skill.env` 填真实值（仅本机保存）。

### 4.2 加载方式

方式 A（当前 shell 生效）：

```bash
source ~/.config/revit-skill.env
```

方式 B（推荐，命令级自动加载）：

```bash
scripts/use-private-env.sh <你的命令>
```

说明：方式 B 不依赖你当前 shell 是否已 source，更稳。

### 4.3 提交前门禁

安装 pre-commit：

```bash
scripts/install-precommit.sh .
```

安装后每次 `git commit` 会自动执行 guard；失败则阻止提交。

---

## 5. 典型流程（从开发到发布）

### 5.1 日常开发流程

1. 进入仓库根目录
2. 加载私有 env（`source` 或 `use-private-env.sh`）
3. 按模块文档执行开发编排（workflow/build/pattern/testing）
4. 本地先跑：

```bash
bash scripts/check-revit-skill-guard.sh .
```

5. `git commit`（pre-commit 自动二次检查）

### 5.2 发布流程（GitLab / GitHub）

1. guard 全绿
2. README（中英）更新完成
3. 确认示例配置无真实值
4. 推送远端
5. CI 再跑 guard（与本地同一规则）

---

## 6. 引用关系与依赖说明（需要哪些引用）

### 6.1 `revit-plugin-dev-workflow` 依赖引用

主要引用文件：

- `revit-plugin-dev-workflow/references/environment.md`
- `revit-plugin-dev-workflow/references/features.md`
- `revit-plugin-dev-workflow/references/revit-workflow-topology-*.html|png|svg`
- `revit-plugin-dev-workflow/references/revit-workflow-sop.html|png`

用途：环境事实、功能状态、流程拓扑、SOP 门禁。

### 6.2 `revit-build-deploy` 依赖引用

- `revit-build-deploy/SKILL.md`
- `revit-build-deploy/evals/evals.json`
- `revit-build-deploy/evals/results/*.md`

用途：构建部署命令口径、评估项定义、历史评估结果。

### 6.3 `revit-coding-patterns` 依赖引用

- `revit-coding-patterns/references/nice3point-patterns.md`
- `revit-coding-patterns/references/scotec-patterns.md`
- `revit-coding-patterns/references/duct-segmentation.md`

用途：框架差异、API 模式、高频坑点。

### 6.4 全局引用

- `references/eval-dashboard.md`
- `references/eval-runbook.md`

用途：评估总览与运行手册。

---

## 7. CI 与 Hook 协同机制

- 本地：`pre-commit` 自动执行 guard
- 远端：`.gitlab-ci.yml` 在 push/MR 执行 guard
- 两端规则一致，避免“本地能过、远端失败”

如果 pipeline 长期 `pending`，通常是 GitLab 没有可用 runner，不是配置语法问题。

---

## 8. 常见问题

### Q1：每次都要手动 `source` 吗？

- 手动 source：仅当前 shell 生效
- 推荐用 `scripts/use-private-env.sh <cmd>`，命令级自动加载

### Q2：为什么示例文件不放真实值？

因为仓库目标是可公开发布。真实值必须留在本地私有 env。

### Q3：提交时被 guard 拦截怎么办？

按报错逐项替换为占位符，或将真实值移到 `~/.config/revit-skill.env`。

---

## 9. 维护建议

- 每次流程调整，同时更新中英 README
- 新增敏感字段规则时，先更新 guard，再更新文档示例
- 以 `revit-skill-governance` 作为发布前最终口径

---

如需英文详细说明，请查看 [README.md](./README.md)。
