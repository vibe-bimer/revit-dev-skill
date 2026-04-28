# SaveOptions Class

---  
This class contains options available for saving a document to disk. 
SystemObject Autodesk.Revit.DBSaveOptions
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public class SaveOptions : IDisposable
    
    Public Class SaveOptions
    	Implements IDisposable
    
    public ref class SaveOptions : IDisposable
    
    type SaveOptions = 
        class
            interface IDisposable
        end
The SaveOptions type exposes the following members.
| Name| Description  
---|---|---  
![Public method](../icons/pubMethod.gif)| [SaveOptions](37d21bdc-3655-22ba-268b-8bf66c844ed1.htm)|  Default constructor.   
Top
| Name| Description  
---|---|---  
![Public property](../icons/pubProperty.gif)| [Compact](47161d62-18cb-f258-727c-eda2f5884ee1.htm)|  Default is false: let the OS eliminate as much or as little dead data as it wants to. True: force the OS to eliminate all dead data from the file on disk.   
![Public property](../icons/pubProperty.gif)| [IsValidObject](2a8704c9-a5c5-9b56-369e-1b9090118b63.htm)|  Specifies whether the .NET object represents a valid Revit entity.   
![Public property](../icons/pubProperty.gif)| [PreviewViewId](0bd7569d-9d7e-5ac3-c783-b6db08a30c2d.htm)|  The view id that will be used to generate the preview; this id is not saved to the document's permanent settings.   
Top
| Name| Description  
---|---|---  
![Public method](../icons/pubMethod.gif)| [Dispose](24961293-2ae1-bfe8-ec1f-16f85331a5f3.htm)| Releases all resources used by the SaveOptions  
![Public method](../icons/pubMethod.gif)| Equals| Determines whether the specified object is equal to the current object.(Inherited from Object)  
![Public method](../icons/pubMethod.gif)| GetHashCode| Serves as the default hash function.(Inherited from Object)  
![Public method](../icons/pubMethod.gif)| GetType| Gets the Type of the current instance.(Inherited from Object)  
![Public method](../icons/pubMethod.gif)| ToString| Returns a string that represents the current object.(Inherited from Object)  
Top
#### Reference
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)