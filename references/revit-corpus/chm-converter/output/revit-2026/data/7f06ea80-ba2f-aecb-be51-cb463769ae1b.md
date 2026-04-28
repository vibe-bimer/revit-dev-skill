# CompoundStructure.IsVerticallyHomogeneous Method

---  
Indicates whether this CompoundStructure represents a single set of parallel layers. 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public bool IsVerticallyHomogeneous()
    
    Public Function IsVerticallyHomogeneous As Boolean
    
    public:
    bool IsVerticallyHomogeneous()
    
    member IsVerticallyHomogeneous : unit -> bool 
#### Return Value
Boolean True if this CompoundStructure represents a series of parallel layers that stretch from bottom to top, false otherwise. 
Differs from IsVerticallyCompound as a vertically compound structure might happen not to have any horizontal breaks. For that situation, both IsVerticallyCompound and this method will return true. 
#### Reference
[CompoundStructure Class](dc1a081e-8dab-565f-145d-a429098d353c.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)