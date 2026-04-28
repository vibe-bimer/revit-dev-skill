# FormatOptions.SetSymbolTypeId Method

---  
Sets the symbol that should be displayed to indicate the unit quantifying the value. 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public void SetSymbolTypeId(
    	ForgeTypeId symbolTypeId
    )
    
    Public Sub SetSymbolTypeId ( 
    	symbolTypeId As ForgeTypeId
    )
    
    public:
    void SetSymbolTypeId(
    	ForgeTypeId^ symbolTypeId
    )
    
    member SetSymbolTypeId : 
            symbolTypeId : ForgeTypeId -> unit 
#### Parameters
symbolTypeId [ForgeTypeId](d9fcf276-9566-de83-2b0b-d89b65ccc8af.htm)
     The symbol identifier. An empty identifier string indicates no symbol. 
Exception| Condition  
---|---  
[ArgumentException](2e6e4206-97a8-dd4b-df5d-4269f4bb6088.htm)|  symbolTypeId is not a valid symbol for the unit in this FormatOptions.   
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  A non-optional argument was null   
[InvalidOperationException](9e715f03-3884-e539-4dd6-8d7545733adc.htm)|  UseDefault is true in this FormatOptions.   
#### Reference
[FormatOptions Class](70f78207-1109-3906-8e67-cd27df1f0ae8.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)