# CompoundStructure.IsLayerValid Method

---  
Verifies that the data in this layer is internally consistent. 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public bool IsLayerValid(
    	int layerIdx,
    	CompoundStructureLayer layer
    )
    
    Public Function IsLayerValid ( 
    	layerIdx As Integer,
    	layer As CompoundStructureLayer
    ) As Boolean
    
    public:
    bool IsLayerValid(
    	int layerIdx, 
    	CompoundStructureLayer^ layer
    )
    
    member IsLayerValid : 
            layerIdx : int * 
            layer : CompoundStructureLayer -> bool 
#### Parameters
layerIdx Int32
     Index of a layer in the CompoundStructure. The layer index is zero based. It counts from the exterior of wall and from the top of roofs, floors and ceilings. 
layer [CompoundStructureLayer](faece83a-6d49-41b0-2713-fe6cfaa5a3b5.htm)
     The layer to be set. 
#### Return Value
Boolean True if the layer is internally consistent, false if the layer is not internally consistent. 
Exception| Condition  
---|---  
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  A non-optional argument was null   
If the layer function is not Membrane or StructuralDeck, the width must be greater than zero. If the layer function is not StructuralDeck, then the deck embedding type must be Invalid, and the deck profile id must be InvalidElementId. The priority must be valid to match the function. Refer to [IsValidLayerPriority(Int32, Int32)](6cbf7458-d62f-2f95-9f51-8eb53af114f4.htm). 
#### Reference
[CompoundStructure Class](dc1a081e-8dab-565f-145d-a429098d353c.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)