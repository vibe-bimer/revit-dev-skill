# DirectShapeReferenceOptions.SetExternalGeometryId Method

---  
Sets the ExternalGeometryId associated with the reference object. The ID must be non-empty. 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public DirectShapeReferenceOptions SetExternalGeometryId(
    	ExternalGeometryId externalId
    )
    
    Public Function SetExternalGeometryId ( 
    	externalId As ExternalGeometryId
    ) As DirectShapeReferenceOptions
    
    public:
    DirectShapeReferenceOptions^ SetExternalGeometryId(
    	ExternalGeometryId^ externalId
    )
    
    member SetExternalGeometryId : 
            externalId : ExternalGeometryId -> DirectShapeReferenceOptions 
#### Parameters
externalId [ExternalGeometryId](6074854d-72b6-fa2f-b4ec-df48a33b862b.htm)
    
#### Return Value
[DirectShapeReferenceOptions](c77da180-10dd-8e8a-d5d4-01cfc06135e5.htm)
Exception| Condition  
---|---  
[ArgumentException](2e6e4206-97a8-dd4b-df5d-4269f4bb6088.htm)|  externalId cannot be used as an ExternalGeometryId for a direct shape reference.   
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  A non-optional argument was null   
#### Reference
[DirectShapeReferenceOptions Class](c77da180-10dd-8e8a-d5d4-01cfc06135e5.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)