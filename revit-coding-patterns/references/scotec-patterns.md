# Scotec/FmRoky 专属踩坑

> 本文档是 `revit-coding-patterns` 的框架专属补充，记录 Scotec.Revit 生态内的特殊问题和解决方案。
>
> **通用 Revit/WPF 问题** → `revit-coding-patterns` SKILL.md
> **Nice3point/SuperRoky 专属问题** → `nice3point-patterns.md`

---

## .NET SDK 版本（关键！）

### Scotec.Revit.Isolation 需要 .NET 10 SDK

Scotec.Revit.Isolation 的 source generator 需要 Roslyn 5.0（.NET 10+ SDK）。**低版本 SDK 下 generator 静默跳过**，导致 `partial class` 缺失，编译失败但无明确报错。

| SDK 版本 | Roslyn 版本 | Generator 状态 |
|----------|-------------|----------------|
| 8.0.419 | 4.8.x | ❌ 静默跳过 |
| 9.0.312 | 4.14.0.0 | ❌ 静默跳过 |
| 10.0.201 | 5.0 | ✅ 正常生成 |

**症状：** 编译报错 `CS0263`（partial class 缺失）或类似 "cannot find definition for..." 但找不到具体原因。

**修复：** 确保 FmRoky 项目用 .NET 10.0.201：

```bash
# 验证 Windows 端 .NET SDK 版本
ssh Administrator@${REVIT_WINDOWS_HOST} "dotnet --list-sdks"

# 如果没有 10.x，需要安装
# https://dotnet.microsoft.com/download/dotnet/10.0
```

**FmRoky 的 global.json 必须指向 .NET 10.0.201：**

```json
{
  "sdk": {
    "version": "10.0.201",
    "rollForward": "latestMajor",
    "allowPrerelease": false
  }
}
```

> ⚠️ **与 SuperRoky 的 global.json 不兼容：** 两个项目各自有独立的 global.json（在不同目录），互不影响。但同一台 Windows 机器上两个 SDK 版本可以共存。

---

## C# 语言版本

### C# 13 `field` 关键字与 source generator 冲突

Scotec source generator 会扫描字段声明。如果代码使用了 C# 13 的 `field` 关键字（隐式字段），source generator 无法正确识别，导致生成的 `partial class` 代码与实际不匹配。

**受影响代码（4处，都是 MVVM backing field）：**

```csharp
// ❌ C# 13 field keyword — source generator 识别不了
public string Name
{
    get => field;
    set => field = value;
}

// ✅ 显式 backing field — source generator 正常识别
private string _name = string.Empty;
public string Name
{
    get => _name;
    set => _name = value;
}
```

**受影响文件（FmRoky 源项目）：**
- `Bim.FamilyManager/Source/Bim.FamilyManager.Ui/ViewModels/FamilyManagerViewModel.cs` — `_selectedFamilySource`、`_selectedFamilyCategory`、`_currentFamily`、`_selectedTabIndex` 共 4 个属性

> ⚠️ **从 GitHub scotec 上游 pull 代码后，如果上游用了 field keyword，必须手动改回显式 backing field。**

---

## null 检查写法

### `?.` 链式调用在某些场景下 source generator 解析失败

FmRoky 源项目中有一处写法：

```csharp
// ❌ source generator 解析 `?.` 时可能出问题
previewStream?.Position = 0;

// ✅ 改用 if-not-null 判断
if (previewStream is not null)
{
    previewStream.Position = 0;
}
```

**受影响文件：** `Bim.FamilyManager/Source/Bim.FamilyManager.Base/Models/RevitFamily.cs`

---

## RevitYear 配置

### appsettings.json 必须指定正确的 Revit 版本

```json
{
  "RevitYear": 2026,
  "SettingsFile": "C:\\Users\\...\\AppData\\Roaming\\Bim.FamilyManager\\2026\\settings.json",
  "WorkingDirectory": "C:\\Users\\...\\AppData\\Roaming\\Bim.FamilyManager\\2026"
}
```

> ⚠️ **从 2025 升级到 2026 后必须改这里**，否则插件去错误目录找配置和族缓存。

---

## .addin 文件格式（Scotec 专属）

### FullClassName 是 source generator 生成的 Factory 类

`.addin` 里的 `FullClassName` **不是**开发者写的 Application 类，而是 **Scotec source generator 自动生成的 Factory 类**：

| 开发者写的类 | Generator 生成的类 |
|-------------|-------------------|
| `RevitFamilyManagerApp` | `RevitFamilyManagerAppFactory` |
| `MyCustomApp` | `MyCustomAppFactory` |

**命名规则：** `{原始类名去掉App}AppFactory`

### .addin 格式示例

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

> ⚠️ **FullClassName 前后不能有空格**，否则 Revit 无法加载。

### Assembly 路径是子目录模式

`.addin` 文件放在 `C:\ProgramData\Autodesk\Revit\Addins\2026\` 根目录，`Assembly` 写子目录相对路径：

```
Assembly = "FmRoky\Bim.FamilyManager.dll"
```

不是 `FmRoky.Bim.FamilyManager.dll`，也不是绝对路径。

---

## 与其他框架的差异速查

| 维度 | Nice3point/SuperRoky | Scotec/FmRoky |
|------|---------------------|----------------|
| DI | MS.DI | Autofac |
| 隔离 | `EnableDynamicLoading` | `Scotec.Revit.Isolation` |
| .NET SDK | 8.0.419 | **10.0.201** |
| .addin 生成 | `DeployAddin=true` | 手动写 .addin |
| Ribbon Tab | 自己创建 | scotec tab（共用） |
| .addin FullClassName | 开发者写的类 | Generator 生成的 `{xxx}AppFactory` |
| MVVM backing field | `[ObservableProperty]` (Nice3point) | 显式 `_field` |

> 完整框架对比表见 `revit-build-deploy` SKILL.md。
