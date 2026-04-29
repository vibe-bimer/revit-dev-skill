---
name: revit-coding-patterns
description: Revit 2026 plugin code patterns, pitfalls, and FAQ. Covers WPF cross-thread, ExternalEvent, preview image extraction, Material namespace conflict, OpenMcdf 3.x, and other common issues. Nice3point-specific patterns → references/nice3point-patterns.md. Scotec/FmRoky patterns → references/scotec-patterns.md.
metadata:
  author: Hermes/Roky
  revit_version: "2026"
linked_files:
  references:
    - references/nice3point-patterns.md
    - references/scotec-patterns.md
    - references/duct-segmentation.md
---

# Revit 插件代码模式与踩坑 FAQ

## 路由声明

- 默认由根入口 `revit-root-router` 路由调用。
- 仅处理编码模式与 API 行为，不承担流程编排与部署门禁。


> 本 skill 是 `revit-plugin-dev-workflow` 的子文档，收录通用编码问题和解决方案。
>
> **单点真相约定：**
> - 编译/部署/Git 同步规范只在 `revit-build-deploy` 维护
> - 本文只保留编码与 API 行为，不重复部署细节
>
> **框架专属踩坑：**
> - Nice3point/SuperRoky → `references/nice3point-patterns.md`（DLL 加载、UiApplication 过时、global.json、CreatePanel、DockablePane）
> - Scotec/FmRoky → `references/scotec-patterns.md`（.NET 10 SDK、field keyword、Scotec source generator、RevitYear）

---

## 🔧 程序集与 DLL 加载

> ⚠️ **Nice3point 框架的 DLL 加载问题**（static ctor + AssemblyLoadContext）→ `references/nice3point-patterns.md`

### Revit 不加载插件

1. .addin 清单在 `C:\ProgramData\Autodesk\Revit\Addins\2026\`
2. 格式必须是 `<AddIn Type="Application">`
3. Assembly 路径相对于 .addin 文件位置（子文件夹模式）
4. 查看 Revit 启动日志

---

## 📦 第三方库版本与命名空间冲突

### Material.Icons.WPF 与 Autodesk.Revit.DB.Material 命名空间冲突

`Material.Icons.WPF` 引入 `Material` 命名空间后，与 `Autodesk.Revit.DB.Material` 冲突。**不能**用 `using Material = Autodesk.Revit.DB.Material;` 别名（因为 `using Autodesk.Revit.DB;` 已引入同名类型到全局）。

**解决方案：所有引用 Revit Material 的地方用全限定名 `Autodesk.Revit.DB.Material`。**
受影响文件：Commands、Views 的 `.xaml.cs`。用 `search_files` 搜索 `\bMaterial\b` 确认所有引用。

---

### OpenMcdf 3.x API（读 .rfa 预览图）

OpenMcdf 3.x 是完全重写的 API，旧的 2.x 用法全部失效：

| 旧 API (2.x) | 新 API (3.x) |
|---|---|
| `new CompoundFile(stream)` | `RootStorage.Open(stream, StorageModeFlags.None)` |
| `RootStorage.OpenRead(path)` | `RootStorage.OpenRead(path)` ✅ 不变 |
| `cf.RootStorage` | `rootStorage` 本身（继承 `Storage`） |
| `storage.TryGetStream(name, out CFStream)` | `storage.TryOpenStream(name, out CfbStream)` |
| `storage.TryOpenStorage(name, out Storage)` | ✅ 不变 |

```csharp
// ✅ OpenMcdf 3.x 正确用法
using var rootStorage = RootStorage.OpenRead(familyPath);

// 读顶层流（如 RevitPreview）
if (rootStorage.TryOpenStream("RevitPreview", out var cfStream))
{
    using var ms = new MemoryStream();
    cfStream.CopyTo(ms);
    var bytes = ms.ToArray();
}

// 读嵌套存储中的流
var parts = path.Split('/');
Storage current = rootStorage;
for (int i = 0; i < parts.Length - 1; i++)
{
    if (!current.TryOpenStorage(parts[i], out var storage)) return null;
    current = storage;
}
if (current.TryOpenStream(parts[^1], out var stream)) { ... }
```

NuGet: `<PackageReference Include="OpenMcdf" Version="3.1.0"/>`

---

### System.Drawing.Common 在 .NET 8 需要显式引用

.NET 8 不再内置 `System.Drawing`。`System.Drawing.Bitmap`、`Graphics` 等类型被转发到 NuGet 包，编译时报 `CS1069: 类型已转发到程序集 System.Drawing.Common`。

```xml
<PackageReference Include="System.Drawing.Common" Version="8.0.0"/>
```

---

### Autodesk.Revit.DB.Color 与 System.Drawing.Color 冲突

引用 `System.Drawing` 后，`Color` 类型在 `Autodesk.Revit.DB.Color` 和 `System.Drawing.Color` 之间歧义（CS0104）。

```csharp
// ❌ 编译器不知道用哪个 Color
g.Clear(Color.FromArgb(240, 240, 240));

// ✅ 全部用全限定名
g.Clear(System.Drawing.Color.FromArgb(240, 240, 240));
using var pen = new Pen(System.Drawing.Color.FromArgb(200, 200, 200), 1.5f);
using var font = new Font("Segoe UI", 11, System.Drawing.FontStyle.Bold);
```

---

## 🎨 WPF / UI 交互

### 图标不显示

图标同步三处（任一遗漏都不显示）：
1. csproj 的 `<Resource Include="..."/>`
2. `AddPushButton<>()` 的 `SetImage` + `SetLargeImage`
3. `Resources/Icons/` 下实际 PNG 文件（16px + 32px）

> 当前 Revit 工作流中的 `.addin` 示例不依赖 `<Icon16>` / `<Icon32>` 字段；不要把它当成默认第三同步点。

---

### WPF Views 引用 Commands 中的类型

Views 的 `.xaml.cs` 必须显式 `using MyPlugin.Commands;`，否则 CS0246。

---

### WPF VisualTreeHelper.HitTest 参数类型

```csharp
// ❌ sender 是 object，强转 DependencyObject 不行
VisualTreeHelper.HitTest((DependencyObject)sender, ...);
// CS1503: 无法从 DependencyObject 转换为 Visual

// ✅ 转为 Visual
var visual = sender as Visual;
if (visual == null) return;
VisualTreeHelper.HitTest(visual, e.GetPosition(visual as IInputElement));
```

`VisualTreeHelper.HitTest` 第一个参数要求 `Visual`，不是 `DependencyObject`。

---

### CommunityToolkit.Mvvm 绑定属性必须是 [ObservableProperty]

普通 `public Type? Prop { get; set; }` 不会触发 `PropertyChanged`，WPF 绑定不会更新。必须用源生成器：

```csharp
// ❌ 选中后 UI 不更新
public FamilyInfo? SelectedFamily { get; set; }

// ✅ 正确
[ObservableProperty]
private FamilyInfo? _selectedFamily;
```

源生成器自动生成 `SelectedFamily` 公开属性 + `OnSelectedFamilyChanged()` partial 方法 + `PropertyChanged` 通知。

---

### BooleanToVisibilityConverter 不能用于非 bool 类型

```xml
<!-- ❌ SelectedFamily 是 FamilyInfo? 不是 bool，永远 Collapsed -->
<StackPanel Visibility="{Binding SelectedFamily, Converter={StaticResource BoolToVis}}">

<!-- ✅ 用 DataTrigger + null 判断 -->
<StackPanel>
    <StackPanel.Style>
        <Style TargetType="StackPanel">
            <Setter Property="Visibility" Value="Visible"/>
            <Style.Triggers>
                <DataTrigger Binding="{Binding SelectedFamily}" Value="{x:Null}">
                    <Setter Property="Visibility" Value="Collapsed"/>
                </DataTrigger>
            </Style.Triggers>
        </Style>
    </StackPanel.Style>
</StackPanel>
```

---

### WPF Storyboard.TargetName 不能在 Style 内部使用

XAML 编译报 `MC4011: 无法在 Style Setter 上设置 TargetName 属性`。StoryBoard 的 TargetName 只能在元素自身的 EventTrigger 中使用，不能在 Style 的 DataTrigger.EnterActions 里。

```xml
<!-- ❌ MC4011 错误 -->
<Style.Triggers>
    <DataTrigger Binding="{Binding IsBusy}" Value="True">
        <DataTrigger.EnterActions>
            <BeginStoryboard>
                <Storyboard>
                    <DoubleAnimation Storyboard.TargetName="LoadingRotation" .../>
                </Storyboard>
            </BeginStoryboard>
        </DataTrigger.EnterActions>
    </DataTrigger>
</Style.Triggers>

<!-- ✅ EventTrigger 放在元素上，Visibility 由 Style DataTrigger 控制 -->
<materialIcons:MaterialIcon.Style>
    <Style TargetType="materialIcons:MaterialIcon">
        <Setter Property="Visibility" Value="Collapsed"/>
        <Style.Triggers>
            <DataTrigger Binding="{Binding IsBusy}" Value="True">
                <Setter Property="Visibility" Value="Visible"/>
            </DataTrigger>
        </Style.Triggers>
    </Style>
</materialIcons:MaterialIcon.Style>
<materialIcons:MaterialIcon.Triggers>
    <EventTrigger RoutedEvent="Loaded">
        <BeginStoryboard>
            <Storyboard RepeatBehavior="Forever">
                <DoubleAnimation Storyboard.TargetName="LoadingRotation" .../>
            </Storyboard>
        </BeginStoryboard>
    </EventTrigger>
</materialIcons:MaterialIcon.Triggers>
```

隐藏时 WPF 不渲染，动画自然不消耗 CPU。

---

### WPF 后台线程更新 UI 属性（PropertyChanged 跨线程）

在 `Task.Run` 里直接设置 `ObservableObject` 的属性会触发 `PropertyChanged`，WPF 绑定在非 UI 线程收到通知会抛 `InvalidOperationException`。

```csharp
// ❌ 直接在 Task.Run 里赋值 — PropertyChanged 在后台线程触发
await Task.Run(() => {
    family.Preview = ExtractPreview(family.Path); // 崩！
});

// ✅ 用 Dispatcher.BeginInvoke 切回 UI 线程
var dispatcher = System.Windows.Application.Current?.Dispatcher;
await Task.Run(() => {
    var preview = ExtractPreview(family.Path);
    if (dispatcher != null && !dispatcher.CheckAccess())
        dispatcher.BeginInvoke(() => family.Preview = preview);
    else
        family.Preview = preview;
});
```

注意：Revit 插件里 `Application.Current` 和 `SuperRoky.Application`（插件入口类）冲突，必须用全限定名 `System.Windows.Application.Current`。

---

## 🏗️ Revit API 行为

### Element.LevelId 赋值报 CS0200

`LevelId` 是只读。必须通过参数修改：
```csharp
var p = element.get_Parameter(BuiltInParameter.LEVEL_PARAM);
if (p != null && !p.IsReadOnly) p.Set(newLevelId);
```

---

### FamilySymbol.Activate() 需要 Transaction

`Activate()` 是文档修改操作，没有 Transaction 会抛 `InvalidOperationException`：

```csharp
// ❌ 在 Transaction 外调用
using (var t = new Transaction(doc, "Load")) { t.Start(); doc.LoadFamily(path, out family); t.Commit(); }
symbol.Activate(); // 💥 异常

// ✅ 包进新 Transaction
using var t2 = new Transaction(doc, "Activate Symbol");
t2.Start();
symbol.Activate();
t2.Commit();
```

---

### Element.CreatedPhaseId / DemolishedPhaseId 并非所有元素都有

Group 内可能包含不支持阶段的元素（尺寸标注、Sketch、SectionBox 等），**直接读取会抛异常**：

```
The element does not have properties CreatedPhaseId and DemolishedPhaseId.
```

**必须先用 `IsPhaseCreatedValid` 过滤：**

```csharp
// ❌ 直接读会崩
var createdId = element.CreatedPhaseId;

// ✅ 先检查，再读写
bool supportsPhase = false;
try
{
    supportsPhase = element.IsPhaseCreatedValid(phases[0].Id);
}
catch
{
    supportsPhase = false;
}

if (!supportsPhase) continue; // 跳过不支持的元素

var createdId = element.CreatedPhaseId; // 安全
```

**写入前也要验证：**
```csharp
if (element.IsPhaseCreatedValid(newPhase.Id))
    element.CreatedPhaseId = newPhase.Id;

if (element.IsPhaseDemolishedValid(newPhase.Id))
    element.DemolishedPhaseId = newPhase.Id;
```

**⚠️ `IsPhaseCreatedValid` 返回 true 不代表赋值一定能成功。** Group 内某些元素通过了 Valid 检查，但实际赋值或 Commit 时仍会抛异常。而且单个大 Transaction 中只要一个元素失败，整个事务回滚，所有修改丢失。

**必须用逐元素独立 Transaction + 双层 try-catch：**
```csharp
foreach (var memberId in validMemberIds)
{
    var element = doc.GetElement(memberId);
    try
    {
        using var tx = new Transaction(doc, $"修改阶段-{element.Id.Value}");
        tx.Start();

        if (newCreatedPhase != null)
        {
            try
            {
                if (element.IsPhaseCreatedValid(newCreatedPhase.Id))
                    element.CreatedPhaseId = newCreatedPhase.Id;
            }
            catch { /* 该属性不可写 */ }
        }

        if (newDemolishedPhase != null)
        {
            try
            {
                if (element.IsPhaseDemolishedValid(newDemolishedPhase.Id))
                    element.DemolishedPhaseId = newDemolishedPhase.Id;
            }
            catch { /* 该属性不可写 */ }
        }

        tx.Commit(); // 单个元素失败不影响其他
    }
    catch
    {
        // 该元素整体失败，跳过
    }
}
```

**Phase 排序：** 用 `FilteredElementCollector` + `Cast<Phase>()` 收集阶段。
> ⚠️ **`doc.PhasesSize` 和 `doc.get_Phase(index)` 在 Revit 2026 中不存在！** 编译会报 CS1061。不要用。

Phase 排序分两种场景：

**① 阶段名为纯数字字符串时（如 "0","1","2"...）→ 按数值排序（正确做法）：**
```csharp
var phases = doc.Phases
    .Cast<Phase>()
    .OrderBy(p => int.TryParse(p.Name, out var n) ? n : int.MaxValue)
    .ToList();
```
> ⚠️ **`p.Id.Value` 排序是错的！** ElementId 是内部数据库 ID，不等于项目阶段顺序。用户实测顺序是 4,6,3,5,2,7,1,0,8,9,10,11（完全乱序）。

**② 阶段名含文字时 → 用 `FilteredElementCollector` 本身返回的顺序（即 Revit 项目浏览器顺序）：**
```csharp
var phases = new FilteredElementCollector(doc)
    .OfClass(typeof(Phase))
    .Cast<Phase>()
    .ToList(); // 不排序，直接用 Collector 返回顺序
```
Collector 的默认顺序与项目浏览器一致（`OrderBy(p => p.Id)` 也是项目顺序，但更推荐直接 ToList()）。

### Revit 2026 ElementId.IntegerValue → ElementId.Value

```csharp
// ❌ Revit 2026 编译错误
.OrderBy(p => p.Id.IntegerValue)

// ✅ Revit 2026 用 .Value（long 类型）
.OrderBy(p => p.Id.Value)
```

### 风管分段 API 高频坑（Revit 2026）

> 11 条踩坑详解（`MEPSystem.GetDucts` 不存在、BreakCurve 累积偏移、BFS 过桥穿透、事务提交条件等）已拆至 `references/duct-segmentation.md`。

**核心规则速查：**

| # | 规则 | 一句话 |
|---|------|--------|
| 1 | `MEPSystem.GetDucts()` 不存在 | 用 `FilteredElementCollector` + `MEPSystem.Id` 过滤 |
| 2 | `DuctType.Flexible` 不可用 | `Duct` / `FlexDuct` 是不同类，用 `is Duct` 过滤 |
| 3 | 优先 `BreakCurve` | 不要删除重建，丢连接上下文 |
| 4 | 累积偏移 | `accumulatedDistance` 累加 relative 而非 curve.Length |
| 5 | 投影修正 | 偏离时用 `projectResult.XYZPoint` 修正，不放弃整根管 |
| 6 | SubTransaction 层级 | 只能在 Transaction 内开，不能挂 TransactionGroup |
| 7 | Connector.AllRefs | 通过 `refConn.Owner?.Id` 取元素 Id |
| 8 | BFS 过桥 | FamilyInstance(管件)必须入队，否则拓扑断裂 |
| 9 | 事务提交 | 按"有效变更"判定，不只看 successCount |
| 10 | 主路径穿透 | DFS 要穿透 Fitting，统计去重 |
| 11 | 严格定长 | 先定口径（净直管 vs 含管件），再编码 |

### Group.GetMemberIds() 需递归处理嵌套 Group

`GetMemberIds()` 只返回直接成员，成员中可能包含子 Group。必须递归展开：

```csharp
private static HashSet<ElementId> CollectAllMemberIds(Document doc, IEnumerable<ElementId> groupIds)
{
    var result = new HashSet<ElementId>();
    foreach (var groupId in groupIds)
    {
        var group = doc.GetElement(groupId) as Group;
        if (group == null) continue;
        foreach (var memberId in group.GetMemberIds())
        {
            var member = doc.GetElement(memberId);
            if (member is Group nestedGroup)
            {
                // 递归展开子 Group
                var subIds = CollectAllMemberIds(doc, new[] { memberId });
                result.UnionWith(subIds);
            }
            else
            {
                result.Add(memberId);
            }
        }
    }
    return result;
}
```

### 路径前缀匹配要检查分隔符

```csharp
// ❌ C:\Families\A 会匹配 C:\Families\AB\foo.rfa
.Where(f => f.Path.StartsWith(folderPath, StringComparison.OrdinalIgnoreCase))

// ✅ 精确匹配目录边界
.Where(f => {
    if (!f.Path.StartsWith(folderPath, StringComparison.OrdinalIgnoreCase)) return false;
    return f.Path.Length == folderPath.Length
        || f.Path[folderPath.Length] == Path.DirectorySeparatorChar
        || f.Path[folderPath.Length] == Path.AltDirectorySeparatorChar;
})
```

---

## ⚡ ExternalEvent / 异步

### ExternalEvent 请求用 ConcurrentQueue 避免竞态

```csharp
// ❌ 快速连点时 Request 被覆盖，前一个请求丢失
public string? Request { get; set; }
void Execute(UIApplication app) { LoadFamily(Request); Request = null; }

// ✅ ConcurrentQueue 不丢请求
private readonly ConcurrentQueue<string> _requests = new();
public void Enqueue(string path) => _requests.Enqueue(path);
void Execute(UIApplication app) {
    if (_requests.TryDequeue(out var path)) LoadFamily(app, path);
}
```

---

### ExternalEventHandler 不要缓存 UIApplication/UIDocument

构造时存储的 `UIApplication`/`ActiveUIDocument` 在切换项目后过期。用 `Execute(UIApplication app)` 参数获取最新引用：

```csharp
// ❌ 构造时缓存，切项目后过期
_collector = new RevitFamilyCollector(Host.UiApplication!);

// ✅ 每次 Execute 用参数
void Execute(UIApplication app) {
    var collector = new RevitFamilyCollector(app);
}
```

---

## 📦 NuGet 包不存在时先检查本地代码

### CS1061 "找不到扩展方法" — 先看是不是自己的代码

编译报 `CS1061: "ServiceCollection"未包含"AddSerilog"的定义` 时，**不要急着加 NuGet 包**。先 `search_files` 搜索方法名，很可能项目里已经自定义了这个扩展方法：

```bash
# 先搜！
search_files pattern="AddSerilog" path=项目目录
```

如果本地有定义，问题只是 `using` 缺失。加上 `using YourNamespace.Configuration;` 即可。

> ⚠️ **AI 幻觉包名陷阱：** `Serilog.Extensions.DependencyInjection` 这个包在 nuget.org 上**根本不存在**。类似的还有 `Serilog.Extensions.Logging`（这个存在但功能不同）。添加 NuGet 包之前先用 `dotnet package search <PackageName>` 验证包是否真实存在。

---

## 触发条件

### 本 skill（通用 WPF / Revit API）
- "命名空间冲突" / "CS0104" / "Material 冲突"
- "OpenMcdf" / "rfa 预览" / "EStorage"
- "跨线程" / "InvalidOperationException" / "Dispatcher"
- "ExternalEvent" / "外部事件" / "ConcurrentQueue"
- "PropertyChanged" / "ObservableProperty"
- "Storyboard" / "动画" / "MC4011"
- "LevelId 只读" / "CS0200"
- "FamilySymbol.Activate"
- "ElementId.IntegerValue" / "Revit 2026"
- "编译错误" / "CS 开头的错误码"

### Nice3point 专属 → `references/nice3point-patterns.md`
- "DLL 加载失败" / "XamlParseException" / "AssemblyLoadContext"
- "static 构造函数" / "OnStartup 之前"
- "Serilog" / "Log.ForContext" / "CS0718"
- "UiApplication 过时" / "切换项目"
- "CreatePanel" / "AddPanel"
- "DockablePane" / "GUID"
- "global.json" / "msbuild-sdks"
- "DeployAddin" / "IsRepackable"

### Scotec/FmRoky 专属 → `references/scotec-patterns.md`
- "field keyword" / "C# 13"
- ".NET 10 SDK" / "Roslyn 5.0" / "source generator"
- "Scotec.Revit.Isolation"
- "RevitYear" / "appsettings"
- "FullClassName" / "AppFactory"
- "Autofac"

---