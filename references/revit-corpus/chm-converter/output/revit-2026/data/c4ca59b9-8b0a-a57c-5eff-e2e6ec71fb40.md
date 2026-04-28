# PartMakerMethodToDivideVolumes.DivisionGap Property

---  
The gap which is created between matching profiles of parts. 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public double DivisionGap { get; set; }
    
    Public Property DivisionGap As Double
    	Get
    	Set
    
    public:
    property double DivisionGap {
    	double get ();
    	void set (double value);
    }
    
    member DivisionGap : float with get, set
#### Property Value
Double
Exception| Condition  
---|---  
[ArgumentOutOfRangeException](60f148c9-ece0-a6bb-4e12-bb4a9c8c8a24.htm)|  When setting this property: The given value for divisionGap must be between 0 and 30000 feet.   
#### Reference
[PartMakerMethodToDivideVolumes Class](611ca5f7-3ffb-6f83-3aaf-df4533038ed0.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)