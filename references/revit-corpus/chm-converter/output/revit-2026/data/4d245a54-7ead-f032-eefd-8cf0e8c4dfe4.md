# IndexStreamPoint.AddPoint Method

---  
Inserts a [IndexPoint](cd53f076-2011-ce3a-f92e-3b384f21b8ec.htm) into the stream and associated buffer. 
**Namespace:** [Autodesk.Revit.DB.DirectContext3D](f4ba10f0-55ea-5344-173b-688405391794.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public void AddPoint(
    	IndexPoint point
    )
    
    Public Sub AddPoint ( 
    	point As IndexPoint
    )
    
    public:
    void AddPoint(
    	IndexPoint^ point
    )
    
    member AddPoint : 
            point : IndexPoint -> unit 
#### Parameters
point [IndexPoint](cd53f076-2011-ce3a-f92e-3b384f21b8ec.htm)
     The point to be inserted. 
Exception| Condition  
---|---  
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  A non-optional argument was null   
[InvalidOperationException](9e715f03-3884-e539-4dd6-8d7545733adc.htm)|  Thrown if the associated buffer is not mapped. -or- Thrown if the associated buffer has insufficient space.   
#### Reference
[IndexStreamPoint Class](b2ab0423-2e31-d5a2-ef70-197ca1bf9687.htm)
[Autodesk.Revit.DB.DirectContext3D Namespace](f4ba10f0-55ea-5344-173b-688405391794.htm)