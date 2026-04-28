# RebarUpdateCurvesData.CycleCounterChanged Property

---  
True if the cycle counter was changed, false otherwise.
The cycle counter value is changed when the free form Rebar element is selected and the user press Space key -or- by through [!:Autodesk::Revit::DB::Structure::RebarRebarFreeFormAccessor::CycleCounter] property. -or- by the server if it considers that the counter reaches the maximum value and reset it (set it to 0). 
**Namespace:** [Autodesk.Revit.DB.Structure](d586b341-f687-9d90-e96d-255806b7d4fc.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public bool CycleCounterChanged { get; }
    
    Public ReadOnly Property CycleCounterChanged As Boolean
    	Get
    
    public:
    property bool CycleCounterChanged {
    	bool get ();
    }
    
    member CycleCounterChanged : bool with get
#### Property Value
Boolean
#### Reference
[RebarUpdateCurvesData Class](ff847aea-8397-8b79-b039-16a72e479c9f.htm)
[Autodesk.Revit.DB.Structure Namespace](d586b341-f687-9d90-e96d-255806b7d4fc.htm)