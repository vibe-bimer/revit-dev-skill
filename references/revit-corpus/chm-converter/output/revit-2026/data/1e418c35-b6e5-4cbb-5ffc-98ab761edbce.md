# IFCCategoryTemplate.GetActiveTemplate Method

---  
Gets the active mapping template element in the document. 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public static IFCCategoryTemplate GetActiveTemplate(
    	Document document
    )
    
    Public Shared Function GetActiveTemplate ( 
    	document As Document
    ) As IFCCategoryTemplate
    
    public:
    static IFCCategoryTemplate^ GetActiveTemplate(
    	Document^ document
    )
    
    static member GetActiveTemplate : 
            document : Document -> IFCCategoryTemplate 
#### Parameters
document [Document](db03274b-a107-aa32-9034-f3e0df4bb1ec.htm)
     The document to find the active mapping template. 
#### Return Value
[IFCCategoryTemplate](291d1bc9-cff6-b447-b72f-7d962b42b49f.htm) The active mapping template, or  if none. 
Exception| Condition  
---|---  
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  A non-optional argument was null   
New documents have no active mapping template and it implies in-session template usage. 
#### Reference
[IFCCategoryTemplate Class](291d1bc9-cff6-b447-b72f-7d962b42b49f.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)