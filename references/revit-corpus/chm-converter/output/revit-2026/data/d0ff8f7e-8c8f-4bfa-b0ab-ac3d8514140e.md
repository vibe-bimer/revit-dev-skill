# FabricSheet.DistributionOfWiresAtCover Property

---  
The distribution of wires that is closest to the cover. 
**Namespace:** [Autodesk.Revit.DB.Structure](d586b341-f687-9d90-e96d-255806b7d4fc.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public WireDistributionDirection DistributionOfWiresAtCover { get; set; }
    
    Public Property DistributionOfWiresAtCover As WireDistributionDirection
    	Get
    	Set
    
    public:
    property WireDistributionDirection DistributionOfWiresAtCover {
    	WireDistributionDirection get ();
    	void set (WireDistributionDirection value);
    }
    
    member DistributionOfWiresAtCover : WireDistributionDirection with get, set
#### Property Value
[WireDistributionDirection](2c5558b4-57d4-1b81-e843-e79c5c1bbc21.htm)
Exception| Condition  
---|---  
[ArgumentOutOfRangeException](60f148c9-ece0-a6bb-4e12-bb4a9c8c8a24.htm)|  When setting this property: A value passed for an enumeration argument is not a member of that enumeration   
[InvalidOperationException](9e715f03-3884-e539-4dd6-8d7545733adc.htm)|  When setting this property: This fabric sheet is bent. Method shall be called only for flat fabric sheets.   
This parameter is only relevant for instances of flat fabric sheets. Fabric sheets are created with the Major distribution set at the cover by default. 
#### Reference
[FabricSheet Class](1f420619-ab30-942a-e5b6-028b7ff3889f.htm)
[Autodesk.Revit.DB.Structure Namespace](d586b341-f687-9d90-e96d-255806b7d4fc.htm)