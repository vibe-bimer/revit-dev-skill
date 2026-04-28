---
title: Common Patterns Query
created: 2026-04-26
updated: 2026-04-26
type: query
tags: [revit-api, revit-2026]
sources: [raw/revit-2026/]
confidence: medium
---
# Common Patterns Query

> 拆分来源：[[queries/common-patterns|常用查询代码片段]]

## Navigation
- Parent: [[queries/common-patterns|常用查询代码片段]]
- Next: [[queries/common-patterns-write|Common Patterns Write]]

## Content

# 常用查询代码片段

## 基础元素查询

### 按类型查所有
```csharp
// 所有墙
var walls = new FilteredElementCollector(doc)
    .OfClass<Wall>()
    .ToElements();

// 所有标高
var levels = new FilteredElementCollector(doc)
    .OfClass<Level>()
    .OrderBy(l => l.Elevation)
    .ToElements();

// 所有族类型
var symbols = new FilteredElementCollector(doc)
    .OfClass<FamilySymbol>()
    .ToElements();

// 所有图纸
var sheets = new FilteredElementCollector(doc)
    .OfClass<ViewSheet>()
    .ToElements();
```

### 按类别查
```csharp
// 门
var doors = new FilteredElementCollector(doc)
    .OfCategory(BuiltInCategory.OST_Doors)
    .WhereElementIsNotElementType()
    .ToElements();

// 窗
var windows = new FilteredElementCollector(doc)
    .OfCategory(BuiltInCategory.OST_Windows)
    .WhereElementIsNotElementType()
    .ToElements();

// 所有 MEP 类别（机械/电气/管道）
var mepElements = new FilteredElementCollector(doc)
    .WherePasses(new ElementMulticategoryFilter(
        new[] { BuiltInCategory.OST_DuctTerminal, 
                BuiltInCategory.OST_ElectricalEquipment,
                BuiltInCategory.OST_PipeFitting }))
    .ToElements();
```

## 几何查询

### 获取元素几何
```csharp
Options opts = new Options
{
    DetailLevel = ViewDetailLevel.Fine,
    ComputeReferences = true
};

GeometryElement geom = element.get_Geometry(opts);
foreach (GeometryObject obj in geom)
{
    if (obj is Solid solid)
    {
        foreach (Face face in solid.Faces)
        {
            // ...
        }
    }
    else if (obj is Curve curve)
    {
        // 边界线
    }
}
```

### 获取元素边界框
```csharp
BoundingBoxXYZ bbox = element.BoundingBox;
if (bbox != null)
{
    XYZ min = bbox.Min;
    XYZ max = bbox.Max;
    double width = max.X - min.X;
    double depth = max.Y - min.Y;
    double height = max.Z - min.Z;
}
```

## 参数查询

### 读所有参数
```csharp
foreach (Parameter p in element.Parameters)
{
    string name = p.Definition.Name;
    string value = p.AsValueString();  // 用户可读格式
    StorageType st = p.StorageType;
    // ...
}
```

### 按内置参数查
```csharp
// 查找所有有注释的元素
var commented = new FilteredElementCollector(doc)
    .WherePasses(new ElementParameterFilter(
        ParameterFilterRuleFactory.CreateHasValueParameterRule(
            ElementId(BuiltInParameter.ALL_MODEL_INSTANCE_COMMENTS))))
    .ToElements();

// 查找特定族的实例
var kitchenCabinets = new FilteredElementCollector(doc)
    .OfClass<FamilyInstance>()
    .WherePasses(new ElementParameterFilter(
        ParameterFilterRuleFactory.CreateEqualsRule(
            ElementId(BuiltInParameter.ALL_MODEL_FAMILY_NAME),
            "橱柜_01")))
    .ToElements();
```

## 视图过滤

### 在视图中查询
```csharp
// 只查当前视图可见的元素
var visibleWalls = new FilteredElementCollector(doc, activeView.Id)
    .OfClass<Wall>()
    .ToElements();

// 视图中被隐藏的元素
ICollection<ElementId> hidden = activeView.GetHiddenElements();
```

## 族操作

### 查找某族的所有类型
```csharp
Family family = new FilteredElementCollector(doc)
    .OfClass<Family>()
    .FirstOrDefault(f => f.Name == "窗_Standard");

if (family != null)
{
    foreach (FamilySymbol sym in family.Symbols)
    {
        Debug.Print($"{sym.Name}: Active={sym.IsActive}");
    }
}
```

### 查找某族类型的所有实例
```csharp
FamilySymbol symbol = /* 查找 */;

var instances = new FilteredElementCollector(doc)
    .OfClass<FamilyInstance>()
    .WherePasses(new ElementClassFilter(symbol.GetType()))
    .Where(x => ((FamilyInstance)x).Symbol.Id == symbol.Id)
    .ToElements();
```

## 链接文档

### 遍历链接
```csharp
var links = new FilteredElementCollector(doc)
