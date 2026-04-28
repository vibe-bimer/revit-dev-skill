# RebarShapeDefinitionBySegments.MajorSegmentIndex Property

---  
Index of a segment that can be considered the most important. Revit attempts to preserve the orientation of this segment when a Rebar instance changes its RebarShape to one with a different number of segments. 
**Namespace:** [Autodesk.Revit.DB.Structure](d586b341-f687-9d90-e96d-255806b7d4fc.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public int MajorSegmentIndex { get; set; }
    
    Public Property MajorSegmentIndex As Integer
    	Get
    	Set
    
    public:
    property int MajorSegmentIndex {
    	int get ();
    	void set (int value);
    }
    
    member MajorSegmentIndex : int with get, set
#### Property Value
Int32
Exception| Condition  
---|---  
[ArgumentException](2e6e4206-97a8-dd4b-df5d-4269f4bb6088.htm)|  When setting this property: majorSegmentIndex is not between 0 and NumberOfSegments.   
#### Reference
[RebarShapeDefinitionBySegments Class](7229fdba-1e8f-6cb7-e72e-0933e495ad62.htm)
[Autodesk.Revit.DB.Structure Namespace](d586b341-f687-9d90-e96d-255806b7d4fc.htm)