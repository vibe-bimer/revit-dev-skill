# FieldBuilder Class

---  
This class is used to create Fields in the Extensible Storage framework. 
SystemObject Autodesk.Revit.DB.ExtensibleStorageFieldBuilder
**Namespace:** [Autodesk.Revit.DB.ExtensibleStorage](79486a74-376c-9555-c873-45d5a750f051.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public class FieldBuilder : IDisposable
    
    Public Class FieldBuilder
    	Implements IDisposable
    
    public ref class FieldBuilder : IDisposable
    
    type FieldBuilder = 
        class
            interface IDisposable
        end
The FieldBuilder type exposes the following members.
| Name| Description  
---|---|---  
![Public method](../icons/pubMethod.gif)| [FieldBuilder(FieldBuilder)](ee0ee042-7252-3e7c-88e8-e0d12709497c.htm)|  Constructs a new copy of the input ESFieldBuilder object.   
![Public method](../icons/pubMethod.gif)| [FieldBuilder(Field, SchemaBuilder)](933ec291-d085-aed9-8a97-ddd5156d74e2.htm)|  Constructs a new FieldBuilder using the field and associated SchemaBuilder object.   
Top
| Name| Description  
---|---|---  
![Public property](../icons/pubProperty.gif)| [IsValidObject](b749ab6a-805c-598f-680c-7a6befc14512.htm)|  Specifies whether the .NET object represents a valid Revit entity.   
Top
| Name| Description  
---|---|---  
![Public method](../icons/pubMethod.gif)| [Dispose](04868aec-2b5b-1d9e-39ae-d534deb885f7.htm)| Releases all resources used by the FieldBuilder  
![Public method](../icons/pubMethod.gif)| Equals| Determines whether the specified object is equal to the current object.(Inherited from Object)  
![Public method](../icons/pubMethod.gif)| GetHashCode| Serves as the default hash function.(Inherited from Object)  
![Public method](../icons/pubMethod.gif)| GetType| Gets the Type of the current instance.(Inherited from Object)  
![Public method](../icons/pubMethod.gif)| [NeedsSubSchemaGUID](a528302b-2597-d7e2-4282-71c23eeba4d9.htm)|  Checks whether the SubSchema GUID needs to be explicitly specified for this field type.   
![Public method](../icons/pubMethod.gif)| [NeedsUnits](97243405-0f5b-1465-5e4c-847153e455df.htm)|  Checks whether the field type requires explicit unit conversions.   
![Public method](../icons/pubMethod.gif)| [Ready](f137ea2f-b359-b285-331b-1eb72447015a.htm)|  Checks whether the builder may be used.   
![Public method](../icons/pubMethod.gif)| [SetDocumentation](d50b90de-a117-f069-6bff-dbf10520b1e2.htm)|  Sets the documentation string for the Field.   
![Public method](../icons/pubMethod.gif)| [SetSpec](d801562b-ca4b-740f-07ed-7aa2ac336174.htm)|  Sets the spec describing the field's values.   
![Public method](../icons/pubMethod.gif)| [SetSubSchemaGUID](bac5b4c3-e3b5-a06c-c94c-4a72e074a653.htm)|  Sets the GUID of the Schema of the Entities that are intended to be stored in this field.   
![Public method](../icons/pubMethod.gif)| ToString| Returns a string that represents the current object.(Inherited from Object)  
Top
#### Reference
[Autodesk.Revit.DB.ExtensibleStorage Namespace](79486a74-376c-9555-c873-45d5a750f051.htm)