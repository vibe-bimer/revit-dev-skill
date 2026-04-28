# LineLightShape(Double) Constructor

---  
Creates a line light shape object with the given emit length. 
**Namespace:** [Autodesk.Revit.DB.Lighting](a6a04f07-7fd2-0a4e-12e7-01842ee6daaf.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public LineLightShape(
    	double emitLength
    )
    
    Public Sub New ( 
    	emitLength As Double
    )
    
    public:
    LineLightShape(
    	double emitLength
    )
    
    new : 
            emitLength : float -> LineLightShape
#### Parameters
emitLength Double
     The emit length as a numerical value in feet between 1.0e-9 and 30000.0 
Exception| Condition  
---|---  
[ArgumentOutOfRangeException](60f148c9-ece0-a6bb-4e12-bb4a9c8c8a24.htm)|  The shape dimension is not valid because it is not between 1.0e-9 and 30000.0.   
#### Reference
[LineLightShape Class](3fce7f00-ae7a-04db-a6e8-dab9794bd6a7.htm)
[LineLightShape Overload](a22b9f7b-92cf-9469-e1ca-9ce442740fee.htm)
[Autodesk.Revit.DB.Lighting Namespace](a6a04f07-7fd2-0a4e-12e7-01842ee6daaf.htm)