# SSEPointVisibilitySettings.SetVisibility Method

---  
Sets the SSE point visibility for the given category. 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public static void SetVisibility(
    	Document document,
    	ElementId categoryId,
    	bool isVisible
    )
    
    Public Shared Sub SetVisibility ( 
    	document As Document,
    	categoryId As ElementId,
    	isVisible As Boolean
    )
    
    public:
    static void SetVisibility(
    	Document^ document, 
    	ElementId^ categoryId, 
    	bool isVisible
    )
    
    static member SetVisibility : 
            document : Document * 
            categoryId : ElementId * 
            isVisible : bool -> unit 
#### Parameters
document [Document](db03274b-a107-aa32-9034-f3e0df4bb1ec.htm)
     The document. 
categoryId [ElementId](44f3f7b1-3229-3404-93c9-dc5e70337dd6.htm)
     The category id. 
isVisible Boolean
     The visibility of the given category. True means the SSE points are visible. 
Exception| Condition  
---|---  
[ArgumentException](2e6e4206-97a8-dd4b-df5d-4269f4bb6088.htm)|  The category is not valid for SSE.   
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  A non-optional argument was null   
#### Reference
[SSEPointVisibilitySettings Class](5bd4779b-340d-8509-2376-1f97f828bf42.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)