---
title: UIDocument UI文档
created: 2026-04-08
updated: 2026-04-23
type: entity
tags: [revit-api, revit-2026]
sources: [raw/revit-2026/data/295b48c8-0571-ad5c-eead-baea84a6787c.md]
confidence: medium
---

# UIDocument

## 概述

`UIDocument` 是 Revit UI 层面的文档对象，封装了对活跃视图、选择集和 UI 交互的支持。

> "An object that represents an Autodesk Revit project opened in the Revit user interface."

## 与 Document 的关系

```csharp
UIDocument uidoc = commandData.Application.ActiveUIDocument;
Document doc = uidoc.Document; // 获取底层 DB Document
```

## 关键属性

| 属性 | 说明 |
|------|------|
| `Document` | 底层 Document 对象 |
| `ActiveView` | 当前活跃视图 |
| `Selection` | 用户选择集 |

## 关键方法

```csharp
// 选择集
IList<ElementId> selectedIds = uidoc.Selection.GetElementIds();

// 设置选择集
uidoc.Selection.SetElementIds(new List<ElementId> { elementId });

// 显示/定位视图
uidoc.ShowElements(new List<ElementId> { elementId });
uidoc.Regenerate();

// 隐藏/隔离
uidoc.ActiveView.HideElementsTemporary(ids);
```

## 提示选择

```csharp
// 让用户选择一个元素
Reference r = uidoc.Selection.PickObject(
    ObjectType.Element,
    "请选择一个门"
);
Element elem = doc.GetElement(r);

// 提示选择多个
IList<Reference> refs = uidoc.Selection.PickObjects(
    ObjectType.Element,
    "请选择多个"
);
```

## 相关类型

- [[document|Document]] — 底层文档
- [[application|Application]] — 宿主应用程序
- [[view|View]] — 当前视图
- [[element|Element]] — 选择元素

## 参见

- `Autodesk.Revit.UI.UIDocument`
- Namespace: `Autodesk.Revit.UI`
