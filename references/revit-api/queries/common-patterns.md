---
title: 常用查询代码片段
created: 2026-04-08
updated: 2026-04-26
type: query
tags: [revit-api, revit-2026]
sources: [raw/revit-2026/]
confidence: medium
---
# 常用查询代码片段

## 拆分说明

本页已按 2026-04-26 拆分计划重构为“总览页 + 子专题页”。
原始细节已迁移到以下子页：

- [[queries/common-patterns-query|Common Patterns Query]]
- [[queries/common-patterns-write|Common Patterns Write]]

## 总览摘要

# 常用查询代码片段
## 基础元素查询
### 按类型查所有
```csharp
// 所有墙
var walls = new FilteredElementCollector(doc)
    .OfClass<Wall>()
    .ToElements();
// 所有标高
var levels = new FilteredElementCollector(doc)
    .OfClass<Level>()
    .OrderBy(l => l.Elevation)
    .ToElements();
// 所有族类型
var symbols = new FilteredElementCollector(doc)
    .OfClass<FamilySymbol>()
    .ToElements();
// 所有图纸
