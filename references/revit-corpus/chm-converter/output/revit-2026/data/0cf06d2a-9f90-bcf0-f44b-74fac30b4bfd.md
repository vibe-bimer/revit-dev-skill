# PointCloudOverrideSettings.IsEqual Method

---  
Checks if the contents of two settings are equal. 
**Namespace:** [Autodesk.Revit.DB.PointClouds](5974062a-47d4-c7bb-16f2-d5dd193bd170.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public bool IsEqual(
    	PointCloudOverrideSettings other
    )
    
    Public Function IsEqual ( 
    	other As PointCloudOverrideSettings
    ) As Boolean
    
    public:
    bool IsEqual(
    	PointCloudOverrideSettings^ other
    )
    
    member IsEqual : 
            other : PointCloudOverrideSettings -> bool 
#### Parameters
other [PointCloudOverrideSettings](48196ce4-89a6-8f23-a82c-190f0113380d.htm)
     The settings to be compared. 
#### Return Value
Boolean True for equal, false otherwise. 
Exception| Condition  
---|---  
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  A non-optional argument was null   
#### Reference
[PointCloudOverrideSettings Class](48196ce4-89a6-8f23-a82c-190f0113380d.htm)
[Autodesk.Revit.DB.PointClouds Namespace](5974062a-47d4-c7bb-16f2-d5dd193bd170.htm)