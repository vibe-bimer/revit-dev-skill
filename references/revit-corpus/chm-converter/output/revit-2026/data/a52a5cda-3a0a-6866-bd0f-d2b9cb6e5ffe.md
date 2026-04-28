# CustomFieldData Class

---  
A class that offer access to the information about a custom field. 
SystemObject Autodesk.Revit.DBCustomFieldData
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public class CustomFieldData : IDisposable
    
    Public Class CustomFieldData
    	Implements IDisposable
    
    public ref class CustomFieldData : IDisposable
    
    type CustomFieldData = 
        class
            interface IDisposable
        end
The CustomFieldData type exposes the following members.
| Name| Description  
---|---|---  
![Public property](../icons/pubProperty.gif)| [DefaultRowHeightOnSheet](76d96a8d-c4e1-2851-637a-a95623c391dd.htm)|  Identifies the default row height for this field.   
![Public property](../icons/pubProperty.gif)| [FieldName](eb99c50f-1be1-bffe-5939-e61c0a6a9772.htm)|  The name of this custom field.   
![Public property](../icons/pubProperty.gif)| [FieldTooltip](dd30e01e-28dc-11b9-4d46-44f5a38238b5.htm)|  The tooltip that will be shown in the schedule properties dialog for this custom field.   
![Public property](../icons/pubProperty.gif)| [IsValidObject](e64faaa7-4a8d-84a2-4c14-049b2687bc12.htm)|  Specifies whether the .NET object represents a valid Revit entity.   
Top
| Name| Description  
---|---|---  
![Public method](../icons/pubMethod.gif)| [Dispose](24f965a9-7591-4629-e013-906495d884d6.htm)| Releases all resources used by the CustomFieldData  
![Public method](../icons/pubMethod.gif)| Equals| Determines whether the specified object is equal to the current object.(Inherited from Object)  
![Public method](../icons/pubMethod.gif)| [GetCustomFieldId](581bbb81-464e-3a69-3d31-49d1891199c7.htm)|  Gets an unique identifier of the custom field.   
![Public method](../icons/pubMethod.gif)| [GetCustomFieldProperties](9de9b290-c9f0-167c-ed37-952704c046c6.htm)|  Gets an instance of [ICustomFieldProperties](c468ee3f-5627-b99b-9219-cd807539e228.htm) which represents the properties of this field.   
![Public method](../icons/pubMethod.gif)| GetHashCode| Serves as the default hash function.(Inherited from Object)  
![Public method](../icons/pubMethod.gif)| GetType| Gets the Type of the current instance.(Inherited from Object)  
![Public method](../icons/pubMethod.gif)| [SetCustomFieldProperties](a13a0167-411a-3507-99e5-cca3f44d4feb.htm)|  Sets an instance of [ICustomFieldProperties](c468ee3f-5627-b99b-9219-cd807539e228.htm) which represents the properties of this field.   
![Public method](../icons/pubMethod.gif)| ToString| Returns a string that represents the current object.(Inherited from Object)  
![Public method](../icons/pubMethod.gif)| [ValidateCustomFieldProperties](e0298fd1-9ae5-584b-3d5b-aac318d93fd0.htm)|  Validates the custom field properties.   
Top
#### Reference
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)