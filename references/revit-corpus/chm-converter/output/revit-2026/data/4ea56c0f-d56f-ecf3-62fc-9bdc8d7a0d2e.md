# FormUtils.DissolveForms(Document, ICollection<ElementId>, ICollection<ElementId>) Method

---  
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public static ICollection<ElementId> DissolveForms(
    	Document ADoc,
    	ICollection<ElementId> elements,
    	out ICollection<ElementId> ProfileOriginPointSet
    )
    
    Public Shared Function DissolveForms ( 
    	ADoc As Document,
    	elements As ICollection(Of ElementId),
    	<OutAttribute> ByRef ProfileOriginPointSet As ICollection(Of ElementId)
    ) As ICollection(Of ElementId)
    
    public:
    static ICollection<ElementId^>^ DissolveForms(
    	Document^ ADoc, 
    	ICollection<ElementId^>^ elements, 
    	[OutAttribute] ICollection<ElementId^>^% ProfileOriginPointSet
    )
    
    static member DissolveForms : 
            ADoc : Document * 
            elements : ICollection<ElementId> * 
            ProfileOriginPointSet : ICollection<ElementId> byref -> ICollection<ElementId> 
#### Parameters
ADoc [Document](db03274b-a107-aa32-9034-f3e0df4bb1ec.htm)
    
elements ICollection[ElementId](44f3f7b1-3229-3404-93c9-dc5e70337dd6.htm)
    
ProfileOriginPointSet ICollection[ElementId](44f3f7b1-3229-3404-93c9-dc5e70337dd6.htm)
    
#### Return Value
ICollection[ElementId](44f3f7b1-3229-3404-93c9-dc5e70337dd6.htm)
#### Reference
[FormUtils Class](fe80084f-2b75-cc39-bf64-866bc2c27bb1.htm)
[DissolveForms Overload](9a152dc3-04f7-aaf2-91a3-2715652ed95d.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)