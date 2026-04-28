# DetailCurveArrayIterator Class

---  
An iterator to a array.
SystemObject [Autodesk.Revit.DBAPIObject](beb86ef5-39ad-3f0d-0cd9-0c929387a2bb.htm) Autodesk.Revit.DBDetailCurveArrayIterator
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public abstract class DetailCurveArrayIterator : APIObject, 
    	IEnumerator
    
    Public MustInherit Class DetailCurveArrayIterator
    	Inherits APIObject
    	Implements IEnumerator
    
    public ref class DetailCurveArrayIterator abstract : public APIObject, 
    	IEnumerator
    
    [<AbstractClassAttribute>]
    type DetailCurveArrayIterator = 
        class
            inherit APIObject
            interface IEnumerator
        end
The DetailCurveArrayIterator type exposes the following members.
| Name| Description  
---|---|---  
![Public method](../icons/pubMethod.gif)| [DetailCurveArrayIterator](ba40f774-3c8d-b430-80e9-a03ed219c5c4.htm)| For Internal Use Only.  
Top
| Name| Description  
---|---|---  
![Public property](../icons/pubProperty.gif)| [Current](b97affd1-b1dd-00ee-b3fb-bc02c3ba67f7.htm)| Retrieves the item that is the current focus of the iterator.  
![Public property](../icons/pubProperty.gif)| [IsReadOnly](d516bcd2-a3fd-a578-58f6-f1add979bd07.htm)| Identifies if the object is read-only or modifiable.(Inherited from [APIObject](beb86ef5-39ad-3f0d-0cd9-0c929387a2bb.htm))  
Top
| Name| Description  
---|---|---  
![Public method](../icons/pubMethod.gif)| [Dispose](7c03212a-b587-1c89-3912-efea0d2619c5.htm)| Causes the object to release immediately any resources it may be utilizing.(Inherited from [APIObject](beb86ef5-39ad-3f0d-0cd9-0c929387a2bb.htm))  
![Public method](../icons/pubMethod.gif)| Equals| Determines whether the specified object is equal to the current object.(Inherited from Object)  
![Public method](../icons/pubMethod.gif)| GetHashCode| Serves as the default hash function.(Inherited from Object)  
![Public method](../icons/pubMethod.gif)| GetType| Gets the Type of the current instance.(Inherited from Object)  
![Public method](../icons/pubMethod.gif)| [MoveNext](29297560-59a9-d591-dddc-364131fcbeb5.htm)| Move the iterator one item forward.  
![Public method](../icons/pubMethod.gif)| [Reset](7962ea29-2421-5bbf-f50c-d56480fea5cb.htm)| Bring the iterator back to the start of the array.  
![Public method](../icons/pubMethod.gif)| ToString| Returns a string that represents the current object.(Inherited from Object)  
Top
#### Reference
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)