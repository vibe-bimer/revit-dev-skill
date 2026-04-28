---
title: Curve 曲线基类
created: 2026-04-08
updated: 2026-04-23
type: entity
tags: [revit-api, revit-2026]
sources: [raw/revit-2026/data/400cc9b6-9ff7-de85-6fd8-c20002209d25.md]
confidence: medium
---

# Curve

## 概述

`Curve` 是所有一维几何对象（直线、弧线、样条曲线）的基类。

> "Object representing a parametric curve in 3D."

## 继承链

```
GeometryObject
└── Curve
    ├── Line
    ├── Arc
    ├── Ellipse
    ├── HermiteSpline
    ├── NurbSpline
    └── CurveLoop
```

## 常用方法

```csharp
// 参数范围
double t0 = curve.Tessillate[0];  // 参数起点
double t1 = curve.Tessillate[1];  // 参数终点

// 评估点
XYZ pt = curve.Evaluate(t, normalized: true);

// 投影点
ProjectionResult result = curve.Project(point);
XYZ closest = result.XYZPoint;
double param = result.Parameter;

// 长度
double length = curve.ApproximateLength;

// 方向
XYZ dir = curve.ComputeDerivatives(t, normalized: true).BasisX;
```

## CurveArray / CurveLoop

多个曲线组合使用：

```csharp
// 多段线（墙）
IList<Curve> segments = new List<Curve> { line1, arc1, line2 };
Wall.Create(doc, new CurveArray(segments), wallTypeId, levelId);

// 闭合轮廓（楼板、屋顶）
CurveLoop loop = CurveLoop.Create(new List<Curve> { line1, line2, line3, line4 });
```

## 相关类型

- [[line|Line]] — 直线
- [[xyz|XYZ]] — 坐标点
- [[wall|Wall]] — 墙创建（用 Curve）

## 参见

- `Autodesk.Revit.DB.Curve`
- Namespace: `Autodesk.Revit.DB`
