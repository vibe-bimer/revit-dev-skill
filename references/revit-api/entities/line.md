---
title: Line 直线
created: 2026-04-08
updated: 2026-04-23
type: entity
tags: [revit-api, revit-2026]
sources: [raw/revit-2026/data/e7329450-434a-918b-661c-65e15e0585a5.md]
confidence: medium
---

# Line

## 概述

`Line` 表示 Revit 中的直线段，是创建墙、柱、 梁等构件的基础几何线。

继承链：`GeometryObject` → `Curve` → `Line`

## 创建方式

```csharp
// 两点创建
Line line = Line.CreateBound(XYZ origin, XYZ end);

// 无方向（任意方向）
Line line = Line.CreateUnbound(XYZ point, XYZ direction);

// X 轴方向
Line xAxis = Line.CreateUnbound(XYZ.Zero, XYZ.BasisX);

// 沿轴创建
Line axis = Line.CreateUnbound(planeOrigin, normalAxis);
```

## 常用方法

| 方法 | 说明 |
|------|------|
| `CreateBound(p1, p2)` | 创建有界直线 |
| `CreateUnbound(p, dir)` | 创建无界直线 |
| `Evaluate(dt, normalized)` | 按参数取值 |
| `Project(point)` | 点投影到直线 |
| `Intersect(other)` | 与另一线相交 |

## 创建墙

```csharp
Line wallLine = Line.CreateBound(
    new XYZ(0, 0, 0),
    new XYZ(10, 0, 0)  // 10 英尺长
);

Wall wall = Wall.Create(doc, wallLine, wallTypeId, levelId);
```

## 相关类型

- [[xyz|XYZ]] — 坐标点
- [[curve|Curve]] — 线段基类
- [[wall|Wall]] — 墙创建
- [[element|Element]] — 几何宿主

## 参见

- `Autodesk.Revit.DB.Line`
- Namespace: `Autodesk.Revit.DB`
