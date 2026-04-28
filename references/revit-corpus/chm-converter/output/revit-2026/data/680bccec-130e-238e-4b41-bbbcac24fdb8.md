# CompoundStructure.IsValidSegmentId Method

---  
Determines whether the specified integer is actually the id of a segment in this CompoundStructure. 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public bool IsValidSegmentId(
    	int segmentId
    )
    
    Public Function IsValidSegmentId ( 
    	segmentId As Integer
    ) As Boolean
    
    public:
    bool IsValidSegmentId(
    	int segmentId
    )
    
    member IsValidSegmentId : 
            segmentId : int -> bool 
#### Parameters
segmentId Int32
     The id of a segment in this CompoundStructure. 
#### Return Value
Boolean True if the specified segment is valid, false otherwise. 
Exception| Condition  
---|---  
[InvalidOperationException](9e715f03-3884-e539-4dd6-8d7545733adc.htm)|  This operation is valid only for vertically compound structures.   
#### Reference
[CompoundStructure Class](dc1a081e-8dab-565f-145d-a429098d353c.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)