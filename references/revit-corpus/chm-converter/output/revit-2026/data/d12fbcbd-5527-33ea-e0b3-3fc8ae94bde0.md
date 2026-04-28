# AssetPropertyBoolean.Value Property

---  
The value of the property. 
**Namespace:** [Autodesk.Revit.DB.Visual](f5a10581-6ac2-be19-0e32-f87d05bc8b83.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public bool Value { get; set; }
    
    Public Property Value As Boolean
    	Get
    	Set
    
    public:
    property bool Value {
    	bool get ();
    	void set (bool value);
    }
    
    member Value : bool with get, set
#### Property Value
Boolean
Exception| Condition  
---|---  
[ArgumentException](2e6e4206-97a8-dd4b-df5d-4269f4bb6088.htm)|  When setting this property: The input value is invalid for this AssetPropertyBoolean property.   
[InvalidOperationException](9e715f03-3884-e539-4dd6-8d7545733adc.htm)|  When setting this property: The asset property is not editable.   
#### Reference
[AssetPropertyBoolean Class](ad822813-a51f-cf85-3252-5fe21b4d701b.htm)
[Autodesk.Revit.DB.Visual Namespace](f5a10581-6ac2-be19-0e32-f87d05bc8b83.htm)