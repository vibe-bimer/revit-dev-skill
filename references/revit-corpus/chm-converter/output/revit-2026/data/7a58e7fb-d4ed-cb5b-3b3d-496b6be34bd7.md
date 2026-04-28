# IExternalResourceUIServer.GetDBServerId Method

---  
Implement this method to return the id of the server which is associated with this UI server. 
**Namespace:** [Autodesk.Revit.UI](e86fd90a-8957-02a6-da7f-ced248966e3e.htm)**Assembly:** RevitAPIUI (in RevitAPIUI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    Guid GetDBServerId()
    
    Function GetDBServerId As Guid
    
    Guid GetDBServerId()
    
    abstract GetDBServerId : unit -> Guid 
#### Return Value
Guid The id of the associated DB server. 
If there's no DB server associated with this UI server, an empty GUID value will be returned. 
#### Reference
[IExternalResourceUIServer Interface](aee37f3f-98e9-79c6-e02d-1b07e3ffd89c.htm)
[Autodesk.Revit.UI Namespace](e86fd90a-8957-02a6-da7f-ced248966e3e.htm)