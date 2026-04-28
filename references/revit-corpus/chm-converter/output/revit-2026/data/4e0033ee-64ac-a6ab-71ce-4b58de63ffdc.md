# AssemblyViewUtils.CreateMaterialTakeoff(Document, ElementId, ElementId, Boolean) Method

---  
Creates a new material takeoff multicategory schedule assembly view for the assembly instance. 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public static ViewSchedule CreateMaterialTakeoff(
    	Document document,
    	ElementId assemblyInstanceId,
    	ElementId viewTemplateId,
    	bool isAssigned
    )
    
    Public Shared Function CreateMaterialTakeoff ( 
    	document As Document,
    	assemblyInstanceId As ElementId,
    	viewTemplateId As ElementId,
    	isAssigned As Boolean
    ) As ViewSchedule
    
    public:
    static ViewSchedule^ CreateMaterialTakeoff(
    	Document^ document, 
    	ElementId^ assemblyInstanceId, 
    	ElementId^ viewTemplateId, 
    	bool isAssigned
    )
    
    static member CreateMaterialTakeoff : 
            document : Document * 
            assemblyInstanceId : ElementId * 
            viewTemplateId : ElementId * 
            isAssigned : bool -> ViewSchedule 
#### Parameters
document [Document](db03274b-a107-aa32-9034-f3e0df4bb1ec.htm)
     The document to which the view will be added. 
assemblyInstanceId [ElementId](44f3f7b1-3229-3404-93c9-dc5e70337dd6.htm)
     Id of the assembly instance that owns the new view. 
viewTemplateId [ElementId](44f3f7b1-3229-3404-93c9-dc5e70337dd6.htm)
     Id of the view template that is used to create the view; if invalidElementId, the view will be created with the default settings. 
isAssigned Boolean
     If true, the template will be assigned, if false, the template will be applied. 
#### Return Value
[ViewSchedule](0dae24ba-5dcb-9a34-cccc-0cf8cc52bcd3.htm) A new material takeoff multicategory schedule assembly view. 
Exception| Condition  
---|---  
[ArgumentException](2e6e4206-97a8-dd4b-df5d-4269f4bb6088.htm)|  assemblyInstanceId is not an AssemblyInstance. -or- viewTemplateId is not a correct view template for the schedule view.   
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  A non-optional argument was null   
[ModificationForbiddenException](53205486-5917-7c33-8e67-e362106ddc97.htm)|  The document is in failure mode: an operation has failed, and Revit requires the user to either cancel the operation or fix the problem (usually by deleting certain elements). -or- The document is being loaded, or is in the midst of another sensitive process.   
[ModificationOutsideTransactionException](8f025460-c283-ea99-aa8a-5a36e11528f4.htm)|  The document has no open transaction.   
The material takeoff schedule will be preloaded with fields "Material: Name" and "Material: Volume". The document must be regenerated before using the schedule. 
#### Reference
[AssemblyViewUtils Class](4c839bed-9f56-c255-afba-8152c9171a22.htm)
[CreateMaterialTakeoff Overload](6eeced08-a5e2-ac40-557a-85ae4ff7e6a4.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)