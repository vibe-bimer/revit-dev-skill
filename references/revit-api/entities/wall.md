---
title: Wall 墙
created: 2026-04-08
updated: 2026-04-23
type: entity
tags: [revit-api, revit-2026, revit-2020, revit-2025]
sources: [raw/revit-2026/data/b5891733-c602-12df-beab-da414b58d608.md]
confidence: medium
---

# Wall

## 概述

`Wall` 表示 Revit 中的墙，是最常用的建筑构件类型之一。

> "Represents a wall in Autodesk Revit."

继承链：`Element` → `HostObject` → `Wall`

## 创建墙

```csharp
// 基本创建（直线墙）
Wall wall = Wall.Create(
    document,          // Document
    line,              // Curve（线）
    wallTypeId,        // WallType ElementId
    levelId,           // Level ElementId
    height,            // 高度（可选，默认到上一个标高）
    offset,            // 偏移（可选）
    flip,              // 是否翻转（可选）
    structural         // 是否为结构墙（可选）
);

// 叠层墙（CurtainWall 需特殊处理）
WallType wt = new FilteredElementCollector(doc)
    .OfClass<WallType>()
    .FirstOrDefault(x => x.Kind == WallKind Curtain);
```

## 关键属性

```csharp
// 墙类型
ElementId wallTypeId = wall.WallType.Id;

// 标高
ElementId levelId = wall.LevelId;

// 结构墙判断
bool isStructural = wall.StructuralUsage == StructuralWallUsage.Bearing;
```

## 常用 BuiltInParameter

| 参数 | 说明 |
|------|------|
| `WALL_HEIGHT_TYPE` | 墙高度控制方式 |
| `WALL_BASE_OFFSET` | 底部偏移 |
| `WALL_TOP_OFFSET` | 顶部偏移 |
| `WALL_USER_HEIGHT_PARAM` | 用户定义高度 |
| `WALL_CURTAIN_GRID` |幕墙网格 |
| `WALL_KEY_SCHEDULE` | 关键表 |

## 相关类型

- [[element|Element]] — 基类
- [[document|Document]] — 创建墙的上下文
- [[walltype|WallType]] — 墙类型定义
- [[level|Level]] — 墙所在标高
- [[filtered-element-collector|FilteredElementCollector]] — 查找墙

## 参见

- `Autodesk.Revit.DB.Wall`
- Namespace: `Autodesk.Revit.DB`
