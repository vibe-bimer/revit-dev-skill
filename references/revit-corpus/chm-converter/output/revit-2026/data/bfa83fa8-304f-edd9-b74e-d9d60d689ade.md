# FilterElementIdRule.UsesLevelFiltering Method

---  
This function checks if a parameter uses level filtering. 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public static bool UsesLevelFiltering(
    	Document doc,
    	ElementId parameterId
    )
    
    Public Shared Function UsesLevelFiltering ( 
    	doc As Document,
    	parameterId As ElementId
    ) As Boolean
    
    public:
    static bool UsesLevelFiltering(
    	Document^ doc, 
    	ElementId^ parameterId
    )
    
    static member UsesLevelFiltering : 
            doc : Document * 
            parameterId : ElementId -> bool 
#### Parameters
doc [Document](db03274b-a107-aa32-9034-f3e0df4bb1ec.htm)
     The document which owns the parameter. 
parameterId [ElementId](44f3f7b1-3229-3404-93c9-dc5e70337dd6.htm)
     The id of the parameter that will be tested to see if it uses level filtering. 
#### Return Value
Boolean True if the parameter uses level filtering, false otherwise. 
Exception| Condition  
---|---  
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  A non-optional argument was null   
When level-filtering parameters are compared, the comparisons will first compare the values of the levels' elevations, then compare the levels' names, and finally the levels' element ids to rank and sort the levels. 
#### Reference
[FilterElementIdRule Class](4675442b-8c75-4e20-ba18-71df13b86896.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)