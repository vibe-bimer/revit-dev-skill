# DGNExportOptions.GetPredefinedOptions Method

---  
Returns an instance DGNExportOptions containing settings from a predefined export setup. 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public static DGNExportOptions GetPredefinedOptions(
    	Document document,
    	string setup
    )
    
    Public Shared Function GetPredefinedOptions ( 
    	document As Document,
    	setup As String
    ) As DGNExportOptions
    
    public:
    static DGNExportOptions^ GetPredefinedOptions(
    	Document^ document, 
    	String^ setup
    )
    
    static member GetPredefinedOptions : 
            document : Document * 
            setup : string -> DGNExportOptions 
#### Parameters
document [Document](db03274b-a107-aa32-9034-f3e0df4bb1ec.htm)
     A Revit project document to retrieve the setup from. 
setup String
     The name of a predefined export setup from the specified document. 
#### Return Value
[DGNExportOptions](deca8dc2-439f-9567-9c60-70961b3f7c14.htm) An instance of predefined DGNExportOptions, or  if the name was not found. 
Exception| Condition  
---|---  
[ArgumentException](2e6e4206-97a8-dd4b-df5d-4269f4bb6088.htm)|  document is not a project document.   
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  A non-optional argument was null   
#### Reference
[DGNExportOptions Class](deca8dc2-439f-9567-9c60-70961b3f7c14.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)