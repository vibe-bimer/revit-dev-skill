# ViewScheduleExportOptions.TextQualifier Property

---  
How to qualify text fields. Default is DoubleQuote. 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public ExportTextQualifier TextQualifier { get; set; }
    
    Public Property TextQualifier As ExportTextQualifier
    	Get
    	Set
    
    public:
    property ExportTextQualifier TextQualifier {
    	ExportTextQualifier get ();
    	void set (ExportTextQualifier value);
    }
    
    member TextQualifier : ExportTextQualifier with get, set
#### Property Value
[ExportTextQualifier](21d248e0-364a-8e01-3a43-dfc34fb979bc.htm)
Exception| Condition  
---|---  
[ArgumentOutOfRangeException](60f148c9-ece0-a6bb-4e12-bb4a9c8c8a24.htm)|  When setting this property: A value passed for an enumeration argument is not a member of that enumeration   
#### Reference
[ViewScheduleExportOptions Class](f0bde7ea-ceab-820d-7c55-b09819f21607.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)