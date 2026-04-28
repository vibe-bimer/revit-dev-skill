# CompoundStructure.CreateSingleLayerCompoundStructure(MaterialFunctionAssignment, Double, ElementId) Method

---  
Creates a CompoundStructure containing a single layer. 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public static CompoundStructure CreateSingleLayerCompoundStructure(
    	MaterialFunctionAssignment layerFunction,
    	double width,
    	ElementId materialId
    )
    
    Public Shared Function CreateSingleLayerCompoundStructure ( 
    	layerFunction As MaterialFunctionAssignment,
    	width As Double,
    	materialId As ElementId
    ) As CompoundStructure
    
    public:
    static CompoundStructure^ CreateSingleLayerCompoundStructure(
    	MaterialFunctionAssignment layerFunction, 
    	double width, 
    	ElementId^ materialId
    )
    
    static member CreateSingleLayerCompoundStructure : 
            layerFunction : MaterialFunctionAssignment * 
            width : float * 
            materialId : ElementId -> CompoundStructure 
#### Parameters
layerFunction [MaterialFunctionAssignment](1cbeb006-f7a2-f6d2-491f-faa0b9a006fc.htm)
     The function of the single layer. 
width Double
     The width of the single layer. 
materialId [ElementId](44f3f7b1-3229-3404-93c9-dc5e70337dd6.htm)
     The ElementId of the material for the single layer. 
#### Return Value
[CompoundStructure](dc1a081e-8dab-565f-145d-a429098d353c.htm) The newly created compound structure. 
Exception| Condition  
---|---  
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  A non-optional argument was null   
[ArgumentOutOfRangeException](60f148c9-ece0-a6bb-4e12-bb4a9c8c8a24.htm)|  The given value for width must be greater than 0 and no more than 30000 feet. -or- A value passed for an enumeration argument is not a member of that enumeration   
It is not verified that materialId corresponds to a valid Material element. 
#### Reference
[CompoundStructure Class](dc1a081e-8dab-565f-145d-a429098d353c.htm)
[CreateSingleLayerCompoundStructure Overload](a21f3c6f-4c25-43b7-3714-75eab33db398.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)