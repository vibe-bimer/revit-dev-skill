# Revit Dev Skill Pack / Revit 开发技能包

## 中文说明

这是用于 Revit 二次开发协作的技能包，覆盖：

- `revit-plugin-dev-workflow`：主流程与门禁
- `revit-build-deploy`：构建/部署流程
- `revit-coding-patterns`：常见模式与踩坑
- `revit-tunit-testing`：测试规范
- `revit-skill-governance`：技能治理与发布检查

### 安全发布约定（重要）

本仓库为可发布版本，默认不包含真实内网地址、口令、令牌。

- 所有主机/IP 使用占位符：`${REVIT_WINDOWS_HOST}`、`${GITLAB_HOST}` 等
- 凭据使用占位符：`<GITLAB_TOKEN>`、`<WINDOWS_PASSWORD>` 或 `***`
- 发布前执行守卫脚本：

```bash
bash scripts/check-revit-skill-guard.sh .
```

### 日常开发（本地私有）

1. 复制模板并填写私有值（不要提交）：

```bash
cp .env.revit-skill.example ~/.config/revit-skill.env
```

2. 使用私有环境运行命令：

```bash
scripts/use-private-env.sh <your-command>
```

3. 安装 pre-commit（提交自动检查）：

```bash
scripts/install-precommit.sh .
```

---

## English

This repository is a publish-safe Revit skill pack for AI-assisted Revit development workflows.

Included modules:

- `revit-plugin-dev-workflow`: core workflow + gates
- `revit-build-deploy`: build/deploy operations
- `revit-coding-patterns`: coding patterns and pitfalls
- `revit-tunit-testing`: testing conventions
- `revit-skill-governance`: governance and release checks

### Security policy (important)

This repo is sanitized for publishing:

- No real private IPs/hosts in docs
- No plaintext passwords/tokens
- Placeholders only: `${REVIT_WINDOWS_HOST}`, `${GITLAB_HOST}`, `<GITLAB_TOKEN>`, `<WINDOWS_PASSWORD>`, `***`

Run guard before release:

```bash
bash scripts/check-revit-skill-guard.sh .
```

### Local private usage

1. Create a private env file (do not commit it):

```bash
cp .env.revit-skill.example ~/.config/revit-skill.env
```

2. Run commands with private env loaded:

```bash
scripts/use-private-env.sh <your-command>
```

3. Install pre-commit hook:

```bash
scripts/install-precommit.sh .
```
