# WireframeBuilder.ValidateCurve Method

---  
Validates curve to be added to the wireframe shape being constructed. Used by addCurve to validate input. This function may be used to pre-validate the geometry being added to avoid an exception from AddCurve(). 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public static bool ValidateCurve(
    	Curve GCurve
    )
    
    Public Shared Function ValidateCurve ( 
    	GCurve As Curve
    ) As Boolean
    
    public:
    static bool ValidateCurve(
    	Curve^ GCurve
    )
    
    static member ValidateCurve : 
            GCurve : Curve -> bool 
#### Parameters
GCurve [Curve](400cc9b6-9ff7-de85-6fd8-c20002209d25.htm)
     Curve object to be validated. 
#### Return Value
Boolean True is %GCurve% is acceptable as a part of a wireframe shape representation being built. 
Exception| Condition  
---|---  
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  A non-optional argument was null   
#### Reference
[WireframeBuilder Class](ae9e719b-5d13-45c5-22d8-49111edfcfc4.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)