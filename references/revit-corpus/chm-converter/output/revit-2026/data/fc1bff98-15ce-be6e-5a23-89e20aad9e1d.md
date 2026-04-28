# ConicalSurface.Create Method

---  
Creates a conical surface defined by a local reference frame and a half angle. 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public static ConicalSurface Create(
    	Frame frameOfReference,
    	double halfAngle
    )
    
    Public Shared Function Create ( 
    	frameOfReference As Frame,
    	halfAngle As Double
    ) As ConicalSurface
    
    public:
    static ConicalSurface^ Create(
    	Frame^ frameOfReference, 
    	double halfAngle
    )
    
    static member Create : 
            frameOfReference : Frame * 
            halfAngle : float -> ConicalSurface 
#### Parameters
frameOfReference [Frame](d44b3fd1-34d0-bfd0-55f6-de24235edf2e.htm)
     frameOfReference is an orthonormal frame that defines a local coordinate system for the cone. 
  * Frame.Origin is a point on the cylinder's axis.
  * Frame.BasisZ points along the axis, while Frame.BasisX and Frame.BasisY are orthogonal to the axis. 
  * The frame may be either left-handed or right-handed (see Frame.IsRightHanded). Note that the "handedness" of the frame does not, by itself, determine the surface's orientation.

halfAngle Double
     Cone angle. Must be not 0, lesser than PI/2 and greater than -PI/2. 
#### Return Value
[ConicalSurface](bcc299b6-ff1a-7f0c-c5da-8b040a326899.htm) The created ConicalSurface. 
Exception| Condition  
---|---  
[ArgumentException](2e6e4206-97a8-dd4b-df5d-4269f4bb6088.htm)|  This Frame object may not be used as a local frame of reference. -or- The supplied value must be not 0, lesser than PI/2 and greater than -PI/2.   
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  A non-optional argument was null   
The parametric equation of the cone is S(u, v) = Frame.Origin + v*[sin(halfAngle)(cos(u)*Frame.BasisX + sin(u)*Frame.BasisY) + cos(halfAngle)*Frame.BasisZ] This implies the following facts: 
  * Frame.BasisX points from the axis point to the point on the cylinder with coordinates (0, 0).
  * Frame.BasisY points in the direction of the partial derivative dS/du at (0, 0).
  * Frame.BasisZ points in the direction of the partial derivative dS/dv at (0, 0).

Only the branch of the cone with v >= 0 should be used. 
#### Reference
[ConicalSurface Class](bcc299b6-ff1a-7f0c-c5da-8b040a326899.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)