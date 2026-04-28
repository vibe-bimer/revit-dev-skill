# StairsPath.Create Method

---  
Creates a new stairs path for the specified stairs with the specified stairs path type only in the plan view. 
**Namespace:** [Autodesk.Revit.DB.Architecture](720f0c58-cb2b-4f13-374a-7348ed0a1cd3.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public static StairsPath Create(
    	Document document,
    	LinkElementId stairsId,
    	ElementId typeId,
    	ElementId planViewId
    )
    
    Public Shared Function Create ( 
    	document As Document,
    	stairsId As LinkElementId,
    	typeId As ElementId,
    	planViewId As ElementId
    ) As StairsPath
    
    public:
    static StairsPath^ Create(
    	Document^ document, 
    	LinkElementId^ stairsId, 
    	ElementId^ typeId, 
    	ElementId^ planViewId
    )
    
    static member Create : 
            document : Document * 
            stairsId : LinkElementId * 
            typeId : ElementId * 
            planViewId : ElementId -> StairsPath 
#### Parameters
document [Document](db03274b-a107-aa32-9034-f3e0df4bb1ec.htm)
     The document. 
stairsId [LinkElementId](6e18abde-8787-9906-8576-ab0c9c5432c6.htm)
     The id of the stairs element either in the host document or in a linked document. 
typeId [ElementId](44f3f7b1-3229-3404-93c9-dc5e70337dd6.htm)
     The type of stairs path. 
planViewId [ElementId](44f3f7b1-3229-3404-93c9-dc5e70337dd6.htm)
     The plan view in which the stairs path will be shown. 
#### Return Value
[StairsPath](ed5913d6-1219-9c7c-7e52-317dd58d7cd3.htm) The new stairs path. 
Exception| Condition  
---|---  
[ArgumentException](2e6e4206-97a8-dd4b-df5d-4269f4bb6088.htm)|  The stairsId is not a valid stairs. -or- The typeId is not a valid stairs path type. -or- The planViewId is not a valid plan view. -or- The stairsId already has a stairs path. -or- The stairsId is not visible in planViewId.   
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  A non-optional argument was null   
#### Reference
[StairsPath Class](ed5913d6-1219-9c7c-7e52-317dd58d7cd3.htm)
[Autodesk.Revit.DB.Architecture Namespace](720f0c58-cb2b-4f13-374a-7348ed0a1cd3.htm)