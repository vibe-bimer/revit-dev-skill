# Viewport.IsViewIdValidForViewport Method

---  
Verifies that the Viewport can change it's view id to the input %viewId%. 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public bool IsViewIdValidForViewport(
    	ElementId viewId
    )
    
    Public Function IsViewIdValidForViewport ( 
    	viewId As ElementId
    ) As Boolean
    
    public:
    bool IsViewIdValidForViewport(
    	ElementId^ viewId
    )
    
    member IsViewIdValidForViewport : 
            viewId : ElementId -> bool 
#### Parameters
viewId [ElementId](44f3f7b1-3229-3404-93c9-dc5e70337dd6.htm)
     The view which will be checked to see if it can be applied to Viewport. 
#### Return Value
Boolean True if the %viewId% is valid for the viewport, false otherwise. 
Exception| Condition  
---|---  
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  A non-optional argument was null   
#### Reference
[Viewport Class](5991dc40-234a-4835-cc06-07524d2e61a4.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)