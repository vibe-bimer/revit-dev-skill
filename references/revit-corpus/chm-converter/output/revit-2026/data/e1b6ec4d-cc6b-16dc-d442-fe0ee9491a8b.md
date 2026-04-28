# Face.ComputeSecondDerivatives Method

---  
Returns the second partial derivatives of the face at the specified point.
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public FaceSecondDerivatives ComputeSecondDerivatives(
    	UV point
    )
    
    Public Function ComputeSecondDerivatives ( 
    	point As UV
    ) As FaceSecondDerivatives
    
    public:
    FaceSecondDerivatives^ ComputeSecondDerivatives(
    	UV^ point
    )
    
    member ComputeSecondDerivatives : 
            point : UV -> FaceSecondDerivatives 
#### Parameters
point [UV](1724be37-059b-91ff-aa74-d1508082f76d.htm)
    The parameters to be evaluated, in natural parameterization of the face.
#### Return Value
[FaceSecondDerivatives](6a876769-1607-4cfa-87d0-2b679e9da6e1.htm)The second partial derivatives of the face at the specified point.
It does not take the bounding edge loops into account. 
#### Reference
[Face Class](e32b3b1f-66fc-57cb-6e1c-aa81d1bf3e63.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)