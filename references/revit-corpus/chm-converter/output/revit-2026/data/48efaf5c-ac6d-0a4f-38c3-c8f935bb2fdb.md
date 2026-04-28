# RevitServerException.GetObjectData Method

---  
Retrieves data needed to serialize the target object.
**Namespace:** [Autodesk.Revit.Exceptions](e3bbc463-dccb-6964-e8ef-697c9ed07a27.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public override void GetObjectData(
    	SerializationInfo info,
    	StreamingContext context
    )
    
    Public Overrides Sub GetObjectData ( 
    	info As SerializationInfo,
    	context As StreamingContext
    )
    
    public:
    virtual void GetObjectData(
    	SerializationInfo^ info, 
    	StreamingContext context
    ) override
    
    abstract GetObjectData : 
            info : SerializationInfo * 
            context : StreamingContext -> unit 
    override GetObjectData : 
            info : SerializationInfo * 
            context : StreamingContext -> unit 
#### Parameters
info SerializationInfo
     Data needed to serialize or deserialize the object. 
context StreamingContext
     The destination of the serialized stream. 
#### Implements
ISerializableGetObjectData(SerializationInfo, StreamingContext)
#### Reference
[RevitServerException Class](cb9f496c-f65b-7d27-0fe4-e42f80261b38.htm)
[Autodesk.Revit.Exceptions Namespace](e3bbc463-dccb-6964-e8ef-697c9ed07a27.htm)