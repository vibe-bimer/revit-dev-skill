# DocumentChangedEventArgs.GetModifiedElementIds(ElementFilter) Method

---  
Returns set of elements that were modified according to the given element filter. 
**Namespace:** [Autodesk.Revit.DB.Events](b86712d6-83b3-e044-8016-f9881ecd3800.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public ICollection<ElementId> GetModifiedElementIds(
    	ElementFilter filter
    )
    
    Public Function GetModifiedElementIds ( 
    	filter As ElementFilter
    ) As ICollection(Of ElementId)
    
    public:
    ICollection<ElementId^>^ GetModifiedElementIds(
    	ElementFilter^ filter
    )
    
    member GetModifiedElementIds : 
            filter : ElementFilter -> ICollection<ElementId> 
#### Parameters
filter [ElementFilter](b8b46cbf-9ecc-0745-ec53-c3c3b6510113.htm)
     The element filter to be applied. 
#### Return Value
ICollection[ElementId](44f3f7b1-3229-3404-93c9-dc5e70337dd6.htm) The set of ElementId for modified elements that pass the filter. Returns empty set if no elements are found which pass the filter. 
Exception| Condition  
---|---  
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  A non-optional argument was null   
#### Reference
[DocumentChangedEventArgs Class](8fd170b2-df48-209b-438e-54ec7b01b664.htm)
[GetModifiedElementIds Overload](eb5eab82-7e48-958b-9999-dc8826ca26f3.htm)
[Autodesk.Revit.DB.Events Namespace](b86712d6-83b3-e044-8016-f9881ecd3800.htm)