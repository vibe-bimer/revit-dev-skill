# IFCParameterTemplate.RemovePropertyMappingInfo(PropertySetupType, String, String) Method

---  
Removes the property mapping from the property set by name. 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public void RemovePropertyMappingInfo(
    	PropertySetupType propertySetupType,
    	string propertySetName,
    	string propertyName
    )
    
    Public Sub RemovePropertyMappingInfo ( 
    	propertySetupType As PropertySetupType,
    	propertySetName As String,
    	propertyName As String
    )
    
    public:
    void RemovePropertyMappingInfo(
    	PropertySetupType propertySetupType, 
    	String^ propertySetName, 
    	String^ propertyName
    )
    
    member RemovePropertyMappingInfo : 
            propertySetupType : PropertySetupType * 
            propertySetName : string * 
            propertyName : string -> unit 
#### Parameters
propertySetupType [PropertySetupType](fc4081d2-462c-7571-c747-4d6fa3e57e77.htm)
     The property setup type. 
propertySetName String
     The property set name. 
propertyName String
     The property name. 
Exception| Condition  
---|---  
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  A non-optional argument was null   
[ArgumentOutOfRangeException](60f148c9-ece0-a6bb-4e12-bb4a9c8c8a24.htm)|  A value passed for an enumeration argument is not a member of that enumeration   
#### Reference
[IFCParameterTemplate Class](dc942a54-38a9-2036-c82d-b7b689f3f81b.htm)
[RemovePropertyMappingInfo Overload](40809dba-ccb6-0bc4-9af4-df5d9a9a7d5f.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)