# Plane.CreateByThreePoints Method

---  
Creates a Plane object passing through three points supplied as arguments. 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public static Plane CreateByThreePoints(
    	XYZ point1,
    	XYZ point2,
    	XYZ point3
    )
    
    Public Shared Function CreateByThreePoints ( 
    	point1 As XYZ,
    	point2 As XYZ,
    	point3 As XYZ
    ) As Plane
    
    public:
    static Plane^ CreateByThreePoints(
    	XYZ^ point1, 
    	XYZ^ point2, 
    	XYZ^ point3
    )
    
    static member CreateByThreePoints : 
            point1 : XYZ * 
            point2 : XYZ * 
            point3 : XYZ -> Plane 
#### Parameters
point1 [XYZ](c2fd995c-95c0-58fb-f5de-f3246cbc5600.htm)
     First of the three points that define a unique plane. The created Plane object will pass through these points. 
point2 [XYZ](c2fd995c-95c0-58fb-f5de-f3246cbc5600.htm)
     Second of the three points that define a unique plane. 
point3 [XYZ](c2fd995c-95c0-58fb-f5de-f3246cbc5600.htm)
     Third of the three points that define a unique plane. 
#### Return Value
[Plane](6a6ee978-f114-558d-3c69-00d289aa855f.htm)
Exception| Condition  
---|---  
[ArgumentException](2e6e4206-97a8-dd4b-df5d-4269f4bb6088.htm)|  The input point lies outside of Revit design limits.   
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  A non-optional argument was null   
[ArgumentsInconsistentException](05972c68-fa6d-3a83-d720-ad84fbc4780f.htm)|  Throws if the input points do not define a unique plane. This is typically caused by points being too close to each other, or all three points being on or close to a straight line.   
The points supplied as arguments must fully define a plane: they may not lie on a straight line or be too close to each other. The points must lie within the Revit design limits. This function does not guarantee a specific parameterization of the created Plane. Use Plane.Create(Frame) to enforce a specific parameterization of the created Plane object. All three points are expected to lie within the Revit design limits [IsWithinLengthLimits(XYZ)](ac2171af-4250-8a30-faa7-4d7030d29a03.htm). 
#### Reference
[Plane Class](6a6ee978-f114-558d-3c69-00d289aa855f.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)