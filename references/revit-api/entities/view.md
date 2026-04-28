---
title: View 视图
created: 2026-04-08
updated: 2026-04-23
type: entity
tags: [revit-api, revit-2026]
sources: [raw/revit-2026/data/fb92a4e7-f3a7-ef14-e631-342179b18de9.md]
confidence: medium
---

# View

## 概述

`View` 是 Revit 中所有视图类型的基类——楼层平面、立面、剖面、3D 视图、明细表、图纸等全部继承自 View。

> "Base class for all types of views in Autodesk Revit."

## 视图类型判断

```csharp
if (view is ViewPlan vp) { /* 平面图 */ }
else if (view is ViewSection vs) { /* 剖面/立面 */ }
else if (view is View3D v3d) { /* 3D 视图 */ }
else if (view is ViewSchedule vsched) { /* 明细表 */ }
else if (view is ViewSheet vsheet) { /* 图纸 */ }
```

## 常用属性

| 属性 | 说明 |
|------|------|
| `GenLevel` | 视图关联的标高（平面图） |
| `Scale` | 视图比例 |
| `ViewDirection` | 视图方向（3D） |
| `CropBox` | 裁剪框 |
| `DisplayStyle` | 显示样式 |
| `DetailLevel` | 详细程度 |
| `HideElements()` | 临时隐藏元素 |
| `IsTemporaryHideIsolateActive()` | 临时隐藏是否激活 |

## 视图过滤

```csharp
// 在视图中创建元素（可见性控制）
ViewSchedule schedule = ViewSchedule.CreateSchedule(doc, categoryId,BuiltInParameter.TEXT notes);

// 激活临时隐藏/隔离
view.TemporaryHideElements(new List<ElementId> { elementId });
```

## 常用 BuiltInParameter

| 参数 | 说明 |
|------|------|
| `VIEW_NAME` | 视图名称 |
| `VIEW_PHASE` | 视图阶段 |
| `VIEW_DETAIL_LEVEL` | 详细程度 |
| `VIEW_SCALE` | 视图比例 |

## 相关类型

- [[element|Element]] — 基类
- [[document|Document]] — 视图所在文档
- [[filtered-element-collector|FilteredElementCollector]] — 视图内元素查询

## 参见

- `Autodesk.Revit.DB.View`
- Namespace: `Autodesk.Revit.DB`
