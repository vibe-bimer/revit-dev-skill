# ElementArray Class

---  
An array that contains element objects.
SystemObject [Autodesk.Revit.DBAPIObject](beb86ef5-39ad-3f0d-0cd9-0c929387a2bb.htm) Autodesk.Revit.DBElementArray
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public class ElementArray : APIObject, 
    	IEnumerable
    
    Public Class ElementArray
    	Inherits APIObject
    	Implements IEnumerable
    
    public ref class ElementArray : public APIObject, 
    	IEnumerable
    
    type ElementArray = 
        class
            inherit APIObject
            interface IEnumerable
        end
The ElementArray type exposes the following members.
| Name| Description  
---|---|---  
![Public method](../icons/pubMethod.gif)| [ElementArray](cfde1a4e-c606-5ed4-fb1c-220ae1a73313.htm)| Initializes a new instance of the ElementArray class  
Top
| Name| Description  
---|---|---  
![Public property](../icons/pubProperty.gif)| [IsEmpty](91b5e6fb-386a-eed2-6c65-59342a14b304.htm)| Test to see if the array is empty.  
![Public property](../icons/pubProperty.gif)| [IsReadOnly](d516bcd2-a3fd-a578-58f6-f1add979bd07.htm)| Identifies if the object is read-only or modifiable.(Inherited from [APIObject](beb86ef5-39ad-3f0d-0cd9-0c929387a2bb.htm))  
![Public property](../icons/pubProperty.gif)| [Item](b190570f-d265-4101-6a29-f5562245944b.htm)| Gets or sets an element at a specified index within the array.  
![Public property](../icons/pubProperty.gif)| [Size](9df2d645-7689-5bb8-587f-1ec6d2a28cfa.htm)| Returns the number of elements that are in the array.  
Top
| Name| Description  
---|---|---  
![Public method](../icons/pubMethod.gif)| [Append](954808b1-1a9c-ad39-50a9-0afae78b88d3.htm)| Add the element to the end of the array.  
![Public method](../icons/pubMethod.gif)| [Clear](5a1440e5-ac5f-a412-9e6f-72735fbdc22c.htm)| Removes every element from the array, rendering it empty.  
![Public method](../icons/pubMethod.gif)| [Dispose](7c03212a-b587-1c89-3912-efea0d2619c5.htm)| Causes the object to release immediately any resources it may be utilizing.(Inherited from [APIObject](beb86ef5-39ad-3f0d-0cd9-0c929387a2bb.htm))  
![Public method](../icons/pubMethod.gif)| Equals| Determines whether the specified object is equal to the current object.(Inherited from Object)  
![Public method](../icons/pubMethod.gif)| [ForwardIterator](62b1fae6-7763-674b-b012-85de805bf8d2.htm)| Retrieve a forward moving iterator to the array.  
![Public method](../icons/pubMethod.gif)| [GetEnumerator](84518dca-32a4-9146-4628-5656b411c121.htm)| Retrieve a forward moving iterator to the array.  
![Public method](../icons/pubMethod.gif)| GetHashCode| Serves as the default hash function.(Inherited from Object)  
![Public method](../icons/pubMethod.gif)| GetType| Gets the Type of the current instance.(Inherited from Object)  
![Public method](../icons/pubMethod.gif)| [Insert](8cf5a3b5-2bce-d245-6119-60e33f711fba.htm)| Insert the specified element into the array.  
![Public method](../icons/pubMethod.gif)| [ReverseIterator](f307398e-c7c1-21eb-e155-c5d535e205f2.htm)| Retrieve a backward moving iterator to the array.  
![Public method](../icons/pubMethod.gif)| ToString| Returns a string that represents the current object.(Inherited from Object)  
Top
#### Reference
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)