# Revit 开发技能包

![Revit 二次开发工作流架构图（中文）](./references/workflow-architecture-zh.jpg)

这是一个用于 Revit 二次开发的可公开发布技能包。
它把工作流规则、代码模式、构建部署、测试和治理审计分开维护，私有运行值放在本地 env，不进仓库。

默认路由入口：根目录 `SKILL.md`（`revit-root-router`）。
英文版：[README.md](./README.md)。

## 仓库内容

- `revit-plugin-dev-workflow/`：端到端工作流、阶段门禁、执行边界
- `revit-build-deploy/`：构建/部署流程与运行手册
- `revit-coding-patterns/`：API 模式、WPF、常见踩坑
- `revit-tunit-testing/`：测试规范
- `revit-skill-governance/`：治理规则、guard 策略、审计清单
- `scripts/`：guard、pre-commit、私有 env、eval 刷新脚本
- `references/`：看板、清单和辅助文档

## 安装到其他 Hermes 主机

```bash
mkdir -p ~/.hermes/skills

git clone <your-repo-url> ~/.hermes/skills/revit
cd ~/.hermes/skills/revit
cp .env.revit-skill.example ~/.config/revit-skill.env
chmod 600 ~/.config/revit-skill.env
scripts/install-precommit.sh .
```

统一通过私有 env 包装器运行命令：

```bash
scripts/use-private-env.sh <你的命令>
```

## 安全模型

提交到仓库里的内容必须保持可公开发布。
真实主机、token、密码都留在 `~/.config/revit-skill.env`。

提交文件里使用占位符：

- `${REVIT_WINDOWS_HOST}`
- `${GITLAB_HOST}`
- `${DEV_HOST}`
- `<WINDOWS_PASSWORD>`
- `<GITLAB_TOKEN>`
- `***`

具体 guard 规则见：

- `references/guard-policy.md`
- `revit-skill-governance/SKILL.md`

## 使用方式

1. 先从 `revit-plugin-dev-workflow` 开始。
2. API/WPF/修坑细节看 `revit-coding-patterns`。
3. 构建与部署看 `revit-build-deploy`。
4. 提交前先跑 guard：

```bash
bash scripts/check-revit-skill-guard.sh .
```

5. guard 规则改动后，补跑 fixture matrix：

```bash
bash scripts/test-revit-skill-guard.sh
```

6. 工作流或治理规则变化后，刷新 eval 证据：

```bash
python3 scripts/refresh-eval-dashboard.py
```

## 参考文档

- `references/guard-policy.md`：guard 规则与允许占位符
- `references/revit-smoke-checklist.md`：Revit 2026 冒烟清单
- `references/fmroky-warning-baseline.md`：FmRoky 已知 warning 基线
- `references/release-audit-checklist.md`：发布审计清单
- `references/eval-dashboard.md`：eval 总览
- `revit-plugin-dev-workflow/references/environment.md`：环境事实和路径映射

## 许可证

Apache License 2.0。见 [LICENSE](./LICENSE) 和 [NOTICE](./NOTICE)。
