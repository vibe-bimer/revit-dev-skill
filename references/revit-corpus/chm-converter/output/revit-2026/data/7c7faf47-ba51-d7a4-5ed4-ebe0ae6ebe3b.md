# TableSectionData.GetCellSpec Method

---  
Gets the spec describing values of a cell, if applicable. 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public ForgeTypeId GetCellSpec(
    	int nRow,
    	int nCol
    )
    
    Public Function GetCellSpec ( 
    	nRow As Integer,
    	nCol As Integer
    ) As ForgeTypeId
    
    public:
    ForgeTypeId^ GetCellSpec(
    	int nRow, 
    	int nCol
    )
    
    member GetCellSpec : 
            nRow : int * 
            nCol : int -> ForgeTypeId 
#### Parameters
nRow Int32
     The row index of the cell 
nCol Int32
     The column index of the cell 
#### Return Value
[ForgeTypeId](d9fcf276-9566-de83-2b0b-d89b65ccc8af.htm) Identifier of the spec, or empty if the cell does not contain a number with units. 
Exception| Condition  
---|---  
[ArgumentException](2e6e4206-97a8-dd4b-df5d-4269f4bb6088.htm)|  The given row number nRow is invalid. -or- The given column number nCol is invalid.   
#### Reference
[TableSectionData Class](a0e6f821-5f53-1eb0-eba1-16554b3c0dc8.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)