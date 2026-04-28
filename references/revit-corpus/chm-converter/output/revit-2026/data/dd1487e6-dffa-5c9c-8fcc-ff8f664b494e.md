# ViewSheet.GetAllRevisionCloudIds Method

---  
Gets the ids of the revision clouds which appear on the sheet's revision schedules. 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public ISet<ElementId> GetAllRevisionCloudIds()
    
    Public Function GetAllRevisionCloudIds As ISet(Of ElementId)
    
    public:
    ISet<ElementId^>^ GetAllRevisionCloudIds()
    
    member GetAllRevisionCloudIds : unit -> ISet<ElementId> 
#### Return Value
ISet[ElementId](44f3f7b1-3229-3404-93c9-dc5e70337dd6.htm) The ids of the revisions clouds which appear on the sheet's revision schedules. 
The sheet's revision schedules include the revisions that are associated with revision clouds that are visible on the sheet. Revision schedules may also include revisions that have been additionally added to the sheet via the Revisions On Sheets parameter. Use [GetAdditionalRevisionIds](6d852f22-cf1b-3bcb-c255-184998d1334c.htm) to get the additionally added revisions. 
#### Reference
[ViewSheet Class](af2ee879-173d-df3a-9793-8d5750a17b49.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)