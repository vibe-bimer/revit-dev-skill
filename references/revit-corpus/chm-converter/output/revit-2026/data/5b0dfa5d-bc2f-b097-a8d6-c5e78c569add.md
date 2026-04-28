# AlignmentStationLabelSetOptions.TypeId Property

---  
Specifies the ElementId of the labels' type. The default value is InvalidElementId. in this case, [CreateSet(Alignment, View, AlignmentStationLabelSetOptions)](bbb3fb20-cbc6-f6aa-cc23-ae7ad73747b3.htm) will throw an exception. 
**Namespace:** [Autodesk.Revit.DB.Infrastructure](cedea963-42a0-acf8-0f0e-5477c4212ae9.htm)**Assembly:** Autodesk.CivilAlignments.DBApplication (in Autodesk.CivilAlignments.DBApplication.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public ElementId TypeId { get; set; }
    
    Public Property TypeId As ElementId
    	Get
    	Set
    
    public:
    property ElementId^ TypeId {
    	ElementId^ get ();
    	void set (ElementId^ value);
    }
    
    member TypeId : ElementId with get, set
#### Property Value
[ElementId](44f3f7b1-3229-3404-93c9-dc5e70337dd6.htm)
Recommended types can be found using [IsRecommendedTypeForSet(Element)](df3f1355-5c15-5665-23e6-520ce91c8815.htm) Other valid types can be found using [IsValidType(Element)](ff11b964-e6e7-9dad-fbf1-461244fcf010.htm). 
#### Reference
[AlignmentStationLabelSetOptions Class](15f4337d-738d-ec32-e7bc-4f2c569f4c59.htm)
[Autodesk.Revit.DB.Infrastructure Namespace](cedea963-42a0-acf8-0f0e-5477c4212ae9.htm)