---
title: Family API 族API
created: 2026-04-08
updated: 2026-04-23
type: concept
tags: [revit-api, revit-2026, revit-2020, revit-2025]
sources: [raw/revit-2026/data/f51d019d-6ff3-692b-d1d2-b497cab564de.md]
confidence: medium
---

# Family API

## 概述

Revit 的族（Family）系统是其灵活性的核心。族 API 支持族文档的创建、编辑、参数管理和族实例的操作。

族分为两类：
- **系统族**（System Family）：墙、楼板、屋顶等，不可载入但可复制/修改
- **可载入族**（Loadable Family）：门、窗、家具等，`.rfa` 文件

## 族类型体系

```
Family
  └── FamilySymbol  (族类型，如 "M0900x1200")
        └── FamilyInstance  (族实例，插入到项目中的对象)
```

## 核心 API 类型

| 类型 | 说明 |
|------|------|
| `Family` | 族本身（载入到项目的族） |
| `FamilySymbol` | 族类型（一个族可有多个类型） |
| `FamilyInstance` | 族实例（模型中的具体对象） |
| `FamilyManager` | 族参数管理（仅族文档内） |
| `FamilyManager.AddParameter()` | 添加族参数 |
| `FamilyManager.NewType()` | 创建族类型 |

## 典型工作流

### 载入族

```csharp
using (Transaction tx = new Transaction(doc, "Load Family"))
{
    tx.Start();
    Family family;
    if (!doc.LoadFamily(path, out family))
    {
        // 已存在
    }
    tx.Commit();
}
```

### 族编辑

```csharp
using (Transaction tx = new Transaction(doc, "Edit Family"))
{
    tx.Start();
    doc.EditFamily(familySymbol.Family);
    // 此时 doc 变为族文档
    // 使用 FamilyManager 操作参数
    tx.Commit();
}
```

### 创建族实例

```csharp
// 激活类型
if (!symbol.IsActive) symbol.Activate();

// 创建实例
FamilyInstance inst = doc.Create.NewFamilyInstance(
    location,    // XYZ
    symbol,      // FamilySymbol
    StructuralType.NonStructural
);
```

## 相关实体

- [[family|Family]] — 族
- [[family-symbol|FamilySymbol]] — 族类型
- [[family-manager|FamilyManager]] — 族参数管理
- [[document|Document]] — 族文档上下文
- [[filtered-element-collector|FilteredElementCollector]] — 查找族

## 参见

- Namespace: `Autodesk.Revit.DB`
