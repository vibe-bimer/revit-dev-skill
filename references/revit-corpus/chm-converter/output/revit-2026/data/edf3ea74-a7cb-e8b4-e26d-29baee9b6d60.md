# RebarConstrainedHandle.GetEdgeNumber Method

---  
If the RebarConstrainedHandle's RebarHandleType is 'Edge', then this function will return the number of the edge that is driven by the handle. 
**Namespace:** [Autodesk.Revit.DB.Structure](d586b341-f687-9d90-e96d-255806b7d4fc.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public int GetEdgeNumber()
    
    Public Function GetEdgeNumber As Integer
    
    public:
    int GetEdgeNumber()
    
    member GetEdgeNumber : unit -> int 
#### Return Value
Int32
Exception| Condition  
---|---  
[InvalidOperationException](9e715f03-3884-e539-4dd6-8d7545733adc.htm)|  RebarConstrainedHandle is no longer valid. -or- The RebarConstrainedHandle is not of RebarHandleType 'Edge'.   
#### Reference
[RebarConstrainedHandle Class](08b4c4a3-3bb9-0801-9cc8-cd5420a306d9.htm)
[Autodesk.Revit.DB.Structure Namespace](d586b341-f687-9d90-e96d-255806b7d4fc.htm)