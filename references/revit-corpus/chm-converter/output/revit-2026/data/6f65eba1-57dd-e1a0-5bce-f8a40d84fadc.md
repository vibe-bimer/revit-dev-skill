# RebarSpliceTypeUtils.GetStaggerLengthMultiplier Method

---  
Gets the stagger multiplier value. 
**Namespace:** [Autodesk.Revit.DB.Structure](d586b341-f687-9d90-e96d-255806b7d4fc.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public static double GetStaggerLengthMultiplier(
    	Document document,
    	ElementId rebarSpliceTypeId
    )
    
    Public Shared Function GetStaggerLengthMultiplier ( 
    	document As Document,
    	rebarSpliceTypeId As ElementId
    ) As Double
    
    public:
    static double GetStaggerLengthMultiplier(
    	Document^ document, 
    	ElementId^ rebarSpliceTypeId
    )
    
    static member GetStaggerLengthMultiplier : 
            document : Document * 
            rebarSpliceTypeId : ElementId -> float 
#### Parameters
document [Document](db03274b-a107-aa32-9034-f3e0df4bb1ec.htm)
     The document. 
rebarSpliceTypeId [ElementId](44f3f7b1-3229-3404-93c9-dc5e70337dd6.htm)
     The Rebar Splice Type id. 
#### Return Value
Double Returns the stagger length multiplier value. 
Exception| Condition  
---|---  
[ArgumentException](2e6e4206-97a8-dd4b-df5d-4269f4bb6088.htm)|  The rebarSpliceTypeId doesn't represent a valid Rebar Splice Type. It should be an ElementType of BuiltInCategory.OST_RebarSpliceType category.   
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  A non-optional argument was null   
#### Reference
[RebarSpliceTypeUtils Class](98b9e51e-cd97-954d-4a31-a5189696b27e.htm)
[Autodesk.Revit.DB.Structure Namespace](d586b341-f687-9d90-e96d-255806b7d4fc.htm)