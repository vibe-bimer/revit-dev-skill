# ViewFamilyType.IsValidDefaultTemplate Method

---  
Verifies that the input can be used as a default template for this view type. 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public bool IsValidDefaultTemplate(
    	ElementId templateId
    )
    
    Public Function IsValidDefaultTemplate ( 
    	templateId As ElementId
    ) As Boolean
    
    public:
    bool IsValidDefaultTemplate(
    	ElementId^ templateId
    )
    
    member IsValidDefaultTemplate : 
            templateId : ElementId -> bool 
#### Parameters
templateId [ElementId](44f3f7b1-3229-3404-93c9-dc5e70337dd6.htm)
     Id to be validated as default template. 
#### Return Value
Boolean True if %templateId% is valid as default template, false otherwise. 
Exception| Condition  
---|---  
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  A non-optional argument was null   
The id must represent a template view that is compatible with this view type, or InvalidElementId. 
#### Reference
[ViewFamilyType Class](e0edeb6d-1627-3e3f-e386-be182a9dd8cb.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)