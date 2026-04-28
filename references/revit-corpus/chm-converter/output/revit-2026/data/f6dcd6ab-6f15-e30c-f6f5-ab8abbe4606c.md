# StairsPathType.DrawForEachRun Property

---  
True if stairs paths should be drawn for each run, false if it should be drawn for the whole stairs. 
**Namespace:** [Autodesk.Revit.DB.Architecture](720f0c58-cb2b-4f13-374a-7348ed0a1cd3.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public bool DrawForEachRun { get; set; }
    
    Public Property DrawForEachRun As Boolean
    	Get
    	Set
    
    public:
    property bool DrawForEachRun {
    	bool get ();
    	void set (bool value);
    }
    
    member DrawForEachRun : bool with get, set
#### Property Value
Boolean
Exception| Condition  
---|---  
[InvalidOperationException](9e715f03-3884-e539-4dd6-8d7545733adc.htm)|  When setting this property: The StairsPathType is not fixed up direction so the data being set is not applicable.   
#### Reference
[StairsPathType Class](36994970-3d80-62a3-df6f-381d38f2eda0.htm)
[Autodesk.Revit.DB.Architecture Namespace](720f0c58-cb2b-4f13-374a-7348ed0a1cd3.htm)