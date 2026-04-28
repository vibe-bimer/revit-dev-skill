# EnergyDataSettings.ProjectPhase Property

---  
The project phase of the EnergyData information. 
**Namespace:** [Autodesk.Revit.DB.Analysis](958e2e12-587d-f188-5d7b-f13d7dbfdf48.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public ElementId ProjectPhase { get; set; }
    
    Public Property ProjectPhase As ElementId
    	Get
    	Set
    
    public:
    property ElementId^ ProjectPhase {
    	ElementId^ get ();
    	void set (ElementId^ value);
    }
    
    member ProjectPhase : ElementId with get, set
#### Property Value
[ElementId](44f3f7b1-3229-3404-93c9-dc5e70337dd6.htm)
Exception| Condition  
---|---  
[ArgumentException](2e6e4206-97a8-dd4b-df5d-4269f4bb6088.htm)|  When setting this property: The input element is not a project phase.   
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  When setting this property: A non-optional argument was null   
#### Reference
[EnergyDataSettings Class](63628109-daa0-e5b2-3dfd-153179e54816.htm)
[Autodesk.Revit.DB.Analysis Namespace](958e2e12-587d-f188-5d7b-f13d7dbfdf48.htm)