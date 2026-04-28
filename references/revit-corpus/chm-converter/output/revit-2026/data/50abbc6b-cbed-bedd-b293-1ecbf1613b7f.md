# ExternallyTaggedGeometryValidation.LacksSubnodes Method

---  
Makes sure that the input geometry object does not have sub-nodes. 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public static bool LacksSubnodes(
    	GeometryObject geometry
    )
    
    Public Shared Function LacksSubnodes ( 
    	geometry As GeometryObject
    ) As Boolean
    
    public:
    static bool LacksSubnodes(
    	GeometryObject^ geometry
    )
    
    static member LacksSubnodes : 
            geometry : GeometryObject -> bool 
#### Parameters
geometry [GeometryObject](e0f15010-0e19-6216-e2f0-ab7978145daa.htm)
     Geometry object to be validated. 
#### Return Value
Boolean True if the supplied geometry object does not have sub-nodes. 
#### Reference
[ExternallyTaggedGeometryValidation Class](3d89cbdb-0653-7820-5b94-e1fd8b6bf144.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)