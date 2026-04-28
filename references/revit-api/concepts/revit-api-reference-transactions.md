---
title: Revit Api Reference Transactions
created: 2026-04-26
updated: 2026-04-26
type: summary
tags: [revit-api, revit-2026, nice3point, extension]
sources: [raw/revit-2026/, Nice3point.Revit.Extensions]
confidence: medium
---
# Revit Api Reference Transactions

> 拆分来源：[[revit-api-reference|Revit API 参考指南]]

## Navigation
- Parent: [[revit-api-reference|Revit API 参考指南]]
- Prev: [[revit-api-reference-query-patterns|Revit Api Reference Query Patterns]]
- Next: [[revit-api-reference-part-3|Revit Api Reference Part 3]]

## Content

if (typeId != ElementId.InvalidElementId)
    {
        var type = doc.GetElement(typeId);
        param = type.get_Parameter(BuiltInParameter.WALL_BASE_HEIGHT_PARAM);
    }
}
```

### Extensions `FindParameter`（自动回退）

```csharp
// ✅ Extensions：自动实例→类型回退，一行
var param = element.FindParameter(BuiltInParameter.WALL_BASE_HEIGHT_PARAM);
if (param?.HasValue == true)
{
    var feetValue = param.AsDouble();
    var mmValue = Math.Round(feetValue * 304.8, 1); // 英尺→毫米
}
```

### `FindParameter` 五重重载

```csharp
// ✅ BuiltInParameter（枚举，精确，无字符串风险）
Parameter? p1 = element.FindParameter(BuiltInParameter.WALL_BASE_HEIGHT_PARAM);

// ✅ GUID（共享参数唯一标识，稳定）
Parameter? p2 = element.FindParameter(new Guid("a1b2c3d4-..."));

// ✅ Definition（内建或外部定义）
Parameter? p3 = element.FindParameter(definition);

// ✅ 字符串（注意重名风险）
Parameter? p4 = element.FindParameter("Base Height");

// ✅ ForgeTypeId (Revit 2022+)
Parameter? p5 = element.FindParameter(new ForgeTypeId("autodesk.revit:parameter.wall.base-height"));
```

### 参数值读取（按 StorageType）

```csharp
if (param != null && param.HasValue)
{
    switch (param.StorageType)
    {
        case StorageType.String:    value = param.AsString();     break;
        case StorageType.Integer:   value = param.AsInteger();    break;
        case StorageType.Double:    value = param.AsDouble();     break;
        case StorageType.ElementId: value = param.AsElementId();  break;
    }
}
```

### 参数写入

```csharp
using (Transaction tx = new Transaction(doc, "Set Param"))
{
    tx.Start();
    var param = element.get_Parameter(BuiltInParameter.WALL_BASE_OFFSET);
    if (param != null && !param.IsReadOnly)
        param.Set(3.0); // 英尺单位
    tx.Commit();
}

// ElementId 参数
param.Set(targetElementId);

// ❌ 只读属性不能赋值（CS0200）
// element.LevelId = newLevelId;
// ✅ 正确方式：通过参数修改
var levelParam = element.get_Parameter(BuiltInParameter.INSTANCE_REFERENCE_LEVEL_PARAM);
if (levelParam != null && !levelParam.IsReadOnly)
    levelParam.Set(newLevelId);
```

### 单位换算

**Revit 内部单位是英尺。Extensions 没有 `ToMillimeters()`/`ToFeet()`，手动换算：**

```csharp
double MmToFt = 1.0 / 304.8; // 0.00328084...

// 英尺 → 毫米（保留 1 位小数）
double mm = Math.Round(feetValue * 304.8, 1);

// 毫米 → 英尺
double ft = mmValue * MmToFt;
```

---

## 5. Nice3point Extensions 扩展方法

所有扩展方法在 `using Nice3point.Revit.Extensions;`。

### ElementIdExtensions — ID → Element

```csharp
// ✅ 单个 ID → 单个元素
var wall = wallId.ToElement<Wall>(doc);

// ✅ 批量 ID → 无序（更快）
var walls = wallIds.ToElements<Wall>(doc); // IList<Wall>

// ✅ 批量 ID → 保持顺序
var walls = wallIds.ToOrderedElements<Wall>(doc); // IList<Wall>

// ❌ Reference 上没有 ToElement<T>()
var element = doc.GetElement(reference);             // ✅ 原生
var element = reference.ElementId.ToElement<Wall>(doc); // ✅ 绕道
```

### ParameterExtensions — 参数值便捷读写

```csharp
// ✅ ElementId 参数直接转元素（一行代替两行）
var wall = param.AsElement<Wall>(); // 返回 Wall?，不是 Element?

// ✅ 布尔参数
var isStructural = param.AsBool(); // 原生：param.AsInteger() == 1

// ✅ 写布尔值（StorageType 是 Integer）
param.Set(true);   // Extensions 内部转成 param.Set(1)
param.Set(false);  // Extensions 内部转成 param.Set(0)

// ✅ 写颜色
param.Set(new Color(255, 0, 0));
```

### FilteredElementCollectorExtensions — 链式查询增强

```csharp
// Excluding：排除已知 ID（QuickFilter，快）
var filtered = new FilteredElementCollector(doc)
    .OfClass<Wall>()
    .Excluding(linkWallIds) // ICollection<ElementId>
    .ToElements();

// ⚠️ Excluding 每次调用创建新 collector，不能链式叠加
var collector = new FilteredElementCollector(doc).OfClass<Wall>();
collector = collector.Excluding(ids1);
collector = collector.Excluding(ids2);

// WhereElementIsElementType / WhereElementIsNotElementType
var wallTypes = new FilteredElementCollector(doc)
    .OfClass<WallType>()
    .WhereElementIsElementType()   // 类型，非实例
    .ToElements();
```

### ImperialExtensions — 英制单位（已废弃）

```csharp
// ⚠️ 已废弃，仅用于旧代码兼容，新代码不要依赖
"1'-3/32\"".FromFraction()   // 字符串 → 英尺 double
12.006.ToFraction(16)       // 英尺 double → "12'-1/16\""
12.006.ToFraction()          // 默认 1/8" 分辨率
```

---

## 6. 决策速查

| 目标 | 推荐方式 | 关键坑 |
|------|----------|--------|
| 获取当前文档 | `Application.ActiveUIDocument.Document` | 非 null 才可写事务 |
| 查询某类型所有元素 | `FilteredElementCollector(doc).OfClass<T>()` | `ToElements()` 触发查询 |
| 只查活跃视图内元素 | `FilteredElementCollector(doc, view.Id)` | 视图模板可能无法枚举 |
