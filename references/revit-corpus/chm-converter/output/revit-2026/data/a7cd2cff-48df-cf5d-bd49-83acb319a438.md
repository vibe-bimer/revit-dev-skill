# EffectInstance.MatchesFormat Method

---  
Tests whether the effect instance is appropriate for the given vertex format. 
**Namespace:** [Autodesk.Revit.DB.DirectContext3D](f4ba10f0-55ea-5344-173b-688405391794.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public bool MatchesFormat(
    	VertexFormat vertexFormat
    )
    
    Public Function MatchesFormat ( 
    	vertexFormat As VertexFormat
    ) As Boolean
    
    public:
    bool MatchesFormat(
    	VertexFormat^ vertexFormat
    )
    
    member MatchesFormat : 
            vertexFormat : VertexFormat -> bool 
#### Parameters
vertexFormat [VertexFormat](a946fa2b-bb1f-202c-38dc-8ae0307bedac.htm)
     A vertex format. 
#### Return Value
Boolean True if the effect instance is valid for use with the specified vertex format. 
Exception| Condition  
---|---  
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  A non-optional argument was null   
The vertex format may define vertex data that are not used by the effect instance. However, the effect instance can not reference vertex data that do not exist in the vertex format. 
#### Reference
[EffectInstance Class](45b7ef37-46b6-6cf4-2f42-c6f4055a170c.htm)
[Autodesk.Revit.DB.DirectContext3D Namespace](f4ba10f0-55ea-5344-173b-688405391794.htm)