# ExporterIFC.SetOwnerHistoryHandle Method

---  
Sets the handle to the IfcOwnerHistory for the file. 
**Namespace:** [Autodesk.Revit.DB.IFC](b823fafb-1ba1-896b-4097-142c2817ce74.htm)**Assembly:** RevitAPIIFC (in RevitAPIIFC.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public void SetOwnerHistoryHandle(
    	IFCAnyHandle ownerHistory
    )
    
    Public Sub SetOwnerHistoryHandle ( 
    	ownerHistory As IFCAnyHandle
    )
    
    public:
    void SetOwnerHistoryHandle(
    	IFCAnyHandle^ ownerHistory
    )
    
    member SetOwnerHistoryHandle : 
            ownerHistory : IFCAnyHandle -> unit 
#### Parameters
ownerHistory [IFCAnyHandle](8b893943-70fa-94bf-90be-1523d516ecb3.htm)
     The handle. 
Exception| Condition  
---|---  
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  A non-optional argument was null   
#### Reference
[ExporterIFC Class](c8697b81-e080-9202-14d3-ec883f951521.htm)
[Autodesk.Revit.DB.IFC Namespace](b823fafb-1ba1-896b-4097-142c2817ce74.htm)