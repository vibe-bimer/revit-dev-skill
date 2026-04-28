# BalusterPattern.EndSpace Property

---  
The extra space added after a whole baluster pattern. 
**Namespace:** [Autodesk.Revit.DB.Architecture](720f0c58-cb2b-4f13-374a-7348ed0a1cd3.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public double EndSpace { get; set; }
    
    Public Property EndSpace As Double
    	Get
    	Set
    
    public:
    property double EndSpace {
    	double get ();
    	void set (double value);
    }
    
    member EndSpace : float with get, set
#### Property Value
Double
Exception| Condition  
---|---  
[ArgumentOutOfRangeException](60f148c9-ece0-a6bb-4e12-bb4a9c8c8a24.htm)|  When setting this property: The given value for endSpace must be between 0 and 30000 feet.   
#### Reference
[BalusterPattern Class](bb7868e3-0665-07e5-59e4-a95efb3079ab.htm)
[Autodesk.Revit.DB.Architecture Namespace](720f0c58-cb2b-4f13-374a-7348ed0a1cd3.htm)