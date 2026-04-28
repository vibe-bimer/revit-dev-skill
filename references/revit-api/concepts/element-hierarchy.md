---
title: Element 继承体系
created: 2026-04-08
updated: 2026-04-23
type: concept
tags: [revit-api, revit-2026]
sources: [raw/revit-2026/data/eb16114f-69ea-f4de-0d0d-f7388b105a16.md]
confidence: medium
---

# Element 继承体系

## 概述

理解 Revit 类的继承关系是掌握 API 的基础。`Element` 是几乎所有 API 类型的基类。

## 核心继承链

```
Element
├── FamilyInstance          — 族实例（可插入模型的对象）
├── FamilySymbol            — 族类型（族的类型定义）
├── Wall                    — 墙
├── Floor                   — 楼板（基类）
│   ├── Floor               — 楼板
│   ├── RoofBase            — 屋顶基类
│   └── Ceiling             — 天花板
├── Level                   — 标高
├── View                    — 视图基类
│   ├── ViewPlan            — 平面图
│   ├── ViewSection         — 剖面/立面
│   ├── View3D              — 三维视图
│   ├── ViewSchedule        — 明细表
│   └── ViewSheet           — 图纸
├── ElementType             — 元素类型基类
│   ├── WallType           — 墙类型
│   ├── FamilySymbol       — 族类型
│   └── FloorType          — 楼板类型
├── HostObject              — 宿主对象（可承载其他元素）
│   ├── Wall               — 墙
│   └── Floor              — 楼板
├── Autodesk.Revit.DB.HostObject
├── CurveElement           — 线段类元素（详图线等）
└── Dimension              — 标注
```

## 按功能分类

### 建筑构件
- `Wall` — 墙
- `Floor` — 楼板
- `RoofBase` — 屋顶
- `Ceiling` — 天花板

### 族相关
- `Family` — 族
- `FamilySymbol` — 族类型
- `FamilyInstance` — 族实例

### 参数与类型
- `ElementType` — 类型基类
- `Element` — 所有构件基类
- `Parameter` — 参数对象

### 视图
- `View` — 视图基类
- `ViewPlan` — 平面视图
- `View3D` — 三维视图

## 类型判断

```csharp
// 继承链检查
if (element is Wall) { /* 是墙 */ }
else if (element is FamilyInstance fi) { /* 是族实例 */ }

// 向上转型
if (element is HostObject ho) { /* 是宿主对象 */ }

// 类别检查
if (element.Category.Id.IntegerValue ==
    (int)BuiltInCategory.OST_Walls) { /* 是墙类别 */ }
```

## 相关实体

- [[element|Element]] — 元素基类
- [[document|Document]] — 文档
- [[wall|Wall]] — 墙
- [[level|Level]] — 标高
- [[view|View]] — 视图
- [[family-symbol|FamilySymbol]] — 族类型

## 参见

- `Autodesk.Revit.DB.Element`
- Namespace: `Autodesk.Revit.DB`
