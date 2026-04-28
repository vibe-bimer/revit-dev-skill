# RebarShapeDefinitionBySegments.GetSegment Method

---  
Return a reference to one of the segments in the definition. 
**Namespace:** [Autodesk.Revit.DB.Structure](d586b341-f687-9d90-e96d-255806b7d4fc.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public RebarShapeSegment GetSegment(
    	int segmentIndex
    )
    
    Public Function GetSegment ( 
    	segmentIndex As Integer
    ) As RebarShapeSegment
    
    public:
    RebarShapeSegment^ GetSegment(
    	int segmentIndex
    )
    
    member GetSegment : 
            segmentIndex : int -> RebarShapeSegment 
#### Parameters
segmentIndex Int32
     Index of the segment (0 to NumberOfSegments - 1). 
#### Return Value
[RebarShapeSegment](4fd9ba08-b5a3-39c8-9666-fc0a105615c6.htm) The requested segment. 
Exception| Condition  
---|---  
[ArgumentException](2e6e4206-97a8-dd4b-df5d-4269f4bb6088.htm)|  segmentIndex is not between 0 and NumberOfSegments.   
#### Reference
[RebarShapeDefinitionBySegments Class](7229fdba-1e8f-6cb7-e72e-0933e495ad62.htm)
[Autodesk.Revit.DB.Structure Namespace](d586b341-f687-9d90-e96d-255806b7d4fc.htm)