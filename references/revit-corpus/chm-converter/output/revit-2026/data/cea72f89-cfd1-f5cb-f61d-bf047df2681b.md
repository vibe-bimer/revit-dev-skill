# Options.View Property

---  
The view used for geometry extraction.
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public View View { get; set; }
    
    Public Property View As View
    	Get
    	Set
    
    public:
    property View^ View {
    	View^ get ();
    	void set (View^ value);
    }
    
    member View : View with get, set
#### Property Value
[View](fb92a4e7-f3a7-ef14-e631-342179b18de9.htm)
Exception| Condition  
---|---  
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)| Thrown when setting this property with a .  
[InvalidOperationException](9e715f03-3884-e539-4dd6-8d7545733adc.htm)| Thrown when setting this property, if DetailLevel is already set. When DetailLevel is set view-specific geometry can't be extracted.  
If a view-specific version of an element exists, it will be extracted in the retrieval of geometry. Also, the detail level of the geometry will be taken from the view's detail level.
#### Reference
[Options Class](aa41fc13-9f81-836c-4271-82568ba5d7e8.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)