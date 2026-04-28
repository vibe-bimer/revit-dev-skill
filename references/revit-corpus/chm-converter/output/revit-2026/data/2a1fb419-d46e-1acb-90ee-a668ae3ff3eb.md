# PointCloudType.Create Method

---  
Creates a new point cloud type for a given point cloud engine. 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public static PointCloudType Create(
    	Document document,
    	string engineIdentifier,
    	string typeIdentifier
    )
    
    Public Shared Function Create ( 
    	document As Document,
    	engineIdentifier As String,
    	typeIdentifier As String
    ) As PointCloudType
    
    public:
    static PointCloudType^ Create(
    	Document^ document, 
    	String^ engineIdentifier, 
    	String^ typeIdentifier
    )
    
    static member Create : 
            document : Document * 
            engineIdentifier : string * 
            typeIdentifier : string -> PointCloudType 
#### Parameters
document [Document](db03274b-a107-aa32-9034-f3e0df4bb1ec.htm)
     The document in which to create the point cloud. 
engineIdentifier String
     The string identifying the engine to be invoked. It should be the file extension or engine identifier registered by the third party. 
typeIdentifier String
     The file name or the identification string for a non-file based engine. 
#### Return Value
[PointCloudType](b7ba9b9c-fd96-7506-1585-6fc2b327e0e9.htm) The newly created PointCloudType object to be used to create instances of this point cloud. 
Exception| Condition  
---|---  
[ArgumentException](2e6e4206-97a8-dd4b-df5d-4269f4bb6088.htm)|  The engine identifier was not found in the Revit session. -or- document is not a project document.   
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  A non-optional argument was null   
[FileNotFoundException](73250198-dbc6-e760-4297-ec062f00f574.htm)|  The external file could not be found or loaded.   
[InvalidOperationException](9e715f03-3884-e539-4dd6-8d7545733adc.htm)|  Unable to create a point cloud from the third party engine.   
[ModificationForbiddenException](53205486-5917-7c33-8e67-e362106ddc97.htm)|  The document is in failure mode: an operation has failed, and Revit requires the user to either cancel the operation or fix the problem (usually by deleting certain elements). -or- The document is being loaded, or is in the midst of another sensitive process.   
[ModificationOutsideTransactionException](8f025460-c283-ea99-aa8a-5a36e11528f4.htm)|  The document has no open transaction.   
A list of supported engine identifiers and whether they are file-based or not can be obtained from PointCloudEngineRegistry. The method GetSupportedEngines() returns a list of the identifiers registered for engines. 
#### Reference
[PointCloudType Class](b7ba9b9c-fd96-7506-1585-6fc2b327e0e9.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)