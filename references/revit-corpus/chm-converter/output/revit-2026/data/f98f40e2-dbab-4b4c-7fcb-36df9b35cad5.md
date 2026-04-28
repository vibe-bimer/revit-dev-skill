# IFCImportOptions Class

---  
IFC Import options. 
SystemObject Autodesk.Revit.DB.IFCIFCImportOptions
**Namespace:** [Autodesk.Revit.DB.IFC](b823fafb-1ba1-896b-4097-142c2817ce74.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public class IFCImportOptions : IDisposable
    
    Public Class IFCImportOptions
    	Implements IDisposable
    
    public ref class IFCImportOptions : IDisposable
    
    type IFCImportOptions = 
        class
            interface IDisposable
        end
The IFCImportOptions type exposes the following members.
| Name| Description  
---|---|---  
![Public method](../icons/pubMethod.gif)| [IFCImportOptions](303d5cc5-8885-e5ad-fd84-304abda7ee5b.htm)|  Constructs a new IFCImportOptions using default settings.   
Top
| Name| Description  
---|---|---  
![Public property](../icons/pubProperty.gif)| [Action](070af608-cb1e-43d5-f3ca-6d53150f9dbb.htm)|  The action of the import.   
![Public property](../icons/pubProperty.gif)| [AutocorrectOffAxisLines](7c134ff4-e2e3-c74e-e828-079963d773a8.htm)|  Enable or disable correcting lines that are slight off-axis.   
![Public property](../icons/pubProperty.gif)| [AutoJoin](abf3e142-3f21-9161-e799-7a6b6e3c30b0.htm)|  Enable or disable auto-join at the end of import.   
![Public property](../icons/pubProperty.gif)| [CreateLinkInstanceOnly](47219405-9a1f-3e60-1c1c-bc88586d487e.htm)|  Determines whether to create a linked symbol element or not.   
![Public property](../icons/pubProperty.gif)| [ForceImport](f9fcc2e6-4e4e-94bd-2646-801f7f487612.htm)|  Force the IFC file to be imported regardless of an existing corresponding Revit file.   
![Public property](../icons/pubProperty.gif)| [Intent](6200e560-88d8-d10d-0cf9-ceb18ca15f3f.htm)|  The intent of the import.   
![Public property](../icons/pubProperty.gif)| [IsValidObject](a4e4a737-c53c-62e5-a9c2-c424f1f80951.htm)|  Specifies whether the .NET object represents a valid Revit entity.   
![Public property](../icons/pubProperty.gif)| [LinkOrientation](6eeeeb82-c769-ac1e-ea46-e4cb320df9f1.htm)|  The orientation of the Linked IFC File in the Host Document.   
![Public property](../icons/pubProperty.gif)| [LinkPosition](e1eee09c-2f35-e140-beb8-8f367fd336f5.htm)|  The position of the Linked IFC File in the Host Document.   
![Public property](../icons/pubProperty.gif)| [RevitLinkFileName](34cbbeb3-4be9-42c9-bc0c-9e411c2d3184.htm)|  The full path of the intermediate Revit file created during a previous link action. This is used during "Reload From" to determine the path to the previous generated Revit file.   
Top
| Name| Description  
---|---|---  
![Public method](../icons/pubMethod.gif)| [Dispose](fc622f9f-c5df-7755-e519-71d663b2ae40.htm)| Releases all resources used by the IFCImportOptions  
![Public method](../icons/pubMethod.gif)| Equals| Determines whether the specified object is equal to the current object.(Inherited from Object)  
![Public method](../icons/pubMethod.gif)| [GetConversionData](e4cd397e-8e29-ca75-4a92-ab8efd557ea1.htm)|  Get the data used in the creation of the associated Revit file for an IFC link operation, if it exists.   
![Public method](../icons/pubMethod.gif)| [GetExtraOptions](b47a34ec-ea49-7f3d-ce78-782222abf96e.htm)|  Get the list of extra options to be passed into the importer. Each entry in the map is a pair of option name and value.   
![Public method](../icons/pubMethod.gif)| GetHashCode| Serves as the default hash function.(Inherited from Object)  
![Public method](../icons/pubMethod.gif)| GetType| Gets the Type of the current instance.(Inherited from Object)  
![Public method](../icons/pubMethod.gif)| [SetExtraOptions](a2800b08-bb26-a9c7-0cdf-c995c9e2be63.htm)|   
![Public method](../icons/pubMethod.gif)| ToString| Returns a string that represents the current object.(Inherited from Object)  
Top
#### Reference
[Autodesk.Revit.DB.IFC Namespace](b823fafb-1ba1-896b-4097-142c2817ce74.htm)