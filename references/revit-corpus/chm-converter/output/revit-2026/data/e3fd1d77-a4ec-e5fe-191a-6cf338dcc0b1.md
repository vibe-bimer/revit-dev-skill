# ExternalFileUtils.IsExternalFileReference Method

---  
Determines whether the given element represents an external file. 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public static bool IsExternalFileReference(
    	Document aDoc,
    	ElementId elemId
    )
    
    Public Shared Function IsExternalFileReference ( 
    	aDoc As Document,
    	elemId As ElementId
    ) As Boolean
    
    public:
    static bool IsExternalFileReference(
    	Document^ aDoc, 
    	ElementId^ elemId
    )
    
    static member IsExternalFileReference : 
            aDoc : Document * 
            elemId : ElementId -> bool 
#### Parameters
aDoc [Document](db03274b-a107-aa32-9034-f3e0df4bb1ec.htm)
     A Revit Document. 
elemId [ElementId](44f3f7b1-3229-3404-93c9-dc5e70337dd6.htm)
     The element to be checked for an external file reference. 
#### Return Value
Boolean True if the given element represents an external file; false otherwise. 
Exception| Condition  
---|---  
[ArgumentException](2e6e4206-97a8-dd4b-df5d-4269f4bb6088.htm)|  The element elemId does not exist in the document   
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  A non-optional argument was null   
CAD imports are not external file references, as their data is brought fully into Revit. No connection is maintained to the original file.
A link may be an external resource without being an external file.
#### Reference
[ExternalFileUtils Class](d6c4104f-ded9-29a4-2296-e1795b0da42a.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)