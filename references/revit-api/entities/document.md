---
title: Document 文档对象
created: 2026-04-08
updated: 2026-04-23
type: entity
tags: [revit-api, revit-2026]
sources: [raw/revit-2026/data/ab1718f9-45fb-b3d3-827e-32ff81cf929c.md]
confidence: medium
---

# Document

## 概述

`Document` 是 Revit 模型在 API 中的表示。每个打开的 `.rvt` 文件、`.rte` 族模板、`.rfa` 族文件在 API 中都对应一个 `Document` 对象。它是所有元素查询和修改的根上下文。

> "The Document Creation object is used to create new instances of elements within the Autodesk Revit project."

## 关键属性

| 属性 | 说明 |
|------|------|
| `Title` | 文件名（不含路径） |
| `PathName` | 完整文件路径 |
| `IsFamilyDocument` | 是否为族文档 |
| `IsModifiable` | 是否可写（未在只读状态） |
| `IsLinked` | 是否为链接文档 |
| `ProjectInformation` | 项目信息元素 |
| `ProjectLocation` | 项目定位 |

## 关键方法

### 元素创建
```csharp
// 创建墙
Wall.Create(Document doc, Curve line, ElementId wallTypeId, ElementId levelId)

// 创建标高
Level.Create(Document doc, double elevation)

// 创建族实例
FamilyInstance.Create(Document doc, FamilySymbol symbol, XYZ location, Structure.StructuralType type)
```

### 元素获取
```csharp
// 通过 ID
Element element = doc.GetElement(ElementId);

// 通过 Reference
Element element = doc.GetElement(Reference);

// 通过 FilteredElementCollector
new FilteredElementCollector(doc).OfClass<Wall>().ToElements();
```

### 族操作
```csharp
// 加载族
Family family;
doc.LoadFamily(path, out family);

// 族编辑
using (Transaction tx = new Transaction(doc, "Edit Family"))
{
    tx.Start();
    doc.EditFamily(familySymbol.Family); // 进入族编辑模式
    tx.Commit();
}
```

## Document 类型判断

```csharp
if (doc.IsFamilyDocument)
{
    // 族文档（.rfa/.rte）
    FamilyManager fm = doc.FamilyManager;
}
else
{
    // 项目文档（.rvt）
}
```

## 相关类型

- [[uidocument|UIDocument]] — UI 上下文中的文档
- [[application|Application]] — 文档的创建者（Application）
- [[element|Element]] — 文档中的所有元素
- [[transaction-system|Transaction]] — 文档修改的守卫
- [[filtered-element-collector|FilteredElementCollector]] — 文档内元素查询
- [[wall|Wall]] — 文档中创建的元素示例
- [[level|Level]] — 文档中的标高

## 参见

- [[revit-api-reference|Revit API 参考指南]] — Document / Collector / Transaction / Parameter 高频用法
- `Autodesk.Revit.DB.Document`
- Namespace: `Autodesk.Revit.DB`
- Revit 2026 API: Document Class
