# STLExportOptions(ExportResolution) Constructor

---  
Constructs a new instance of STLExportOptions with all predefined tessellation settings, depending on export resolution type. Note: in case of Custom resolution type, tessellation settings won't be predefined and will have default values. 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public STLExportOptions(
    	ExportResolution resolutionType
    )
    
    Public Sub New ( 
    	resolutionType As ExportResolution
    )
    
    public:
    STLExportOptions(
    	ExportResolution resolutionType
    )
    
    new : 
            resolutionType : ExportResolution -> STLExportOptions
#### Parameters
resolutionType [ExportResolution](671e963b-c211-17e7-2c26-5d772d34798a.htm)
     The type of export resolution. 
Exception| Condition  
---|---  
[ArgumentOutOfRangeException](60f148c9-ece0-a6bb-4e12-bb4a9c8c8a24.htm)|  A value passed for an enumeration argument is not a member of that enumeration   
#### Reference
[STLExportOptions Class](c8870dfe-9259-4981-4545-a6c0d0440552.htm)
[STLExportOptions Overload](202b3151-da4b-fbad-08e1-d63e2fb80930.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)