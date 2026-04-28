---
name: revit-build-deploy
description: Build and deploy Revit 2026 plugins (SuperRoky and FmRoky). Use when compiling, deploying, or troubleshooting build issues for any Revit plugin project. Covers build scripts, SSH sync, git push/pull via GitLab, DeployAddin, Copy-Item deploy, and .addin file formats.
---

# Revit 插件编译部署

## 路由声明

- 默认由根入口 `revit-root-router` 路由调用。
- 仅处理构建/部署/同步问题；需求分流与任务编排回到 `revit-plugin-dev-workflow`。


## 维护说明（2026-04-16）

- 已移除对 `architecture.md` 的历史引用，统一改为 `features.md` + workflow 阶段总览。
- 所有凭据示例已脱敏，真实凭据统一从 GBrain/密钥管理读取。
- 2026-04-28：新增 `E150` Revit 进程门禁（编译前检查 `Revit.exe` 占用），并支持 `FORCE_KILL_REVIT=1` 自动关闭后继续构建。

## 环境概要

> 环境速查（SSH/GitLab/路径/凭据）统一维护在 `revit-plugin-dev-workflow/references/environment.md`，本 skill 不重复。
>
> 运行硬规则：Hermes 执行本技能中的 shell 命令时，默认走包装脚本加载私有 env：
>
> ```bash
> ~/.hermes/skills/revit/scripts/use-private-env.sh <command>
> ```

---

## SuperRoky — build.sh

**入口：** `~/revit-plugin-dev/build.sh`

```bash
cd ~/revit-plugin-dev
./build.sh                        # 同步 + 编译 + 自动部署 (Release.R26)
./build.sh --build-only           # 仅编译 + 自动部署（不重新同步）
./build.sh --sync-only            # 仅同步文件（不编译不部署）
./build.sh --config Debug.R26     # 指定配置
```

> 前置门禁：脚本会先检查 Windows 端 `Revit.exe` 是否在运行。检测到运行会直接报 `E150` 中止，避免 DLL 锁定导致编译失败。
> 如需由脚本自动关闭 Revit 再继续，可临时使用：`FORCE_KILL_REVIT=1 ./build.sh`。

**流程（全自动化，失败即中止）：**
1. Ubuntu 端提交并推送：`git add -A` → 若有变更则 `git commit -m "auto: build sync"` → `git push`（无变更则跳过 commit）
   - ⚠️ **E100 闸门**：连续 2 次 auto-commit 后第 3 次拒绝，要求手动 commit 清零。状态追踪文件：`~/revit-plugin-dev/.build-state`
2. SSH 执行 Windows 端 `git checkout -- . && git clean -fd && git pull origin main --ff-only` → 拉取最新代码
3. SSH 执行 `dotnet build source/SuperRoky.csproj -c Release.R26 --no-incremental -v minimal`
4. **自动 PowerShell Copy-Item** → 部署到 `C:\\ProgramData\\Autodesk\\Revit\\Addins\\2026\\SuperRoky\\`（.addin + bin 输出）

> ⚠️ **步骤 1 或 2 失败时，流程立即中止（exit 1），不继续编译部署。** 修复 git/网络问题后重新运行 `./build.sh`。
> Windows 端 pull 前会先 `git checkout -- . && git clean -fd` 清理脏状态，避免未跟踪文件导致 pull 失败。

> ⚠️ **2026-04-12 审计修复：** `DeployAddin=true` 只生成 `.addin` 文件到 `publish/` 子目录，不会复制 DLL。
> `dotnet build` 的实际 DLL 输出在 `bin/Release.R26/` 根目录。
> deploy_remote() 已改为从 `bin/Release.R26/` 复制 `*.dll` + `*.deps.json` + `*.runtimeconfig.json`。
> **不再读 publish 目录。**

**直接 SSH 编译（调试用）：**
```bash
ssh Administrator@${REVIT_WINDOWS_HOST} "powershell -Command \"Set-Location C:\\Projects\\SuperRoky; dotnet build source/SuperRoky.csproj -c Release.R26 --no-incremental -v minimal\""
```

### global.json

```json
{
  "sdk": {
    "version": "8.0.100",
    "rollForward": "latestMajor",
    "allowPrerelease": false
  },
  "msbuild-sdks": {
    "Nice3point.Revit.Sdk": "6.0.0"
  }
}
```

> ⚠️ `msbuild-sdks` 段必须在顶层（不在 `sdk` 内）。`sdk.version` 写 `8.0.100` + `rollForward: latestMajor` 即可自动解析到 8.0.419+。

> ⚠️ `msbuild-sdks` 段必须有。装了 .NET 10+ 后 NuGetSdkResolver 不再自动解析未指定版本的 MSBuild SDK，缺了会报 `The NuGetSdkResolver did not resolve this SDK`。

### csproj 关键属性

```xml
<Project Sdk="Nice3point.Revit.Sdk">
    <PropertyGroup>
        <UseWPF>true</UseWPF>
        <DeployAddin>true</DeployAddin>
        <IsRepackable>false</IsRepackable>
        <EnableDynamicLoading>true</EnableDynamicLoading>
        <Configurations>Debug.R26;Debug.R27</Configurations>
        <Configurations>$(Configurations);Release.R26;Release.R27</Configurations>
    </PropertyGroup>
</Project>
```

> `IsRepackable=false` 禁用 ILRepack 单 DLL 打包。ILRepack 与 WinForms 不兼容，且多第三方 NuGet 依赖场景下容易出程序集加载问题。

---

## FmRoky — build-fmroky.sh

**入口：** `~/revit-plugin-dev/build-fmroky.sh`

```bash
cd ~/revit-plugin-dev
./build-fmroky.sh                    # 编译 + 自动部署
./build-fmroky.sh --build-only       # 仅编译（不部署）
./build-fmroky.sh --deploy-only      # 仅部署（不编译）
```

> 前置门禁：脚本会先检查 Windows 端 `Revit.exe` 是否在运行。检测到运行会直接报 `E150` 中止，避免 DLL 锁定导致编译失败。
> 如需由脚本自动关闭 Revit 再继续，可临时使用：`FORCE_KILL_REVIT=1 ./build-fmroky.sh`。

**流程（编译+部署一体化）：**
1. Ubuntu 端提交并推送：`git add -A` → 若有变更则 `git commit -m "auto: build sync"` → `git push gitlab develop:main`（无变更则跳过 commit）
   - ⚠️ **E100 闸门**：连续 2 次 auto-commit 后第 3 次拒绝，要求手动 commit 清零。状态追踪文件：`~/revit-plugin-dev/.build-state-fmroky`
2. SSH 执行 Windows 端 `git pull origin main --ff-only` → 拉取最新代码
3. SSH 执行 `dotnet build Source\\Bim.FamilyManager\\Bim.FamilyManager.csproj -c Release -p:RevitYear=2026`
4. **自动 Copy-Item** 构建输出到 `C:\\ProgramData\\Autodesk\\Revit\\Addins\\2026\\FmRoky\\`

> ⚠️ **FmRoky 使用 Scotec.Revit（非 Nice3point），DeployAddin 不可用！** 通过 build-fmroky.sh 内置的 deploy_remote() 函数自动完成部署。
> ⚠️ **global.json 必须指向 .NET 10.0.201**（Scotec.Revit.Isolation source generator 需要 Roslyn 5.0，SDK 8.0/9.0 下会静默跳过导致编译失败）。
> ⚠️ **与 SuperRoky 的 global.json 不兼容：** 两个项目各自有独立的 global.json（在不同目录），互不影响。

**直接 SSH 编译（调试用）：**
```bash
ssh Administrator@${REVIT_WINDOWS_HOST} "cd C:\\Projects\\Bim.FamilyManager && dotnet build Source\\Bim.FamilyManager\\Bim.FamilyManager.csproj -c Release -p:RevitYear=2026 --no-incremental -v minimal"
```

### Source Generator 版本依赖

Scotec.Revit.Isolation 的 source generator 需要 Roslyn 5.0（.NET 10+ SDK）。低版本 SDK 下 generator 静默跳过，导致 partial class 缺失编译失败。

| SDK 版本 | Roslyn 版本 | Generator 状态 |
|----------|-------------|----------------|
| 8.0.419 | 4.8.x | ❌ 静默跳过 |
| 9.0.312 | 4.14.0.0 | ❌ 静默跳过 |
| 10.0.201 | 5.0 | ✅ 正常生成 |

---

## 源码同步：Git 工作流（GitLab CE）

源码通过 GitLab CE（`${GITLAB_HOST}:8929`）统一管理，Ubuntu 和 Windows 都从 GitLab 拉取。

### 同步流程

**SuperRoky（Ubuntu → GitLab → Windows）：**
```
Ubuntu git commit + push → GitLab (revit-dev/superroky)
                              ↓
                    Windows git pull → dotnet build → deploy
```

**FmRoky（Ubuntu → GitLab → Windows）：**
```
Ubuntu git commit + push → GitLab (revit-dev/fmroky)
                              ↓
                    Windows git pull → dotnet build → deploy
```

> FmRoky 源码在 Ubuntu `~/revit-plugin-dev/Bim.FamilyManager/`（从 GitHub scotec 上游 clone）。
> Ubuntu 端 `origin` 指向 GitHub 上游，`gitlab` remote 指向 `http://${GITLAB_HOST}:8929/revit-dev/fmroky.git`。
> build-fmroky.sh 的 `sync_files()` 已对齐 SuperRoky：Ubuntu git commit + push → GitLab → Windows git pull。

- **Windows 端只 pull。** 所有代码改动必须在 Ubuntu 端完成并 push 到 GitLab，Windows 端只负责拉取、编译、部署。这样可以避免两端各自修改导致版本分叉。

### Git 凭据

> Git/SSH 凭据配置细节见 `revit-plugin-dev-workflow/references/environment.md`，本 skill 不重复。

### 踩坑记录

### 手动 scp + 编译 ≠ 部署
手动 `scp` 源码 + `ssh dotnet build` 只编译到 `bin/` 目录，**不会 Copy-Item 到 Addins 目录**。
必须走 `./build.sh` / `./build-fmroky.sh` 全流程才能确保部署。手动操作还会导致 Windows 端 git 脏状态（文件和 git 历史不同步），后续 `git pull` 被 reject。

### 重构拆分后，先追引用再猜修复
把胖类拆成多个 helper 后，编译错误经常不是“逻辑错了”，而是：
- 新文件缺 `using` / 命名空间引用
- 旧类里的内部方法/枚举还留在调用点
- 被拆出的常量、辅助方法还没迁移完

这类问题不要乱改一通。先用 `search_files` 找到所有调用点，再按错误信息逐个补齐引用，最后重新跑 `./build.sh` 做 Windows 侧真实验证。

### SSH 认证不要把密码写死在脚本里
```bash
# ✅ 正确：密码从环境变量读取，sshpass 仅作降级通道
export REMOTE_PASS='...'
./build.sh
```

```bash
# ❌ 错误：在脚本里硬编码 REMOTE_PASS
REMOTE_PASS="<hardcoded-password>"
```

**规则：**
- 脚本里不保留真实密码
- `sshpass` 只能读取 `REMOTE_PASS` 环境变量
- 若 SSH key 认证失败且 `REMOTE_PASS` 为空，脚本应直接退出并提示用户先配置凭据
- 如果有条件，优先配置 SSH key，避免依赖明文密码

### Windows 端 git 脏状态恢复
```bash
ssh Administrator@${REVIT_WINDOWS_HOST} "cd C:/Projects/SuperRoky && git checkout -- . && git clean -fd && git pull origin main --ff-only"
```

### 编译通过 ≠ API 存在
`dotnet build` 可能用了旧 DLL 缓存，编译通过但 API 实际不存在。
build.sh 全流程（clean + rebuild）更可靠。不确定的 API 先查 wiki 或 Revit API DLL。

### Windows 验证是最终裁判
Linux 上的本地编译只能做语法/引用预检，真正的 Revit/WPF 验证必须走 `./build.sh` 触发 Windows 端远程编译+部署。若远程编译失败，优先修仓库里的代码再重新跑 `./build.sh`，不要在 Windows 机器上手工改代码绕过主线。

> `wincredman` 的 credential store 警告可以忽略，只要远程 `dotnet build` 最终成功即可。

## 常见问题

**FmRoky 首次 push 到 GitLab（分支映射）：**
FmRoky 本地分支是 `develop`（从 GitHub scotec 上游 clone），GitLab 仓库默认分支是 `main`。
- 日常 push 用 `git push gitlab develop:main`（build-fmroky.sh 已配置）
- 首次 push 可能需要 `--force` + unshallow + 取消分支保护（见下方）
```bash
# 首次 push 前先 unshallow（GitHub clone 可能是 shallow）
cd ~/revit-plugin-dev/Bim.FamilyManager
git fetch --unshallow origin

# 如果 GitLab main 是保护分支，先临时取消保护
curl -s -X DELETE --header 'PRIVATE-TOKEN: <GITLAB_TOKEN>' \
  'http://${GITLAB_HOST}:8929/api/v4/projects/revit-dev%2Ffmroky/protected_branches/main'

# Force push（首次同步，Ubuntu 是 source of truth）
git push --force gitlab develop:main

# 重新保护 main 分支
curl -s -X POST --header 'PRIVATE-TOKEN: <GITLAB_TOKEN>' --header 'Content-Type: application/json' \
  --data '{"name":"main","push_access_level":30,"merge_access_level":30,"unprotect_access_level":40}' \
  'http://${GITLAB_HOST}:8929/api/v4/projects/revit-dev%2Ffmroky/protected_branches'
```

**git pull 冲突（force push 后 Windows ff-only 失败）：**
```bash
# Windows 端 - force push 后需要 reset 而不是 pull
cd C:\Projects\Bim.FamilyManager
git reset --hard origin/main
```

**git pull 冲突（本地有未提交改动）：**```bash
# Windows 端
cd C:\Projects\SuperRoky
git stash
git pull origin main --ff-only
git stash pop
```

**Git 历史分叉（Ubuntu push 被 reject）：**

初始设置时如果两端各自 `git init` 后用 `--allow-unrelated-histories` 合并，Ubuntu 本地的 commit 可能落在 merge commit 之前，导致 push 被 reject：
```bash
# Ubuntu 端先 rebase 再 push
cd ~/revit-plugin-dev/src/SuperRoky
git pull origin main --rebase
git push origin main
```

**Windows credential store 报错（可忽略）：**
```
fatal: Unable to persist credentials with the 'wincredman' credential store.
```
不影响 push/pull，token 已在 URL 中。

**FmRoky build-fmroky.sh 路径坑（2026-04-13 修复）：**
1. **编译路径**：csproj 在 `Source/Bim.FamilyManager/` 子目录下，编译命令必须用 `Source\\Bim.FamilyManager\\Bim.FamilyManager.csproj`，不能省 `Source\\`。
2. **部署 bin 路径**：DLL 输出在 `Source/Bim.FamilyManager/bin/Release/net8.0-windows/`，不是 `Bim.FamilyManager/bin/...`。
3. **.addin Assembly 路径必须与部署目录匹配**：源码 .addin 写的是 `Bim.FamilyManager\Bim.FamilyManager.dll`，但 deploy 脚本复制到 `FmRoky/` 子目录。Revit 按 .addin 里的 Assembly 相对路径找 DLL，找不到就报「外部工具 - 找不到附加模块程序集」。**源码 .addin 已改为 `FmRoky\Bim.FamilyManager.dll`**。

> ⚠️ **删除功能后必须同步清理：** 删除 Command 类后，记得同时删除：① .cs 文件 ② Resources/Icons 中的图标 ③ csproj 中的 `<Resource>` 引用 ④ Application.cs 中的 Ribbon 注册 ⑤ 测试文件。否则编译不过或 Revit 加载报错。

---

## .addin 文件格式

### SuperRoky.addin
```xml
<?xml version="1.0" encoding="utf-8"?>
<RevitAddIns>
   <AddIn Type="Application">
      <Name>SuperRoky</Name>
      <Assembly>SuperRoky\SuperRoky.dll</Assembly>
      <AddInId>xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx</AddInId>
      <FullClassName>SuperRoky.Application</FullClassName>
      <VendorId>RKY</VendorId>
      <VendorDescription>Roky, info@roky.com</VendorDescription>
   </AddIn>
</RevitAddIns>
```

### FmRoky.addin
```xml
<?xml version="1.0" encoding="utf-8"?>
<RevitAddIns>
   <AddIn Type="Application">
      <Name>FmRoky</Name>
      <Assembly>FmRoky\Bim.FamilyManager.dll</Assembly>
      <AddInId>767167BD-79B6-4B62-A8DE-D0C32E217B75</AddInId>
      <FullClassName>Bim.FamilyManager.RevitFamilyManagerAppFactory</FullClassName>
      <VendorId>scotec</VendorId>
      <VendorDescription>scotec Software Solutions AB</VendorDescription>
   </AddIn>
</RevitAddIns>
```

**GitLab unhealthy / 502 / OOM：**
GitLab CE 在 Unraid Docker 上内存 15.7GB/16GB (98%) 易 OOM，Puma 无响应导致 HTTP reset。
- 症状：TCP 握手成功但 HTTP 响应阶段 `Connection reset by peer`，workhorse 日志 `badgateway: failed to receive response`
- 恢复：`docker restart gitlab`，容器 healthy 后 Puma 仍需 3-5 分钟预热
- 验证：`curl -s -o /dev/null -w "%{http_code}" http://${GITLAB_HOST}:8929/` 返回 302 才算就绪
- 原因：Unraid 内核不支持 swap cgroup，容器 16GB 硬限无 swap 缓冲

**Unraid Docker 端口从 sandbox (${DEV_HOST}) RST：**
sandbox（openclaw VM）挂载在 Unraid br1 上，但 Docker 回包路由走 br0，造成路由不对称导致 RST。
- 症状：TCP 握手成功，HTTP 请求后立即 RST。所有 Docker 映射端口都受影响（非 Docker 端口如 SSH 22 正常）
- 诊断：`ip route get ${DEV_HOST}` 显示走 br0 而不是 br1
- 修复：`ip route add ${DEV_HOST}/32 dev br1`
- 持久化：写入 `/boot/config/go` 末尾
- 根本方案：将 openclaw VM 网络从 br1 改为 br0（Unraid WebGUI → VMs → 编辑）

**🚨 Break-Glass（仅限人工批准）：GitLab 不可用时的灾备直传**

> ⚠️ **默认禁止。** 这不是常规流程，只能用于 **P0 阻断** 且用户已明确批准的 break-glass 场景。
>
> 执行前必须满足：
> 1. GitLab / 主同步链路已确认不可用；
> 2. 用户明确批准本次跳过 Git 主线；
> 3. 在 `revit-plugin-dev-workflow` 的 break-glass 日志中补登记本次例外；
> 4. 修复后必须回到主线，补做审查与状态清理。
>
> **风险：** 该方案会绕开 Ubuntu → GitLab → Windows 的主拓扑，容易造成 Windows git 状态污染。除非是 P0 紧急阻断，否则别碰。

```bash
# 1. 打包源码
cd ~/revit-plugin-dev/src/SuperRoky
tar czf /tmp/superroky-src.tar.gz --exclude='.git' --exclude='bin' --exclude='obj' .

# 2. SCP 到 Windows
sshpass -p '***' scp -o StrictHostKeyChecking=no /tmp/superroky-src.tar.gz Administrator@${REVIT_WINDOWS_HOST}:C:/Projects/SuperRoky/  # 凭据见 GBrain

# 3. 解压 + 编译 + 部署
sshpass -p '***' ssh -o StrictHostKeyChecking=no Administrator@${REVIT_WINDOWS_HOST} \
  "cd C:/Projects/SuperRoky && tar xzf superroky-src.tar.gz && del superroky-src.tar.gz && \
   powershell -Command \"Set-Location 'C:/Projects/SuperRoky'; dotnet build source/SuperRoky.csproj -c Release.R26 --no-incremental -v minimal\""
```
> ⚠️ Windows 上用 `del` 而非 `rm` 删除文件。`rm` 会报"不是内部命令"。

**Ubuntu .addin 文件格式**

> ⚠️ **Scotec.Revit 的 .addin 注意事项：**
> - `FullClassName` 不是开发者写的 Application 类，而是 **Scotec source generator 自动生成的 Factory 类**（命名规则：`{原始类名去掉App}AppFactory`，如 `RevitFamilyManagerApp` → `RevitFamilyManagerAppFactory`）
> - `FullClassName` 前后不能有空格，否则 Revit 无法加载
> - `Assembly` 必须是 `FmRoky\Bim.FamilyManager.dll`（子目录+正确文件名），不是 `FmRoky.Bim.FamilyManager.dll`

> ⚠️ `.addin` 文件放在 `C:\ProgramData\Autodesk\Revit\Addins\2026\` 根目录，Assembly 路径相对于 `.addin` 文件位置（子文件夹模式）。

---

## 常见编译问题

### MSB3246 警告（.NET 10 SDK + Revit API DLL）
```
warning MSB3246: 解析的文件包含错误图像、无元数据或不可访问。PE image does not have metadata.
```
**可忽略。** .NET 10 SDK (Roslyn 5.0) 解析 Revit API DLL（.NET Framework 4.8 目标）时发出，因为 .NET Framework 程序集没有 .NET 8+ 的元数据格式。Scotec.Revit / FmRoky 项目下每个 csproj 会产生 7 条，总量很多但全是噪音，不影响编译和运行。

SuperRoky（Nice3point + .NET 8 SDK）不会出现此警告。

### CS0219 警告（Scotec source generator 生成代码）
```
warning CS0219: 变量"sharedContextName"已被赋值，但从未使用过它的值
```
来自 Scotec.Revit.Isolation source generator 自动生成的 `RevitAssemblyLoadContextInitializer.g.cs`，不是开发者写的代码，无法修改，可忽略。

### Revit 运行时 DLL 被锁（常见于 MSB3231）
```
Access to the path 'CommunityToolkit.Mvvm.dll' is denied.
```
或：
```
Nice3point.Revit.Publish.targets(...): error MSB3231: 无法移除目录 ... Access to the path 'Nice3point.Revit.Extensions.dll' is denied.
```
**根因**：Windows 上仍有 `Revit.exe` 占用 Addins 目录，导致 build 脚本在清理/复制阶段失败。

**快速处置（先查再杀再重跑）：**
```bash
# 1) 查 Revit 进程
~/.hermes/skills/revit/scripts/use-private-env.sh /bin/bash -lc \
  'ssh Administrator@${REVIT_WINDOWS_HOST} "tasklist | findstr /I Revit.exe"'

# 2) 若存在进程，强制关闭
~/.hermes/skills/revit/scripts/use-private-env.sh /bin/bash -lc \
  'ssh Administrator@${REVIT_WINDOWS_HOST} "taskkill /F /IM Revit.exe"'

# 3) 重新执行标准构建入口
cd ~/revit-plugin-dev && ./build.sh
# 或
cd ~/revit-plugin-dev && ./build-fmroky.sh
```

**门禁建议**：看到上述 MSB3231/Access denied 时，不要继续猜代码问题，先按“进程占用”路径处理。

### 编译报错 "SDK not recognized"
```powershell
dotnet nuget list source
dotnet restore
```

### Ubuntu 上 `dotnet sln add` 失败
`<UseWPF>true</UseWPF>` 依赖 WindowsDesktop SDK，Ubuntu 没有。在 Windows 上执行 sln 操作，再同步回 Ubuntu：
```bash
ssh ... "cd C:/Projects/MyPlugin && dotnet sln add source/MyPlugin.csproj"
scp ... Administrator@${REVIT_WINDOWS_HOST}:C:/Projects/MyPlugin/MyPlugin.sln ~/revit-plugin-dev/src/MyPlugin/MyPlugin.sln
```

### dotnet add 不支持 configuration
Nice3point.Sdk 用 `$(RevitVersion).*` 作为包版本，`dotnet add package` 不接受 `-c` 参数，导致 restore 失败。**直接编辑 csproj 添加 `<PackageReference>`。**

### Revit 2026 API 变更（vs 2024/2025）
- `ElementId.IntegerValue` → `ElementId.Value`（long 类型）
- `Element.IsPhaseCreatedValid(Phase)` → `Element.IsPhaseCreatedValid(ElementId)`（接受 ElementId 而非 Phase 对象）
- `Element.IsPhaseDemolishedValid` 同理
- `Element.CreatedPhaseId` / `Element.DemolishedPhaseId` 可读写，但部分元素（如 Dimension、Sketch）不支持，直接读会抛 `The element does not have properties CreatedPhaseId and DemolishedPhaseId`，必须先 `IsPhaseCreatedValid` 验证
- `Group.GetMemberIds()` 只返回直接成员，**嵌套 Group 需要递归展开**
- 访问 Phase 属性前先用 `IsPhaseCreatedValid(testPhaseId)` 探测元素是否支持，不支持则跳过（try-catch 兜底）

### Group 阶段修改注意事项
- 选中 Group 后 `PickObjects` 完成方式是点 Revit 界面的"完成"按钮，不是右键
- Group 内可能混有不支持 Phase 的元素（标注、线、Sketch），必须过滤
- `IsPhaseCreatedValid(ElementId)` 返回 true **不等于** `CreatedPhaseId` 可写。某些元素通过 Valid 检查但赋值时仍抛 `The element does not have properties CreatedPhaseId and DemolishedPhaseId`
- **必须用逐元素独立 Transaction**（每个元素一个 tx），单个 Transaction 内批量修改会导致 Commit 时整批回滚
- 每个元素的 `CreatedPhaseId` 和 `DemolishedPhaseId` 赋值都要独立 try-catch
- Phase 排序规则：数字阶段名按数值；非数字阶段名保持 `FilteredElementCollector` 返回顺序。`doc.PhasesSize` / `doc.get_Phase(index)` 在 Revit 2026 API 中不存在。

### 移除 Polyfill
```xml
<!-- 删除：Polyfill 10.0.0 注入 C#12 语法，与 net48-windows 不兼容 -->
<PackageReference Include="Polyfill" Version="10.0.0" />
```
已安装过则清除缓存：`Remove-Item -Path $env:USERPROFILE\.nuget\packages\polyfill -Recurse -Force`

---

## 项目初始化（仅首次）

```bash
# 安装模板（Windows 上）
ssh -i ~/.ssh/id_ed25519 Administrator@${REVIT_WINDOWS_HOST} \
  "dotnet new install Nice3point.Revit.Templates"

# 创建项目（Windows 上）
ssh -i ~/.ssh/id_ed25519 Administrator@${REVIT_WINDOWS_HOST} \
  "cd C:/Projects && dotnet new revit-addin -n MyPlugin --RevitVersion 2026"

# 同步回 Ubuntu
rsync -avz Administrator@${REVIT_WINDOWS_HOST}:C:/Projects/MyPlugin/ ~/revit-plugin-dev/src/MyPlugin/

# 加入 sln（Windows 上执行，再同步）
ssh ... "cd C:/Projects/MyPlugin && dotnet sln add source/MyPlugin.csproj tests/MyPlugin.Tests.csproj"
```

## 发布流程

1. 单元测试通过
2. 手动 Revit 测试通过
3. `./build.sh --build-only --config=Release.R26`
4. Windows 上 `dotnet publish -c Release.R26 -o ./publish`
5. 下载到 Ubuntu：`rsync ... C:/Projects/MyPlugin/publish/ ~/revit-plugin-dev/release/`
6. 打包：`zip -r MyPlugin-v1.0.0.zip .`

**发布包内容：** `*.dll` + `Nice3point.*.dll` + `*.addin` + `Resources/Icons/`

---

## 插件功能现状（2026-04-15 更新）

> 完整插件对比见 `revit-plugin-dev-workflow/references/features.md`（状态追踪），或 workflow SKILL 的阶段总览。

### SuperRoky（Nice3point 框架）✅

| 功能 | 说明 | Ribbon |
|------|------|--------|
| 仙人板板 | 修改楼板结构层厚度、参照标高和材质，创建新楼板类型 | ✅ `仙人板板` |
| 组元阶段 | 批量修改 Group 内构件的 CreatedPhaseId / DemolishedPhaseId | ✅ `组元阶段` |
| Material Browser | 材质浏览器对话框（View 已写好） | 🔲 规划中 |

> ⚠️ **List Walls 功能已删除**（2026-04-13）。代码、图标、测试全部移除。

### FmRoky（Scotec 框架）✅

**架构决策：独立插件，零代码集成。** 与 SuperRoky 各跑各的，只共存在同一 Addins 目录。

| 功能 | 说明 |
|------|------|
| FamilyExplorer | 树形文件夹浏览：族源→文件夹树→族文件列表+预览 |
| FamilyNavigator | 网格/卡片平铺浏览所有活跃族源 |
| 搜索 | 全文搜索所有活跃族源 |
| 预览图 | 优先 EStorage 自定义预览 → 回退 Revit 内置预览 |
| 拖放加载族 | 双击或拖放到 Revit 视图 |
| 设置面板 | 族源管理（增删改、启用/禁用） |
| 创建预览图 | 为族文件生成预览图写入 EStorage |

> 框架对比与环境矩阵见 `revit-plugin-dev-workflow/references/environment.md`，或 `revit-coding-patterns → references/scotec-patterns.md` 末尾，本 skill 不重复。

