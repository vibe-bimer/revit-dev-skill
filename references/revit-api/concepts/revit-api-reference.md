---
title: Revit API 参考指南
created: 2026-04-09
updated: 2026-04-26
type: summary
tags: [revit-api, revit-2026, nice3point, extension]
sources: [raw/revit-2026/, Nice3point.Revit.Extensions]
confidence: medium
summary: FilteredElementCollector 查询模式、参数读写、Nice3point Extensions 扩展方法、ElementId 转换、事务管理、常见错误速查
---
# Revit API 参考指南

## 拆分说明

本页已按 2026-04-26 拆分计划重构为“总览页 + 子专题页”。
原始细节已迁移到以下子页：

- [[revit-api-reference-query-patterns|Revit Api Reference Query Patterns]]
- [[revit-api-reference-transactions|Revit Api Reference Transactions]]
- [[revit-api-reference-part-3|Revit Api Reference Part 3]]

## 总览摘要

# Revit API 参考指南
覆盖日常开发 90% 的 API 场景，给定目标直接查对应章节。内容分为两部分：**原生 API**（Document、Collector、Transaction、Parameter）和 **Nice3point Extensions**（扩展方法层）。如果项目使用 Nice3point 模板，先看 [[revit-toolkit-guide|Nice3point Toolkit 指南]] 再落到具体 API。
---
## 1. 查文档
### 获取当前文档
**在 ExternalCommand 中（Toolkit 方式）：**
```csharp
public override void Execute()
{
    var doc = Application.ActiveUIDocument.Document;
    var uidoc = Application.ActiveUIDocument;
    // 基类直接暴露 Application property，无参数版本
}
```
**在 ExternalApplication 中：**
```csharp
public override void OnStartup()
{


维护状态：[[maintenance-dashboard]]
语料入口：[[revit-corpus-access]]
