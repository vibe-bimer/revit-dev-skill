# Transaction Class

---  
Transactions are context-like objects that guard any changes made to a Revit model 
SystemObject Autodesk.Revit.DBTransaction
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public class Transaction : IDisposable
    
    Public Class Transaction
    	Implements IDisposable
    
    public ref class Transaction : IDisposable
    
    type Transaction = 
        class
            interface IDisposable
        end
The Transaction type exposes the following members.
| Name| Description  
---|---|---  
![Public method](../icons/pubMethod.gif)| [Transaction(Document)](36a9e161-5943-3a7d-b022-a2779185d02c.htm)|  Instantiates a transaction object.   
![Public method](../icons/pubMethod.gif)| [Transaction(Document, String)](8ac32652-a440-7f01-81b8-d6a7f2dc7791.htm)|  Instantiates a transaction object   
Top
| Name| Description  
---|---|---  
![Public property](../icons/pubProperty.gif)| [IsValidObject](80f24fab-a66b-7bf9-949c-1fbaa360c79d.htm)|  Specifies whether the .NET object represents a valid Revit entity.   
Top
| Name| Description  
---|---|---  
![Public method](../icons/pubMethod.gif)| [Commit](32714010-7138-f64f-8fde-a310354448e3.htm)|  Commits all changes made to the model during the transaction.   
![Public method](../icons/pubMethod.gif)| [Commit(FailureHandlingOptions)](9e9983d1-bd0d-b476-2dc4-021c56eb2bd7.htm)|  Commits all changes made to the model during the transaction.   
![Public method](../icons/pubMethod.gif)| [Dispose](58d38d85-06cb-58ad-3631-8c2301240c94.htm)| Releases all resources used by the Transaction  
![Public method](../icons/pubMethod.gif)| Equals| Determines whether the specified object is equal to the current object.(Inherited from Object)  
![Public method](../icons/pubMethod.gif)| [GetFailureHandlingOptions](f306f808-a753-1585-18ef-57d65e76fad4.htm)|  Returns the current failure handling options.   
![Public method](../icons/pubMethod.gif)| GetHashCode| Serves as the default hash function.(Inherited from Object)  
![Public method](../icons/pubMethod.gif)| [GetName](efc9e55a-1457-db92-66ec-84fcfc688552.htm)|  Returns the transaction's name.   
![Public method](../icons/pubMethod.gif)| [GetStatus](fdf98941-eee4-d8af-e3f7-5b6c7ccc3c74.htm)|  Returns the current status of the transaction.   
![Public method](../icons/pubMethod.gif)| GetType| Gets the Type of the current instance.(Inherited from Object)  
![Public method](../icons/pubMethod.gif)| [HasEnded](0287f338-0d0c-aff2-c75b-0aefe452969d.htm)|  Determines whether the transaction has ended already.   
![Public method](../icons/pubMethod.gif)| [HasStarted](425a8103-a11b-4c45-f002-0e7bc602d074.htm)|  Determines whether the transaction has been started yet.   
![Public method](../icons/pubMethod.gif)| [RollBack](bd1e69e9-961e-1c07-f70a-a29b90c6eb97.htm)|  Rolls back all changes made to the model during the transaction.   
![Public method](../icons/pubMethod.gif)| [RollBack(FailureHandlingOptions)](d99de9ee-168e-a114-1255-0cea9f317efb.htm)|  Rolls back all changes made to the model during the transaction.   
![Public method](../icons/pubMethod.gif)| [SetFailureHandlingOptions](1e913cca-f75b-8dfb-b172-5a04f3732b85.htm)|  Sets options for handling failures to be used when the transaction is being committed or rolled back.   
![Public method](../icons/pubMethod.gif)| [SetName](c0283e7f-d261-6016-724c-31ae5cde96a7.htm)|  Sets the transaction's name.   
![Public method](../icons/pubMethod.gif)| [Start](1146fa87-127d-c432-0f51-79a5eb102031.htm)|  Starts the transaction.   
![Public method](../icons/pubMethod.gif)| [Start(String)](5fb266f4-5eca-049f-6a30-f3ed76687409.htm)|  Starts the transaction with an assigned name.   
![Public method](../icons/pubMethod.gif)| ToString| Returns a string that represents the current object.(Inherited from Object)  
Top
Any change to a document can only be made while there is an active transaction open for that document. Changes do not become part of the document until the active transaction is [committed](32714010-7138-f64f-8fde-a310354448e3.htm). Consequently, all changes made in a transaction can be [rolled back](bd1e69e9-961e-1c07-f70a-a29b90c6eb97.htm) either explicitly or implicitly by the transaction's destructor.
A document can have only one transaction open at any given time.
Transactions cannot be started when the document is in read-only mode, either permanently or temporarily. See the Document class methods IsReadOnly and IsModifiable for more details.
Transactions in linked documents are not permitted, for linked documents are not allowed to be modified.
If a transaction was started and not finished yet by the time the Transaction object is about to be disposed, the default destructor will roll it back automatically, thus all changes made to the document while this transaction was open will be discarded. It is not recommended to rely on this default behavior though. Instead, it is advised to always call either [Commit](32714010-7138-f64f-8fde-a310354448e3.htm) or [RollBack](bd1e69e9-961e-1c07-f70a-a29b90c6eb97.htm) explicitly before the transaction object gets disposed. Please note that unless invoked explicitly the actual destruction of an object in managed code might not happen until the object is collected by the garbage collector.
#### Reference
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)