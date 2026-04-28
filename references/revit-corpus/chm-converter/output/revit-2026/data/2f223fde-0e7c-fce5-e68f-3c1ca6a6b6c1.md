# JoinGeometryUtils.JoinGeometry Method

---  
Creates clean joins between two elements that share a common face. 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public static void JoinGeometry(
    	Document document,
    	Element firstElement,
    	Element secondElement
    )
    
    Public Shared Sub JoinGeometry ( 
    	document As Document,
    	firstElement As Element,
    	secondElement As Element
    )
    
    public:
    static void JoinGeometry(
    	Document^ document, 
    	Element^ firstElement, 
    	Element^ secondElement
    )
    
    static member JoinGeometry : 
            document : Document * 
            firstElement : Element * 
            secondElement : Element -> unit 
#### Parameters
document [Document](db03274b-a107-aa32-9034-f3e0df4bb1ec.htm)
     The document containing the two elements. 
firstElement [Element](eb16114f-69ea-f4de-0d0d-f7388b105a16.htm)
     The first element to be joined. 
secondElement [Element](eb16114f-69ea-f4de-0d0d-f7388b105a16.htm)
     The second element to be joined. This element must not be joined to the first element. 
Exception| Condition  
---|---  
[ArgumentException](2e6e4206-97a8-dd4b-df5d-4269f4bb6088.htm)|  document is not a project document. -or- The element firstElement was not found in the given document. -or- The element secondElement was not found in the given document. -or- The elements are already joined. -or- The elements cannot be joined.   
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  A non-optional argument was null   
[InvalidOperationException](9e715f03-3884-e539-4dd6-8d7545733adc.htm)|  Please remove or add segments on curtain grids instead of joining or unjoining geometry of the panels.   
The visible edge between joined elements is removed. The joined elements then share the same line weight and fill pattern. This functionality is not available for family documents. 
#### Reference
[JoinGeometryUtils Class](c45b6484-3efd-1d81-0b47-ba678857fff1.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)