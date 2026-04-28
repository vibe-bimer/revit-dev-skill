# MultistoryStairs.Unpin Method

---  
Removes a particular story of the stairs (identified by its base level id) from a stairs group. 
**Namespace:** [Autodesk.Revit.DB.Architecture](720f0c58-cb2b-4f13-374a-7348ed0a1cd3.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public Stairs Unpin(
    	ElementId levelId
    )
    
    Public Function Unpin ( 
    	levelId As ElementId
    ) As Stairs
    
    public:
    Stairs^ Unpin(
    	ElementId^ levelId
    )
    
    member Unpin : 
            levelId : ElementId -> Stairs 
#### Parameters
levelId [ElementId](44f3f7b1-3229-3404-93c9-dc5e70337dd6.htm)
     The base level id. If the level id belongs to the base level of a unpinned stairs element, it returns the stairs id directly. 
#### Return Value
[Stairs](45e2c068-7e52-c84a-cfb8-a53c531d28fa.htm) The unpinned stairs element. 
Exception| Condition  
---|---  
[ArgumentException](2e6e4206-97a8-dd4b-df5d-4269f4bb6088.htm)|  There is no stairs instance at the given base levelId.   
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  A non-optional argument was null   
If the story at the given level is in a group, it will separate an individual stairs element from the group with "unpinned" status. Changes you make to the returned stairs element will not affect any other stairs. If the story of stairs is already an individual stairs element, the status will be changed to "unpinned". 
#### Reference
[MultistoryStairs Class](8b07cbff-013c-889f-8807-703e63a91923.htm)
[Autodesk.Revit.DB.Architecture Namespace](720f0c58-cb2b-4f13-374a-7348ed0a1cd3.htm)