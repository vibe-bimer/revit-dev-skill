# RoutingCriterionBase.IsEqual Method

---  
Verify if two criteria are the same. 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public bool IsEqual(
    	RoutingCriterionBase pOther
    )
    
    Public Function IsEqual ( 
    	pOther As RoutingCriterionBase
    ) As Boolean
    
    public:
    bool IsEqual(
    	RoutingCriterionBase^ pOther
    )
    
    member IsEqual : 
            pOther : RoutingCriterionBase -> bool 
#### Parameters
pOther [RoutingCriterionBase](6164e8ca-7eb1-2207-c596-d129e1aa146d.htm)
    
#### Return Value
Boolean True if the criterion is equal to the other, false otherwise 
Exception| Condition  
---|---  
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  A non-optional argument was null   
#### Reference
[RoutingCriterionBase Class](6164e8ca-7eb1-2207-c596-d129e1aa146d.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)