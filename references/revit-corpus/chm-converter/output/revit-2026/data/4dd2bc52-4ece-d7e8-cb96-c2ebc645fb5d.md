# ImageExportOptions.ImageResolution Property

---  
The image resolution in dots per inch. 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public ImageResolution ImageResolution { get; set; }
    
    Public Property ImageResolution As ImageResolution
    	Get
    	Set
    
    public:
    property ImageResolution ImageResolution {
    	ImageResolution get ();
    	void set (ImageResolution value);
    }
    
    member ImageResolution : ImageResolution with get, set
#### Property Value
[ImageResolution](a092ac09-7ca2-a928-94e5-27243284e423.htm)
Exception| Condition  
---|---  
[ArgumentOutOfRangeException](60f148c9-ece0-a6bb-4e12-bb4a9c8c8a24.htm)|  When setting this property: A value passed for an enumeration argument is not a member of that enumeration   
The default is DPI_72. 
#### Reference
[ImageExportOptions Class](c2e823a1-6eb0-2bf3-f07b-ed46d8f7b70a.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)