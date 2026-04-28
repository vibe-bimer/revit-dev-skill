# FilterableValueProvider.GetElementIdValue Method

---  
Gets an ElementId value from the given element. 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public ElementId GetElementIdValue(
    	Element element
    )
    
    Public Function GetElementIdValue ( 
    	element As Element
    ) As ElementId
    
    public:
    ElementId^ GetElementIdValue(
    	Element^ element
    )
    
    member GetElementIdValue : 
            element : Element -> ElementId 
#### Parameters
element [Element](eb16114f-69ea-f4de-0d0d-f7388b105a16.htm)
     The element to query. 
#### Return Value
[ElementId](44f3f7b1-3229-3404-93c9-dc5e70337dd6.htm) The ElementId value from the element. 
Exception| Condition  
---|---  
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  A non-optional argument was null   
#### Reference
[FilterableValueProvider Class](50829fa2-03f1-9d4b-a3cd-2935d3bf8a8c.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)