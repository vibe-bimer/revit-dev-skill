# Element.IsValidType(ElementId) Method

---  
Checks if given type is valid for this element. 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public bool IsValidType(
    	ElementId typeId
    )
    
    Public Function IsValidType ( 
    	typeId As ElementId
    ) As Boolean
    
    public:
    bool IsValidType(
    	ElementId^ typeId
    )
    
    member IsValidType : 
            typeId : ElementId -> bool 
#### Parameters
typeId [ElementId](44f3f7b1-3229-3404-93c9-dc5e70337dd6.htm)
     ElementId of the type to check. 
#### Return Value
Boolean True if element can have a type assigned and this type is valid for this element, false otherwise. 
Exception| Condition  
---|---  
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  A non-optional argument was null   
A type is valid for an element if it can be assigned to the element. 
#### Reference
[Element Class](eb16114f-69ea-f4de-0d0d-f7388b105a16.htm)
[IsValidType Overload](40c3c3f4-3f80-1f2d-c831-a65400367a55.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)