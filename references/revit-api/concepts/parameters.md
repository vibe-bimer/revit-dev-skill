---
title: Parameter 参数系统
created: 2026-04-08
updated: 2026-04-23
type: concept
tags: [revit-api, revit-2026, revit-2020]
sources: [raw/revit-2026/data/333ff41b-e6a7-d959-60bf-c3bfae495581.md]
confidence: medium
---

# Parameter 参数系统

## 概述

Parameter 是 Revit 中所有数据的载体——不管是族参数、项目参数还是内置参数，统一通过 Parameter 接口访问。每个可存储数据的 Revit 元素都有一个或多个 Parameter。

## 读取参数

```csharp
// 通过 BuiltInParameter 读取
Parameter p = element.get_Parameter(BuiltInParameter.DOOR_NUMBER);
string value = p.AsString();

// 安全读取
if (p != null && p.HasValue)
{
    switch (p.StorageType)
    {
        case StorageType.String:  value = p.AsString(); break;
        case StorageType.Integer: value = p.AsInteger(); break;
        case StorageType.Double:  value = p.AsDouble(); break;
        case StorageType.ElementId: value = p.AsElementId(); break;
    }
}
```

## 写入参数

```csharp
using (Transaction tx = new Transaction(doc, "Set Parameter"))
{
    tx.Start();
    element.get_Parameter(BuiltInParameter.WALL_BASE_OFFSET).Set(3.0); // 英尺
    tx.Commit();
}
```

## BuiltInParameter vs Parameter

| 属性 | BuiltInParameter | SharedParameterElement |
|------|------------------|------------------------|
| 来源 | Revit 内置 | 用户创建 |
| ID 稳定性 | 跨版本稳定 | 可变 |
| 示例 | `WALL_HEIGHT`, `ROOM_NAME` | 族参数、项目参数 |
| 查找 | `element.get_Parameter(BIP)` | `element.LookupParameter("名称")` |

## 常用 BuiltInParameter 示例

```csharp
// 标高偏移
level.get_Parameter(BuiltInParameter.LEVEL_IS_STORY);

// 墙高度（绝对值）
wall.get_Parameter(BuiltInParameter.WALL_USER_HEIGHT_PARAM);

// 族名称
familySymbol.get_Parameter(BuiltInParameter.SYMBOL_NAME_PARAM);
```

## ForgeTypeId（新方式，Revit 2021+）

Revit 2021+ 推荐使用 `ForgeTypeId` 而非 `BuiltInParameter`：

```csharp
ForgeTypeId typeId = SpecTypeId.Length;
Parameter p = element.get_Parameter(BuiltInParameter.ALL_MODEL_INSTANCE_URL);
bool isLength = p.GetSpecTypeId() == typeId;
```

## 相关类型

- [[element|Element]] — 参数的宿主元素
- [[elementid|ElementId]] — 元素 ID 参数值
- `BuiltInParameter` enumeration — 所有内置参数常量
- `SymbolTypeId` — 类型参数标识符（Revit 2021+）
- `UnitTypeId` — 单位类型

## 参见

- [[api-version-differences|Revit API 版本差异]] — ForgeTypeId 与参数 API 迁移背景
- `Autodesk.Revit.DB.Parameter`
- Namespace: `Autodesk.Revit.DB`
