# RebarContainerParameterManager Class

---  
Provides implementation of RebarContainer parameters overrides. 
SystemObject Autodesk.Revit.DB.StructureRebarContainerParameterManager
**Namespace:** [Autodesk.Revit.DB.Structure](d586b341-f687-9d90-e96d-255806b7d4fc.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public class RebarContainerParameterManager : IDisposable
    
    Public Class RebarContainerParameterManager
    	Implements IDisposable
    
    public ref class RebarContainerParameterManager : IDisposable
    
    type RebarContainerParameterManager = 
        class
            interface IDisposable
        end
The RebarContainerParameterManager type exposes the following members.
| Name| Description  
---|---|---  
![Public property](../icons/pubProperty.gif)| [IsValidObject](e400c49b-bdc6-3bc6-5db2-2fe16fe956bf.htm)|  Specifies whether the .NET object represents a valid Revit entity.   
Top
| Name| Description  
---|---|---  
![Public method](../icons/pubMethod.gif)| [AddOverride(ElementId, ElementId)](162cbdc9-f640-ca81-fb77-f7456993951f.htm)|  Adds an override for the given parameter as its value will be displayed for the Rebar Container element.   
![Public method](../icons/pubMethod.gif)| [AddOverride(ElementId, Double)](37cdef48-c22a-633f-7047-33f9d170f641.htm)|  Adds an override for the given parameter as its value will be displayed for the Rebar Container element.   
![Public method](../icons/pubMethod.gif)| [AddOverride(ElementId, Int32)](1a855734-c230-30ee-8d74-33617eb7bc3f.htm)|  Adds an override for the given parameter as its value will be displayed for the Rebar Container element.   
![Public method](../icons/pubMethod.gif)| [AddOverride(ElementId, String)](b9cfaccb-15c0-d12c-470a-8ec9f1419979.htm)|  Adds an override for the given parameter as its value will be displayed for the Rebar Container element.   
![Public method](../icons/pubMethod.gif)| [AddSharedParameterAsOverride](0e4551e0-d6c6-3c71-812b-8ea6a82a9ea9.htm)|  Adds a shared parameter as one of the parameter overrides stored by this Rebar Container element.   
![Public method](../icons/pubMethod.gif)| [ClearOverrides](997a68cf-1530-13a1-91d3-484beefa51a3.htm)|  Clears any overridden values from all parameters of the associated RebarContainer element.   
![Public method](../icons/pubMethod.gif)| [Dispose](37f9ed71-f3fa-9ce0-db64-aba29212386b.htm)| Releases all resources used by the RebarContainerParameterManager  
![Public method](../icons/pubMethod.gif)| Equals| Determines whether the specified object is equal to the current object.(Inherited from Object)  
![Public method](../icons/pubMethod.gif)| [GetDoubleOverrideValue](269b5ffa-a173-d34a-20ce-b3d98ca793f6.htm)|  Get the double value for an overriden parameter.   
![Public method](../icons/pubMethod.gif)| [GetElementIdOverrideValue](5c9dca6a-77dd-9631-47f8-b0f02c8ca905.htm)|  Get the ElementId value for an overriden parameter.   
![Public method](../icons/pubMethod.gif)| GetHashCode| Serves as the default hash function.(Inherited from Object)  
![Public method](../icons/pubMethod.gif)| [GetIntOverrideValue](fa4716f0-ba7b-5d2f-6005-1a6be9e4ddd3.htm)|  Get the integer value for an overriden parameter.   
![Public method](../icons/pubMethod.gif)| [GetStringOverrideValue](bdd0c7ed-421a-fc24-05d0-5cc727c4c013.htm)|  Get the string value for an overriden parameter.   
![Public method](../icons/pubMethod.gif)| GetType| Gets the Type of the current instance.(Inherited from Object)  
![Public method](../icons/pubMethod.gif)| [IsOverriddenParameterModifiable](7d3b99fe-2028-3309-52cd-a3c8d4319d08.htm)|  Checks if overridden parameter is modifiable.   
![Public method](../icons/pubMethod.gif)| [IsParameterOverridden](329a5321-cfa1-3924-e05b-6a51fcc08b81.htm)|  Checks if the parameter has an override   
![Public method](../icons/pubMethod.gif)| [IsRebarContainerParameter](f1af9db7-e66c-f8db-8526-1e52833cb830.htm)|  Checks if the parameter is a Rebar Container parameter   
![Public method](../icons/pubMethod.gif)| [RemoveOverride](936573d9-88a4-ed15-233b-6508a9c88a64.htm)|  Removes an overridden value from the given parameter.   
![Public method](../icons/pubMethod.gif)| [SetOverriddenParameterModifiable](0b91fcec-09b4-8e89-01cf-24272512395f.htm)|  Sets this overridden parameter to be modifiable.   
![Public method](../icons/pubMethod.gif)| [SetOverriddenParameterReadonly](13dfe73c-aa3c-767d-c939-45feab28cd21.htm)|  Sets this overridden parameter to be readonly.   
![Public method](../icons/pubMethod.gif)| ToString| Returns a string that represents the current object.(Inherited from Object)  
Top
When a new override is created, by default, the parameter will show the overridden value as read-only. You can control whether or not the parameter is modifiable using [SetOverriddenParameterReadonly(ElementId)](13dfe73c-aa3c-767d-c939-45feab28cd21.htm) and [SetOverriddenParameterModifiable(ElementId)](0b91fcec-09b4-8e89-01cf-24272512395f.htm).a 
#### Reference
[Autodesk.Revit.DB.Structure Namespace](d586b341-f687-9d90-e96d-255806b7d4fc.htm)