# Wire.Create Method

---  
**Namespace:** [Autodesk.Revit.DB.Electrical](212a1314-7843-2c6c-3322-363127e4059f.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public static Wire Create(
    	Document document,
    	ElementId wireTypeId,
    	ElementId viewId,
    	WiringType wiringType,
    	IList<XYZ> vertexPoints,
    	Connector startConnectorTo,
    	Connector endConnectorTo
    )
    
    Public Shared Function Create ( 
    	document As Document,
    	wireTypeId As ElementId,
    	viewId As ElementId,
    	wiringType As WiringType,
    	vertexPoints As IList(Of XYZ),
    	startConnectorTo As Connector,
    	endConnectorTo As Connector
    ) As Wire
    
    public:
    static Wire^ Create(
    	Document^ document, 
    	ElementId^ wireTypeId, 
    	ElementId^ viewId, 
    	WiringType wiringType, 
    	IList<XYZ^>^ vertexPoints, 
    	Connector^ startConnectorTo, 
    	Connector^ endConnectorTo
    )
    
    static member Create : 
            document : Document * 
            wireTypeId : ElementId * 
            viewId : ElementId * 
            wiringType : WiringType * 
            vertexPoints : IList<XYZ> * 
            startConnectorTo : Connector * 
            endConnectorTo : Connector -> Wire 
#### Parameters
document [Document](db03274b-a107-aa32-9034-f3e0df4bb1ec.htm)
    
wireTypeId [ElementId](44f3f7b1-3229-3404-93c9-dc5e70337dd6.htm)
    
viewId [ElementId](44f3f7b1-3229-3404-93c9-dc5e70337dd6.htm)
    
wiringType [WiringType](fb484864-f9d0-7335-1f91-d7ac587f15fb.htm)
    
vertexPoints IList[XYZ](c2fd995c-95c0-58fb-f5de-f3246cbc5600.htm)
    
startConnectorTo [Connector](11e07082-b3f2-26a1-de79-16535f44716c.htm)
    
endConnectorTo [Connector](11e07082-b3f2-26a1-de79-16535f44716c.htm)
    
#### Return Value
[Wire](c2acf13b-0d8b-8415-9682-ae64eb5e5895.htm)
#### Reference
[Wire Class](c2acf13b-0d8b-8415-9682-ae64eb5e5895.htm)
[Autodesk.Revit.DB.Electrical Namespace](212a1314-7843-2c6c-3322-363127e4059f.htm)