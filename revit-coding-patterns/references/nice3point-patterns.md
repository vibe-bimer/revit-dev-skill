# Nice3point 框架专属踩坑

> 本文档是 `revit-coding-patterns` 的框架专属补充，记录 Nice3point.Revit.Sdk 生态内的特殊问题和解决方案。
>
> **通用 Revit/WPF 问题** → `revit-coding-patterns` SKILL.md
> **Scotec/FmRoky 专属问题** → `scotec-patterns.md`

---

## 程序集加载

### 第三方 DLL 必须在 static 构造函数里解析

Revit 启动时，`AssemblyLoadContext` 默认不扫描插件子目录。Nice3point 框架在调用 `OnStartup()` 之前就会触发 XAML 解析（DockablePane 类型扫描等），如果解析器放在 `OnStartup()` 里，此时还没注册，第三方 DLL 仍然找不到。

**修复：把解析器注册放在 static 构造函数里。**

```csharp
using System.IO;
using System.Reflection;
using System.Runtime.Loader;

public class Application : ExternalApplication
{
    static Application()
    {
        var pluginDir = Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location)!;
        AssemblyLoadContext.Default.Resolving += (context, name) =>
        {
            var path = Path.Combine(pluginDir, $"{name.Name}.dll");
            return File.Exists(path) ? context.LoadFromAssemblyPath(path) : null;
        };
    }

    public override void OnStartup()
    {
        // ...
    }
}
```

> ⚠️ **必须用 `static` 构造函数**，不能放在 `OnStartup()` 里。
> ⚠️ 需要 `using System.IO;`（`Path` 和 `File` 在 System.IO 里）。

---

## API 兼容性

### RevitCommandId.LookupPostableCommand() 在 Nice3point.Toolkit 中可能不存在

```csharp
// ❌ Nice3point.Toolkit 中可能不存在此方法
UIApplication.PostCommand(RevitCommandId.LookupPostableCommand(PostableCommand.PlaceFamily))

// ✅ 直接用原生 Revit API，不依赖 Nice3point 包装
```

### Revit 2026 中不存在的 API（Nice3point 场景常见误用）

以下 API 在网上教程/博客中常见，但 **Revit 2026 中不存在**：

| 不存在的 API | 替代方案 |
|---|---|
| `Family.FamilyPath` | 项目内族没有文件路径。用 `$\"[项目内嵌] {family.Name}\"` 占位，或 `doc.EditFamily(family)` 打开族文档后读 `familyDoc.PathName`（代价大） |
| `UIDocument.PromptToPlaceFamily(FamilySymbol)` | Phase 1 用 `TaskDialog` 提示用户手动放置。Phase 2 用 `UIApplication.PostCommand(RevitCommandId.LookupPostableCommand(PostableCommand.PlaceFamily))` |
| `RevitCommandId.LookupPostableCommand()` | 在 Nice3point.Revit.Toolkit 中可能不存在。直接用原生 Revit API |
| `Document.PhasesSize` | 用 `FilteredElementCollector(doc).OfClass(typeof(Phase)).Cast<Phase>()` 替代 |
| `Document.get_Phase(int)` | 不存在。Phase 排序见 revit-coding-patterns 主文档的排序规则（不要用 Id.Value） |

**判断 API 是否存在的快速方法：** 编译时报 `CS0117`（静态成员不存在）或 `CS1061`（实例方法不存在），说明该 API 在当前 Revit SDK 版本中不存在。不要猜，直接编译验证。

### UiApplication 过时问题

Nice3point 框架的 `RevitContext.UiApplication` 或 `Host.UiApplication` 在切换 Revit 项目后可能不会自动更新。如果用到 `UiApplication.ActiveUIDocument`，每次都要从 `Execute(UIApplication app)` 参数获取最新引用：

```csharp
// ❌ 缓存的 UiApplication 在切换项目后过期
void Execute() {
    var doc = Host.UiApplication.ActiveUIDocument.Document; // 可能是旧项目
}

// ✅ 从参数获取最新
void Execute(UIApplication app) {
    var doc = app.ActiveUIDocument.Document; // 永远是当前项目
}
```

---

## 日志

### Serilog 4.x — 不要用静态 Logger

Serilog 4.x 移除了 `Log.ForContext("string")` 字符串重载，必须用泛型版本。但静态类不能做泛型参数：

```csharp
// ❌ CS0718: static type cannot be used as type argument
Log.ForContext<MyStaticService>();

// ✅ 正确方案：定义内部标记类
internal sealed class MySourceLog { }
private static readonly ILogger Logger = Log.ForContext<MySourceLog>();
```

**SuperRoky 实际做法：** 通过 `Host.cs` + `LoggerConfiguration.cs` 自定义 `AddSerilog(this IServiceCollection)` 扩展方法，用 `Debug` sink + `MinimumLevel.Debug`。日志通过 DI 获取，不需要手动 `Log.ForContext`：

```csharp
// Host.cs
services.AddSerilog();

// 在 Service 里通过 DI 获取
public class MyService
{
    private readonly ILogger _logger;
    public MyService(ILogger logger) => _logger = logger;
}
```

> ⚠️ **不要手动 `private static readonly ILogger Logger = Log.ForContext<MySourceLog>();`**，用 DI 获取更简洁。

---

## Ribbon 与 Panel

### CreatePanel vs AddPanel

Nice3point RibbonExtensions 提供两种建 Panel 的方式：

- `CreatePanel()` — 在现有 Tab 上创建新 Panel
- `AddPanel()` — 在新 Tab 上创建 Panel（如果 Tab 不存在）

FmRoky（Scotec）场景下 Panel 行为可能不同，注意区分。

### DockablePane 注册

DockablePane 需要在 `OnStartup()` 里手动注册 GUID + 回调类：

```csharp
public override void OnStartup()
{
    var paneId = new DockablePaneId(new Guid("YOUR-GUID-HERE"));
    DockablePane.Register(paneId, () => new MyDockablePane(), "My Pane");
}
```

DockablePane 的 ViewModel 或 DataContext 绑定要在 XAML 里用 `d:DataContext` 声明，否则设计器报错。
