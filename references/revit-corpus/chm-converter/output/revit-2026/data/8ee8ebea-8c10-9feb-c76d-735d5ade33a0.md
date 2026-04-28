# AreaReinforcement.IsLineIncluded Method

---  
Checks whether the line from the desired layer at the specified position is included or not. 
**Namespace:** [Autodesk.Revit.DB.Structure](d586b341-f687-9d90-e96d-255806b7d4fc.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public bool IsLineIncluded(
    	AreaReinforcementLayerType layer,
    	int linePositionIndex
    )
    
    Public Function IsLineIncluded ( 
    	layer As AreaReinforcementLayerType,
    	linePositionIndex As Integer
    ) As Boolean
    
    public:
    bool IsLineIncluded(
    	AreaReinforcementLayerType layer, 
    	int linePositionIndex
    )
    
    member IsLineIncluded : 
            layer : AreaReinforcementLayerType * 
            linePositionIndex : int -> bool 
#### Parameters
layer [AreaReinforcementLayerType](46b15eb7-46c4-2ed9-df2d-417777518f18.htm)
     The layer on which the line stays. 
linePositionIndex Int32
     The index of the line from the desired layer. It should be an index between 0 and (NumberOfLines-1). 
#### Return Value
Boolean Returns true if the line from the desired layer at the specified position is included, false otherwise. 
Exception| Condition  
---|---  
[ArgumentOutOfRangeException](60f148c9-ece0-a6bb-4e12-bb4a9c8c8a24.htm)|  linePositionIndex is not in the range [ 0, NumberOfLines-1 ]. -or- A value passed for an enumeration argument is not a member of that enumeration   
[InapplicableDataException](dc1a6d15-8923-a1fe-722a-4e976634a519.htm)|  The layer layer isn't active.   
[InvalidOperationException](9e715f03-3884-e539-4dd6-8d7545733adc.htm)|  This AreaReinforcement does not host Rebar.   
#### Reference
[AreaReinforcement Class](889aa3cf-9b32-dd78-b660-bcfbad2cf87e.htm)
[Autodesk.Revit.DB.Structure Namespace](d586b341-f687-9d90-e96d-255806b7d4fc.htm)