# IExternalServer.GetDescription Method

---  
Implement this method to return a description of the server. 
**Namespace:** [Autodesk.Revit.DB.ExternalService](a88f2d1d-c02f-a901-9543-44e4b5dd5fc9.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    string GetDescription()
    
    Function GetDescription As String
    
    String^ GetDescription()
    
    abstract GetDescription : unit -> string 
#### Return Value
String Description of the server. 
The purpose of this string is to describe the external server in more details than just a short name alone could do. The intended use is to show the string to the end user in UI when UI is appropriate for the corresponding external service.
Beside the requirement for it to be a non-empty string, there are no other general restrictions imposed by the External Services Framework. However, the external service may have some specific rules in place for its servers.
#### Reference
[IExternalServer Interface](91e4af0b-59c0-d640-107a-eebc4d99fa76.htm)
[Autodesk.Revit.DB.ExternalService Namespace](a88f2d1d-c02f-a901-9543-44e4b5dd5fc9.htm)