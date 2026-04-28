# EnergyDataSettings.ExportCategory Property

---  
Value is a category indicating which discipline model will be used for GreenBuildingXML export. 
**Namespace:** [Autodesk.Revit.DB.Analysis](958e2e12-587d-f188-5d7b-f13d7dbfdf48.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public ElementId ExportCategory { get; set; }
    
    Public Property ExportCategory As ElementId
    	Get
    	Set
    
    public:
    property ElementId^ ExportCategory {
    	ElementId^ get ();
    	void set (ElementId^ value);
    }
    
    member ExportCategory : ElementId with get, set
#### Property Value
[ElementId](44f3f7b1-3229-3404-93c9-dc5e70337dd6.htm)
Exception| Condition  
---|---  
[ArgumentException](2e6e4206-97a8-dd4b-df5d-4269f4bb6088.htm)|  When setting this property: The export category is neither OST_Rooms nor OST_MEPSpaces.   
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  When setting this property: A non-optional argument was null   
OST_Rooms will use the architectural 3d rooms for export. OST_MEPSpaces will use the MEP 3d Spaces for export. 
#### Reference
[EnergyDataSettings Class](63628109-daa0-e5b2-3dfd-153179e54816.htm)
[Autodesk.Revit.DB.Analysis Namespace](958e2e12-587d-f188-5d7b-f13d7dbfdf48.htm)