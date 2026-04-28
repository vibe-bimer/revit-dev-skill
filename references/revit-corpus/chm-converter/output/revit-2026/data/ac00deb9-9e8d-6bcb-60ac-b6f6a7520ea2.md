# Curve.ComputeRawParameter Method

---  
Computes the raw parameter from the normalized parameter.
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public double ComputeRawParameter(
    	double normalizedParameter
    )
    
    Public Function ComputeRawParameter ( 
    	normalizedParameter As Double
    ) As Double
    
    public:
    double ComputeRawParameter(
    	double normalizedParameter
    )
    
    member ComputeRawParameter : 
            normalizedParameter : float -> float 
#### Parameters
normalizedParameter Double
    The normalized parameter.
#### Return Value
DoubleThe real number equal to the raw curve parameter.
Exception| Condition  
---|---  
[ArgumentException](2e6e4206-97a8-dd4b-df5d-4269f4bb6088.htm)|  Thrown when normalizedParameter is infinite.   
[InvalidOperationException](9e715f03-3884-e539-4dd6-8d7545733adc.htm)|  Thrown when the curve is unbound.   
#### Reference
[Curve Class](400cc9b6-9ff7-de85-6fd8-c20002209d25.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)