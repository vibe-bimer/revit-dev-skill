---
name: revit-root-router
description: Revit 二次开发总控入口（薄封装）。统一做任务分流与环境加载，再路由到子 skill 执行。
---

# Revit 总控入口（Root Router）

## 用途

这是 `revit` 技能集合的唯一默认入口。目标只有两个：

1. **统一分流**：根据任务类型路由到正确子 skill
2. **统一环境加载**：所有 shell 命令默认经 `use-private-env.sh` 执行

## 路径可移植约定

- 本集合中出现的 `~/...` 为参考路径，不是安装强依赖。
- 跨机器安装时，按本机目录替换为等价路径。
- 只要保持目录语义不变（skills 根、私有 env、项目工作区、wiki/corpus），流程即可复用。

> 规则：未明确指定子 skill 时，先走本入口，再进入子 skill。

## 环境硬规则

任何涉及 shell 命令的步骤，先走包装脚本：

```bash
~/.hermes/skills/revit/scripts/use-private-env.sh <command>
```

禁止默认裸跑 `<command>`，避免遗漏 `~/.config/revit-skill.env`。

## 路由矩阵

- 需求分流 / 端到端开发流程 / 需求澄清：`revit-plugin-dev-workflow`
- 编译、部署、同步、构建故障：`revit-build-deploy`
- API 行为坑、编码模式、框架差异：`revit-coding-patterns`
- 测试规范与 TUnit：`revit-tunit-testing`
- 技能体系治理、漂移修复、发布前审计：`revit-skill-governance`

## 执行顺序（默认）

1. 加载入口规则（本 skill）
2. 路由到目标子 skill
3. 按子 skill 执行
4. 提交前运行 guard：

```bash
bash scripts/check-revit-skill-guard.sh .
```

## 边界

- 本 skill 不承载具体实现细节
- 具体命令、代码模式、测试细节在子 skill 维护
- 如入口与子 skill 冲突，以入口的路由与环境规则为准
