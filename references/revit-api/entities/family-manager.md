---
title: FamilyManager 族参数管理
created: 2026-04-08
updated: 2026-04-23
type: entity
tags: [revit-api, revit-2026, revit-2020]
sources: [raw/revit-2026/data/1cc4fe6c-0e9f-7439-0021-32d2e06f4c33.md]
confidence: medium
---

# FamilyManager

## 概述

`FamilyManager` 在**族文档**（`.rfa`）中使用，用于管理族类型、族参数和族类型变体。

> "The family manager object to manage the family types and parameters in family document."

## 获取 FamilyManager

```csharp
Document famDoc = doc; // 必须是族文档
FamilyManager fm = famDoc.FamilyManager;
```

## 族参数操作

```csharp
using (Transaction tx = new Transaction(famDoc, "Add Parameter"))
{
    tx.Start();
    
    // 添加族参数
    FamilyParameter fp = fm.AddParameter(
        "MyParameter",
        BuiltInParameterGroup.PG_GENERAL,
        ParameterType.Text,
        false  // is instance
    );
    
    // 删除参数
    fm.RemoveParameter(fp);
    
    tx.Commit();
}
```

## 族类型操作

```csharp
// 创建族类型
FamilyType newType = fm.NewType("Type B");

// 设置类型参数值
fm.Set(familyParameter, value);

// 删除族类型
fm.DeleteType(type);

// 激活类型
fm.CurrentType = type;
```

## 常用方法

| 方法 | 说明 |
|------|------|
| `AddParameter()` | 添加族参数 |
| `RemoveParameter()` | 删除参数 |
| `NewType()` | 创建族类型 |
| `DeleteType()` | 删除族类型 |
| `Set()` | 设置参数值 |
| `Get()` | 获取参数值 |
| `CurrentType` | 当前激活类型 |

## 相关类型

- [[document|Document]] — 族文档
- [[parameters|Parameter]] — 族参数
- [[family-symbol|FamilySymbol]] — 族类型
- [[family|Family]] — 族本身

## 参见

- `Autodesk.Revit.DB.FamilyManager`
- Namespace: `Autodesk.Revit.DB`
