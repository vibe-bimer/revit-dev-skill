# AnalyticalNodeData.GetAnalyticalNodeData Method

---  
Returns AnalyticalNodeData associated with this element, if it exists. 
**Namespace:** [Autodesk.Revit.DB.Structure](d586b341-f687-9d90-e96d-255806b7d4fc.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public static AnalyticalNodeData GetAnalyticalNodeData(
    	Element element
    )
    
    Public Shared Function GetAnalyticalNodeData ( 
    	element As Element
    ) As AnalyticalNodeData
    
    public:
    static AnalyticalNodeData^ GetAnalyticalNodeData(
    	Element^ element
    )
    
    static member GetAnalyticalNodeData : 
            element : Element -> AnalyticalNodeData 
#### Parameters
element [Element](eb16114f-69ea-f4de-0d0d-f7388b105a16.htm)
     The element from which we try to obtain AnalyticalNodeData. 
#### Return Value
[AnalyticalNodeData](24e7600a-2ae0-f25c-c36a-62b5bfcdc2eb.htm)
Exception| Condition  
---|---  
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  A non-optional argument was null   
If the input element doesn't have AnalyticalNodeData than it retuns . The input element should be a ReferencePoint. 
#### Reference
[AnalyticalNodeData Class](24e7600a-2ae0-f25c-c36a-62b5bfcdc2eb.htm)
[Autodesk.Revit.DB.Structure Namespace](d586b341-f687-9d90-e96d-255806b7d4fc.htm)