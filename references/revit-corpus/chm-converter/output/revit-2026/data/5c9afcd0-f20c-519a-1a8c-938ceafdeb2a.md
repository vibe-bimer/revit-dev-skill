# PartUtils.HasAssociatedParts(Document, LinkElementId) Method

---  
Checks if an element has associated parts. 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public static bool HasAssociatedParts(
    	Document hostDocument,
    	LinkElementId hostOrLinkElementId
    )
    
    Public Shared Function HasAssociatedParts ( 
    	hostDocument As Document,
    	hostOrLinkElementId As LinkElementId
    ) As Boolean
    
    public:
    static bool HasAssociatedParts(
    	Document^ hostDocument, 
    	LinkElementId^ hostOrLinkElementId
    )
    
    static member HasAssociatedParts : 
            hostDocument : Document * 
            hostOrLinkElementId : LinkElementId -> bool 
#### Parameters
hostDocument [Document](db03274b-a107-aa32-9034-f3e0df4bb1ec.htm)
     The document. 
hostOrLinkElementId [LinkElementId](6e18abde-8787-9906-8576-ab0c9c5432c6.htm)
     The element to be checked for associated Parts. 
#### Return Value
Boolean True if the element has associated Parts. 
Exception| Condition  
---|---  
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  A non-optional argument was null   
#### Reference
[PartUtils Class](a7384ccf-cd2b-9080-38d3-58b1253cd8e4.htm)
[HasAssociatedParts Overload](55cd42e2-3eca-3592-336c-197c0c525c52.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)