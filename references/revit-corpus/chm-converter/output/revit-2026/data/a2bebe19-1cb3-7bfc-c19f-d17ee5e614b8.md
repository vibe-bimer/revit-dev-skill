# FabricationConfiguration.GetMaterialByGUID Method

---  
Gets the material identifier by its GUID. 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public int GetMaterialByGUID(
    	Guid materialGUID
    )
    
    Public Function GetMaterialByGUID ( 
    	materialGUID As Guid
    ) As Integer
    
    public:
    int GetMaterialByGUID(
    	Guid materialGUID
    )
    
    member GetMaterialByGUID : 
            materialGUID : Guid -> int 
#### Parameters
materialGUID Guid
     The material GUID. 
#### Return Value
Int32 The material identifier. Returns 0 if not found. 
#### Reference
[FabricationConfiguration Class](f7094105-2acf-03f1-7a7f-82dd24087a17.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)