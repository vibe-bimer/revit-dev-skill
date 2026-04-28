# RebarShapeDefinitionBySegments.AddConstraintToSegment Method

---  
Add a constraint that helps determine the length of a segment. 
**Namespace:** [Autodesk.Revit.DB.Structure](d586b341-f687-9d90-e96d-255806b7d4fc.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public void AddConstraintToSegment(
    	int iSegment,
    	ElementId paramId,
    	double constraintDirCoordX,
    	double constraintDirCoordY,
    	int signOfZCoordOfCrossProductOfConstraintDirBySegmentDir,
    	bool measureToOutsideOfBend0,
    	bool measureToOutsideOfBend1
    )
    
    Public Sub AddConstraintToSegment ( 
    	iSegment As Integer,
    	paramId As ElementId,
    	constraintDirCoordX As Double,
    	constraintDirCoordY As Double,
    	signOfZCoordOfCrossProductOfConstraintDirBySegmentDir As Integer,
    	measureToOutsideOfBend0 As Boolean,
    	measureToOutsideOfBend1 As Boolean
    )
    
    public:
    void AddConstraintToSegment(
    	int iSegment, 
    	ElementId^ paramId, 
    	double constraintDirCoordX, 
    	double constraintDirCoordY, 
    	int signOfZCoordOfCrossProductOfConstraintDirBySegmentDir, 
    	bool measureToOutsideOfBend0, 
    	bool measureToOutsideOfBend1
    )
    
    member AddConstraintToSegment : 
            iSegment : int * 
            paramId : ElementId * 
            constraintDirCoordX : float * 
            constraintDirCoordY : float * 
            signOfZCoordOfCrossProductOfConstraintDirBySegmentDir : int * 
            measureToOutsideOfBend0 : bool * 
            measureToOutsideOfBend1 : bool -> unit 
#### Parameters
iSegment Int32
     Index of the segment (0 to NumberOfSegments - 1). 
paramId [ElementId](44f3f7b1-3229-3404-93c9-dc5e70337dd6.htm)
     Id of a parameter to drive the constraint. To obtain the id of a shared parameter, call RebarShape.GetElementIdForExternalDefinition(). 
constraintDirCoordX Double
     The x-coordinate of a 2D vector specifying the constraint direction. 
constraintDirCoordY Double
     The y-coordinate of a 2D vector specifying the constraint direction. 
signOfZCoordOfCrossProductOfConstraintDirBySegmentDir Int32
     Legal values are 1 and -1. For a fixed-direction segment, this value is ignored. For a variable-direction segment, this value is combined with the constraint length (the nonnegative value associated with 'param') to determine the direction of the segment. For example, a segment whose direction vector lies in the upper-right quadrant of the plane, and whose x-axis projected length is A and whose y-axis projected length is B, could be created by calling: AddConstraintToSegment(iSegment, paramA, 1.0, 0.0, 1, ...) AddConstraintToSegment(iSegment, paramB, 0.0, 1.0, -1, ...) 
measureToOutsideOfBend0 Boolean
     Choose between two possibilities for the first reference of the length dimension. If false, the reference is at the point where the bend begins; equivalently, at the projection of the bend centerpoint onto the segment. If true, the reference is moved outward by a distance equal to the bend radius plus the bar diameter; if the bend is a right angle or greater, this is equivalent to putting the reference at the outer face of the bend. 
measureToOutsideOfBend1 Boolean
     Choose between two possibilities for the second reference of the length dimension. 
Exception| Condition  
---|---  
[ArgumentException](2e6e4206-97a8-dd4b-df5d-4269f4bb6088.htm)|  iSegment is not between 0 and NumberOfSegments. -or- paramId is not the id of a shared parameter in the current document, or its unit type is not Reinforcement_Length, Angle or Number. -or- The length of the vector (constraintDirCoordX, constraintDirCoordY) is too close to zero. -or- signOfZCoordOfCrossProductOfConstraintDirBySegmentDir is neither -1 nor 1.   
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  A non-optional argument was null   
The vector defined by (constraintDirCoordX, constraintDirCoordY) must have a positive dot product with the desired direction of the segment. This restriction, combined with the value of signOfZCoordOfCrossProductOfConstraintDirBySegmentDir, defines a quadrant of the plane that limits the variable-angle segment. 
#### Reference
[RebarShapeDefinitionBySegments Class](7229fdba-1e8f-6cb7-e72e-0933e495ad62.htm)
[Autodesk.Revit.DB.Structure Namespace](d586b341-f687-9d90-e96d-255806b7d4fc.htm)