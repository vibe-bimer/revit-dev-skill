---
title: BoundingBoxXYZ 边界框
created: 2026-04-08
updated: 2026-04-23
type: entity
tags: [revit-api, revit-2026]
sources: [raw/revit-2026/data/3c452286-57b1-40e2-2795-c90bff1fcec2.md]
confidence: medium
---

# BoundingBoxXYZ

## 概述

`BoundingBoxXYZ` 表示三维空间中的轴对齐边界框（AABB），用于确定元素的空间范围、视图裁剪和碰撞检测。

## 获取边界框

```csharp
BoundingBoxXYZ bbox = element.BoundingBox;
if (bbox != null)
{
    XYZ min = bbox.Min;
    XYZ max = bbox.Max;
}
```

## 常用属性

```csharp
XYZ min = bbox.Min;      // 最小角点
XYZ max = bbox.Max;      // 最大角点
XYZ center = (min + max) / 2.0;  // 中心点
Transform transform = bbox.Transform;  // 变换矩阵
```

## 计算尺寸

```csharp
double width = bbox.Max.X - bbox.Min.X;
double depth = bbox.Max.Y - bbox.Min.Y;
double height = bbox.Max.Z - bbox.Min.Z;
```

## 在过滤中使用

```csharp
// 查询与边界框相交的所有元素
Outline outline = new Outline(min, max);
BoundingBoxIntersectsFilter filter = new BoundingBoxIntersectsFilter(outline);

var elements = new FilteredElementCollector(doc)
    .WherePasses(filter)
    .ToElements();
```

## 相关类型

- [[xyz|XYZ]] — 坐标点
- [[element|Element]] — 获取边界框
- [[filtered-element-collector|FilteredElementCollector]] — BoundingBox 过滤

## 参见

- `Autodesk.Revit.DB.BoundingBoxXYZ`
- Namespace: `Autodesk.Revit.DB`
