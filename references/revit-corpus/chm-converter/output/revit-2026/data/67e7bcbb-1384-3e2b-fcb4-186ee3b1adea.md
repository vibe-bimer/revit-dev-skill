# LayoutRuleClearSpacing.Spacing Property

---  
Get or set the spacing of the beam system. 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public double Spacing { get; set; }
    
    Public Property Spacing As Double
    	Get
    	Set
    
    public:
    property double Spacing {
    	double get ();
    	void set (double value);
    }
    
    member Spacing : float with get, set
#### Property Value
Double
The value of spacing must be in [0, 30000), but in fact the spacing should not be too small or too great.
#### Reference
[LayoutRuleClearSpacing Class](09ba6ef0-6c4d-904a-715a-33755540fd26.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)