---
title: XYZ 3D坐标
created: 2026-04-08
updated: 2026-04-23
type: entity
tags: [revit-api, revit-2026]
sources: [raw/revit-2026/data/c2fd995c-95c0-58fb-f5de-f3246cbc5600.md]
confidence: medium
---

# XYZ

## 概述

`XYZ` 表示三维空间中的坐标点或向量，是 Revit 几何操作的基础数据类型。

> "Object representing coordinates in 3-dimensional space."

## 创建与访问

```csharp
XYZ origin = XYZ.Zero;              // (0,0,0)
XYZ one = XYZ.BasisX;               // (1,0,0)
XYZ pt = new XYZ(10, 20, 30);       // 自定义坐标

double x = pt.X;
double y = pt.Y;
double z = pt.Z;
```

## 常用运算

```csharp
XYZ a = new XYZ(1, 0, 0);
XYZ b = new XYZ(0, 1, 0);

// 加减
XYZ c = a + b;  // (1,1,0)

// 缩放
XYZ scaled = a * 2.0;  // (2,0,0)

// 点积（dot product）
double dot = a.DotProduct(b);  // 0

// 叉积（cross product）
XYZ cross = a.CrossProduct(b);  // (0,0,1)

// 长度
double len = pt.GetLength();

// 归一化
XYZ norm = pt.Normalize();

// 距离
double dist = a.DistanceTo(b);
```

## 单位注意

Revit API 内部使用**英尺**作为长度单位。坐标值 1.0 = 1 英尺 ≈ 304.8mm。

```csharp
// 从 mm 转英尺
double feet = mm / 304.8;

// 从英尺转 mm
double mm = feet * 304.8;
```

## UV 类

二维坐标使用 `UV`：`new UV(u, v)`

## 相关类型

- [[element|Element]] — 几何对象宿主
- [[document|Document]] — 坐标的上下文文档

## 参见

- `Autodesk.Revit.DB.XYZ`
- Namespace: `Autodesk.Revit.DB`
