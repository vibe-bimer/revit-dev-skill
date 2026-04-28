# PlanarFace.FaceNormal Property

---  
Normal of the planar face.
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public XYZ FaceNormal { get; }
    
    Public ReadOnly Property FaceNormal As XYZ
    	Get
    
    public:
    property XYZ^ FaceNormal {
    	XYZ^ get ();
    }
    
    member FaceNormal : XYZ with get
#### Property Value
[XYZ](c2fd995c-95c0-58fb-f5de-f3246cbc5600.htm)
This property is the "face normal" vector, and thus should return a vector consistently pointing out of the solid that this face is a boundary for (if it is a part of a solid). 
#### Reference
[PlanarFace Class](e5f08848-bd35-4b17-ac7b-ae39fd817d6d.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)