# RebarHostData.IsValidHost(Element) Method

---  
Identifies whether a given element can host reinforcement. 
**Namespace:** [Autodesk.Revit.DB.Structure](d586b341-f687-9d90-e96d-255806b7d4fc.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public static bool IsValidHost(
    	Element element
    )
    
    Public Shared Function IsValidHost ( 
    	element As Element
    ) As Boolean
    
    public:
    static bool IsValidHost(
    	Element^ element
    )
    
    static member IsValidHost : 
            element : Element -> bool 
#### Parameters
element [Element](eb16114f-69ea-f4de-0d0d-f7388b105a16.htm)
     The element to check. 
#### Return Value
Boolean True if the input Element can host reinforcement elements, false otherwise. 
Exception| Condition  
---|---  
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  A non-optional argument was null   
Many different elements are allowed to host reinforcement, for example, beams, walls, columns, or parts. Often there are specific restrictions about whether an element can host rebar beyond its type or category. For example, the material type of the element may determine this. Or for parts, the part must have been created from layers that have their role set to Structure. 
#### Reference
[RebarHostData Class](2b39b172-ad0f-e1c6-99a4-3b828346200c.htm)
[IsValidHost Overload](aaff4dec-529b-0e41-aeb5-e632c4ad084c.htm)
[Autodesk.Revit.DB.Structure Namespace](d586b341-f687-9d90-e96d-255806b7d4fc.htm)