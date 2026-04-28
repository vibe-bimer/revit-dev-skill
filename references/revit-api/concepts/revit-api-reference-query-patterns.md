---
title: Revit Api Reference Query Patterns
created: 2026-04-26
updated: 2026-04-26
type: summary
tags: [revit-api, revit-2026, nice3point, extension]
sources: [raw/revit-2026/, Nice3point.Revit.Extensions]
confidence: medium
---
# Revit Api Reference Query Patterns

> 拆分来源：[[revit-api-reference|Revit API 参考指南]]

## Navigation
- Parent: [[revit-api-reference|Revit API 参考指南]]
- Next: [[revit-api-reference-transactions|Revit Api Reference Transactions]]

## Content

# Revit API 参考指南

覆盖日常开发 90% 的 API 场景，给定目标直接查对应章节。内容分为两部分：**原生 API**（Document、Collector、Transaction、Parameter）和 **Nice3point Extensions**（扩展方法层）。如果项目使用 Nice3point 模板，先看 [[revit-toolkit-guide|Nice3point Toolkit 指南]] 再落到具体 API。

---

## 1. 查文档

### 获取当前文档

**在 ExternalCommand 中（Toolkit 方式）：**
```csharp
public override void Execute()
{
    var doc = Application.ActiveUIDocument.Document;
    var uidoc = Application.ActiveUIDocument;
    // 基类直接暴露 Application property，无参数版本
}
```

**在 ExternalApplication 中：**
```csharp
public override void OnStartup()
{
    var doc = Application.ActiveUIDocument?.Document; // 无活动文档时为 null
}
```

### 文档类型判断

```csharp
if (doc.IsFamilyDocument) { /* 族文档（.rfa）— 用 FamilyManager */ }
if (!doc.IsModifiable)     { /* 只读，不能写事务 */ }
if (doc.IsLinked)          { /* 链接文档，禁止 Transaction */ }
```

---

## 2. 查元素 — FilteredElementCollector

### 核心模式

```csharp
new FilteredElementCollector(doc)
    .OfClass<Wall>()                    // QuickFilter（数据库索引层，快）
    .WherePasses(filter)                 // ElementFilter（遍历，慢）
    .WhereElementIsNotElementType()     // QuickFilter
    .ToElements();                       // 触发查询
```

**性能原则：** QuickFilter 在索引层执行，ElementFilter 需要遍历每个元素。`ToElementIds()` 比 `ToElements()` 更轻量（只返回 ID，不实例化对象）。

### 高频查询组合

```csharp
// 某类型的第一个类型（WallType — 墙类型，非实例）
WallType firstWallType = new FilteredElementCollector(doc)
    .OfClass<WallType>()
    .FirstElement() as WallType;

// 所有标高（按标高排序）
var levels = new FilteredElementCollector(doc)
    .OfClass<Level>()
    .Cast<Level>()
    .OrderBy(l => l.Elevation)
    .ToList();

// 活跃视图中的某类元素
var visibleWalls = new FilteredElementCollector(doc, activeView.Id)
    .OfClass<Wall>()
    .ToElements();

// 族的所有类型
var symbols = family.GetFamilySymbolIds()
    .Select(id => doc.GetElement(id) as FamilySymbol)
    .ToList();

// 按类别（OST_ 前缀是 Revit 内置类别）
var doors = new FilteredElementCollector(doc)
    .OfCategory(BuiltInCategory.OST_Doors)
    .WhereElementIsNotElementType()
    .ToElements();
```

### 按 ID / Reference 获取元素

```csharp
// ✅ ElementId → 元素（Extensions）
var wall = wallId.ToElement<Wall>(doc);           // ✅ 泛型，类型安全
var wall = (Wall)doc.GetElement(wallId);          // ✅ 原生
var wall = doc.GetElement(wallId) as Wall;         // ✅ 原生

// ✅ Reference → 元素（原生）
var element = doc.GetElement(reference);

// ❌ Extensions 在 Reference 上不存在
// reference.ToElement<Wall>(doc) ← 不存在
// 正确：reference.ElementId.ToElement<Wall>(doc)
```

---

## 3. 改模型 — 事务

### Transaction 基本模式

```csharp
[Transaction(TransactionMode.Manual)]
public class MyCommand : ExternalCommand
{
    public override void Execute()
    {
        var doc = Application.ActiveUIDocument.Document;
        using (var tx = new Transaction(doc, "Description"))
        {
            tx.Start();
            // 修改...
            tx.Commit();
        }
    }
}
```

### 事务规则

| 场景 | 规则 |
|------|------|
| 只读操作 | `Element.GetTopologicalFaces()` 等要求**无活动事务** |
| 链接文档 | 禁止 Transaction，只能读 |
| 族编辑 | 需在 `doc.EditFamily(family)` 上下文内 |
| 多线程 | **完全禁止**，Revit API 单线程 |

### FailureHandling（用户取消操作的容错）

```csharp
var fho = tx.GetFailureHandlingOptions();
fho.SetFailuresPreprocessor(new MyFailuresPreprocessor());
fho.SetClearAfterRollback(true);
tx.SetFailureHandlingOptions(fho);
tx.Commit();

// 忽略特定警告
private class MyFailuresPreprocessor : IFailuresPreprocessor
{
    public FailureProcessingResult PreprocessFailures(FailuresAccessor failuresAccessor)
    {
        foreach (var f in failuresAccessor.GetFailureMessages())
        {
            if (f.GetFailureDefinitionId() ==
                BuiltInFailures.WallFailures.CannotAttachWall)
                failuresAccessor.DeleteWarning(f);
        }
        return FailureProcessingResult.Continue;
    }
}
```

---

## 4. 参数读写 — 原生 vs Extensions

### 原生 `get_Parameter`（手动两层查找）

```csharp
// ❌ 原生：先查实例层，找不到再查类型层（两步，手动写）
var param = element.get_Parameter(BuiltInParameter.WALL_BASE_HEIGHT_PARAM);
if (param == null)
{
    var typeId = element.GetTypeId();
