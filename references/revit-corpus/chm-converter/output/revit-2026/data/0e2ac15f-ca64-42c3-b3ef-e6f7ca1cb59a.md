# CentralModelException Class

---  
The base class for exceptions that are common to both file-based and server-based central models or specific to just file-based central models.
SystemObject SystemException [Autodesk.Revit.ExceptionsApplicationException](05012a96-16ea-ace7-6115-b45406dacead.htm) Autodesk.Revit.ExceptionsCentralModelException More
**Namespace:** [Autodesk.Revit.Exceptions](e3bbc463-dccb-6964-e8ef-697c9ed07a27.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    [SerializableAttribute]
    public class CentralModelException : ApplicationException
    
    <SerializableAttribute>
    Public Class CentralModelException
    	Inherits ApplicationException
    
    [SerializableAttribute]
    public ref class CentralModelException : public ApplicationException
    
    [<SerializableAttribute>]
    type CentralModelException = 
        class
            inherit ApplicationException
        end
The CentralModelException type exposes the following members.
| Name| Description  
---|---|---  
![Public property](../icons/pubProperty.gif)| Data| Gets a collection of key/value pairs that provide additional user-defined information about the exception.(Inherited from Exception)  
![Public property](../icons/pubProperty.gif)| [FunctionId](84bd650f-9f87-dccb-4dd4-b23ca890b8b9.htm)| The information of the function throwing the exception.(Inherited from [ApplicationException](05012a96-16ea-ace7-6115-b45406dacead.htm))  
![Public property](../icons/pubProperty.gif)| HelpLink| Gets or sets a link to the help file associated with this exception.(Inherited from Exception)  
![Public property](../icons/pubProperty.gif)| HResult| Gets or sets HRESULT, a coded numerical value that is assigned to a specific exception.(Inherited from Exception)  
![Public property](../icons/pubProperty.gif)| InnerException| Gets the Exception instance that caused the current exception.(Inherited from Exception)  
![Public property](../icons/pubProperty.gif)| Message| Gets a message that describes the current exception.(Inherited from Exception)  
![Public property](../icons/pubProperty.gif)| Source| Gets or sets the name of the application or the object that causes the error.(Inherited from Exception)  
![Public property](../icons/pubProperty.gif)| StackTrace| Gets a string representation of the immediate frames on the call stack.(Inherited from Exception)  
![Public property](../icons/pubProperty.gif)| TargetSite| Gets the method that throws the current exception.(Inherited from Exception)  
Top
| Name| Description  
---|---|---  
![Public method](../icons/pubMethod.gif)| Equals| Determines whether the specified object is equal to the current object.(Inherited from Object)  
![Public method](../icons/pubMethod.gif)| GetBaseException| When overridden in a derived class, returns the Exception that is the root cause of one or more subsequent exceptions.(Inherited from Exception)  
![Public method](../icons/pubMethod.gif)| GetHashCode| Serves as the default hash function.(Inherited from Object)  
![Public method](../icons/pubMethod.gif)| [GetObjectData](3f70774d-39db-827d-1571-ed5dfd5de9f1.htm)| Retrieves data needed to serialize the target object.(Overrides [ApplicationExceptionGetObjectData(SerializationInfo, StreamingContext)](7d12871e-63b5-bee1-e68d-e9b5565e7bb6.htm))  
![Public method](../icons/pubMethod.gif)| GetType| Gets the runtime type of the current instance.(Inherited from Exception)  
![Public method](../icons/pubMethod.gif)| ToString| Creates and returns a string representation of the current exception.(Inherited from Exception)  
Top
#### Reference
[Autodesk.Revit.Exceptions Namespace](e3bbc463-dccb-6964-e8ef-697c9ed07a27.htm)
SystemObject SystemException [Autodesk.Revit.ExceptionsApplicationException](05012a96-16ea-ace7-6115-b45406dacead.htm) Autodesk.Revit.ExceptionsCentralModelException [Autodesk.Revit.ExceptionsCentralFileCommunicationException](20094e4f-8326-8378-e5bc-452341d131c2.htm) [Autodesk.Revit.ExceptionsCentralModelAccessDeniedException](3e38b7b1-1ee8-c7f0-6cdd-bacf67bf61f4.htm) [Autodesk.Revit.ExceptionsCentralModelAlreadyExistsException](2ffb2cbc-6ab4-c486-b683-96483f33df78.htm) [Autodesk.Revit.ExceptionsCentralModelContentionException](ad511076-c435-23c1-5720-1205c4ed28b9.htm) [Autodesk.Revit.ExceptionsCentralModelVersionArchivedException](9b54c5a2-22f3-ac30-3efd-7ef80adff6ea.htm) [Autodesk.Revit.ExceptionsCheckoutElementsRequestTooLargeException](61162ab4-01c4-cf01-d307-fc45c19ad63d.htm) [Autodesk.Revit.ExceptionsOutdatedDirectlyOpenedCentralException](d38fd86b-6281-788d-bf20-6b896da2fbbb.htm) [Autodesk.Revit.ExceptionsServerModelCorruptedException](4f007451-514c-33a6-4ba5-9a1957f501f2.htm)