# Application.MinimumThickness Property

---  
The minimum thickness allowed in Revit for a variety of geometric constructs. These include blends, extrusions, and wall layers. 
**Namespace:** [Autodesk.Revit.ApplicationServices](91957e18-2935-006c-83ab-3b5b9dbb5928.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public static double MinimumThickness { get; }
    
    Public Shared ReadOnly Property MinimumThickness As Double
    	Get
    
    public:
    static property double MinimumThickness {
    	double get ();
    }
    
    static member MinimumThickness : float with get
#### Property Value
Double
Do not use this value for any purpose other than its intended purpose. If you want to check for valid thickness value, use the function isValidThickness. 
#### Reference
[Application Class](94db8ea8-d2c3-5e71-8030-466bcb8e4426.htm)
[Autodesk.Revit.ApplicationServices Namespace](91957e18-2935-006c-83ab-3b5b9dbb5928.htm)