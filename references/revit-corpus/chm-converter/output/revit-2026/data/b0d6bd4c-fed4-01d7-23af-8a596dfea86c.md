# IFCData.CreateBinary Method

---  
Creates a binary data object. 
**Namespace:** [Autodesk.Revit.DB.IFC](b823fafb-1ba1-896b-4097-142c2817ce74.htm)**Assembly:** RevitAPIIFC (in RevitAPIIFC.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public static IFCData CreateBinary(
    	string value
    )
    
    Public Shared Function CreateBinary ( 
    	value As String
    ) As IFCData
    
    public:
    static IFCData^ CreateBinary(
    	String^ value
    )
    
    static member CreateBinary : 
            value : string -> IFCData 
#### Parameters
value String
     The string value. 
#### Return Value
[IFCData](34762033-771a-ebee-bd69-509c55ae78f0.htm) The IFCData object. 
Exception| Condition  
---|---  
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  A non-optional argument was null   
#### Reference
[IFCData Class](34762033-771a-ebee-bd69-509c55ae78f0.htm)
[Autodesk.Revit.DB.IFC Namespace](b823fafb-1ba1-896b-4097-142c2817ce74.htm)