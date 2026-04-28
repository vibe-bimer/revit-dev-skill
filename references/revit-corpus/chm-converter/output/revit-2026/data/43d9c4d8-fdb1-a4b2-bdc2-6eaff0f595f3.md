# DialogBoxData.OverrideResult Method

---  
Call this method to cause the Autodesk Revit dialog to be dismissed with the specified return value. 
**Namespace:** [Autodesk.Revit.UI.Events](21d3e79a-2484-60b0-b4c6-5cf65cd96039.htm)**Assembly:** RevitAPIUI (in RevitAPIUI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public bool OverrideResult(
    	int result
    )
    
    Public Function OverrideResult ( 
    	result As Integer
    ) As Boolean
    
    public:
    bool OverrideResult(
    	int result
    )
    
    member OverrideResult : 
            result : int -> bool 
#### Parameters
result Int32
     The result code you wish the Revit dialog to return. 
#### Return Value
Boolean Returns true if the result code was accepted. 
#### Reference
[DialogBoxData Class](41f22b16-a68b-8c19-53f6-de079feb756c.htm)
[Autodesk.Revit.UI.Events Namespace](21d3e79a-2484-60b0-b4c6-5cf65cd96039.htm)