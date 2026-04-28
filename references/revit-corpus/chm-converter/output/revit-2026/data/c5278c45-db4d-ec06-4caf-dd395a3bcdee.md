# ReinforcementNumberingMethod Enumeration

---  
Defines numbering method settings. 
**Namespace:** [Autodesk.Revit.DB.Structure](d586b341-f687-9d90-e96d-255806b7d4fc.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public enum ReinforcementNumberingMethod
    
    Public Enumeration ReinforcementNumberingMethod
    
    public enum class ReinforcementNumberingMethod
    
    type ReinforcementNumberingMethod
Member name| Value| Description  
---|---|---  
AssignUniqueNumberPerSet| 1|  If this value is Assign Unique Numbers Per Set, the following happens: 
  * 1\. The Revit numbering mechanism ([NumberingSchema](8f2b22da-5963-301f-44d8-10c68828c436.htm)) will assign a unique number for each Rebar set which has varying length bars. Each bar within the varying set will have(share) the same number that was assigned for the entire set.
  * 2\. Each bar within a set with varying length bars will also be assigned a suffix parameter (REBAR_NUMBER_SUFFIX). This suffix parameter will receive values based on the [!:RebarVaryingLengthNumberSuffix] property.

  
MatchSetsWithIdenticalBars| 2|  If this value is Match Sets With Identical Bars, the following happens: 
  * 1\. The Revit numbering mechanism ([NumberingSchema](8f2b22da-5963-301f-44d8-10c68828c436.htm)) will assign the same number for Rebar sets with varying length bars if bars at the same index are identical even if these bars are moved.
  * 2\. Each bar within a set with varying length bars will also be assigned a suffix parameter (REBAR_NUMBER_SUFFIX). This suffix parameter will receive values based on the [!:RebarVaryingLengthNumberSuffix] property.

  
NumberBarsIndividually| 0|  If this value is Numbers Bars Individually, then the Revit numbering mechanism ([NumberingSchema](8f2b22da-5963-301f-44d8-10c68828c436.htm)) will assign a number to each bar in a rebar set with varying lengths. It will also assign a number to the sets that don't have varying length bars. The number is assigned based on the Revit numbering logic. (For example if two bars are identical, they will receive the same number). The numbering mechanism will compare varying bars with other varying or uniform bars within the project. (i.e each bar in a varying set is interpreted as an individual Rebar)._The shape parameters of a Rebar can be accessed via[!:Autodesk::Revit::DB::Structure::RebarShapeDefinition::getParameters] method.__The parameters at a specific index in a Rebar set can be accessed via[!:Autodesk::Revit::DB::Structure::Rebar::getParameterValueAtIndex] method._  
#### Reference
[Autodesk.Revit.DB.Structure Namespace](d586b341-f687-9d90-e96d-255806b7d4fc.htm)