# ElectricalSystem.Rating Property

---  
The Rating value of the Electrical System. 
**Namespace:** [Autodesk.Revit.DB.Electrical](212a1314-7843-2c6c-3322-363127e4059f.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public double Rating { get; set; }
    
    Public Property Rating As Double
    	Get
    	Set
    
    public:
    property double Rating {
    	double get ();
    	void set (double value);
    }
    
    member Rating : float with get, set
#### Property Value
Double
Exception| Condition  
---|---  
[ArgumentException](2e6e4206-97a8-dd4b-df5d-4269f4bb6088.htm)|  When setting this property: The given value for rating is not a number -or- When setting this property: The given value for rating is not finite   
[ArgumentOutOfRangeException](60f148c9-ece0-a6bb-4e12-bb4a9c8c8a24.htm)|  When setting this property: The given value for rating must be non-negative.   
[InvalidOperationException](9e715f03-3884-e539-4dd6-8d7545733adc.htm)|  This property only available when System Type is Power!   
This property is used to retrieve the Rating value of the Electrical System. 
#### Reference
[ElectricalSystem Class](158b4be3-bbe5-11eb-cccc-788edd3a7590.htm)
[Autodesk.Revit.DB.Electrical Namespace](212a1314-7843-2c6c-3322-363127e4059f.htm)