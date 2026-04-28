# AnnotationMultipleAlignmentUtils Class

---  
A helper providing functionality related to elements that can be aligned to one another. An element that wants to be able to align to other alignable elements using the Multiple Alignment buttons should implement this helper class. 
SystemObject Autodesk.Revit.DBAnnotationMultipleAlignmentUtils
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public class AnnotationMultipleAlignmentUtils : IDisposable
    
    Public Class AnnotationMultipleAlignmentUtils
    	Implements IDisposable
    
    public ref class AnnotationMultipleAlignmentUtils : IDisposable
    
    type AnnotationMultipleAlignmentUtils = 
        class
            interface IDisposable
        end
The AnnotationMultipleAlignmentUtils type exposes the following members.
| Name| Description  
---|---|---  
![Public property](../icons/pubProperty.gif)| [IsValidObject](90193bfc-14d5-d50b-4c17-5ae6b69d7df3.htm)|  Specifies whether the .NET object represents a valid Revit entity.   
Top
| Name| Description  
---|---|---  
![Public method](../icons/pubMethod.gif)| [Dispose](139653a9-5109-4350-f108-7270834cc648.htm)| Releases all resources used by the AnnotationMultipleAlignmentUtils  
![Public method](../icons/pubMethod.gif)![Static member](../icons/Static.gif)| [ElementSupportsMultiAlign](93240cc0-aed8-6862-6ae6-6b374d1961b8.htm)|  Returns true if element can be aligned to other similar elements.   
![Public method](../icons/pubMethod.gif)| Equals| Determines whether the specified object is equal to the current object.(Inherited from Object)  
![Public method](../icons/pubMethod.gif)![Static member](../icons/Static.gif)| [GetAnnotationOutlineWithoutLeaders](7685ede1-c115-abbc-ea40-44af7af99c5b.htm)|  Gets the four corners of the alignable element in model space without its leaders.   
![Public method](../icons/pubMethod.gif)| GetHashCode| Serves as the default hash function.(Inherited from Object)  
![Public method](../icons/pubMethod.gif)| GetType| Gets the Type of the current instance.(Inherited from Object)  
![Public method](../icons/pubMethod.gif)![Static member](../icons/Static.gif)| [MoveWithAnchoredLeaders](286eac71-1fee-7f99-037d-3eef2f1147e4.htm)|  Moves the element while keeping the leader end points anchored.   
![Public method](../icons/pubMethod.gif)| ToString| Returns a string that represents the current object.(Inherited from Object)  
Top
#### Reference
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)