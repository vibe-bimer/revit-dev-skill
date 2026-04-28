# FamilyItemFactory.NewSymbolicCurve Method

---  
Create a symbolic curve in an Autodesk Revit family document.
**Namespace:** [Autodesk.Revit.Creation](ded320da-058a-4edd-0418-0582389559a7.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public SymbolicCurve NewSymbolicCurve(
    	Curve curve,
    	SketchPlane sketchPlane
    )
    
    Public Function NewSymbolicCurve ( 
    	curve As Curve,
    	sketchPlane As SketchPlane
    ) As SymbolicCurve
    
    public:
    SymbolicCurve^ NewSymbolicCurve(
    	Curve^ curve, 
    	SketchPlane^ sketchPlane
    )
    
    member NewSymbolicCurve : 
            curve : Curve * 
            sketchPlane : SketchPlane -> SymbolicCurve 
#### Parameters
curve [Curve](400cc9b6-9ff7-de85-6fd8-c20002209d25.htm)
    The geometry curve of the newly created symbolic curve.
sketchPlane [SketchPlane](ba104029-d175-7e75-caef-667a4281f4af.htm)
    The sketch plane for the symbolic curve.
#### Return Value
[SymbolicCurve](c6c3bde4-4aa9-1b08-cd71-2fad0613d276.htm)The newly created symbolic curve.
Exception| Condition  
---|---  
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  Thrown when argument is .   
[InvalidOperationException](9e715f03-3884-e539-4dd6-8d7545733adc.htm)|  Thrown when regeneration failed. Thrown when symbolic curve creation failed.   
#### Reference
[FamilyItemFactory Class](a7622967-1381-c17f-ed04-1ebe40da0440.htm)
[Autodesk.Revit.Creation Namespace](ded320da-058a-4edd-0418-0582389559a7.htm)