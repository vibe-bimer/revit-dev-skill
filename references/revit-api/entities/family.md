---
title: Family 族
created: 2026-04-08
updated: 2026-04-23
type: entity
tags: [revit-api, revit-2026, revit-2020]
sources: [raw/revit-2026/data/f51d019d-6ff3-692b-d1d2-b497cab564de.md]
confidence: medium
---

# Family

## 概述

`Family` 表示 Revit 中的族对象——每个可载入的 `.rfa` 文件对应一个 Family。

> "An element that represents a custom family (not a system family) in Autodesk Revit."

继承链：`Element` → `Family`

## 查找族

```csharp
// 查找所有载入的族
ICollection<Family> families = new FilteredElementCollector(doc)
    .OfClass<Family>()
    .ToElements()
    .Cast<Family>()
    .ToList();

// 按名称查找
Family family = families.FirstOrDefault(f => f.Name == "窗_01");
```

## 加载族

```csharp
using (Transaction tx = new Transaction(doc, "Load Family"))
{
    tx.Start();
    
    Family family;
    doc.LoadFamily(path, out family);
    
    // 加载特定族类型
    FamilySymbol symbol;
    doc.LoadFamilySymbol(path, "族类型名称", out family, out symbol);
    
    tx.Commit();
}
```

## 族类型迭代

```csharp
foreach (FamilySymbol symbol in family.Symbols)
{
    string name = symbol.Name;
    // ...
}
```

## 相关类型

- [[family-symbol|FamilySymbol]] — 族类型
- [[family-manager|FamilyManager]] — 族参数管理
- [[document|Document]] — 族所在文档
- [[family-instance|FamilyInstance]] — 族实例

## 参见

- [[family-api|Family API]] — 族载入、编辑、实例化的完整工作流
- `Autodesk.Revit.DB.Family`
- Namespace: `Autodesk.Revit.DB`
