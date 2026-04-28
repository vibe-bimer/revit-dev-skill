# DirectShape.AreValidDirectShapeReferenceOptions Method

---  
Validates that the input DirectShapeReferenceOptions are suitable for creating a direct shape reference object. If the options specify an ExternalGeometryId, it must not correspond to any existing reference object belonging to the DirectShape. 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public bool AreValidDirectShapeReferenceOptions(
    	DirectShapeReferenceOptions options
    )
    
    Public Function AreValidDirectShapeReferenceOptions ( 
    	options As DirectShapeReferenceOptions
    ) As Boolean
    
    public:
    bool AreValidDirectShapeReferenceOptions(
    	DirectShapeReferenceOptions^ options
    )
    
    member AreValidDirectShapeReferenceOptions : 
            options : DirectShapeReferenceOptions -> bool 
#### Parameters
options [DirectShapeReferenceOptions](c77da180-10dd-8e8a-d5d4-01cfc06135e5.htm)
     The options to test. 
#### Return Value
Boolean True if the options can be used to add a reference object to this DirectShape. 
Exception| Condition  
---|---  
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  A non-optional argument was null   
#### Reference
[DirectShape Class](bfbd137b-c2c2-71bb-6f4a-992d0dcf6ea8.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)