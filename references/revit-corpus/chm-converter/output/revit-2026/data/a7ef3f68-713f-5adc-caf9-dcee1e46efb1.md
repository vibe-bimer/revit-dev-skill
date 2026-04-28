# DirectShapeType.SetOptions Method

---  
Sets the options to use for this DirectShapeType. 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public void SetOptions(
    	DirectShapeTypeOptions options
    )
    
    Public Sub SetOptions ( 
    	options As DirectShapeTypeOptions
    )
    
    public:
    void SetOptions(
    	DirectShapeTypeOptions^ options
    )
    
    member SetOptions : 
            options : DirectShapeTypeOptions -> unit 
#### Parameters
options [DirectShapeTypeOptions](ce6d1f15-bceb-5ad2-f3d1-d93f0447da44.htm)
     Options to use for this DirectShapeType. 
Exception| Condition  
---|---  
[ArgumentException](2e6e4206-97a8-dd4b-df5d-4269f4bb6088.htm)|  The DirectShapeTypeOptions provided are not valid for this DirectShapeType.   
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  A non-optional argument was null   
The new options take effect immediately. 
#### Reference
[DirectShapeType Class](9c7fdd8b-a899-7ba1-2a0f-ecc5e8fe85db.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)