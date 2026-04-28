# View.SetSketchyLines Method

---  
Sets the sketchy lines settings for the view. 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public void SetSketchyLines(
    	ViewDisplaySketchyLines sketchyLines
    )
    
    Public Sub SetSketchyLines ( 
    	sketchyLines As ViewDisplaySketchyLines
    )
    
    public:
    void SetSketchyLines(
    	ViewDisplaySketchyLines^ sketchyLines
    )
    
    member SetSketchyLines : 
            sketchyLines : ViewDisplaySketchyLines -> unit 
#### Parameters
sketchyLines [ViewDisplaySketchyLines](c92b463b-1b59-695d-f06b-a76dacfaf2f0.htm)
     Sketchy Lines settings to set. 
Exception| Condition  
---|---  
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  A non-optional argument was null   
[InvalidOperationException](9e715f03-3884-e539-4dd6-8d7545733adc.htm)|  This view does not contain display-related properties.   
#### Reference
[View Class](fb92a4e7-f3a7-ef14-e631-342179b18de9.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)