# OverrideGraphicSettings.SetSurfaceTransparency Method

---  
Sets the projection surface transparency. 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public OverrideGraphicSettings SetSurfaceTransparency(
    	int transparency
    )
    
    Public Function SetSurfaceTransparency ( 
    	transparency As Integer
    ) As OverrideGraphicSettings
    
    public:
    OverrideGraphicSettings^ SetSurfaceTransparency(
    	int transparency
    )
    
    member SetSurfaceTransparency : 
            transparency : int -> OverrideGraphicSettings 
#### Parameters
transparency Int32
     Value of the transparency of the projection surface (0 = opaque, 100 = fully transparent). 
#### Return Value
[OverrideGraphicSettings](eb2bd6b6-b7b2-5452-2070-2dbadb9e068a.htm) Reference to the changed object. 
Exception| Condition  
---|---  
[ArgumentException](2e6e4206-97a8-dd4b-df5d-4269f4bb6088.htm)|  Transparency must be greater than 0 and less than 100.   
#### Reference
[OverrideGraphicSettings Class](eb2bd6b6-b7b2-5452-2070-2dbadb9e068a.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)