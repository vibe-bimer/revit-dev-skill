# TopographySurface.Create(Document, IList<XYZ>, IList<PolymeshFacet>) Method

---  
**Note: This API is now obsolete.**
**Namespace:** [Autodesk.Revit.DB.Architecture](720f0c58-cb2b-4f13-374a-7348ed0a1cd3.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    [ObsoleteAttribute("This method is deprecated in Revit 2024 with the introduction of the new Toposolid elements.  It is recommended that Toposolid elements should be used in place of TopographySurface elements.")]
    public static TopographySurface Create(
    	Document document,
    	IList<XYZ> points,
    	IList<PolymeshFacet> facets
    )
    
    <ObsoleteAttribute("This method is deprecated in Revit 2024 with the introduction of the new Toposolid elements.  It is recommended that Toposolid elements should be used in place of TopographySurface elements.")>
    Public Shared Function Create ( 
    	document As Document,
    	points As IList(Of XYZ),
    	facets As IList(Of PolymeshFacet)
    ) As TopographySurface
    
    public:
    [ObsoleteAttribute(L"This method is deprecated in Revit 2024 with the introduction of the new Toposolid elements.  It is recommended that Toposolid elements should be used in place of TopographySurface elements.")]
    static TopographySurface^ Create(
    	Document^ document, 
    	IList<XYZ^>^ points, 
    	IList<PolymeshFacet^>^ facets
    )
    
    [<ObsoleteAttribute("This method is deprecated in Revit 2024 with the introduction of the new Toposolid elements.  It is recommended that Toposolid elements should be used in place of TopographySurface elements.")>]
    static member Create : 
            document : Document * 
            points : IList<XYZ> * 
            facets : IList<PolymeshFacet> -> TopographySurface 
#### Parameters
document [Document](db03274b-a107-aa32-9034-f3e0df4bb1ec.htm)
    
points IList[XYZ](c2fd995c-95c0-58fb-f5de-f3246cbc5600.htm)
    
facets IList[PolymeshFacet](a7315aaf-631d-96af-368c-65f86b6c00ef.htm)
    
#### Return Value
[TopographySurface](64242f41-69e1-84be-f21b-84783e81364a.htm)
#### Reference
[TopographySurface Class](64242f41-69e1-84be-f21b-84783e81364a.htm)
[Create Overload](7951a6bc-55e8-14bf-c8dc-47ee4a463165.htm)
[Autodesk.Revit.DB.Architecture Namespace](720f0c58-cb2b-4f13-374a-7348ed0a1cd3.htm)