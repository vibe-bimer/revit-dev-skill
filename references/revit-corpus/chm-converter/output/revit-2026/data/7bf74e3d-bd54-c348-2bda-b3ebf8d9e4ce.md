# HermiteSplineTangents.EndTangent Property

---  
The tangent vector at the end of the curve. 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public XYZ EndTangent { get; set; }
    
    Public Property EndTangent As XYZ
    	Get
    	Set
    
    public:
    property XYZ^ EndTangent {
    	XYZ^ get ();
    	void set (XYZ^ value);
    }
    
    member EndTangent : XYZ with get, set
#### Property Value
[XYZ](c2fd995c-95c0-58fb-f5de-f3246cbc5600.htm) This must be a nomalized unit vector. 
Exception| Condition  
---|---  
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  When setting this property: A non-optional argument was null   
[ArgumentOutOfRangeException](60f148c9-ece0-a6bb-4e12-bb4a9c8c8a24.htm)|  When setting this property: endTangent has zero length.   
[InapplicableDataException](dc1a6d15-8923-a1fe-722a-4e976634a519.htm)|  The end tangent value is not set.   
#### Reference
[HermiteSplineTangents Class](b77a59cc-229c-52c4-5bc4-94670f5d3571.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)