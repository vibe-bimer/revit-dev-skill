# WallSweep.GetHostIds Method

---  
Gets a list of all host walls on which the sweep resides. 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public IList<ElementId> GetHostIds()
    
    Public Function GetHostIds As IList(Of ElementId)
    
    public:
    IList<ElementId^>^ GetHostIds()
    
    member GetHostIds : unit -> IList<ElementId> 
#### Return Value
IList[ElementId](44f3f7b1-3229-3404-93c9-dc5e70337dd6.htm) The list of wall ids. 
Fixed wall sweeps from vertically compound structures will return only one host element. 
#### Reference
[WallSweep Class](8edb03ef-dc10-04d8-d8ea-6342e4a2185b.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)