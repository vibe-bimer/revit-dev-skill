# SlabShapeEditor.DeletePoint Method

---  
Delete a SlabShapeVertex from the element. 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public bool DeletePoint(
    	SlabShapeVertex vertex
    )
    
    Public Function DeletePoint ( 
    	vertex As SlabShapeVertex
    ) As Boolean
    
    public:
    bool DeletePoint(
    	SlabShapeVertex^ vertex
    )
    
    member DeletePoint : 
            vertex : SlabShapeVertex -> bool 
#### Parameters
vertex [SlabShapeVertex](8c022b91-723f-045d-3024-8cb037a41acc.htm)
     The SlabShapeVertex to be deleted. 
#### Return Value
Boolean True if the vertex is successfully deleted. False if the vertex is not found or could not be deleted. 
Exception| Condition  
---|---  
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  A non-optional argument was null   
Corner vertices are created right after the SlabShapeEditor is enabled. They are tied with the boundaries so that they could not be deleted individually. They can only be deleted using ResetSlabShape. 
#### Reference
[SlabShapeEditor Class](06308ccc-46e7-6ff8-582c-6891af8b75e9.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)