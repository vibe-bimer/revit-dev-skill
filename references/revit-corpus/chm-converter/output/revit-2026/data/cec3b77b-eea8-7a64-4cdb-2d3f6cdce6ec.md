# RebarBarType.GetAutoCalculatedLapLength Method

---  
Identifies if the lap length is auto calculated for the specified Rebar Splice Type. 
**Namespace:** [Autodesk.Revit.DB.Structure](d586b341-f687-9d90-e96d-255806b7d4fc.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public bool GetAutoCalculatedLapLength(
    	ElementId rebarSpliceTypeId
    )
    
    Public Function GetAutoCalculatedLapLength ( 
    	rebarSpliceTypeId As ElementId
    ) As Boolean
    
    public:
    bool GetAutoCalculatedLapLength(
    	ElementId^ rebarSpliceTypeId
    )
    
    member GetAutoCalculatedLapLength : 
            rebarSpliceTypeId : ElementId -> bool 
#### Parameters
rebarSpliceTypeId [ElementId](44f3f7b1-3229-3404-93c9-dc5e70337dd6.htm)
     The Rebar Splice Type id. Interactions with Rebar Splice Types can be done with the functions in [RebarSpliceTypeUtils](98b9e51e-cd97-954d-4a31-a5189696b27e.htm). 
#### Return Value
Boolean Returns true if the lap length is auto calculated for the specified Rebar Bar Type and Rebar Splice Type, false otherwise. 
Exception| Condition  
---|---  
[ArgumentException](2e6e4206-97a8-dd4b-df5d-4269f4bb6088.htm)|  The rebarSpliceTypeId doesn't represent a valid Rebar Splice Type. It should be an ElementType of BuiltInCategory.OST_RebarSpliceType category.   
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  A non-optional argument was null   
If it is auto calculated, lap length value is computed based on the formula: lap length multiplier (found in splice type) * bar nominal diameter. 
#### Reference
[RebarBarType Class](467b44cc-54e7-3ecf-07e1-ad15d05fe800.htm)
[Autodesk.Revit.DB.Structure Namespace](d586b341-f687-9d90-e96d-255806b7d4fc.htm)