# AlphanumericRevisionSettings.IsEqual Method

---  
Determines whether a specified AlphanumericRevisionSettings is the same as 'this'. 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public bool IsEqual(
    	AlphanumericRevisionSettings other
    )
    
    Public Function IsEqual ( 
    	other As AlphanumericRevisionSettings
    ) As Boolean
    
    public:
    bool IsEqual(
    	AlphanumericRevisionSettings^ other
    )
    
    member IsEqual : 
            other : AlphanumericRevisionSettings -> bool 
#### Parameters
other [AlphanumericRevisionSettings](ee27c0eb-9f9b-b59c-728d-24b2654a2bc2.htm)
     The AlphanumericRevisionSettings object to be compared with 'this'. 
#### Return Value
Boolean True, if two AlphanumericRevisionSettings are the same. 
Exception| Condition  
---|---  
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  A non-optional argument was null   
The two AlphanumericRevisionSettings are regarded as the same only if they have the same revision numbering sequence, and the same prefix and suffix strings. 
#### Reference
[AlphanumericRevisionSettings Class](ee27c0eb-9f9b-b59c-728d-24b2654a2bc2.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)