# RevitLinkType.GetTopLevelLink(Document, ModelPath) Method

---  
Returns the ElementId of the (top-level) linked model with the given path. 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public static ElementId GetTopLevelLink(
    	Document document,
    	ModelPath path
    )
    
    Public Shared Function GetTopLevelLink ( 
    	document As Document,
    	path As ModelPath
    ) As ElementId
    
    public:
    static ElementId^ GetTopLevelLink(
    	Document^ document, 
    	ModelPath^ path
    )
    
    static member GetTopLevelLink : 
            document : Document * 
            path : ModelPath -> ElementId 
#### Parameters
document [Document](db03274b-a107-aa32-9034-f3e0df4bb1ec.htm)
     The document to look for the linked model in. 
path [ModelPath](40a84c72-e4b8-72ac-2f71-3216c66a11b3.htm)
     A path indicating which linked model to return. 
#### Return Value
[ElementId](44f3f7b1-3229-3404-93c9-dc5e70337dd6.htm) The id of the link with the given path, or InvalidElementId if there is no top-level link at that path. 
Exception| Condition  
---|---  
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  A non-optional argument was null   
This function will not return nested links. 
#### Reference
[RevitLinkType Class](2204a5ab-6476-df41-116d-23dbe3cb5407.htm)
[GetTopLevelLink Overload](473b3f34-b5eb-7900-0a7e-8550cb066b35.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)