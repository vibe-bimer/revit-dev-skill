# Connector.AssignedLossCoefficient Property

---  
The assigned loss coefficient of the connector.
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public double AssignedLossCoefficient { get; set; }
    
    Public Property AssignedLossCoefficient As Double
    	Get
    	Set
    
    public:
    property double AssignedLossCoefficient {
    	double get ();
    	void set (double value);
    }
    
    member AssignedLossCoefficient : float with get, set
#### Property Value
Double
Exception| Condition  
---|---  
[InvalidOperationException](9e715f03-3884-e539-4dd6-8d7545733adc.htm)|  Thrown when the connector's domain is not DomainHvac. Thrown when the connector is not in a family instance.   
[ArgumentException](2e6e4206-97a8-dd4b-df5d-4269f4bb6088.htm)|  Thrown when set an invalid value.   
[InvalidOperationException](9e715f03-3884-e539-4dd6-8d7545733adc.htm)|  Thrown on failure to get or set assigned loss coefficient.   
Assigned loss coefficient may be assigned for connectors of some family instances, for more information. In order to set this property, it must be mapped to a writable instance parameter in the family definition.
#### Reference
[Connector Class](11e07082-b3f2-26a1-de79-16535f44716c.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)