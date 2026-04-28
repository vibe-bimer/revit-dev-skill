# TemporaryViewModes.RevealHiddenElements Property

---  
The current state of the RevealHiddenElements mode in the associated view. 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public bool RevealHiddenElements { get; set; }
    
    Public Property RevealHiddenElements As Boolean
    	Get
    	Set
    
    public:
    property bool RevealHiddenElements {
    	bool get ();
    	void set (bool value);
    }
    
    member RevealHiddenElements : bool with get, set
#### Property Value
Boolean
Exception| Condition  
---|---  
[InvalidOperationException](9e715f03-3884-e539-4dd6-8d7545733adc.htm)|  When setting this property: The RevealHiddenElements mode is either disabled or inapplicable in the associated view.   
#### Reference
[TemporaryViewModes Class](cf6ecc84-e459-55c5-a4d7-d88ae4033a23.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)