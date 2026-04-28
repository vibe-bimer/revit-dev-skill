# HVACLoadBuildingType.IsValidTime Method

---  
Check if the string can be parsed to a valid time for opening time and closing time. A valid string can be "16:30" or "4:30 PM"; 
**Namespace:** [Autodesk.Revit.DB.Analysis](958e2e12-587d-f188-5d7b-f13d7dbfdf48.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public static bool IsValidTime(
    	string hourMinute
    )
    
    Public Shared Function IsValidTime ( 
    	hourMinute As String
    ) As Boolean
    
    public:
    static bool IsValidTime(
    	String^ hourMinute
    )
    
    static member IsValidTime : 
            hourMinute : string -> bool 
#### Parameters
hourMinute String
    
#### Return Value
Boolean
Exception| Condition  
---|---  
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  A non-optional argument was null   
#### Reference
[HVACLoadBuildingType Class](db7c8da2-260f-94b7-990e-f32ad234ec87.htm)
[Autodesk.Revit.DB.Analysis Namespace](958e2e12-587d-f188-5d7b-f13d7dbfdf48.htm)