# HVACLoadSpaceType.Create Method

---  
Creates a space type. 
**Namespace:** [Autodesk.Revit.DB.Analysis](958e2e12-587d-f188-5d7b-f13d7dbfdf48.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public static HVACLoadSpaceType Create(
    	Document document,
    	string name
    )
    
    Public Shared Function Create ( 
    	document As Document,
    	name As String
    ) As HVACLoadSpaceType
    
    public:
    static HVACLoadSpaceType^ Create(
    	Document^ document, 
    	String^ name
    )
    
    static member Create : 
            document : Document * 
            name : string -> HVACLoadSpaceType 
#### Parameters
document [Document](db03274b-a107-aa32-9034-f3e0df4bb1ec.htm)
     The document. 
name String
     The space type name. 
#### Return Value
[HVACLoadSpaceType](0fcf26fe-8542-3dc7-b9e8-8c89eda1a48d.htm) The new space type. 
Exception| Condition  
---|---  
[ArgumentException](2e6e4206-97a8-dd4b-df5d-4269f4bb6088.htm)|  name is an empty string or contains only whitespace. -or- name cannot include prohibited characters, such as "{, }, [, ], |, ;, less-than sign, greater-than sign, ?, `, ~". -or- The given value for name is already in use as a space type name.   
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  A non-optional argument was null   
#### Reference
[HVACLoadSpaceType Class](0fcf26fe-8542-3dc7-b9e8-8c89eda1a48d.htm)
[Autodesk.Revit.DB.Analysis Namespace](958e2e12-587d-f188-5d7b-f13d7dbfdf48.htm)