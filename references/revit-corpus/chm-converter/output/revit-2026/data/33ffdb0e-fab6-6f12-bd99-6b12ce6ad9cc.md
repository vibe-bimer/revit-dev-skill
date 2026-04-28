# SolidUtils.ComputeIsGeometricallyClosed Method

---  
Computes whether the input Solid is geometrically closed to within Revit's tolerances. 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public static bool ComputeIsGeometricallyClosed(
    	Solid geometry
    )
    
    Public Shared Function ComputeIsGeometricallyClosed ( 
    	geometry As Solid
    ) As Boolean
    
    public:
    static bool ComputeIsGeometricallyClosed(
    	Solid^ geometry
    )
    
    static member ComputeIsGeometricallyClosed : 
            geometry : Solid -> bool 
#### Parameters
geometry [Solid](7a3b5ac1-c66d-9f81-a11d-9bcd4e026295.htm)
     The solid or shell geometry to test. 
#### Return Value
Boolean True if the geometry is geometrically closed, false otherwise. 
Exception| Condition  
---|---  
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  A non-optional argument was null   
[InvalidOperationException](9e715f03-3884-e539-4dd6-8d7545733adc.htm)|  Failed to compute whether the geometry is geometrically closed.   
A solid is geometrically closed if it is topologically closed and also meets certain geometric criteria. In particular, every pair of faces adjoining an edge must intersect along the edge, and edge loops must have no gaps between consecutive edges of the loop, when evaluated on the edge loop's face. If the geometry contains multiple connected components, the function returns true if and only if every connected component is geometrically closed. If the input Solid contains grossly invalid geometry, an InvalidOperationException will be thrown. 
#### Reference
[SolidUtils Class](4c285bc6-c14e-9d55-5295-138764c01d12.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)