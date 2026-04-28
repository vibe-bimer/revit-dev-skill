# FilteredElementIdIterator Class

---  
An iterator to a set of element ids filtered by the settings of a FilteredElementCollector. 
SystemObject Autodesk.Revit.DBFilteredElementIdIterator
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public class FilteredElementIdIterator : IEnumerator<ElementId>
    
    Public Class FilteredElementIdIterator
    	Implements IEnumerator(Of ElementId)
    
    public ref class FilteredElementIdIterator : IEnumerator<ElementId^>
    
    type FilteredElementIdIterator = 
        class
            interface IEnumerator<ElementId>
        end
The FilteredElementIdIterator type exposes the following members.
| Name| Description  
---|---|---  
![Public property](../icons/pubProperty.gif)| [Current](d37acf89-a76e-f310-ff9e-056c5857172f.htm)| Gets the item at the current position of the iterator.   
![Protected property](../icons/protProperty.gif)| [CurrentObject](ca23ad34-a750-7156-f0c1-5295ccf4a582.htm)|   
![Public property](../icons/pubProperty.gif)| [IsValidObject](3f6d5b54-979e-fe9f-9a8d-c124fd15c411.htm)|  Specifies whether the .NET object represents a valid Revit entity.   
Top
| Name| Description  
---|---|---  
![Public method](../icons/pubMethod.gif)| [Dispose](3b640fff-8676-9a8e-d541-083e5b0ddd31.htm)| Releases all resources used by the FilteredElementIdIterator  
![Public method](../icons/pubMethod.gif)| Equals| Determines whether the specified object is equal to the current object.(Inherited from Object)  
![Public method](../icons/pubMethod.gif)| [GetCurrent](4622b4be-e533-d633-26e8-2c4ea5d63742.htm)|  The current element id found by the iterator.   
![Public method](../icons/pubMethod.gif)| GetHashCode| Serves as the default hash function.(Inherited from Object)  
![Public method](../icons/pubMethod.gif)| GetType| Gets the Type of the current instance.(Inherited from Object)  
![Public method](../icons/pubMethod.gif)| [IsDone](d97c9f2b-33a3-128b-fad4-00fba014c1a6.htm)|  Identifies if the iteration has completed.   
![Public method](../icons/pubMethod.gif)| [MoveNext](ef73f3f0-2049-2ebf-fccd-84a2c85949b7.htm)|  Increments the iterator to the next element id passing the filter.   
![Public method](../icons/pubMethod.gif)| [Reset](e478208b-3d1c-9ce1-1592-0faa8462469d.htm)|  Resets the iterator to the beginning.   
![Public method](../icons/pubMethod.gif)| ToString| Returns a string that represents the current object.(Inherited from Object)  
Top
#### Reference
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)