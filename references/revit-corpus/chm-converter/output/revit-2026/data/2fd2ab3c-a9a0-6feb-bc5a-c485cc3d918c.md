# InsulationMaterial.Name Property

---  
The Conductor Insulation Material name. 
**Namespace:** [Autodesk.Revit.DB.Electrical](212a1314-7843-2c6c-3322-363127e4059f.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public string Name { get; set; }
    
    Public Property Name As String
    	Get
    	Set
    
    public:
    property String^ Name {
    	String^ get ();
    	void set (String^ value);
    }
    
    member Name : string with get, set
#### Property Value
String
Exception| Condition  
---|---  
[ArgumentException](2e6e4206-97a8-dd4b-df5d-4269f4bb6088.htm)|  When setting this property: name is an empty string or contains only whitespace. -or- When setting this property: name cannot include prohibited characters, such as "{, }, [, ], |, ;, less-than sign, greater-than sign, ?, `, ~". -or- When setting this property: name is not unique in document.   
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  When setting this property: A non-optional argument was null   
#### Reference
[InsulationMaterial Class](bbf4850c-aa6f-53ef-408e-97f25d869ee5.htm)
[Autodesk.Revit.DB.Electrical Namespace](212a1314-7843-2c6c-3322-363127e4059f.htm)