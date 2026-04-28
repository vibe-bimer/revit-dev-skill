# AnalysisDisplayDiagramSettings.Rounding Property

---  
Increment to which numeric values of analysis results are rounded in diagram. 
**Namespace:** [Autodesk.Revit.DB.Analysis](958e2e12-587d-f188-5d7b-f13d7dbfdf48.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public double Rounding { get; set; }
    
    Public Property Rounding As Double
    	Get
    	Set
    
    public:
    property double Rounding {
    	double get ();
    	void set (double value);
    }
    
    member Rounding : float with get, set
#### Property Value
Double
Exception| Condition  
---|---  
[ArgumentsInconsistentException](05972c68-fa6d-3a83-d720-ad84fbc4780f.htm)|  When setting this property: rounding is not positive   
#### Reference
[AnalysisDisplayDiagramSettings Class](57e0c5ff-555c-7345-ac24-3592207a4d70.htm)
[Autodesk.Revit.DB.Analysis Namespace](958e2e12-587d-f188-5d7b-f13d7dbfdf48.htm)