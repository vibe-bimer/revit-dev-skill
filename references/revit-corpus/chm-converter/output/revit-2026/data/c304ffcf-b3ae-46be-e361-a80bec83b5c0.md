# ServerPath Class

---  
This class represents a path to a Revit Server location, rather than a location on disk or a network drive. 
SystemObject [Autodesk.Revit.DBModelPath](40a84c72-e4b8-72ac-2f71-3216c66a11b3.htm) Autodesk.Revit.DBServerPath
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public class ServerPath : ModelPath
    
    Public Class ServerPath
    	Inherits ModelPath
    
    public ref class ServerPath : public ModelPath
    
    type ServerPath = 
        class
            inherit ModelPath
        end
The ServerPath type exposes the following members.
| Name| Description  
---|---|---  
![Public method](../icons/pubMethod.gif)| [ServerPath](3d9c4f6b-8e64-33c1-c0e4-2a1157b823d9.htm)|  Constructs a ServerPath   
Top
| Name| Description  
---|---|---  
![Public property](../icons/pubProperty.gif)| [CentralServerPath](8026990f-77d8-af4e-dc6b-1d249a5dbb1f.htm)|  The path to the location of the central Revit server or cloud. (Inherited from [ModelPath](40a84c72-e4b8-72ac-2f71-3216c66a11b3.htm))  
![Public property](../icons/pubProperty.gif)| [CloudPath](56b05e52-a4dd-6aa4-2d7a-686436e36fb5.htm)|  Whether this path represents a path on an Autodesk server such as BIM360. (Inherited from [ModelPath](40a84c72-e4b8-72ac-2f71-3216c66a11b3.htm))  
![Public property](../icons/pubProperty.gif)| [Empty](d613467b-1030-6444-d4e4-0c6ae1ec76d3.htm)|  Whether this path is empty (Inherited from [ModelPath](40a84c72-e4b8-72ac-2f71-3216c66a11b3.htm))  
![Public property](../icons/pubProperty.gif)| [IsValidObject](eddecc61-5a2b-d53c-1ec5-b9596cd05d07.htm)|  Specifies whether the .NET object represents a valid Revit entity. (Inherited from [ModelPath](40a84c72-e4b8-72ac-2f71-3216c66a11b3.htm))  
![Public property](../icons/pubProperty.gif)| [Region](c7f2f531-559f-1a77-437b-f47e20d5844f.htm)|  The region of the BIM 360 Docs or Autodesk Docs account and project which contains this model. (Inherited from [ModelPath](40a84c72-e4b8-72ac-2f71-3216c66a11b3.htm))  
![Public property](../icons/pubProperty.gif)| [ServerPath](4f4b7343-c95a-a887-9dc8-6665839175b4.htm)|  Whether this path is a server path (as opposed to a file path or cloud path) (Inherited from [ModelPath](40a84c72-e4b8-72ac-2f71-3216c66a11b3.htm))  
Top
| Name| Description  
---|---|---  
![Public method](../icons/pubMethod.gif)| [Compare](124239c3-5494-a3eb-fa80-6b6503f1a08a.htm)|  Compares this ModelPath with another (Inherited from [ModelPath](40a84c72-e4b8-72ac-2f71-3216c66a11b3.htm))  
![Public method](../icons/pubMethod.gif)| [Dispose](3d01a5ed-3c9f-fde4-4899-5a6ef76f7199.htm)| (Inherited from [ModelPath](40a84c72-e4b8-72ac-2f71-3216c66a11b3.htm))  
![Public method](../icons/pubMethod.gif)| Equals| Determines whether the specified object is equal to the current object.(Inherited from Object)  
![Public method](../icons/pubMethod.gif)| GetHashCode| Serves as the default hash function.(Inherited from Object)  
![Public method](../icons/pubMethod.gif)| [GetModelGUID](e28d439d-1399-8a88-7345-109252fb68e6.htm)|  A GUID identifying the Revit cloud model. (Inherited from [ModelPath](40a84c72-e4b8-72ac-2f71-3216c66a11b3.htm))  
![Public method](../icons/pubMethod.gif)| [GetProjectGUID](81e80465-626a-5659-5383-25fef813c270.htm)|  A GUID identifying the BIM 360 Docs or Autodesk Docs project to which the model is associated. (Inherited from [ModelPath](40a84c72-e4b8-72ac-2f71-3216c66a11b3.htm))  
![Public method](../icons/pubMethod.gif)| GetType| Gets the Type of the current instance.(Inherited from Object)  
![Public method](../icons/pubMethod.gif)| ToString| Returns a string that represents the current object.(Inherited from Object)  
Top
ServerPaths must refer to Revit models.
ServerPaths are relative to the central server location, and are of the form "RSN://{HostNodeName}/{model_path}".
The {model_path} portion is a relative path to a Revit model. For example, the following are valid server paths:
  * RSN://EXS/hospital.rvt
  * RSN://EXS.autodesk.com/Old Files/hotel2.rvt
  * RSN://EXS.autodesk.com/Old Files/Last Week/Tuesday\hotel2.rvt

The following would not be valid server paths: 
  * //EXS/Old Files/.rvt
  * EXS/hospital

#### Reference
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)