# RoutingPreferenceManager.AddRule(RoutingPreferenceRuleGroupType, RoutingPreferenceRule, Int32) Method

---  
Adds a new routing preference rule to the specified position in the rule group. 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public void AddRule(
    	RoutingPreferenceRuleGroupType groupType,
    	RoutingPreferenceRule rule,
    	int index
    )
    
    Public Sub AddRule ( 
    	groupType As RoutingPreferenceRuleGroupType,
    	rule As RoutingPreferenceRule,
    	index As Integer
    )
    
    public:
    void AddRule(
    	RoutingPreferenceRuleGroupType groupType, 
    	RoutingPreferenceRule^ rule, 
    	int index
    )
    
    member AddRule : 
            groupType : RoutingPreferenceRuleGroupType * 
            rule : RoutingPreferenceRule * 
            index : int -> unit 
#### Parameters
groupType [RoutingPreferenceRuleGroupType](79896fd9-e90c-6561-3bc4-7cefd4692ae5.htm)
     The routing preference group type in which the rule should be added. 
rule [RoutingPreferenceRule](28dd1a35-5115-c0fb-26e3-7bce14893b89.htm)
     The new rule to be added. 
index Int32
     The zero-based index position where the new rule will be added. 
Exception| Condition  
---|---  
[ArgumentException](2e6e4206-97a8-dd4b-df5d-4269f4bb6088.htm)|  index is not a valid zero-based index within groupType. -or- The rule cannot be added to the groupType. -or- Thrown if the index is out of bounds, or the rule is not valid for this group (e.g. an elbow may not be added to the junction group).   
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  A non-optional argument was null   
[ArgumentOutOfRangeException](60f148c9-ece0-a6bb-4e12-bb4a9c8c8a24.htm)|  A value passed for an enumeration argument is not a member of that enumeration   
#### Reference
[RoutingPreferenceManager Class](a8300b97-72a6-beb5-733b-ec4cfea6c472.htm)
[AddRule Overload](06817419-419d-35bf-8538-3584e415a1c4.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)