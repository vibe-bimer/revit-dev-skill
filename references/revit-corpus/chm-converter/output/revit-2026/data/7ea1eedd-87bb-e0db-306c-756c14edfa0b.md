# DirectShapeType.AddReferenceCurve(Curve) Method

---  
Adds a reference curve to the DirectShapeType. 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public void AddReferenceCurve(
    	Curve refCurve
    )
    
    Public Sub AddReferenceCurve ( 
    	refCurve As Curve
    )
    
    public:
    void AddReferenceCurve(
    	Curve^ refCurve
    )
    
    member AddReferenceCurve : 
            refCurve : Curve -> unit 
#### Parameters
refCurve [Curve](400cc9b6-9ff7-de85-6fd8-c20002209d25.htm)
     The geometry of the new reference curve. 
Exception| Condition  
---|---  
[ArgumentException](2e6e4206-97a8-dd4b-df5d-4269f4bb6088.htm)|  refCurve cannot be used for creating a reference curve.   
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  A non-optional argument was null   
There are two cases to consider: 
  1. The input curve's bounds are set. The resulting reference curve that is added to the DirectShapeType will be displayed with those bounds. Note that the specified bounds must not be degenerate. Permitted curve types are those for which [!:Autodesk::Revit::DB::DirectShapeType::isValidReferenceCurve] returns true. 
  2. The input curve is unbounded. Reasonable bounds are automatically calculated and applied to the input curve. The automatic bounds are based on the host DirectShapeType's geometry. 

Note that only lines and splines may be unbounded. You must specify valid bounds for all other curve types. 
#### Reference
[DirectShapeType Class](9c7fdd8b-a899-7ba1-2a0f-ecc5e8fe85db.htm)
[AddReferenceCurve Overload](f795279d-b6d5-8890-9099-e35f67be7c68.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)