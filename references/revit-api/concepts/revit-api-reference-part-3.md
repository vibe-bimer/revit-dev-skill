---
title: Revit Api Reference Part 3
created: 2026-04-26
updated: 2026-04-26
type: summary
tags: [revit-api, revit-2026, nice3point, extension]
sources: [raw/revit-2026/, Nice3point.Revit.Extensions]
confidence: medium
---
# Revit Api Reference Part 3

> 拆分来源：[[revit-api-reference|Revit API 参考指南]]

## Navigation
- Parent: [[revit-api-reference|Revit API 参考指南]]
- Prev: [[revit-api-reference-transactions|Revit Api Reference Transactions]]

## Content

| 按 ID 查元素 | `wallId.ToElement<Wall>(doc)`（Extensions） | `Reference` 上没有 ToElement |
| 按参数值过滤 | `ElementParameterFilter` + QuickFilter 先缩小范围 | 慢速 filter，尽量前置 |
| 读参数 | `element.FindParameter(BIP)?.AsDouble()` | 自动查实例+类型 |
| 写参数 | `param.Set(value)` + Transaction | 检查 `IsReadOnly` |
| 英尺→毫米 | `Math.Round(feet * 304.8, 1)` | Extensions 无此方法 |
| ElementId → 元素 | `id.ToElement<Wall>(doc)` | ElementId 上有，Reference 上没有 |
| 修改模型 | `Transaction(TransactionMode.Manual)` | **禁止多线程** |

---

## 7. 常见错误

| 错误 | 原因 | 解决 |
|------|------|------|
| `CS1061: Element does not contain "Elevation"` | `OrderBy` 在 `ToElements()` 之前，类型推断断裂 | `OfClass → ToElements → Cast → OrderBy` |
| `CS0120` | `OrderBy` 推断为 `IOrderedEnumerable<Element>`，调用 `.Elevation` 找不到 | 同上，调整 collector 链顺序 |
| `RPC server unavailable` | Revit API 从非 STA 线程调用 | 检查是否有 `[HookExecutor<RevitThreadExecutor>]` |
| `FindParameter` 返回 null | 参数不存在，或实例+类型层都没有 | 确认 BIP 枚举值正确 |
| `param.Set()` 抛异常 | 参数 `IsReadOnly == true` | 先检查 `param.IsReadOnly` |
| 链接文档弹 Warning | 链接文档不能做写事务 | 加 `if (!doc.IsLinked)` 判断 |
