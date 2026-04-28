# PlumbingUtils.HasOpenConnector Method

---  
Checks if there is open piping connector for the given element - object of pipe curve, pipe fitting or pipe accessory. 
**Namespace:** [Autodesk.Revit.DB.Plumbing](cc553597-37c2-fcd9-6025-d904c129c80a.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public static bool HasOpenConnector(
    	Document document,
    	ElementId elemId
    )
    
    Public Shared Function HasOpenConnector ( 
    	document As Document,
    	elemId As ElementId
    ) As Boolean
    
    public:
    static bool HasOpenConnector(
    	Document^ document, 
    	ElementId^ elemId
    )
    
    static member HasOpenConnector : 
            document : Document * 
            elemId : ElementId -> bool 
#### Parameters
document [Document](db03274b-a107-aa32-9034-f3e0df4bb1ec.htm)
     The document. 
elemId [ElementId](44f3f7b1-3229-3404-93c9-dc5e70337dd6.htm)
     Element id to check. 
#### Return Value
Boolean True if given element has open piping connector, false otherwise. 
Exception| Condition  
---|---  
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  A non-optional argument was null   
#### Reference
[PlumbingUtils Class](958a3fa2-eb4b-2814-f674-42cac98f4910.htm)
[Autodesk.Revit.DB.Plumbing Namespace](cc553597-37c2-fcd9-6025-d904c129c80a.htm)