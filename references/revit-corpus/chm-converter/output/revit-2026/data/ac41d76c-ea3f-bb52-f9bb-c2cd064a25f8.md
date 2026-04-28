# DividedSurface.AddIntersectionElement Method

---  
Adds an intersection element to the divided surface. 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public void AddIntersectionElement(
    	ElementId newIntersectionElemId
    )
    
    Public Sub AddIntersectionElement ( 
    	newIntersectionElemId As ElementId
    )
    
    public:
    void AddIntersectionElement(
    	ElementId^ newIntersectionElemId
    )
    
    member AddIntersectionElement : 
            newIntersectionElemId : ElementId -> unit 
#### Parameters
newIntersectionElemId [ElementId](44f3f7b1-3229-3404-93c9-dc5e70337dd6.htm)
     The intersection element to be added. 
Exception| Condition  
---|---  
[ArgumentException](2e6e4206-97a8-dd4b-df5d-4269f4bb6088.htm)|  The element newIntersectionElemId is not a level, grid, reference plane, or a curve element whose category is lines and reference lines.   
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  A non-optional argument was null   
#### Reference
[DividedSurface Class](782e1ac7-4e74-9a32-6b03-0a20f7d55217.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)