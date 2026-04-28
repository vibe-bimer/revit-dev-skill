# PlanTopologySetIterator Class

---  
An iterator to a set of plan topology objects.
SystemObject [Autodesk.Revit.DBAPIObject](beb86ef5-39ad-3f0d-0cd9-0c929387a2bb.htm) Autodesk.Revit.DBPlanTopologySetIterator
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public abstract class PlanTopologySetIterator : APIObject, 
    	IEnumerator
    
    Public MustInherit Class PlanTopologySetIterator
    	Inherits APIObject
    	Implements IEnumerator
    
    public ref class PlanTopologySetIterator abstract : public APIObject, 
    	IEnumerator
    
    [<AbstractClassAttribute>]
    type PlanTopologySetIterator = 
        class
            inherit APIObject
            interface IEnumerator
        end
The PlanTopologySetIterator type exposes the following members.
| Name| Description  
---|---|---  
![Public method](../icons/pubMethod.gif)| [PlanTopologySetIterator](080e616b-7b8b-6c5d-3ea0-b63143875836.htm)| For Internal Use Only.  
Top
| Name| Description  
---|---|---  
![Public property](../icons/pubProperty.gif)| [Current](1521a980-c9e9-ce1d-875e-a3092c59d4ec.htm)| Retrieves the item that is the current focus of the iterator.  
![Public property](../icons/pubProperty.gif)| [IsReadOnly](d516bcd2-a3fd-a578-58f6-f1add979bd07.htm)| Identifies if the object is read-only or modifiable.(Inherited from [APIObject](beb86ef5-39ad-3f0d-0cd9-0c929387a2bb.htm))  
Top
| Name| Description  
---|---|---  
![Public method](../icons/pubMethod.gif)| [Dispose](7c03212a-b587-1c89-3912-efea0d2619c5.htm)| Causes the object to release immediately any resources it may be utilizing.(Inherited from [APIObject](beb86ef5-39ad-3f0d-0cd9-0c929387a2bb.htm))  
![Public method](../icons/pubMethod.gif)| Equals| Determines whether the specified object is equal to the current object.(Inherited from Object)  
![Public method](../icons/pubMethod.gif)| GetHashCode| Serves as the default hash function.(Inherited from Object)  
![Public method](../icons/pubMethod.gif)| GetType| Gets the Type of the current instance.(Inherited from Object)  
![Public method](../icons/pubMethod.gif)| [MoveNext](6bc47a6e-83a6-bc35-cb5d-eb85dd5673e3.htm)| Move the iterator one item forward.  
![Public method](../icons/pubMethod.gif)| [Reset](c542a6e3-778c-49e2-7f69-e43b81a9c37f.htm)| Bring the iterator back to the start of the set.  
![Public method](../icons/pubMethod.gif)| ToString| Returns a string that represents the current object.(Inherited from Object)  
Top
#### Reference
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)