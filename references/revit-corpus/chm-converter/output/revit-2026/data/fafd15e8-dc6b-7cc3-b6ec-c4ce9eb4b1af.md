# RebarShapeDrivenAccessor.SetLayoutAsMinimumClearSpacing Method

---  
Sets the Layout Rule property of rebar set to MinimumClearSpacing 
**Namespace:** [Autodesk.Revit.DB.Structure](d586b341-f687-9d90-e96d-255806b7d4fc.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public void SetLayoutAsMinimumClearSpacing(
    	double spacing,
    	double arrayLength,
    	bool barsOnNormalSide,
    	bool includeFirstBar,
    	bool includeLastBar
    )
    
    Public Sub SetLayoutAsMinimumClearSpacing ( 
    	spacing As Double,
    	arrayLength As Double,
    	barsOnNormalSide As Boolean,
    	includeFirstBar As Boolean,
    	includeLastBar As Boolean
    )
    
    public:
    void SetLayoutAsMinimumClearSpacing(
    	double spacing, 
    	double arrayLength, 
    	bool barsOnNormalSide, 
    	bool includeFirstBar, 
    	bool includeLastBar
    )
    
    member SetLayoutAsMinimumClearSpacing : 
            spacing : float * 
            arrayLength : float * 
            barsOnNormalSide : bool * 
            includeFirstBar : bool * 
            includeLastBar : bool -> unit 
#### Parameters
spacing Double
     The maximum spacing between rebar in rebar set 
arrayLength Double
     The distribution length of rebar set 
barsOnNormalSide Boolean
     Identifies if the bars of the rebar set are on the same side of the rebar plane indicated by the normal 
includeFirstBar Boolean
     Identifies if the first bar in rebar set is shown 
includeLastBar Boolean
     Identifies if the last bar in rebar set is shown 
Exception| Condition  
---|---  
[ArgumentOutOfRangeException](60f148c9-ece0-a6bb-4e12-bb4a9c8c8a24.htm)|  The spacing isn't bigger than 0.0. -or- the set length arrayLength isn't acceptable.   
[InapplicableDataException](dc1a6d15-8923-a1fe-722a-4e976634a519.htm)|  This RebarShapeDrivenAccessor is an instance of a spiral or multiplanar shape.   
[InvalidOperationException](9e715f03-3884-e539-4dd6-8d7545733adc.htm)|  This RebarShapeDrivenAccessor doesn't contain a valid rebar reference.   
When changing the layout rule to MinimumClearSpacing, you must also simultaneously set Spacing, SetLength, BarsOnNormalSide, IncludeFirstBar, and IncludeLastBar properties. 
#### Reference
[RebarShapeDrivenAccessor Class](6d2f77e7-bbe2-5bd5-723a-bf27c3df1a65.htm)
[Autodesk.Revit.DB.Structure Namespace](d586b341-f687-9d90-e96d-255806b7d4fc.htm)