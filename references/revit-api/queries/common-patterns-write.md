---
title: Common Patterns Write
created: 2026-04-26
updated: 2026-04-26
type: query
tags: [revit-api, revit-2026]
sources: [raw/revit-2026/]
confidence: medium
---
# Common Patterns Write

> 拆分来源：[[queries/common-patterns|常用查询代码片段]]

## Navigation
- Parent: [[queries/common-patterns|常用查询代码片段]]
- Prev: [[queries/common-patterns-query|Common Patterns Query]]

## Content

.OfClass<RevitLinkInstance>()
    .ToElements();

foreach (RevitLinkInstance link in links)
{
    Document linkDoc = link.GetLinkDocument();
    var linkWalls = new FilteredElementCollector(linkDoc)
        .OfClass<Wall>()
        .ToElements();
}
```

## 常用过滤组合速查

```csharp
// 类型（Type），非实例
.OfClass<WallType>()

// 实例，非类型
.WhereElementIsNotElementType()

// 活跃视图中
new FilteredElementCollector(doc, activeView.Id)

// 按类别
.OfCategory(BuiltInCategory.OST_Walls)

// 排除
.Excluding(excludeIds)

// 视图裁剪区域
.WherePasses(new BoundingBoxIntersectsFilter(activeView.CropBox))

// 逻辑 AND
new LogicalAndFilter(filter1, filter2)

// 逻辑 OR
new LogicalOrFilter(filter1, filter2)
```

## 参见

- [[filtered-element-collector|FilteredElementCollector]] — 完整过滤语法
- [[element|Element]] — 参数读写
- [[document|Document]] — 元素创建
- [[wall|Wall]] — 具体构件查询
- [[level|Level]] — 标高排序查询
