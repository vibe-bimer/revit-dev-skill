# DimensionType.CanHaveOrdinateDimensionSetting Method

---  
Checks whether this DimensionType can have an ordinate dimension settings. 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public bool CanHaveOrdinateDimensionSetting()
    
    Public Function CanHaveOrdinateDimensionSetting As Boolean
    
    public:
    bool CanHaveOrdinateDimensionSetting()
    
    member CanHaveOrdinateDimensionSetting : unit -> bool 
#### Return Value
Boolean True when the DimensionType is linear and the Dimension String Type parameter is ordinate, false otherwise. 
It returns true when the DimensionType is linear and when Dimension String Type parameter is set to Ordinate. 
#### Reference
[DimensionType Class](a6f6655d-3383-a0ea-670d-0bbe6d2bb964.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)