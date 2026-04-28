# Revit 开发环境速查

> 本文件只维护环境与运维事实；流程门禁仍以 `revit-plugin-dev-workflow/SKILL.md` 为主。
>
> 发布版已脱敏：主机/IP/令牌改为环境变量占位符。日常使用推荐走包装脚本（自动加载私有 env，不依赖当前 shell 状态）：
>
> ```bash
> ~/.hermes/skills/revit/scripts/use-private-env.sh <command>
> # 如需当前 shell 常驻再手动 source ~/.config/revit-skill.env
> ```

## 环境总览

| 组件 | 值 |
|------|-----|
| SSH | `Administrator@${REVIT_WINDOWS_HOST}` / `***`（凭据见 GBrain） |
| GitLab | `http://${GITLAB_HOST}:8929` / group: `revit-dev` / token: `***`（见 GBrain） |
| 插件部署目录 | `C:\ProgramData\Autodesk\Revit\Addins\2026\` |
| Revit API Wiki | `/home/roky/roky-wiki/revit-api/entities/` (wiki) + `/home/roky/revit-corpus/index/` (machine index) + `/home/roky/revit-corpus/raw/revit-2026/` (raw) |

| 插件 | 框架 | SDK | 远程路径 | 本地路径 | 编译脚本 | GitLab 仓库 |
|------|------|-----|----------|----------|----------|------------|
| **SuperRoky** | Nice3point.Revit.Sdk + MS.DI + CT.Mvvm | 8.0.100 | `C:\Projects\SuperRoky` | `~/revit-plugin-dev/src/SuperRoky` | `build.sh` | `revit-dev/superroky` |
| **FmRoky** | Scotec.Revit 2026.3.0 + Autofac + CT.Mvvm | 10.0.201 | `C:\Projects\Bim.FamilyManager` | `~/revit-plugin-dev/Bim.FamilyManager` | `build-fmroky.sh` | `revit-dev/fmroky` |

> ⚠️ 两个插件框架完全不同，编译配置、global.json、部署方式都不一样，不要混用。

## Git / SSH / NuGet 速查

### Git remote（Ubuntu 端 push）

```bash
# SuperRoky
git remote add gitlab http://oauth2:<GITLAB_TOKEN>@${GITLAB_HOST}%3a8929/revit-dev/superroky.git
git remote set-url gitlab http://oauth2:<GITLAB_TOKEN>@${GITLAB_HOST}%3a8929/revit-dev/superroky.git

# FmRoky
git remote add gitlab http://oauth2:<GITLAB_TOKEN>@${GITLAB_HOST}%3a8929/revit-dev/fmroky.git
git remote set-url gitlab http://oauth2:<GITLAB_TOKEN>@${GITLAB_HOST}%3a8929/revit-dev/fmroky.git
```

> URL 中的冒号 `:` 必须编码为 `%3a`，否则 shell 解析失败。token 见 GitLab Access Tokens（scope: `api` + `write_repository`）。

### SSH 密钥

```bash
ssh -i ~/.ssh/id_ed25519 Administrator@${REVIT_WINDOWS_HOST}
# 密码: ***（见 GBrain）
```

> SSH 主要用于 Windows 端 build / deploy；git push/pull 走 GitLab HTTPS。

### Nice3point NuGet 源

```xml
<packageSources>
  <clear />
  <add key="nice3point" value="https://nuget.nice3point.com/v3/index.json" />
  <add key="nuget.org" value="https://api.nuget.org/v3/index.json" />
</packageSources>
```

### Protected Branch 校验

```bash
curl -s --header "PRIVATE-TOKEN: $GITLAB_TOKEN" \
  'http://${GITLAB_HOST}:8929/api/v4/projects/revit-dev%2Fsuperroky/protected_branches/main'
```

## 基础设施约束

- Ubuntu 是主控端：分析、编排、push、触发构建
- Windows 只 pull、build、deploy、做 Revit 内验证
- GitLab 是唯一同步中枢
- 关闭 Revit 后再部署，避免 DLL 锁定
