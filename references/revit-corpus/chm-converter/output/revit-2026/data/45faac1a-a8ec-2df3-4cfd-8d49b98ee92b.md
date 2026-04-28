# RebarContainer.ScheduleMark Property

---  
The Schedule Mark parameter. On creation, the Schedule Mark is set to a value that is unique to the host, but it can be set to any value. 
**Namespace:** [Autodesk.Revit.DB.Structure](d586b341-f687-9d90-e96d-255806b7d4fc.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public string ScheduleMark { get; set; }
    
    Public Property ScheduleMark As String
    	Get
    	Set
    
    public:
    property String^ ScheduleMark {
    	String^ get ();
    	void set (String^ value);
    }
    
    member ScheduleMark : string with get, set
#### Property Value
String
Exception| Condition  
---|---  
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  When setting this property: A non-optional argument was null   
#### Reference
[RebarContainer Class](61979a57-facc-d97a-7a35-ee04eed59156.htm)
[Autodesk.Revit.DB.Structure Namespace](d586b341-f687-9d90-e96d-255806b7d4fc.htm)