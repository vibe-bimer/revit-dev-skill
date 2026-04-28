# AnalysisResultSchema.Scale Property

---  
Multiplier used for displaying diagram or vector values in view. 
**Namespace:** [Autodesk.Revit.DB.Analysis](958e2e12-587d-f188-5d7b-f13d7dbfdf48.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public double Scale { get; set; }
    
    Public Property Scale As Double
    	Get
    	Set
    
    public:
    property double Scale {
    	double get ();
    	void set (double value);
    }
    
    member Scale : float with get, set
#### Property Value
Double
Exception| Condition  
---|---  
[ArgumentOutOfRangeException](60f148c9-ece0-a6bb-4e12-bb4a9c8c8a24.htm)|  When setting this property: scale is zero or negative   
#### Reference
[AnalysisResultSchema Class](90969170-ac45-68e6-2527-f6fba5b3f7ae.htm)
[Autodesk.Revit.DB.Analysis Namespace](958e2e12-587d-f188-5d7b-f13d7dbfdf48.htm)