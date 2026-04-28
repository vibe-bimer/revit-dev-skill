---
title: Revit API 版本差异
created: 2026-04-08
updated: 2026-04-23
type: comparison
tags: [revit-api, revit-2026, revit-2025, revit-2024, revit-2023]
sources: [raw/revit-2026/]
confidence: medium
---

# Revit API 版本差异

## 概述

本页面记录 Revit API 各版本之间的重要变化，帮助理解代码的兼容性前提。

## Revit 2026 → 2025 → 2024 → 2023（近三代）

### ForgeTypeId 替换 BuiltInParameter（2021+）

**Revit 2021** 引入了 `ForgeTypeId` 作为参数标识的新标准，逐步替代 `BuiltInParameter`。

```csharp
// 旧方式（仍支持，但逐步淘汰）
Parameter p = element.get_Parameter(BuiltInParameter.WALL_HEIGHT_TYPE);

// 新方式（2021+，推荐）
ForgeTypeId specId = SpecTypeId.Length;
Parameter p = element.get_Parameter(BuiltInParameter.WALL_HEIGHT_TYPE);
// 对比
ForgeTypeId typeId = p.GetSpecTypeId();
bool isLength = typeId == SpecTypeId.Length;
```

关键 `ForgeTypeId` 类别：
- `SpecTypeId.Length` — 长度
- `SpecTypeId.Area` — 面积
- `SpecTypeId.Volume` — 体积
- `SpecTypeId.Angle` — 角度

### BoundingBoxXYZ vs BoundingBox（2019+）

2019 之前 `element.BoundingBox` 返回旧的 bounding box 对象。2019+ 统一改为 `BoundingBoxXYZ`。

```csharp
// Revit 2019+
BoundingBoxXYZ bbox = element.BoundingBox;
XYZ min = bbox.Min;
XYZ max = bbox.Max;
```

### ElementId 跨 API（始终兼容）

`ElementId` 在所有版本中行为一致，始终用 `.IntegerValue` 进行序列化/反序列化：

```csharp
// 始终有效
int id = element.Id.IntegerValue;
ElementId recovered = new ElementId(id);
```

## 事务模式 TransactionMode（2009+）

```csharp
[Transaction(TransactionMode.Manual)]  // 手动控制事务
[Transaction(TransactionMode.Automatic)] // 自动开启/提交
[Transaction(TransactionMode.ReadOnly)]  // 只读，不需要事务（Revit 2011+）
```

| 模式 | 说明 | 适用场景 |
|------|------|---------|
| `Manual` | API 自行控制事务 | 复杂多步操作 |
| `Automatic` | Revit 自动开启/提交 | 单次简单操作 |
| `ReadOnly` | 只读，无需事务 | 查询、Report 命令 |

## Regeneration 行为（2017+）

**Revit 2017** 改变了 `Regenerate` 行为。在 `TransactionMode.Automatic` 下，元素修改后会自动 `Regenerate`。

```csharp
[Transaction(TransactionMode.Automatic)]
public Result Execute(...)
{
    // 元素修改后，下一次查询会自动反映变更
    // 不再需要手动 Regenerate
}
```

## 参数存储类型 StorageType

所有版本一致：

```csharp
StorageType.None    // 无值
StorageType.Integer // 整数/枚举
StorageType.Double  // 双精度（英尺）
StorageType.String  // 字符串
StorageType.ElementId // 元素ID
```

## 选择 API 变化

### Revit 2015 前
```csharp
ElementSet selection = commandData.Application.ActiveUIDocument.Selection.Elements;
```

### Revit 2015+（当前）
```csharp
ICollection<ElementId> selectedIds = uidoc.Selection.GetElementIds();
Element element = doc.GetElement(uidoc.Selection.PickObject(...));
```

## Extensible Storage

2011+ 稳定，跨版本兼容：

```csharp
Schema schema = Schema.Lookup(guid);
Entity entity = element.GetEntity(schema);
```

## 常用版本判断

```csharp
// 方法1：通过 VersionNumber
int ver = int.Parse(app.VersionNumber);
// ver >= 2026 → Revit 2026

// 方法2：通过 VersionName
string name = app.VersionName; // "2026"

// 方法3：通过 Build
string build = app.VersionBuild;
```

## 相关页面

- [[transaction-system|Transaction System]] — 事务在不同版本的差异
- [[parameters|Parameter]] — ForgeTypeId vs BuiltInParameter
- [[elementid|ElementId]] — ID 序列化
- [[filtered-element-collector|FilteredElementCollector]] — 查询 API 变化

## 参见

- `Autodesk.Revit.ApplicationServices.Application.VersionNumber`
- Revit API Docs: API Changes Reference
- Revit Developer Guide: Version Compatibility
