# NumberingSchema.GetNumberingSchema Method

---  
Returns an instance of the specified Numbering Schema in the given document. 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public static NumberingSchema GetNumberingSchema(
    	Document document,
    	NumberingSchemaType schemaType
    )
    
    Public Shared Function GetNumberingSchema ( 
    	document As Document,
    	schemaType As NumberingSchemaType
    ) As NumberingSchema
    
    public:
    static NumberingSchema^ GetNumberingSchema(
    	Document^ document, 
    	NumberingSchemaType^ schemaType
    )
    
    static member GetNumberingSchema : 
            document : Document * 
            schemaType : NumberingSchemaType -> NumberingSchema 
#### Parameters
document [Document](db03274b-a107-aa32-9034-f3e0df4bb1ec.htm)
     A document to get the numbering schema from. 
schemaType [NumberingSchemaType](da916345-8494-ff19-96d0-1a2d0377a02e.htm)
     The type of a built-in schema to get. 
#### Return Value
[NumberingSchema](8f2b22da-5963-301f-44d8-10c68828c436.htm) Instance of the specified schema. 
Exception| Condition  
---|---  
[ArgumentException](2e6e4206-97a8-dd4b-df5d-4269f4bb6088.htm)|  The given schemaType has an invalid Id.   
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  A non-optional argument was null   
#### Reference
[NumberingSchema Class](8f2b22da-5963-301f-44d8-10c68828c436.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)