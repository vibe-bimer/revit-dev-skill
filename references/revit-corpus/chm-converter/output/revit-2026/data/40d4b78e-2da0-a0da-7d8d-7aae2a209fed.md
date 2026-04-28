# RectangleLightShape.EmitLength Property

---  
The emit length. 
**Namespace:** [Autodesk.Revit.DB.Lighting](a6a04f07-7fd2-0a4e-12e7-01842ee6daaf.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public double EmitLength { get; set; }
    
    Public Property EmitLength As Double
    	Get
    	Set
    
    public:
    property double EmitLength {
    	double get ();
    	void set (double value);
    }
    
    member EmitLength : float with get, set
#### Property Value
Double The emit length as a numerical value in feet between 1.0e-9 and 30000.0 
Exception| Condition  
---|---  
[ArgumentOutOfRangeException](60f148c9-ece0-a6bb-4e12-bb4a9c8c8a24.htm)|  When setting this property: The shape dimension is not valid because it is not between 1.0e-9 and 30000.0.   
#### Reference
[RectangleLightShape Class](1b9a5edf-d0dc-ce3b-cedd-75c01e431bac.htm)
[Autodesk.Revit.DB.Lighting Namespace](a6a04f07-7fd2-0a4e-12e7-01842ee6daaf.htm)