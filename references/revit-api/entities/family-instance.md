---
title: FamilyInstance 族实例
created: 2026-04-08
updated: 2026-04-23
type: entity
tags: [revit-api, revit-2026]
sources: [raw/revit-2026/data/0d2231f8-91e6-794f-92ae-16aad8014b27.md]
confidence: medium
---

# FamilyInstance

## 概述

`FamilyInstance` 是模型中**插入的族对象**（如门、窗、家具、设备等），对应族文档中的某个 FamilySymbol。

> "Represents an instance of a custom family within a project."

继承链：`Element` → `FamilyInstance`

## 创建族实例

```csharp
// 基本创建
FamilyInstance inst = doc.Create.NewFamilyInstance(
    location,      // XYZ 位置
    symbol,        // FamilySymbol
    StructuralType.NonStructural
);

// 带墙定位
FamilyInstance inst = doc.Create.NewFamilyInstance(
    location,
    symbol,
    wall,          // 依附的墙
    StructuralType.NonStructural
);

// 带旋转
FamilyInstance inst = doc.Create.NewFamilyInstance(
    location,
    symbol,
    rotation,      // 旋转角度（弧度）
    level
);
```

## 关键属性

```csharp
FamilySymbol sym = inst.Symbol;
ElementId symId = inst.Symbol.Id;
XYZ location = inst.Location is LocationPoint lp ? lp.Point : null;
double rotation = (inst.Location as LocationPoint)?.Rotation ?? 0;
ElementId hostId = inst.Host.Id;
bool isFlipped = inst.Flipped;
```

## MEP 相关

```csharp
// MEP 连接器
IList<Connector> connectors = inst.MEPModel.ConnectorManager.Connectors;

// MEP 尺寸
double flow = inst.MEPModel.LookupParameter("Flow").AsDouble();
```

## 相关类型

- [[family-symbol|FamilySymbol]] — 族类型
- [[family|Family]] — 族
- [[element|Element]] — 基类
- [[document|Document]] — 创建上下文
- [[wall|Wall]] — 宿主墙

## 参见

- `Autodesk.Revit.DB.FamilyInstance`
- Namespace: `Autodesk.Revit.DB`
