---
title: Application 应用对象
created: 2026-04-08
updated: 2026-04-23
type: entity
tags: [revit-api, revit-2026]
sources: [raw/revit-2026/data/94db8ea8-d2c3-5e71-8030-466bcb8e4426.md]
confidence: medium
---

# Application

## 概述

`Application` 表示 Revit 应用程序本身，是 API 的最高层入口。通过它可以访问文档列表、选项设置和应用程序级功能。

> "Represents the Autodesk Revit Application, providing access to documents, options and other application wide data and settings."

## 访问 Application

```csharp
// 外部命令中
public Result Execute(ExternalCommandData data, ref string message, ElementSet elements)
{
    Application app = data.Application.Application;
    Document doc = app.ActiveUIDocument.Document;
    // ...
}

// IExternalApplication
public Result OnStartup(ControlledApplication app) { /* ... */ }
```

## 关键属性

| 属性 | 说明 |
|------|------|
| `VersionName` | 版本名称（2026） |
| `VersionNumber` | 版本号 |
| `VersionBuild` | Build 号 |
| `SharedParametersFilename` | 共享参数文件路径 |
| `IsEnergyAnalysisEnabled` | 能耗分析是否启用 |
| `IsEarlyAccessEnabled` | 早期访问功能 |

## 文档管理

```csharp
// 所有打开的文档
UIDocumentCollection docs = app.Documents;

// 打开文档
UIDocument uidoc = app.OpenAndActivateDocument(path);
Document doc = uidoc.Document;

// 新建文档
app.NewProjectDocument(templatePath);
```

## 相关类型

- [[uidocument|UIDocument]] — UI 上下文文档
- [[document|Document]] — 文档对象

## 参见

- `Autodesk.Revit.DB.Application`
- Namespace: `Autodesk.Revit.ApplicationServices`
