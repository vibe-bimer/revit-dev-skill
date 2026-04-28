---
title: ElementId 元素标识符
created: 2026-04-08
updated: 2026-04-23
type: entity
tags: [revit-api, revit-2026]
sources: [raw/revit-2026/data/44f3f7b1-3229-3404-93c9-dc5e70337dd6.md]
confidence: medium
---

# ElementId

## 概述

`ElementId` 是 Revit 中所有元素的唯一标识符，用于在文档内唯一引用一个元素。

> "The ElementId object is used as a unique identification for an element within a single project."

## 基本用法

```csharp
ElementId id = element.Id;
int intValue = id.IntegerValue;  // 跨 API 调用传值

// 重建
ElementId recoveredId = new ElementId(intValue);
```

## 常用场景

```csharp
// 获取墙类型 ID
ElementId wallTypeId = wall.WallType.Id;

// 获取某视图中的所有选中元素
ICollection<ElementId> ids = uidoc.Selection.GetElementIds();

// 判断是否有效
if (id != ElementId.InvalidElementId) { /* ... */ }

// Null ID
if (id == ElementId.InvalidElementId) { /* 未选中 */ }
```

## ElementId vs IntegerValue

```csharp
// 保存/传输用 IntegerValue（可序列化）
int key = element.Id.IntegerValue;

// 恢复用 ElementId
ElementId id = new ElementId(key);
```

## 特殊值

| 常量 | 值 | 用途 |
|------|-----|------|
| `ElementId.InvalidElementId` | -1 | 无效 ID |
| `ElementId.InvalidElementId.IntegerValue` | -1 | 无效 ID 整数值 |

## 相关类型

- [[element|Element]] — 被标识的元素
- [[document|Document]] — ID 的上下文文档

## 参见

- `Autodesk.Revit.DB.ElementId`
- Namespace: `Autodesk.Revit.DB`
