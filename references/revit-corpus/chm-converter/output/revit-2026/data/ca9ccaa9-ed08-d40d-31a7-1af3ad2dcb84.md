# FileArgumentNotFoundException Class

---  
The exception that is thrown when a method received a filename as an argument and requires it to exist as a precondition.
SystemObject SystemException [Autodesk.Revit.ExceptionsApplicationException](05012a96-16ea-ace7-6115-b45406dacead.htm) [Autodesk.Revit.ExceptionsArgumentException](2e6e4206-97a8-dd4b-df5d-4269f4bb6088.htm) Autodesk.Revit.ExceptionsFileArgumentNotFoundException
**Namespace:** [Autodesk.Revit.Exceptions](e3bbc463-dccb-6964-e8ef-697c9ed07a27.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    [SerializableAttribute]
    public class FileArgumentNotFoundException : ArgumentException
    
    <SerializableAttribute>
    Public Class FileArgumentNotFoundException
    	Inherits ArgumentException
    
    [SerializableAttribute]
    public ref class FileArgumentNotFoundException : public ArgumentException
    
    [<SerializableAttribute>]
    type FileArgumentNotFoundException = 
        class
            inherit ArgumentException
        end
The FileArgumentNotFoundException type exposes the following members.
| Name| Description  
---|---|---  
![Public property](../icons/pubProperty.gif)| Data| Gets a collection of key/value pairs that provide additional user-defined information about the exception.(Inherited from Exception)  
![Public property](../icons/pubProperty.gif)| [FunctionId](84bd650f-9f87-dccb-4dd4-b23ca890b8b9.htm)| The information of the function throwing the exception.(Inherited from [ApplicationException](05012a96-16ea-ace7-6115-b45406dacead.htm))  
![Public property](../icons/pubProperty.gif)| HelpLink| Gets or sets a link to the help file associated with this exception.(Inherited from Exception)  
![Public property](../icons/pubProperty.gif)| HResult| Gets or sets HRESULT, a coded numerical value that is assigned to a specific exception.(Inherited from Exception)  
![Public property](../icons/pubProperty.gif)| InnerException| Gets the Exception instance that caused the current exception.(Inherited from Exception)  
![Public property](../icons/pubProperty.gif)| [Message](c2498b95-ccc5-95cc-d5c2-7e732615e940.htm)| Gets the error message and the parameter name, or only the error message if no parameter name is set.(Inherited from [ArgumentException](2e6e4206-97a8-dd4b-df5d-4269f4bb6088.htm))  
![Public property](../icons/pubProperty.gif)| [ParamName](cf17c2e6-aa4a-3d6a-6fd2-fad6395336df.htm)| Gets the name of the parameter that causes this exception.(Inherited from [ArgumentException](2e6e4206-97a8-dd4b-df5d-4269f4bb6088.htm))  
![Public property](../icons/pubProperty.gif)| Source| Gets or sets the name of the application or the object that causes the error.(Inherited from Exception)  
![Public property](../icons/pubProperty.gif)| StackTrace| Gets a string representation of the immediate frames on the call stack.(Inherited from Exception)  
![Public property](../icons/pubProperty.gif)| TargetSite| Gets the method that throws the current exception.(Inherited from Exception)  
Top
| Name| Description  
---|---|---  
![Public method](../icons/pubMethod.gif)| Equals| Determines whether the specified object is equal to the current object.(Inherited from Object)  
![Public method](../icons/pubMethod.gif)| GetBaseException| When overridden in a derived class, returns the Exception that is the root cause of one or more subsequent exceptions.(Inherited from Exception)  
![Public method](../icons/pubMethod.gif)| GetHashCode| Serves as the default hash function.(Inherited from Object)  
![Public method](../icons/pubMethod.gif)| [GetObjectData](43faf60c-3148-44b3-f31c-b6fdbcad6de0.htm)| Retrieves data needed to serialize the target object.(Overrides [ArgumentExceptionGetObjectData(SerializationInfo, StreamingContext)](ffd259c2-53ec-f232-02e1-135ba0a6ccfd.htm))  
![Public method](../icons/pubMethod.gif)| GetType| Gets the runtime type of the current instance.(Inherited from Exception)  
![Public method](../icons/pubMethod.gif)| ToString| Creates and returns a string representation of the current exception.(Inherited from Exception)  
Top
#### Reference
[Autodesk.Revit.Exceptions Namespace](e3bbc463-dccb-6964-e8ef-697c9ed07a27.htm)