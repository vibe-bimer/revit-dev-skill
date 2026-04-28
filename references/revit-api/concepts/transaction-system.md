---
title: Revit 事务系统
created: 2026-04-08
updated: 2026-04-23
type: concept
tags: [revit-api, revit-2026, revit-2020, revit-2025]
sources: [raw/revit-2026/data/308ebf8d-d96d-4643-cd1d-34fffcea53fd.md]
confidence: medium
---

# Revit 事务系统

## 概述

Revit 事务（Transaction）是所有模型修改的**守卫机制**。Revit 数据库本身是单线程写保护的，任何对模型的修改必须包裹在事务中执行。事务保证修改的原子性——要么全部成功，要么全部回滚。

事务系统采用 .NET `IDisposable` 模式：`using (Transaction t = new Transaction(doc, "name")) { ... }`

## 核心类型

### Transaction
最基本的修改事务。创建 → 启动 → 修改 → 提交/回滚。

```csharp
using (Transaction tx = new Transaction(doc, "Create Wall"))
{
    tx.Start();  // 或 Start(string) 返回 TransactionStatus
    // 执行修改
    Wall.Create(doc, line, wallTypeId, levelId);
    tx.Commit(); // 返回 TransactionStatus
}
```

关键状态：
- `Started` — 已启动，可执行修改
- `Committed` — 已提交，修改永久生效
- `RolledBack` — 已回滚，修改丢弃
- `Pending` — 处于嵌套状态（SubTransaction 场景）

### TransactionGroup
事务组将多个 Transaction 聚合为一个可原子回滚的整体。用于批量操作失败时统一回滚。

```csharp
using (TransactionGroup tg = new TransactionGroup(doc, "Batch Import"))
{
    tg.Start();
    // 多个 Transaction
    tg.Assimilate(); // 合并所有已提交事务
}
```

### SubTransaction
SubTransaction 在已有事务内部创建子事务，用于某些需要独立上下文的 API（如 `ReferenceArray` 操作）。必须在父 Transaction 已 Start 但未 Commit 时使用。

```csharp
using (SubTransaction st = new SubTransaction(doc))
{
    st.Start();
    // 修改
    st.Commit();
}
```

### FailureHandling
通过 `FailureHandler` 拦截和处理 Revit 警告/错误：

```csharp
FailureHandlingOptions opts = tx.GetFailureHandlingOptions();
opts.SetFailuresPreprocessor(new MyFailuresPreprocessor());
opts.SetClearAfterRollback(true);
tx.SetFailureHandlingOptions(opts);
```

## 事务规则

| 规则 | 说明 |
|------|------|
| 嵌套深度 | `Transaction` 不能嵌套，可嵌套 `SubTransaction` |
| 只读操作 | 某些操作（如 `Element.GetTopologicalFaces`）要求无活动事务 |
| 只读文档 | 链接文档（Link）不允许事务 |
| 族编辑 | 族文档内事务需 `Document.EditFamily` 上下文 |
| 并行禁止 | Revit API 完全单线程，禁止多线程同时操作同一文档 |

## 相关类型

- [[document|Document]] — 事务的目标对象
- [[uidocument|UIDocument]] — UI 文档的事务（`UIDocument.Document`）
- `FailureDefinition` — 失败定义与处理
- `TransactionGroup` — 事务组

## 参见

- Revit SDK: TransactionExample
- `Autodesk.Revit.DB.Transaction`, `TransactionGroup`, `SubTransaction`
- Namespace: `Autodesk.Revit.DB`
