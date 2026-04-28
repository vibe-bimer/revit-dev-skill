# ControlledApplication.SubVersionNumber Property

---  
The minor version number of Revit.
**Namespace:** [Autodesk.Revit.ApplicationServices](91957e18-2935-006c-83ab-3b5b9dbb5928.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public string SubVersionNumber { get; }
    
    Public ReadOnly Property SubVersionNumber As String
    	Get
    
    public:
    property String^ SubVersionNumber {
    	String^ get ();
    }
    
    member SubVersionNumber : string with get
#### Property Value
String
SubVersionNumber of Revit may have additional APIs and functionality not available in the standard customer releases. Add-ins written to support standard Revit releases should be compatible with SubVersionNumber releases, but add-ins written specifically targeting new features in SubVersionNumber releases would not be compatible with the standard releases. 
#### Reference
[ControlledApplication Class](35859972-2407-3910-cb07-bbb337e307e6.htm)
[Autodesk.Revit.ApplicationServices Namespace](91957e18-2935-006c-83ab-3b5b9dbb5928.htm)