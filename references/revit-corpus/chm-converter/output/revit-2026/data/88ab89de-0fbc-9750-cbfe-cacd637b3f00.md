# ParameterFilterRuleFactory.CreateGreaterOrEqualRule(ElementId, ElementId) Method

---  
Creates a filter rule that determines whether ElementId values from the document are greater than or equal to a certain value. 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public static FilterRule CreateGreaterOrEqualRule(
    	ElementId parameter,
    	ElementId value
    )
    
    Public Shared Function CreateGreaterOrEqualRule ( 
    	parameter As ElementId,
    	value As ElementId
    ) As FilterRule
    
    public:
    static FilterRule^ CreateGreaterOrEqualRule(
    	ElementId^ parameter, 
    	ElementId^ value
    )
    
    static member CreateGreaterOrEqualRule : 
            parameter : ElementId * 
            value : ElementId -> FilterRule 
#### Parameters
parameter [ElementId](44f3f7b1-3229-3404-93c9-dc5e70337dd6.htm)
     An ElementId-typed parameter used to get values from the document for a given element. 
value [ElementId](44f3f7b1-3229-3404-93c9-dc5e70337dd6.htm)
     The user-supplied value against which values from the document will be compared. 
#### Return Value
[FilterRule](a8f202ca-3c88-ecc4-fa93-549b26a412d7.htm)
Exception| Condition  
---|---  
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  A non-optional argument was null   
#### Reference
[ParameterFilterRuleFactory Class](317755a4-24ba-9f36-7639-f6fb2aa5a1a7.htm)
[CreateGreaterOrEqualRule Overload](14d42cfa-d1e6-d955-f2d6-6cabd71679c0.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)