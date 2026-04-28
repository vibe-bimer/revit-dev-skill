# Element.IsHidden Method

---  
Identifies if the element has been permanently hidden in the view.
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public bool IsHidden(
    	View pView
    )
    
    Public Function IsHidden ( 
    	pView As View
    ) As Boolean
    
    public:
    bool IsHidden(
    	View^ pView
    )
    
    member IsHidden : 
            pView : View -> bool 
#### Parameters
pView [View](fb92a4e7-f3a7-ef14-e631-342179b18de9.htm)
    
#### Return Value
Boolean
Exception| Condition  
---|---  
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)| Thrown when argument is .  
This does not determine if the element is hidden as a result of temporary hide/isolate, view sectioning, view crop box, or other operations that can cause elements not to be visible. To hide or unhide an element, use the Hide() and Unhide() method of [View](fb92a4e7-f3a7-ef14-e631-342179b18de9.htm). 
#### Reference
[Element Class](eb16114f-69ea-f4de-0d0d-f7388b105a16.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)