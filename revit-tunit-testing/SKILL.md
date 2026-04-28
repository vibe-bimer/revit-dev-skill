---
name: revit-tunit-testing
description: Nice3point TUnit 框架在 Revit 插件项目中的工程规范。覆盖测试项目结构、RevitApiTest 基类、HookExecutor 注解、Document Fixture、常见错误。触发条件：写测试、运行测试、测试报错、CI 配置。
metadata:
  author: Hermes/Roky
  revit_version: "2026"
  framework: Nice3point.TUnit.Revit
---

# Revit TUnit 测试工程规范

本文档覆盖 Nice3point TUnit 测试框架在 Revit 插件中的实践规范。Phase 5 实测可编译。

---

## 测试项目结构

```
src/MyPlugin/
├── source/                      ← 主项目源码
├── tests/                       ← TUnit 测试（依赖 Revit API，需 Windows + Revit）
│   ├── TestsConfiguration.cs    ← [assembly: TestExecutor] 注册，全局一份
│   ├── RevitTests.cs            ← RevitApiTest 基类（可选自定义）
│   ├── MyPlugin.Tests.csproj
│   └── Commands/                ← 测试文件按源码目录组织
│       └── MyCommandTests.cs
└── tests/MyPlugin.Services.Tests/  ← 纯单元测试（无 Revit 依赖，链接源码）
    ├── MyPlugin.Services.Tests.csproj
    └── FamilyPreviewServiceTests.cs
```

> 注意：TUnit 测试的 .csproj 扁平放在 `tests/` 下（`tests/MyPlugin.Tests.csproj`）。
> 纯单元测试（无 Revit 依赖）另建子目录 `tests/MyPlugin.Services.Tests/`，用 xUnit + 链接源码。

**TestsConfiguration.cs（必须，全局注册）：**
```csharp
using Nice3point.TUnit.Revit.Executors;
using TUnit.Core;

[assembly: TestExecutor(typeof(RevitThreadExecutor))]
```

**RevitTests.cs（可选，自定义基类）：**
```csharp
using Nice3point.TUnit.Revit;
using Autodesk.Revit.ApplicationServices;

namespace MyPlugin.Tests;

/// <summary>
/// 自定义测试基类，可在此添加项目级共享 fixture。
/// 所有测试类继承此基类，而非直接继承 RevitApiTest。
/// </summary>
public abstract class RevitTests : RevitApiTest
{
    // 可在此添加项目共享的 Document fixture
    protected Document TestDocument { get; private set; } = null!;

    [Before(Test)]
    [HookExecutor<RevitThreadExecutor>]
    public void CreateTestDocument()
    {
        TestDocument = Application.NewProjectDocument(UnitSystem.Metric);
    }

    [After(Test)]
    [HookExecutor<RevitThreadExecutor>]
    public void CloseTestDocument()
    {
        TestDocument?.Close(false);
    }
}
```

---

## RevitApiTest 基类

| 属性/方法 | 类型 | 说明 |
|-----------|------|------|
| `static Application Application` | `Autodesk.Revit.ApplicationServices.Application` | Revit 连接，**所有测试共享**，不要自己 new |
| `InitializeRevitConnection()` | `void` | TestSession 开始时调用，建立连接 |
| `TerminateRevitConnection()` | `void` | TestSession 结束时调用，释放连接 |

**生命周期：**
```
TestSession Start
  └─ InitializeRevitConnection()
       └─ Application 属性可用
  │
  ├─ Test A: [HookExecutor<RevitThreadExecutor>]
  │
  ├─ Test B: [HookExecutor<RevitThreadExecutor>]   ← 串行（并行度=1）
  │
  └─ TestSession End
       └─ TerminateRevitConnection()
```

**Application 是共享的，只读场景直接用：**
```csharp
[Test]
[HookExecutor<RevitThreadExecutor>]
public async Task MyTest()
{
    var doc = Application.NewProjectDocument(UnitSystem.Metric);
    // ...
    doc.Close(false);
}
```

---

## 注解规范（必须全部标注）

```csharp
public sealed class MyCommandTests : RevitApiTest
{
    [Before(Test)]
    [HookExecutor<RevitThreadExecutor>]    // ← Before 必须
    public void Setup() { }

    [After(Test)]
    [HookExecutor<RevitThreadExecutor>]   // ← After 必须
    public void Teardown() { }

    [Test]
    [HookExecutor<RevitThreadExecutor>]   // ← Test 必须
    public async Task MyTest() { }
}
```

**⚠️ 如果漏标 `[HookExecutor]`：**
- 方法在普通线程执行
- 调用 Revit API → `Autodesk.Revit.Exceptions.InvalidOperationException: RPC server unavailable` 或类似异常
- **症状：**测试本地跑没问题，CI 上跑全挂 → 先查 CI runner 是否有 Revit

---

## Document Fixture 模式

### 模式 A：测试类内私有 Document（推荐）

每个测试方法独立文档，互不干扰：

```csharp
public sealed class ListWallTypesCommandTests : RevitApiTest
{
    private Document _document = null!;

    [Before(Test)]
    [HookExecutor<RevitThreadExecutor>]
    public void SeedModel()
    {
        _document = Application.NewProjectDocument(UnitSystem.Metric);
    }

    [After(Test)]
    [HookExecutor<RevitThreadExecutor>]
    public void CloseModel()
    {
        _document.Close(false);
    }

    [Test]
    [HookExecutor<RevitThreadExecutor>]
    public async Task WallTypes_DefaultTemplate_HasAtLeastOneWallType()
    {
        var wallTypes = new FilteredElementCollector(_document)
            .OfClass<WallType>()
            .WhereElementIsElementType()
            .ToElements()
            .Cast<WallType>()
            .ToList();

        await Assert.That(wallTypes).IsNotEmpty();
    }
}
```

### 模式 B：共享 TestSession 级 Document（谨慎使用）

同一 TestSession 内所有测试共享一个 Document，**仅在测试间无副作用时使用**：

```csharp
public abstract class SharedDocTests : RevitApiTest
{
    protected static Document SharedDoc { get; private set; } = null!;

    [Before(TestSession)]
    [HookExecutor<RevitThreadExecutor>]
    public void CreateSharedDoc()
    {
        SharedDoc = Application.NewProjectDocument(UnitSystem.Metric);
    }

    [After(TestSession)]
    [HookExecutor<RevitThreadExecutor>]
    public void CloseSharedDoc()
    {
        SharedDoc?.Close(false);
    }
}
```

---

## FilteredElementCollector 在测试中的正确用法

核心规则：**`ToElements()` 必须在 `Cast<T>()` 和 LINQ 之前调用**，因为它触发查询并恢复类型推断。

```csharp
// ✅ Level — 实例元素，不是 ElementType，不要加 WhereElementIsElementType()
var levels = new FilteredElementCollector(_document)
    .OfClass<Level>()
    .ToElements()
    .Cast<Level>()
    .OrderBy(l => l.Elevation)
    .ToList();

// ✅ WallType — ElementType 子类，需要 WhereElementIsElementType()
var wallTypes = new FilteredElementCollector(_document)
    .OfClass<WallType>()
    .WhereElementIsElementType()
    .ToElements()
    .Cast<WallType>()
    .ToList();

// ❌ 错误：OrderBy 在 ToElements() 之前 → CS1061: Element does not contain "Elevation"
var bad = new FilteredElementCollector(_document)
    .OfClass<Level>()
    .OrderBy(l => l.Elevation)  // ← 类型推断断裂
    .ToElements()
    .Cast<Level>();
```

**判断法则：**
| 类型 | 是 ElementType？ | 需要 `WhereElementIsElementType()`？ |
|------|:-:|:-:|
| `Level`, `Floor`, `Wall`（实例） | ❌ | ❌ **加了过滤掉全部** |
| `WallType`, `FloorType`, `DimensionType` | ✅ | ✅ |
| `Material`, `GraphicsStyle` | ✅ 但 `OfClass` 已限定 | ❌ 可加可不加 |

---

## 断言风格

TUnit 原生异步断言：

```csharp
await Assert.That(value).IsEqualTo(5);
await Assert.That(value).IsNotNull();
await Assert.That(list).IsNotEmpty();
await Assert.That(list.Count).IsGreaterThan(0);
await Assert.That(action).ThrowsException<ArgumentNullException>();
await Assert.That(async () => await Foo()).ThrowsExceptionAsync<InvalidOperationException>();
```

---

## 运行测试

### 本地（Windows，Revit 已安装）
```powershell
cd C:/Projects/MyPlugin
dotnet test tests/MyPlugin.Tests.csproj -c Debug.R26
```

### CI（GitHub Actions self-hosted，Revit 安装在 runner）
```yaml
# .github/workflows/TestRevit.yml
jobs:
  test:
    runs-on: self-hosted    # ← 必须是有 Revit 的 runner
    steps:
      - uses: actions/checkout@v6
      - name: Run TUnit tests
        run: dotnet test tests/MyPlugin.Tests.csproj -c Release.R26
```

**⚠️ GitHub-hosted runner（ubuntu-latest / windows-latest）没有 Revit**，测试会失败。CI 必须用 self-hosted runner。

---

## 常见错误

| 错误 | 原因 | 解决 |
|------|------|------|
| `Autodesk.Revit.Exceptions.InvalidOperationException: RPC server unavailable` | 测试方法没有 `[HookExecutor<RevitThreadExecutor>]` | 补上注解 |
| `CS1061: Element does not contain "Elevation"` | `OrderBy` 在 `ToElements()` 之前 | 调整顺序 |
| `CS0120: Static property cannot be accessed via instance` | `Application` 是静态属性但用 `this.Application` | 去掉 `this.` |
| 测试在 CI 挂、本地跑得过 | CI runner 没有 Revit | 用 self-hosted runner |
| `ToElements()` 找不到 | `using Autodesk.Revit.DB;` 缺失，或扩展方法命名冲突 | 显式 using |
| `Count` 是方法组而非属性 | `Where(...).Count` 被推断为 LINQ `Count()` 方法组，不是属性 | 用 `.Count` 属性（ToList 后）或 `.Count()` 方法 |

---

## 依赖版本（与 Nice3point.Revit 生态对齐）

```xml
<!-- MyPlugin.Tests.csproj -->
<ItemGroup>
    <PackageReference Include="Nice3point.TUnit.Revit" Version="2026.*" />
    <PackageReference Include="Nice3point.Revit.Api.RevitAPI" Version="2026.*" />
    <PackageReference Include="Nice3point.Revit.Api.RevitAPIUI" Version="2026.*" />
</ItemGroup>
```

**csproj Configurations 必须清理旧版 Revit：**
```xml
<!-- ✅ 正确 -->
<Configurations>Debug.R26;Debug.R27</Configurations>
<Configurations>$(Configurations);Release.R26;Release.R27</Configurations>
```

---

## 纯单元测试（不依赖 Revit SDK）

Revit 插件中有些服务（如 `FamilyPreviewService`）完全不调用 Revit API，但仍放在主项目里。直接引用主项目会拉入 Revit SDK → CI 必须装 Revit → 不行。

### 方案：链接源码 + xUnit

```
tests/
├── SuperRoky.Tests/               ← TUnit + Revit SDK（需要 Revit 环境）
└── SuperRoky.Services.Tests/      ← xUnit + 链接源码（任何机器都能跑）
    ├── SuperRoky.Services.Tests.csproj
    ├── OleTestFixture.cs          ← 用 OpenMcdf 创建合成 .rfa 文件
    └── FamilyPreviewServiceTests.cs
```

**csproj 关键配置：**
```xml
<Project Sdk="Microsoft.NET.Sdk">
    <PropertyGroup>
        <TargetFramework>net8.0-windows</TargetFramework>
        <UseWPF>true</UseWPF>
        <IsTestProject>true</IsTestProject>
    </PropertyGroup>

    <ItemGroup>
        <PackageReference Include="xunit" Version="2.9.3"/>
        <PackageReference Include="xunit.runner.visualstudio" Version="3.0.2">
            <IncludeAssets>runtime; build; native; contentfiles; analyzers; buildtransitive</IncludeAssets>
            <PrivateAssets>all</PrivateAssets>
        </PackageReference>
        <PackageReference Include="Microsoft.NET.Test.Sdk" Version="17.13.0"/>
        <!-- 被测代码的非 Revit 依赖 -->
        <PackageReference Include="OpenMcdf" Version="3.1.0"/>
    </ItemGroup>

    <!-- ⚠️ 链接源码，不引用主项目。路径从 csproj 位置算起 -->
    <ItemGroup>
        <Compile Include="..\..\source\Services\FamilyPreviewService.cs" Link="Services\FamilyPreviewService.cs"/>
        <Compile Include="..\..\source\Models\FamilyInfo.cs" Link="Models\FamilyInfo.cs"/>
    </ItemGroup>
</Project>
```

**踩坑：**
- **链接路径**：从测试 csproj 位置算起。`tests/SuperRoky.Services.Tests/` → 源码在 `source/` → 需要 `..\..\source\`（不是 `..\source\`）
- **`System.Windows.Application` vs `SuperRoky.Application` 冲突**：被测代码如果用到 `Application.Current`，链接过来后和主项目的 `Application` 类命名冲突。用全限定名 `System.Windows.Application.Current`
- **被测文件的 using 需要在测试项目也能解析**：如果有 `using SuperRoky.ViewModels` 之类的主项目命名空间引用，需要确保链接了对应文件或加 `global using`

### OpenMcdf 合成 Fixture

用 OpenMcdf 3.x 的 `RootStorage.Create()` + `CreateStream()` 程序化生成 OLE 文件，模拟 `.rfa` 结构：

```csharp
using OpenMcdf;

internal static class OleTestFixture
{
    // 模拟含 Revit BMP 预览的 .rfa
    public static string CreateWithRevitPreview(string path)
    {
        using var root = RootStorage.Create(path);
        using var stream = root.CreateStream("RevitPreview");
        stream.Write(CreateTestBitmap(32, 32, Color.Blue)); // BMP bytes
        return path;
    }

    // 模拟含自定义 PNG 预览的 .rfa
    public static string CreateWithCustomPreview(string path)
    {
        using var root = RootStorage.Create(path);
        var storage = root.CreateStorage("BIM.FamilyManager");
        var images = storage.CreateStorage("PreviewImages");
        using var stream = images.CreateStream("FamilyPreviewImage");
        stream.Write(CreateTestPng(32, 32, Color.Green)); // PNG bytes
        return path;
    }
}
```

**OpenMcdf 3.x 注意：**
- 流名不允许 `\` `/` `:` `!` 字符 → `ArgumentException`。真实 .rfa 里可能有 `\RevitPreview`，但 OpenMcdf API 无法创建这种名字的流，测试要跳过
- `CfbStream.Read()` 返回 `byte[]`（不是 `int` 返回值）
- `RootStorage.Create(path)` 创建新文件，`RootStorage.OpenRead(path)` 只读打开

### xUnit vs TUnit 断言差异

```csharp
// xUnit（纯单元测试项目）
Assert.NotNull(result);
Assert.Equal(64, result.PixelWidth);
Assert.Same(expected, actual);
await Assert.ThrowsAnyAsync<OperationCanceledException>(() => ...);
// 注意：Task.Run 包装的 cancellation 抛 TaskCanceledException（OCE 的子类）
// 用 ThrowsAnyAsync 而不是 ThrowsAsync

// TUnit（Revit 测试项目）
await Assert.That(value).IsNotNull();
await Assert.That(value).IsEqualTo(64);
```

---

## 附录：SuperRoky 测试文件清单

```
tests/
├── TestsConfiguration.cs              ← [assembly: TestExecutor] 全局注册
├── RevitTests.cs                      ← RevitApiTest 自定义基类
├── ListWallTypesCommandTests.cs       ← 3 个测试
├── XianRenBanBanCommandTests.cs       ← 4 个测试
└── SuperRoky.Services.Tests/          ← 纯单元测试（xUnit + 链接源码）
    ├── FamilyPreviewServiceTests.cs
    └── OleTestFixture.cs
```

> ⚠️ **tests/tests/ 重复目录陷阱：** 如果 tests 目录下意外出现 `tests/tests/` 子目录（含重复的 .cs 文件），`dotnet build` 可能解析到错误的文件导致编译错误。发现时直接删除：
> ```bash
> rm -rf ~/revit-plugin-dev/src/SuperRoky/tests/tests/
> ```
