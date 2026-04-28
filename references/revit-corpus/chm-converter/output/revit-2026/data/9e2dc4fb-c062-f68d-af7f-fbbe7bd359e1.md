# ExporterIFC.RegisterSpaceBoundingElementHandle Method

---  
Stores a handle representing a space bounding element to the ExporterIFC's internal cache. 
**Namespace:** [Autodesk.Revit.DB.IFC](b823fafb-1ba1-896b-4097-142c2817ce74.htm)**Assembly:** RevitAPIIFC (in RevitAPIIFC.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public void RegisterSpaceBoundingElementHandle(
    	IFCAnyHandle instanceHandle,
    	ElementId id,
    	ElementId levelId
    )
    
    Public Sub RegisterSpaceBoundingElementHandle ( 
    	instanceHandle As IFCAnyHandle,
    	id As ElementId,
    	levelId As ElementId
    )
    
    public:
    void RegisterSpaceBoundingElementHandle(
    	IFCAnyHandle^ instanceHandle, 
    	ElementId^ id, 
    	ElementId^ levelId
    )
    
    member RegisterSpaceBoundingElementHandle : 
            instanceHandle : IFCAnyHandle * 
            id : ElementId * 
            levelId : ElementId -> unit 
#### Parameters
instanceHandle [IFCAnyHandle](8b893943-70fa-94bf-90be-1523d516ecb3.htm)
     The handle to the space bounding element. 
id [ElementId](44f3f7b1-3229-3404-93c9-dc5e70337dd6.htm)
     The Revit element id associated to this handle. 
levelId [ElementId](44f3f7b1-3229-3404-93c9-dc5e70337dd6.htm)
     The level id assigned to the space bounding object. 
Exception| Condition  
---|---  
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  A non-optional argument was null   
The cache of space bounding elements will be used during completion of export to create relationship objects such as IfcRelSpaceBoundary and IfcRelConnectsPathElements. The types of Revit elements accepted by this function are: 
  * Walls
  * Curtain walls
  * Roofs
  * Floors
  * Doors
  * Windows

#### Reference
[ExporterIFC Class](c8697b81-e080-9202-14d3-ec883f951521.htm)
[Autodesk.Revit.DB.IFC Namespace](b823fafb-1ba1-896b-4097-142c2817ce74.htm)