# ExternalResourceUIBrowseResultType Enumeration

---  
Describes the type of external resource browsing result. 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public enum ExternalResourceUIBrowseResultType
    
    Public Enumeration ExternalResourceUIBrowseResultType
    
    public enum class ExternalResourceUIBrowseResultType
    
    type ExternalResourceUIBrowseResultType
Member name| Value| Description  
---|---|---  
FolderNotFound| 1|  The specified external resource folder cannot be found by external resource server.   
ResourceNotFound| 2|  The specified external resource cannot be found by external resource server.   
Success| 0|  There is no predefined error happened during this browse operation. The DB server can store any errors itself in this case.   
This enum is used to describe the type of external resources browsing operation result ( the browsing operation include list folders and resources of an external server or a folder, or open an external resource in browsing dialog.) The meaning of each enum value: 
  * There is no predefined error happened during this browse operation. The DB server can store any errors itself in this case. 
  * FolderNotFound means the external resource folder want to browse could not be founded in external server.
  * ResourceNotFound means the external resource want to open could not be founded in external server.

#### Reference
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)