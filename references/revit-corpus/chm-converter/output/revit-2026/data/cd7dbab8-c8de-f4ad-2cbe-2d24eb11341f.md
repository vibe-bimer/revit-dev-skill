# RebarShapeDefinitionByArc.SetArcTypeSpiral Method

---  
Set the RebarShapeDefinitionByArc.Type property to Spiral. 
**Namespace:** [Autodesk.Revit.DB.Structure](d586b341-f687-9d90-e96d-255806b7d4fc.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public void SetArcTypeSpiral(
    	double height,
    	double pitch,
    	int baseFinishingTurns,
    	int topFinishingTurns
    )
    
    Public Sub SetArcTypeSpiral ( 
    	height As Double,
    	pitch As Double,
    	baseFinishingTurns As Integer,
    	topFinishingTurns As Integer
    )
    
    public:
    void SetArcTypeSpiral(
    	double height, 
    	double pitch, 
    	int baseFinishingTurns, 
    	int topFinishingTurns
    )
    
    member SetArcTypeSpiral : 
            height : float * 
            pitch : float * 
            baseFinishingTurns : int * 
            topFinishingTurns : int -> unit 
#### Parameters
height Double
     The height of the spiral (assuming the spiral is vertical). 
pitch Double
     The pitch, or vertical distance traveled in one rotation. 
baseFinishingTurns Int32
     The number of finishing turns at the lower end of the spiral. 
topFinishingTurns Int32
     The number of finishing turns at the upper end of the spiral. 
Exception| Condition  
---|---  
[ArgumentException](2e6e4206-97a8-dd4b-df5d-4269f4bb6088.htm)|  baseFinishingTurns is not between 0 and 100. -or- topFinishingTurns is not between 0 and 100.   
[ArgumentOutOfRangeException](60f148c9-ece0-a6bb-4e12-bb4a9c8c8a24.htm)|  The given value for height must be greater than 0 and no more than 30000 feet. -or- The given value for pitch must be greater than 0 and no more than 30000 feet.   
In order to create a spiral definition, you must provide default values for height, pitch, and finishing turns. 
#### Reference
[RebarShapeDefinitionByArc Class](a92742a5-9781-3691-ec78-5b318fbf5ad3.htm)
[Autodesk.Revit.DB.Structure Namespace](d586b341-f687-9d90-e96d-255806b7d4fc.htm)