# SketchEditScope.IsElementWithoutSketch Method

---  
Validates if an element can have a sketch but currently does not. 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public bool IsElementWithoutSketch(
    	ElementId elementId
    )
    
    Public Function IsElementWithoutSketch ( 
    	elementId As ElementId
    ) As Boolean
    
    public:
    bool IsElementWithoutSketch(
    	ElementId^ elementId
    )
    
    member IsElementWithoutSketch : 
            elementId : ElementId -> bool 
#### Parameters
elementId [ElementId](44f3f7b1-3229-3404-93c9-dc5e70337dd6.htm)
     The element id to be checked. 
#### Return Value
Boolean True if the element doesn't have a sketch, false otherwise. 
Exception| Condition  
---|---  
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  A non-optional argument was null   
#### Reference
[SketchEditScope Class](8538b361-08df-9fd2-93bb-1790a09130f7.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)