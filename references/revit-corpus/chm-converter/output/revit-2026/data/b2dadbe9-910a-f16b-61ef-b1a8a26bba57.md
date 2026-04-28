# UV.Multiply(UV, Double) Operator

---  
The product of the specified number and the specified 2-D vector.
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public static UV operator *(
    	UV left,
    	double value
    )
    
    Public Shared Operator * ( 
    	left As UV,
    	value As Double
    ) As UV
    
    public:
    static UV^ operator *(
    	UV^ left, 
    	double value
    )
    
    static let inline (*)
            left : UV * 
            value : float  : UV
#### Parameters
left [UV](1724be37-059b-91ff-aa74-d1508082f76d.htm)
    The vector to multiply with the value.
value Double
    The value to multiply with the specified vector.
#### Return Value
[UV](1724be37-059b-91ff-aa74-d1508082f76d.htm)The multiplied 2-D vector.
Exception| Condition  
---|---  
[ArgumentException](2e6e4206-97a8-dd4b-df5d-4269f4bb6088.htm)|  Thrown when the specified value is an infinite number.   
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  Thrown when left is .   
The multiplied vector is obtained by multiplying each coordinate of the specified vector by the specified value. 
#### Reference
[UV Class](1724be37-059b-91ff-aa74-d1508082f76d.htm)
[Multiply Overload](e86bb7d4-d202-93b4-e5ae-efd62f23a479.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)