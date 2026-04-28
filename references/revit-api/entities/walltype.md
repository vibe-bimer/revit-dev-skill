---
title: WallType 墙类型
created: 2026-04-08
updated: 2026-04-23
type: entity
tags: [revit-api, revit-2026, revit-2020]
sources: [raw/revit-2026/data/aa685433-b426-5e4f-bee1-e3487bb59518.md]
confidence: medium
---

# WallType

## 概述

`WallType` 定义墙的构造（叠层结构），一个 WallType 可以被多个 Wall 实例共享。

继承链：`Element` → `ElementType` → `HostObject` → `WallType`

## 查找墙类型

```csharp
// 基本墙类型
WallType basicWall = new FilteredElementCollector(doc)
    .OfClass<WallType>()
    .FirstOrDefault(x => x.Kind == WallKind.Basic);

// 幕墙
WallType curtainWall = new FilteredElementCollector(doc)
    .OfClass<WallType>()
    .FirstOrDefault(x => x.Kind == WallKind.Curtain);

// 叠层墙
WallType stackedWall = new FilteredElementCollector(doc)
    .OfClass<WallType>()
    .FirstOrDefault(x => x.Kind == WallKind.Stacked);

// 按名称
WallType namedWall = new FilteredElementCollector(doc)
    .OfClass<WallType>()
    .FirstOrDefault(x => x.Name == "外墙-200");
```

## 结构（叠层）

```csharp
// 获取墙的构造层
IList<CompoundStructureLayer> layers = wallType.GetCompoundStructure().Layers;

foreach (CompoundStructureLayer layer in layers)
{
    double width = layer.Width;        // 宽度（英尺）
    Material mat = doc.GetElement(layer.MaterialId) as Material;
    string matName = mat?.Name;
}
```

## 相关类型

- [[wall|Wall]] — 使用 WallType 的墙实例
- [[element|Element]] — 基类
- `FloorType` — 楼板类型（类似结构）

## 参见

- `Autodesk.Revit.DB.WallType`
- Namespace: `Autodesk.Revit.DB`
