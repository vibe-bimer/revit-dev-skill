---
title: Level 标高
created: 2026-04-08
updated: 2026-04-23
type: entity
tags: [revit-api, revit-2026, revit-2020]
sources: [raw/revit-2026/data/577e5d4e-a558-118c-9dea-3b810b061775.md]
confidence: medium
---

# Level

## 概述

`Level` 表示 Revit 项目中的标高，是建筑模型中控制垂直定位的核心元素。所有水平定位的构件（墙、楼板、天花板等）都通过 Level 确定其高程。

> "Represents a Level within Autodesk Revit."

## 创建标高

```csharp
// 创建标高
Level level = Level.Create(doc, elevationInFeet);

// 查找标高
Level level = new FilteredElementCollector(doc)
    .OfClass<Level>()
    .FirstOrDefault(l => l.Name == "F1");
```

## 关键属性

```csharp
double elevation = level.Elevation;      // 标高值（英尺）
double elevationMm = level.Elevation * 304.8; // 转 mm
bool isStory = level.IsStoryLevel;       // 是否为楼层
```

## 常见使用场景

```csharp
// 获取某视图的标高
Level viewLevel = doc.GetElement(view.GenLevel.Id) as Level;

// 墙所在标高
Level wallLevel = doc.GetElement(wall.LevelId) as Level;
```

## 相关类型

- [[element|Element]] — 基类
- [[wall|Wall]] — 依附于标高的构件
- [[document|Document]] — 标高所在文档
- [[xyz|XYZ]] — 高度值的 3D 表示

## 参见

- `Autodesk.Revit.DB.Level`
- Namespace: `Autodesk.Revit.DB`
