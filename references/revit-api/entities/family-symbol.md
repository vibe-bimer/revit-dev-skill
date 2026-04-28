---
title: FamilySymbol 族类型
created: 2026-04-08
updated: 2026-04-23
type: entity
tags: [revit-api, revit-2026, revit-2020]
sources: [raw/revit-2026/data/a1acaed0-6a62-4c1d-94f5-4e27ce0923d3.md]
confidence: medium
---

# FamilySymbol

## 概述

`FamilySymbol` 表示族中的一个具体"类型"（Type），如同一扇窗族的"M0900x1200"尺寸类型。每个 Family 可以有多个 FamilySymbol。

> "An element that represents a single type within a Family."

继承链：`Element` → `HostObject` → `FamilySymbol`

## 查找族类型

```csharp
// 方式1：通过族+类型名称
FamilySymbol symbol = new FilteredElementCollector(doc)
    .OfClass<FamilySymbol>()
    .Cast<FamilySymbol>()
    .FirstOrDefault(s => s.Family.Name == "窗_01" && s.Name == "M0900x1200");

// 方式2：直接按类别
FamilySymbol symbol = new FilteredElementCollector(doc)
    .OfCategory(BuiltInCategory.OST_Windows)
    .OfClass<FamilySymbol>()
    .FirstOrDefault() as FamilySymbol;
```

## 激活族类型

族类型需要激活后才能用于创建实例：

```csharp
using (Transaction tx = new Transaction(doc, "Activate Symbol"))
{
    tx.Start();
    if (!symbol.IsActive) symbol.Activate();
    tx.Commit();
}
```

## 创建族实例

```csharp
FamilyInstance instance = doc.Create.NewFamilyInstance(
    location,          // XYZ 位置
    symbol,            // FamilySymbol
    structuralType     // StructuralType
);
```

## 相关类型

- [[family|Family]] — 族
- [[family-manager|FamilyManager]] — 族参数管理
- [[element|Element]] — 基类
- [[document|Document]] — 创建上下文

## 参见

- `Autodesk.Revit.DB.FamilySymbol`
- Namespace: `Autodesk.Revit.DB`
