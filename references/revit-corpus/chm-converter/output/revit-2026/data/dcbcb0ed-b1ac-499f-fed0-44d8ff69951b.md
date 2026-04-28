# RebarShapeDefinitionByArc(Document, RebarShapeDefinitionByArcType) Constructor

---  
Create a non-spiral shape definition. 
**Namespace:** [Autodesk.Revit.DB.Structure](d586b341-f687-9d90-e96d-255806b7d4fc.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public RebarShapeDefinitionByArc(
    	Document doc,
    	RebarShapeDefinitionByArcType type
    )
    
    Public Sub New ( 
    	doc As Document,
    	type As RebarShapeDefinitionByArcType
    )
    
    public:
    RebarShapeDefinitionByArc(
    	Document^ doc, 
    	RebarShapeDefinitionByArcType type
    )
    
    new : 
            doc : Document * 
            type : RebarShapeDefinitionByArcType -> RebarShapeDefinitionByArc
#### Parameters
doc [Document](db03274b-a107-aa32-9034-f3e0df4bb1ec.htm)
    
type [RebarShapeDefinitionByArcType](555907d2-578b-026a-347c-8900bcf538d8.htm)
    
Exception| Condition  
---|---  
[ArgumentException](2e6e4206-97a8-dd4b-df5d-4269f4bb6088.htm)|  The arc type cannot be set directly to Spiral. Instead, call SetArcTypeSpiral() to provide defaults for spiral parameters.   
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  A non-optional argument was null   
[ArgumentOutOfRangeException](60f148c9-ece0-a6bb-4e12-bb4a9c8c8a24.htm)|  A value passed for an enumeration argument is not a member of that enumeration   
Replaces RebarShape.NewDefinitionByArc() from prior versions. 
#### Reference
[RebarShapeDefinitionByArc Class](a92742a5-9781-3691-ec78-5b318fbf5ad3.htm)
[RebarShapeDefinitionByArc Overload](69c14c72-4c10-1840-014b-b48646d003f1.htm)
[Autodesk.Revit.DB.Structure Namespace](d586b341-f687-9d90-e96d-255806b7d4fc.htm)