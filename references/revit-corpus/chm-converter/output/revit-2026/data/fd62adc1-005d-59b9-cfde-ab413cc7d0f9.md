# PartMakerMethodToDivideVolumes.DivisionRuleId Property

---  
Id of the 'DivisionRule' which is used to augment the cutting sketch. 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public ElementId DivisionRuleId { get; set; }
    
    Public Property DivisionRuleId As ElementId
    	Get
    	Set
    
    public:
    property ElementId^ DivisionRuleId {
    	ElementId^ get ();
    	void set (ElementId^ value);
    }
    
    member DivisionRuleId : ElementId with get, set
#### Property Value
[ElementId](44f3f7b1-3229-3404-93c9-dc5e70337dd6.htm)
Exception| Condition  
---|---  
[ArgumentException](2e6e4206-97a8-dd4b-df5d-4269f4bb6088.htm)|  When setting this property: The provided element id cannot be assigned as a division rule to this PartMakerMethodToDivideVolumes.   
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  When setting this property: A non-optional argument was null   
#### Reference
[PartMakerMethodToDivideVolumes Class](611ca5f7-3ffb-6f83-3aaf-df4533038ed0.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)