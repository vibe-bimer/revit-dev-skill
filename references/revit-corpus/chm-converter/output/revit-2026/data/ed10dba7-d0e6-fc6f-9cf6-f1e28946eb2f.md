# CurveUV.ComputeDerivatives Method

---  
Computes the first derivative, the second derivative and the unit tangent vector at the specified parameter along the curve. 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public IList<UV> ComputeDerivatives(
    	double parameter,
    	bool normalized
    )
    
    Public Function ComputeDerivatives ( 
    	parameter As Double,
    	normalized As Boolean
    ) As IList(Of UV)
    
    public:
    IList<UV^>^ ComputeDerivatives(
    	double parameter, 
    	bool normalized
    )
    
    member ComputeDerivatives : 
            parameter : float * 
            normalized : bool -> IList<UV> 
#### Parameters
parameter Double
     The specified parameter along the curve. 
normalized Boolean
     If false, parameter is interpreted as natural parameterization of the curve. If true, param is expected to be in [0,1] interval mapped to the bounds of the curve. Setting to true is valid only if the curve is bound. 
#### Return Value
IList[UV](1724be37-059b-91ff-aa74-d1508082f76d.htm) The array containing three members: the first derivative (at index [0]), the second derivative (at index [1]) and the unit tangent vector (at index [2]). 
Exception| Condition  
---|---  
[ArgumentException](2e6e4206-97a8-dd4b-df5d-4269f4bb6088.htm)|  The given value for parameter is not finite   
[ArgumentOutOfRangeException](60f148c9-ece0-a6bb-4e12-bb4a9c8c8a24.htm)|  The curve cannot be evaluated as normalized because it is unbound. -or- The parameter is not a valid value for normalized evaluation.   
#### Reference
[CurveUV Class](2d1d9c1f-afb6-fc09-f461-54cf0d511bf0.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)