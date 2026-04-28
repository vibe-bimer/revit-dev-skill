---
title: Element 元素基类
created: 2026-04-08
updated: 2026-04-23
type: entity
tags: [revit-api, revit-2026]
sources: [raw/revit-2026/data/eb16114f-69ea-f4de-0d0d-f7388b105a16.md]
confidence: medium
---

# Element

## 概述

`Element` 是 Revit 数据库中**几乎所有持久化对象的基类**。Revit 模型本质上就是一堆 Element 的集合——墙、门、窗、标高、视图、族类型……全部继承自 Element。

> "Base class for most persistent data within a Revit document."

## ElementId

每个 Element 都有唯一标识：

```csharp
ElementId id = element.Id;  // 跨会话唯一
int intId = id.IntegerValue; // 仅在同一文档内唯一
```

## 参数访问

```csharp
// 方式1：BuiltInParameter（推荐）
Parameter p = element.get_Parameter(BuiltInParameter.WALL_BASE_OFFSET);

// 方式2：按名称
Parameter p = element.LookupParameter("Comments");

// 安全读取
if (p != null && p.HasValue)
{
    string val = p.AsString();
}
```

## 常用方法

| 方法 | 说明 |
|------|------|
| `GetEntity()` | 获取 Extensible Storage 数据 |
| `SetEntity()` | 写入 Extensible Storage 数据 |
| `GetTypeId()` | 获取类型 ElementId |
| `GetGeometryObjectFromReference()` | 通过 Reference 获取几何 |
| `IsValidObject` | 检查是否已失效（文档变更后） |
| `Destruct()` | 删除元素 |

## 常用属性

| 属性 | 说明 |
|------|------|
| `Name` | 元素名称（如族类型名称） |
| `Category` | 元素类别 |
| `Document` | 所属文档 |
| `OwnerViewId` | 所属视图 ID |
| `LevelId` | 所属标高 ID（若适用） |
| `ParametersMap` | 参数映射表 |
| `IsHidden(View)` | 在某视图是否隐藏 |

## 几何获取

```csharp
// 获取几何（需 Options）
Options opts = new Options { DetailLevel = ViewDetailLevel.Fine };
GeometryElement geom = element.get_Geometry(opts);
```

## 相关类型

- [[document|Document]] — Element 的宿主文档
- [[parameters|Parameter]] — Element 的数据载体
- [[elementid|ElementId]] — Element 的唯一标识
- [[wall|Wall]] — Element 的具体子类
- [[level|Level]] — 标高元素
- [[xyz|XYZ]] — 几何坐标
- [[element-hierarchy|Element 继承体系]] — Element 类型图谱
- [[boundingboxxyz|BoundingBoxXYZ]] — Element 空间范围

## 参见

- `Autodesk.Revit.DB.Element`
- Namespace: `Autodesk.Revit.DB`
