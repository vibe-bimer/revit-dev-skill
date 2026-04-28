# RebarShapeTerminationsData.TerminationOrientationAtEnd Property

---  
Identifies the orientation of the termination (e.g. hook, crank) at end.
The default value is Left.
**Namespace:** [Autodesk.Revit.DB.Structure](d586b341-f687-9d90-e96d-255806b7d4fc.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public RebarTerminationOrientation TerminationOrientationAtEnd { get; set; }
    
    Public Property TerminationOrientationAtEnd As RebarTerminationOrientation
    	Get
    	Set
    
    public:
    property RebarTerminationOrientation TerminationOrientationAtEnd {
    	RebarTerminationOrientation get ();
    	void set (RebarTerminationOrientation value);
    }
    
    member TerminationOrientationAtEnd : RebarTerminationOrientation with get, set
#### Property Value
[RebarTerminationOrientation](0fa2b2c9-7655-e132-8b84-064a3e13fcd3.htm)
Exception| Condition  
---|---  
[ArgumentOutOfRangeException](60f148c9-ece0-a6bb-4e12-bb4a9c8c8a24.htm)|  When setting this property: A value passed for an enumeration argument is not a member of that enumeration   
#### Reference
[RebarShapeTerminationsData Class](01a81e99-2424-2d06-9d30-dbdb19d05f24.htm)
[Autodesk.Revit.DB.Structure Namespace](d586b341-f687-9d90-e96d-255806b7d4fc.htm)