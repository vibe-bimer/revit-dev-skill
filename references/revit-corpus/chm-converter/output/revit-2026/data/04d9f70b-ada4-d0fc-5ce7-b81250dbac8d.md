# EnergyAnalysisDetailModelOptions.ExportMullions Property

---  
Indicates if to specify the setting for exporting mullions. 
**Namespace:** [Autodesk.Revit.DB.Analysis](958e2e12-587d-f188-5d7b-f13d7dbfdf48.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public bool ExportMullions { get; set; }
    
    Public Property ExportMullions As Boolean
    	Get
    	Set
    
    public:
    property bool ExportMullions {
    	bool get ();
    	void set (bool value);
    }
    
    member ExportMullions : bool with get, set
#### Property Value
Boolean
When this setting is on, mullions will be exported as shading surfaces. A "simplified" analytical shading surface is produced from a mullion based on its centerline, thickness and offset. 
#### Reference
[EnergyAnalysisDetailModelOptions Class](18297392-d94a-cdab-feb3-81482771c44d.htm)
[Autodesk.Revit.DB.Analysis Namespace](958e2e12-587d-f188-5d7b-f13d7dbfdf48.htm)