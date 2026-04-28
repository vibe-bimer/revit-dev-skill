# LinkLoadResult.IsCodeSuccess Method

---  
Check if load result code signifies success. 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public static bool IsCodeSuccess(
    	LinkLoadResultType code
    )
    
    Public Shared Function IsCodeSuccess ( 
    	code As LinkLoadResultType
    ) As Boolean
    
    public:
    static bool IsCodeSuccess(
    	LinkLoadResultType code
    )
    
    static member IsCodeSuccess : 
            code : LinkLoadResultType -> bool 
#### Parameters
code [LinkLoadResultType](11b095e1-24d9-91b9-ae2e-004f67c94d6e.htm)
     Load result code to be verified. 
#### Return Value
Boolean True if LinkLoadResultType argument is success, false otherwise. 
Exception| Condition  
---|---  
[ArgumentOutOfRangeException](60f148c9-ece0-a6bb-4e12-bb4a9c8c8a24.htm)|  A value passed for an enumeration argument is not a member of that enumeration   
#### Reference
[LinkLoadResult Class](f846bfb0-b047-9332-567f-75ae880d8359.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)