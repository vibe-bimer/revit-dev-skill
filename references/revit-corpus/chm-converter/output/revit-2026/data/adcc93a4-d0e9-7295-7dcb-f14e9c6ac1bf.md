# RebarBendingDetail.GetTagRelativePosition Method

---  
Gets the embedded tag position w.r.t. the realistic bending detail element in model coordinates. 
**Namespace:** [Autodesk.Revit.DB.Structure](d586b341-f687-9d90-e96d-255806b7d4fc.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public static XYZ GetTagRelativePosition(
    	Element bendingDetail
    )
    
    Public Shared Function GetTagRelativePosition ( 
    	bendingDetail As Element
    ) As XYZ
    
    public:
    static XYZ^ GetTagRelativePosition(
    	Element^ bendingDetail
    )
    
    static member GetTagRelativePosition : 
            bendingDetail : Element -> XYZ 
#### Parameters
bendingDetail [Element](eb16114f-69ea-f4de-0d0d-f7388b105a16.htm)
     The bending detail element. 
#### Return Value
[XYZ](c2fd995c-95c0-58fb-f5de-f3246cbc5600.htm) The new relative position of the embedded tag w.r.t. the bending detail element. 
Exception| Condition  
---|---  
[ArgumentException](2e6e4206-97a8-dd4b-df5d-4269f4bb6088.htm)|  This option is only available for realistic bending detail elements.   
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  A non-optional argument was null   
This function is exclusive to realistic bending detail mode. 
#### Reference
[RebarBendingDetail Class](a9e46b4b-7e43-4ed6-b556-b6fcd23e7d05.htm)
[Autodesk.Revit.DB.Structure Namespace](d586b341-f687-9d90-e96d-255806b7d4fc.htm)