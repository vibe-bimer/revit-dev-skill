# InternalDefinition.SetAllowVaryBetweenGroups Method

---  
Whether or not the parameter values can vary across group members. 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public ICollection<ElementId> SetAllowVaryBetweenGroups(
    	Document document,
    	bool allowVaryBetweenGroups
    )
    
    Public Function SetAllowVaryBetweenGroups ( 
    	document As Document,
    	allowVaryBetweenGroups As Boolean
    ) As ICollection(Of ElementId)
    
    public:
    ICollection<ElementId^>^ SetAllowVaryBetweenGroups(
    	Document^ document, 
    	bool allowVaryBetweenGroups
    )
    
    member SetAllowVaryBetweenGroups : 
            document : Document * 
            allowVaryBetweenGroups : bool -> ICollection<ElementId> 
#### Parameters
document [Document](db03274b-a107-aa32-9034-f3e0df4bb1ec.htm)
     The document of this parameter. 
allowVaryBetweenGroups Boolean
     Whether this parameter should be allowed to vary between groups. 
#### Return Value
ICollection[ElementId](44f3f7b1-3229-3404-93c9-dc5e70337dd6.htm) The ids of elements that were updated to align the values between groups. 
Exception| Condition  
---|---  
[ArgumentException](2e6e4206-97a8-dd4b-df5d-4269f4bb6088.htm)|  This parameter does not support the specified value of allowVaryBetweenGroups. -or- document is not a project document.   
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  A non-optional argument was null   
[ModificationForbiddenException](53205486-5917-7c33-8e67-e362106ddc97.htm)|  The document is in failure mode: an operation has failed, and Revit requires the user to either cancel the operation or fix the problem (usually by deleting certain elements). -or- The document is being loaded, or is in the midst of another sensitive process.   
[ModificationOutsideTransactionException](8f025460-c283-ea99-aa8a-5a36e11528f4.htm)|  The document has no open transaction.   
When a parameter is set to not vary between groups Revit will automatically align the parameter values of any elements that actually varied between group instances. 
#### Reference
[InternalDefinition Class](97f42435-3067-622e-7a34-919f42f6ab97.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)