# ParameterValue Class

---  
A class that holds a value of a parameter element. 
SystemObject Autodesk.Revit.DBParameterValue More
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public class ParameterValue : IDisposable
    
    Public Class ParameterValue
    	Implements IDisposable
    
    public ref class ParameterValue : IDisposable
    
    type ParameterValue = 
        class
            interface IDisposable
        end
The ParameterValue type exposes the following members.
| Name| Description  
---|---|---  
![Public property](../icons/pubProperty.gif)| [IsValidObject](b3c38be8-8464-b650-b352-a917a4c13ddd.htm)|  Specifies whether the .NET object represents a valid Revit entity.   
Top
| Name| Description  
---|---|---  
![Public method](../icons/pubMethod.gif)| [Copy](d2c6a380-8e4f-42fa-f698-77181259b347.htm)|  Makes an identical copy of the given parameter value.   
![Public method](../icons/pubMethod.gif)| [Dispose](8df3f1e5-ef6e-810e-61d2-bc383fc7fb69.htm)| Releases all resources used by the ParameterValue  
![Public method](../icons/pubMethod.gif)| Equals| Determines whether the specified object is equal to the current object.(Inherited from Object)  
![Public method](../icons/pubMethod.gif)| GetHashCode| Serves as the default hash function.(Inherited from Object)  
![Public method](../icons/pubMethod.gif)| GetType| Gets the Type of the current instance.(Inherited from Object)  
![Public method](../icons/pubMethod.gif)| [IsEqual](561e8901-0ee7-2ff8-5ffa-d0397ca0b3c0.htm)|  Tests equality with another instance of the same class.   
![Public method](../icons/pubMethod.gif)| [IsSameType](b6d6c24a-28f4-f449-29ed-efba259c7054.htm)|  Tests another instance is of the same value type.   
![Public method](../icons/pubMethod.gif)| ToString| Returns a string that represents the current object.(Inherited from Object)  
Top
This is a non-instantiable base class. Classes that actually store a value of a certain type are all derived from this base class, once class per each value type. 
#### Reference
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)
SystemObject Autodesk.Revit.DBParameterValue [Autodesk.Revit.DBDoubleParameterValue](561ef32b-c3bc-3847-ef2a-27f4a011e650.htm) [Autodesk.Revit.DBElementIdParameterValue](7de25c99-4f85-ef1d-7f64-74092f963c98.htm) [Autodesk.Revit.DBIntegerParameterValue](14c16038-74bf-205b-ac93-6ffa6274c034.htm) [Autodesk.Revit.DBNullParameterValue](fe10010f-e127-7248-1f17-8c1ee0d41ea0.htm) [Autodesk.Revit.DBStringParameterValue](2f79fff4-9773-471a-83f8-5636459bdbe5.htm)