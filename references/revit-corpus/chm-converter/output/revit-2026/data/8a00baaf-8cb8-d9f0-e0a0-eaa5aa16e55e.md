# TextRange Class

---  
An object that is used to identify a range of characters in a [FormattedText](79a92343-2342-8325-1b51-f12c4fb05481.htm). 
SystemObject Autodesk.Revit.DBTextRange
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public class TextRange : IDisposable
    
    Public Class TextRange
    	Implements IDisposable
    
    public ref class TextRange : IDisposable
    
    type TextRange = 
        class
            interface IDisposable
        end
The TextRange type exposes the following members.
| Name| Description  
---|---|---  
![Public method](../icons/pubMethod.gif)| [TextRange](bc22378b-bf4b-6535-3d32-b4a543c636fe.htm)|  Constructs a TextRange with default values for start and length.   
![Public method](../icons/pubMethod.gif)| [TextRange(TextRange)](a43af5a1-7b1d-f9a0-da1b-37f176e65bd9.htm)|  Constructs a copy of the input TextRange object.   
![Public method](../icons/pubMethod.gif)| [TextRange(Int32, Int32)](97ab00e6-9f7c-e73f-4dd8-54addfb73654.htm)|  Constructs a TextRange with input start and length.   
Top
| Name| Description  
---|---|---  
![Public property](../icons/pubProperty.gif)| [End](ed1acbf0-2425-31bd-99e2-1f596cc57fd2.htm)|  The index of the first character after the end of the range   
![Public property](../icons/pubProperty.gif)| [IsValidObject](aea7c716-bcd2-ae9f-7587-adcf2fc756c4.htm)|  Specifies whether the .NET object represents a valid Revit entity.   
![Public property](../icons/pubProperty.gif)| [Length](cbb7ad17-5ea1-eefb-1bd3-65f19337a7eb.htm)|  The length of the range.   
![Public property](../icons/pubProperty.gif)| [Start](2785da77-9e08-02e3-fb2e-ad02c9d7d96f.htm)|  The start index of a range within the [FormattedText](79a92343-2342-8325-1b51-f12c4fb05481.htm).   
Top
| Name| Description  
---|---|---  
![Public method](../icons/pubMethod.gif)| [Dispose](7abafd9d-c703-75f5-cf79-e1e4dcccf409.htm)| Releases all resources used by the TextRange  
![Public method](../icons/pubMethod.gif)| Equals| Determines whether the specified object is equal to the current object.(Inherited from Object)  
![Public method](../icons/pubMethod.gif)| GetHashCode| Serves as the default hash function.(Inherited from Object)  
![Public method](../icons/pubMethod.gif)| GetType| Gets the Type of the current instance.(Inherited from Object)  
![Public method](../icons/pubMethod.gif)| ToString| Returns a string that represents the current object.(Inherited from Object)  
Top
A TextRange consists of a start, which is a zero-based index into the text, and a length, which is the number of characters in the range. The length can be zero. 
#### Reference
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)