# VoltageTypeSet.Erase Method

---  
Removes a specified voltage type from the set.
**Namespace:** [Autodesk.Revit.DB.Electrical](212a1314-7843-2c6c-3322-363127e4059f.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public virtual int Erase(
    	VoltageType item
    )
    
    Public Overridable Function Erase ( 
    	item As VoltageType
    ) As Integer
    
    public:
    virtual int Erase(
    	VoltageType^ item
    )
    
    abstract Erase : 
            item : VoltageType -> int 
    override Erase : 
            item : VoltageType -> int 
#### Parameters
item [VoltageType](6b462685-b825-f8f9-f218-035107f7aaf0.htm)
    The voltage type to be erased.
#### Return Value
Int32The number of voltage types that were erased from the set.
#### Reference
[VoltageTypeSet Class](3d6a14b7-0399-2ef9-8685-cbfaaf7739cf.htm)
[Autodesk.Revit.DB.Electrical Namespace](212a1314-7843-2c6c-3322-363127e4059f.htm)