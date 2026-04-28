# ExportDWGSettings.Create(Document, String) Method

---  
Create a DWG export settings with default values. 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public static ExportDWGSettings Create(
    	Document document,
    	string name
    )
    
    Public Shared Function Create ( 
    	document As Document,
    	name As String
    ) As ExportDWGSettings
    
    public:
    static ExportDWGSettings^ Create(
    	Document^ document, 
    	String^ name
    )
    
    static member Create : 
            document : Document * 
            name : string -> ExportDWGSettings 
#### Parameters
document [Document](db03274b-a107-aa32-9034-f3e0df4bb1ec.htm)
     Document where created settings is saved. 
name String
     The name specified to this settings. 
#### Return Value
[ExportDWGSettings](a17fc52f-f67a-9763-e52f-29f867106908.htm) The new DWG export settings instance. 
Exception| Condition  
---|---  
[ArgumentException](2e6e4206-97a8-dd4b-df5d-4269f4bb6088.htm)|  ExistOrEmpty   
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  A non-optional argument was null   
#### Reference
[ExportDWGSettings Class](a17fc52f-f67a-9763-e52f-29f867106908.htm)
[Create Overload](b7cec5bd-8f85-4fd4-dded-4c73317d8b71.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)