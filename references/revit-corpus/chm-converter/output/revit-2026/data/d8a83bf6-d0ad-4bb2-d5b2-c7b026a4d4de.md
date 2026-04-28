# RebarBarType.SetHookLength Method

---  
Identifies the hook length for a hook type 
**Namespace:** [Autodesk.Revit.DB.Structure](d586b341-f687-9d90-e96d-255806b7d4fc.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public void SetHookLength(
    	ElementId hookId,
    	double hookLength
    )
    
    Public Sub SetHookLength ( 
    	hookId As ElementId,
    	hookLength As Double
    )
    
    public:
    void SetHookLength(
    	ElementId^ hookId, 
    	double hookLength
    )
    
    member SetHookLength : 
            hookId : ElementId * 
            hookLength : float -> unit 
#### Parameters
hookId [ElementId](44f3f7b1-3229-3404-93c9-dc5e70337dd6.htm)
     id of the hook type 
hookLength Double
     The hook length for a hook type 
Exception| Condition  
---|---  
[ArgumentException](2e6e4206-97a8-dd4b-df5d-4269f4bb6088.htm)|  the rebar hook type id hookId is not valid   
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  A non-optional argument was null   
#### Reference
[RebarBarType Class](467b44cc-54e7-3ecf-07e1-ad15d05fe800.htm)
[Autodesk.Revit.DB.Structure Namespace](d586b341-f687-9d90-e96d-255806b7d4fc.htm)