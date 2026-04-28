# IPointCloudAccess.GetOffset Method

---  
Implement this method to return the offset stored in the point cloud. 
**Namespace:** [Autodesk.Revit.DB.PointClouds](5974062a-47d4-c7bb-16f2-d5dd193bd170.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    XYZ GetOffset()
    
    Function GetOffset As XYZ
    
    XYZ^ GetOffset()
    
    abstract GetOffset : unit -> XYZ 
#### Return Value
[XYZ](c2fd995c-95c0-58fb-f5de-f3246cbc5600.htm) The offset vector of this point cloud's coordinate system. 
All points are assumed to be offset by the same offset vector. The offset should be expressed in the same units as used by the point coordinates (the scale conversion factor is not applied). The offset will be used by Revit if the user chooses to place an instance relative to another point cloud (the "Auto - Origin To Last Placed" placement option). 
#### Reference
[IPointCloudAccess Interface](d5e8d1d7-9375-ce6b-ff4f-6d4764c92736.htm)
[Autodesk.Revit.DB.PointClouds Namespace](5974062a-47d4-c7bb-16f2-d5dd193bd170.htm)