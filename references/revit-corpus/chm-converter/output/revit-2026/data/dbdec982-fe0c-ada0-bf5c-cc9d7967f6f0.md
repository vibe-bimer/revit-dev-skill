# MEPModel.GetAssignedElectricalSystems Method

---  
Retrieves the electrical systems this electrical panel currently is assigned to. 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public ISet<ElectricalSystem> GetAssignedElectricalSystems()
    
    Public Function GetAssignedElectricalSystems As ISet(Of ElectricalSystem)
    
    public:
    ISet<ElectricalSystem^>^ GetAssignedElectricalSystems()
    
    member GetAssignedElectricalSystems : unit -> ISet<ElectricalSystem> 
#### Return Value
ISet[ElectricalSystem](158b4be3-bbe5-11eb-cccc-788edd3a7590.htm)
This property returns a set of Electrical Systems. If there are no electrical systems created for this model, this property will be an empty set. This method supersedes an older _AssignedElectricalSystems_ property which has been deprecated. 
#### Reference
[MEPModel Class](dd78bce5-2ed6-ed3c-f329-1663bf08afa6.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)