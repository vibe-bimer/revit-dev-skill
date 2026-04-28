# RebarBendingDetailType.DiameterDimensionTypeId Property

---  
Identifies the Id of the diameter dimension type which is used to show dimensions. 
**Namespace:** [Autodesk.Revit.DB.Structure](d586b341-f687-9d90-e96d-255806b7d4fc.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public ElementId DiameterDimensionTypeId { get; set; }
    
    Public Property DiameterDimensionTypeId As ElementId
    	Get
    	Set
    
    public:
    property ElementId^ DiameterDimensionTypeId {
    	ElementId^ get ();
    	void set (ElementId^ value);
    }
    
    member DiameterDimensionTypeId : ElementId with get, set
#### Property Value
[ElementId](44f3f7b1-3229-3404-93c9-dc5e70337dd6.htm)
Exception| Condition  
---|---  
[ArgumentException](2e6e4206-97a8-dd4b-df5d-4269f4bb6088.htm)|  When setting this property:   
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  When setting this property: A non-optional argument was null   
#### Reference
[RebarBendingDetailType Class](9e6af0fc-1c7a-47e2-d6fd-460a36d6bc89.htm)
[Autodesk.Revit.DB.Structure Namespace](d586b341-f687-9d90-e96d-255806b7d4fc.htm)