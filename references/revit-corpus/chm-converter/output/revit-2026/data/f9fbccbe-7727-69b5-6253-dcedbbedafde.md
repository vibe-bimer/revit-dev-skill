# Family.CanLoadFamilies Method

---  
Checks whether the document is in a state that allows the loading of families. 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public static bool CanLoadFamilies(
    	Document document
    )
    
    Public Shared Function CanLoadFamilies ( 
    	document As Document
    ) As Boolean
    
    public:
    static bool CanLoadFamilies(
    	Document^ document
    )
    
    static member CanLoadFamilies : 
            document : Document -> bool 
#### Parameters
document [Document](db03274b-a107-aa32-9034-f3e0df4bb1ec.htm)
     The document to check. 
#### Return Value
Boolean True if loading of families is allowed, otherwise False. 
Exception| Condition  
---|---  
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  A non-optional argument was null   
#### Reference
[Family Class](f51d019d-6ff3-692b-d1d2-b497cab564de.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)