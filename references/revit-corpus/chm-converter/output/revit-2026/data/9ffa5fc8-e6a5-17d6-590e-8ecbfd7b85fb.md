# WorksetTable Class

---  
A table containing references to all the worksets contained in a document. 
SystemObject Autodesk.Revit.DBWorksetTable
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public class WorksetTable : IDisposable
    
    Public Class WorksetTable
    	Implements IDisposable
    
    public ref class WorksetTable : IDisposable
    
    type WorksetTable = 
        class
            interface IDisposable
        end
The WorksetTable type exposes the following members.
| Name| Description  
---|---|---  
![Public property](../icons/pubProperty.gif)| [IsValidObject](1a3e7b93-8d83-ad16-f9a4-6cefb3ea4fcf.htm)|  Specifies whether the .NET object represents a valid Revit entity.   
Top
| Name| Description  
---|---|---  
![Public method](../icons/pubMethod.gif)![Static member](../icons/Static.gif)| [CanDeleteWorkset](6a120bcb-6b51-f8c4-2f59-e21b15c31b6a.htm)|  Indicates if a workset can be deleted.   
![Public method](../icons/pubMethod.gif)![Static member](../icons/Static.gif)| [DeleteWorkset](45c1d58c-f523-26ae-acc6-7ddc3c321d4a.htm)|  Delete the specific workset.   
![Public method](../icons/pubMethod.gif)| [Dispose](ed0690b7-c537-9e6a-6e71-d8b8f0941f92.htm)| Releases all resources used by the WorksetTable  
![Public method](../icons/pubMethod.gif)| Equals| Determines whether the specified object is equal to the current object.(Inherited from Object)  
![Public method](../icons/pubMethod.gif)| [GetActiveWorksetId](4755e6d9-c31c-32cc-7cf5-aac19dc12dff.htm)|  Returns the active workset's WorksetId.   
![Public method](../icons/pubMethod.gif)| GetHashCode| Serves as the default hash function.(Inherited from Object)  
![Public method](../icons/pubMethod.gif)| GetType| Gets the Type of the current instance.(Inherited from Object)  
![Public method](../icons/pubMethod.gif)| [GetWorkset(Guid)](55244a65-68b3-0c65-1282-f3c338f052ed.htm)|  Returns the workset from a input Guid.   
![Public method](../icons/pubMethod.gif)| [GetWorkset(WorksetId)](229ca8bb-5356-2d95-1e4b-5d3557092647.htm)|  Returns the workset from a input WorksetId.   
![Public method](../icons/pubMethod.gif)![Static member](../icons/Static.gif)| [IsWorksetNameUnique](6728440e-41db-179d-2b5c-1184f8decf8d.htm)|  Checks if the given workset name is unique in the document.   
![Public method](../icons/pubMethod.gif)![Static member](../icons/Static.gif)| [RenameWorkset](aa6f8625-cf32-cad1-bf9a-eec33abab957.htm)|  Renames the workset.   
![Public method](../icons/pubMethod.gif)| [SetActiveWorksetId](9f11d796-ca5c-93d9-51e1-67cf8da9baf2.htm)|  Sets the active workset.   
![Public method](../icons/pubMethod.gif)| ToString| Returns a string that represents the current object.(Inherited from Object)  
Top
There is one WorksetTable for each document. There will be at least one default workset in the table, even if worksharing has not been enabled in the document. 
#### Reference
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)