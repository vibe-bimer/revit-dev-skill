# RebarInSystem.MoveBarInSet Method

---  
This method applies the transformation matrix to the rebar bar at the desired position in the rebar set. If the bar was already moved, the method will concatenate the transformation matrix with the existing movement. 
**Namespace:** [Autodesk.Revit.DB.Structure](d586b341-f687-9d90-e96d-255806b7d4fc.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public void MoveBarInSet(
    	int barPositionIndex,
    	Transform moveTransform
    )
    
    Public Sub MoveBarInSet ( 
    	barPositionIndex As Integer,
    	moveTransform As Transform
    )
    
    public:
    void MoveBarInSet(
    	int barPositionIndex, 
    	Transform^ moveTransform
    )
    
    member MoveBarInSet : 
            barPositionIndex : int * 
            moveTransform : Transform -> unit 
#### Parameters
barPositionIndex Int32
     The bar index of the rebar to apply the transformation. 
moveTransform [Transform](58dd01c8-b3fc-7142-e4f3-c524079a282d.htm)
     The transformation matrix to apply to the specified rebar bar. 
Exception| Condition  
---|---  
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  A non-optional argument was null   
[ArgumentOutOfRangeException](60f148c9-ece0-a6bb-4e12-bb4a9c8c8a24.htm)|  barPositionIndex is not in the range [ 0, NumberOfBarPositions-1 ].   
[InapplicableDataException](dc1a6d15-8923-a1fe-722a-4e976634a519.htm)|  For this RebarInSystem element individual bars can't be moved, excluded or included.   
#### Reference
[RebarInSystem Class](c0bd03fa-78f4-eb67-54e8-e28368e94beb.htm)
[Autodesk.Revit.DB.Structure Namespace](d586b341-f687-9d90-e96d-255806b7d4fc.htm)