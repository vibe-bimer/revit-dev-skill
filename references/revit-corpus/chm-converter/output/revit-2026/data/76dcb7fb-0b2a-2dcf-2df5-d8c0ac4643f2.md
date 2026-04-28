# FormatOptions.IsValidSymbol(ForgeTypeId) Method

---  
Checks whether a symbol is valid for the unit in this FormatOptions. 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public bool IsValidSymbol(
    	ForgeTypeId symbolTypeId
    )
    
    Public Function IsValidSymbol ( 
    	symbolTypeId As ForgeTypeId
    ) As Boolean
    
    public:
    bool IsValidSymbol(
    	ForgeTypeId^ symbolTypeId
    )
    
    member IsValidSymbol : 
            symbolTypeId : ForgeTypeId -> bool 
#### Parameters
symbolTypeId [ForgeTypeId](d9fcf276-9566-de83-2b0b-d89b65ccc8af.htm)
     Identifier of the symbol to check. 
#### Return Value
Boolean True if the symbol is valid, false otherwise. 
Exception| Condition  
---|---  
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  A non-optional argument was null   
[InvalidOperationException](9e715f03-3884-e539-4dd6-8d7545733adc.htm)|  UseDefault is true in this FormatOptions.   
#### Reference
[FormatOptions Class](70f78207-1109-3906-8e67-cd27df1f0ae8.htm)
[IsValidSymbol Overload](a965e857-57c6-25cb-1622-f2d80425e999.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)