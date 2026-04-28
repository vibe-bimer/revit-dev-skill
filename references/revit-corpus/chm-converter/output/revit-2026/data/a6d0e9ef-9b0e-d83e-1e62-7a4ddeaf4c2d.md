# FabricationConnectorInfo.BodyConnectorId Property

---  
Fabrication body connector Id. 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public int BodyConnectorId { get; set; }
    
    Public Property BodyConnectorId As Integer
    	Get
    	Set
    
    public:
    property int BodyConnectorId {
    	int get ();
    	void set (int value);
    }
    
    member BodyConnectorId : int with get, set
#### Property Value
Int32
Exception| Condition  
---|---  
[ArgumentException](2e6e4206-97a8-dd4b-df5d-4269f4bb6088.htm)|  When setting this property: bodyConnectorId is invalid based on the shape and domain.   
[InvalidOperationException](9e715f03-3884-e539-4dd6-8d7545733adc.htm)|  When setting this property: the connector cannot be modified on an owned fabrication part. -or- When setting this property: the connector is already connected. -or- When setting this property: the fabrication part is connected to more than one item.   
A reference to the fabrication configuration connectors. Setting the connector value will also set the connector lock. A value of 0 indicates the connector is set to none. 
#### Reference
[FabricationConnectorInfo Class](5da97d87-a3f6-f239-3c5c-102d2d82f942.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)