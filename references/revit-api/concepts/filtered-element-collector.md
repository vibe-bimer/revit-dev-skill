---
title: FilteredElementCollector 元素查询
created: 2026-04-08
updated: 2026-04-23
type: concept
tags: [revit-api, revit-2026, revit-2020, revit-2025]
sources: [raw/revit-2026/data/263cf06b-98be-6f91-c4da-fb47d01688f3.md]
confidence: medium
---

# FilteredElementCollector 元素查询

## 概述

`FilteredElementCollector` 是 Revit API 中**最核心的查询工具**。所有对模型元素的查找都通过它完成——从"找所有墙"到"找所有 2020 年创建的Family"。

核心模式：`FilteredElementCollector(doc).OfClass<T>().WherePasses(filter).ToElements()`

## 基本用法

### 按类型查找
```csharp
// 查找所有 Wall
ICollection<ElementId> wallIds = new FilteredElementCollector(doc)
    .OfClass(typeof(Wall))
    .ToElementIds();

// 查找所有 Level
ICollection<ElementId> levelIds = new FilteredElementCollector(doc)
    .OfClass(typeof(Level))
    .ToElementIds();
```

### 使用 QuickFilter（索引过滤）
```csharp
// 只在活跃视图中可见的元素
FilteredElementCollector(doc, activeView.Id)

// 某类别下的元素
FilteredElementCollector(doc)
    .OfCategory(BuiltInCategory.OST_Walls)
```

### 使用 ElementFilter（慢速过滤）
```csharp
// 逻辑组合过滤器
ElementFilter filter = new LogicalAndFilter(
    new ElementClassFilter(typeof(Wall)),
    new ElementParameterFilter(
        ParameterFilterRuleFactory.CreateEqualsRule(
            ElementId(BuiltInParameter.ALL_MODEL_INSTANCE_URL), "Kitchen"))
);

IList<Element> walls = new FilteredElementCollector(doc)
    .WherePasses(filter)
    .ToElements();
```

## 常用过滤器组合

| 场景 | 代码 |
|------|------|
| 某类型的第一个实例 | `.OfClass<T>().FirstElement()` |
| 活跃视图中的某类元素 | `.OfClass<T>(doc, view.Id)` |
| 某 Category 的所有元素 | `.OfCategory(BuiltInCategory.OST_XXX)` |
| 元素 ID 列表初始化 | `new FilteredElementCollector(doc, ids)` |
| 排除链接文档元素 | `.Excluding(linkElementIds)` |
| 按参数值过滤 | `ElementParameterFilter` + `ParameterFilterRuleFactory` |

## 性能注意

- **QuickFilter** 在数据库索引层执行（快），包括 `OfClass`、`OfCategory`、`WhereElementIsNotElementType`
- **ElementFilter** 需要遍历每个元素（慢），尽量在 `WherePasses` 前用 QuickFilter 缩小范围
- **ToElements()** 触发查询；**ToElementIds()** 只返回 ID，更轻量
- `Excluding` 是 QuickFilter，优先于慢速过滤器使用

## 相关类型

- [[element|Element]] — 所有元素的基类
- [[document|Document]] — 查询的上下文文档
- [[elementid|ElementId]] — 元素的唯一标识
- [[wall|Wall]] — 示例查询对象
- [[view|View]] — 视图过滤
- [[common-patterns|常用查询代码片段]] — Collector 常见组合示例

## 参见

- `Autodesk.Revit.DB.FilteredElementCollector`
- Namespace: `Autodesk.Revit.DB`
