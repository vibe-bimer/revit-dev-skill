# AreaLoad.IsCurveLoopsInsideHostBoundaries Method

---  
**Namespace:** [Autodesk.Revit.DB.Structure](d586b341-f687-9d90-e96d-255806b7d4fc.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public static bool IsCurveLoopsInsideHostBoundaries(
    	Document doc,
    	ElementId hostId,
    	IList<CurveLoop> loops
    )
    
    Public Shared Function IsCurveLoopsInsideHostBoundaries ( 
    	doc As Document,
    	hostId As ElementId,
    	loops As IList(Of CurveLoop)
    ) As Boolean
    
    public:
    static bool IsCurveLoopsInsideHostBoundaries(
    	Document^ doc, 
    	ElementId^ hostId, 
    	IList<CurveLoop^>^ loops
    )
    
    static member IsCurveLoopsInsideHostBoundaries : 
            doc : Document * 
            hostId : ElementId * 
            loops : IList<CurveLoop> -> bool 
#### Parameters
doc [Document](db03274b-a107-aa32-9034-f3e0df4bb1ec.htm)
    
hostId [ElementId](44f3f7b1-3229-3404-93c9-dc5e70337dd6.htm)
    
loops IList[CurveLoop](84824924-cb89-9e20-de6e-3461f429dfd6.htm)
    
#### Return Value
Boolean
#### Reference
[AreaLoad Class](5dc205a9-cafd-911b-6a56-26f2e8bfcdc1.htm)
[Autodesk.Revit.DB.Structure Namespace](d586b341-f687-9d90-e96d-255806b7d4fc.htm)