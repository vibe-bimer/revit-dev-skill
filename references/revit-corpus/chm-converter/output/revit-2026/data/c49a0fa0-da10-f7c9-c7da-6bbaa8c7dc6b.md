# AnalyticalModelSelector(Curve) Constructor

---  
Creates a selector based on a specific analytical curve. 
**Namespace:** [Autodesk.Revit.DB.Structure](d586b341-f687-9d90-e96d-255806b7d4fc.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public AnalyticalModelSelector(
    	Curve curve
    )
    
    Public Sub New ( 
    	curve As Curve
    )
    
    public:
    AnalyticalModelSelector(
    	Curve^ curve
    )
    
    new : 
            curve : Curve -> AnalyticalModelSelector
#### Parameters
curve [Curve](400cc9b6-9ff7-de85-6fd8-c20002209d25.htm)
     The curve upon which this selector acts. 
Exception| Condition  
---|---  
[ArgumentException](2e6e4206-97a8-dd4b-df5d-4269f4bb6088.htm)|  The input curve points to a helical curve and is not supported for this operation.   
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  A non-optional argument was null   
#### Reference
[AnalyticalModelSelector Class](d286b023-8822-10ad-6702-53c86a6c9e70.htm)
[AnalyticalModelSelector Overload](9e76852b-a21f-b2d7-93a3-66b844047368.htm)
[Autodesk.Revit.DB.Structure Namespace](d586b341-f687-9d90-e96d-255806b7d4fc.htm)