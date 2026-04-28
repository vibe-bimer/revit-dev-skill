# Revit 开发技能包（中文说明）

![Revit 二次开发工作流架构图（中文）](./references/workflow-architecture-zh.jpg)

> 整体工作流架构图（中文）。

默认文档为英文版：[README.md](./README.md)。
本文件是完整中文说明，覆盖使用方式、配置方法、机制流程和引用关系。

---

## 1. 仓库定位

默认路由入口 skill：根目录 `SKILL.md`（`revit-root-router`）。

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
- `.gitignore`：忽略本地敏感配置文件

---

## 3. 在其他 Hermes 环境安装

这个技能包可以直接通过 git clone 安装到其他 Hermes 主机：

```bash
# 方案 A：保持推荐路径
mkdir -p ~/.hermes/skills
git clone <your-repo-url> ~/.hermes/skills/revit

# 方案 B：克隆到其他目录（可行）
# 但需要在你的本地文档/命令里同步路径映射
```

克隆后执行：

```bash
cd ~/.hermes/skills/revit
cp .env.revit-skill.example ~/.config/revit-skill.env
chmod 600 ~/.config/revit-skill.env
scripts/install-precommit.sh .
```

实际运行时统一用：

```bash
scripts/use-private-env.sh <你的命令>
```

---

## 4. 安全设计（机制）

仓库采用双层机制，保证“可用 + 可公开发布”：

1. **公开层（可提交）**  
   文档、技能、脚本、占位符

2. **私有层（不提交）**  
   本地环境变量文件中的真实主机、口令、令牌

### 4.1 占位符规则

可提交内容必须使用占位符，例如：

- `${REVIT_WINDOWS_HOST}`
- `${GITLAB_HOST}`
- `${DEV_HOST}`
- `<WINDOWS_PASSWORD>`
- `<GITLAB_TOKEN>`
- `***`

禁止提交真实内网 IP、真实密码、真实 token。

### 4.2 守卫脚本检查范围

`check-revit-skill-guard.sh` 默认拦截：

- RFC1918 私网 IP 字面量
- 硬编码 `sshpass` 口令
- URL 中硬编码 oauth token
- workflow drift 的关键反模式

---

## 5. 本地配置与日常使用

### 5.1 首次配置

1) 复制模板：

```bash
cp .env.revit-skill.example ~/.config/revit-skill.env
chmod 600 ~/.config/revit-skill.env
```

2) 在 `~/.config/revit-skill.env` 填真实值（仅本机保存）。

### 环境变量一览

| 变量 | 用途 |
|------|------|
| `REVIT_WINDOWS_HOST` | Windows 构建主机 IP/主机名 |
| `GITLAB_HOST` | GitLab 服务器 IP/主机名 |
| `DEV_HOST` | 开发网络主机 |
| `WINDOWS_USER` | Windows SSH 用户名 |
| `WINDOWS_PASSWORD` | Windows SSH 密码 |
| `GITLAB_TOKEN` | GitLab 访问令牌 |
| `REVIT_SKILL_ROOT` | skill 仓库根路径（默认：`~/.hermes/skills/revit`） |
| `REVIT_API_WIKI_PATH` | Revit API Wiki 根路径（推荐：`${REVIT_SKILL_ROOT}/references/revit-api/entities`） |
| `REVIT_CORPUS_PATH` | Revit 语料库根路径（推荐：`${REVIT_SKILL_ROOT}/references/revit-corpus`） |

### 5.1.1 路径可移植说明（重要）

部分 skill 示例中会出现 `~/...` 这类路径。它们是**参考布局**，不是强绑定要求。

其他用户安装时按本机环境替换即可：

- skill 根目录：`~/.hermes/skills/revit`
- 私有 env：`~/.config/revit-skill.env`
- 工程目录：你自己的项目路径（例如 `~/revit-plugin-dev`）
- wiki / corpus：你自己的本地路径或挂载路径

原则：命令结构不变，只替换机器相关前缀路径。

### 5.2 加载方式

方式 A（当前 shell 生效）：

```bash
source ~/.config/revit-skill.env
```

方式 B（推荐，命令级自动加载）：

```bash
scripts/use-private-env.sh <你的命令>
```

说明：方式 B 不依赖你当前 shell 是否已 source，更稳。

### 5.3 提交前门禁

安装 pre-commit：

```bash
scripts/install-precommit.sh .
```

安装后每次 `git commit` 会自动执行 guard；失败则阻止提交。

---

## 6. 典型流程（从开发到发布）

### 6.1 日常开发流程

1. 进入仓库根目录
2. 加载私有 env（`source` 或 `use-private-env.sh`）
3. 按模块文档执行开发编排（workflow/build/pattern/testing）
4. 本地先跑：

```bash
bash scripts/check-revit-skill-guard.sh .
```

5. `git commit`（pre-commit 自动二次检查）

### 6.2 发布流程（GitLab / GitHub）

1. guard 全绿
2. README（中英）更新完成
3. 确认示例配置无真实值
4. 推送远端
5. 如需远端校验，在目标平台自行配置 CI/runner 执行同一个 guard 脚本

---

## 7. 引用关系与依赖说明（需要哪些引用）

### 7.1 `revit-plugin-dev-workflow` 依赖引用

主要引用文件：

- `revit-plugin-dev-workflow/references/environment.md`
- `revit-plugin-dev-workflow/references/features.md`
- `revit-plugin-dev-workflow/references/revit-workflow-topology-*.html|png|svg`
- `revit-plugin-dev-workflow/references/revit-workflow-sop.html|png`

用途：环境事实、功能状态、流程拓扑、SOP 门禁。

### 7.2 `revit-build-deploy` 依赖引用

- `revit-build-deploy/SKILL.md`
- `revit-build-deploy/evals/evals.json`
- `revit-build-deploy/evals/results/*.md`

用途：构建部署命令口径、评估项定义、历史评估结果。

### 7.3 `revit-coding-patterns` 依赖引用

- `revit-coding-patterns/references/nice3point-patterns.md`
- `revit-coding-patterns/references/scotec-patterns.md`
- `revit-coding-patterns/references/duct-segmentation.md`

用途：框架差异、API 模式、高频坑点。

### 7.4 全局引用

- `references/eval-dashboard.md`
- `references/eval-runbook.md`

用途：评估总览与运行手册。

---

## 8. 远端 CI（可选）

本仓库不绑定特定平台的 CI 模板。

如果目标平台有可用 runner，建议只加一个远端任务，执行：

```bash
bash scripts/check-revit-skill-guard.sh .
```

如果平台没有 runner，本地 pre-commit + 手动 guard 仍然是完整可用路径。

---

## 9. 常见问题

### Q1：每次都要手动 `source` 吗？

- 手动 source：仅当前 shell 生效
- 推荐用 `scripts/use-private-env.sh <cmd>`，命令级自动加载

### Q2：为什么示例文件不放真实值？

因为仓库目标是可公开发布。真实值必须留在本地私有 env。

### Q3：提交时被 guard 拦截怎么办？

按报错逐项替换为占位符，或将真实值移到 `~/.config/revit-skill.env`。

---

## 10. 维护建议

- 每次流程调整，同时更新中英 README
- 新增敏感字段规则时，先更新 guard，再更新文档示例
- 以 `revit-skill-governance` 作为发布前最终口径

---

如需英文详细说明，请查看 [README.md](./README.md)。

---

## 11. 开源协议

本仓库采用 **Apache License 2.0**。

- ✅ 允许商用
- ✅ 包含专利授权（贡献者授予）
- ✅ 使用/再分发需保留来源声明（保留 LICENSE + NOTICE）

完整条款见 [LICENSE](./LICENSE) 与 [NOTICE](./NOTICE)。

---

## 12. 上游基础仓库引用说明

本技能包在工作流与实践上引用了以下上游仓库作为基础：

- [scotec-Software-Solutions-AB/Bim.FamilyManager](https://github.com/scotec-Software-Solutions-AB/Bim.FamilyManager)
- [Nice3point/RevitExtensions](https://github.com/Nice3point/RevitExtensions)
