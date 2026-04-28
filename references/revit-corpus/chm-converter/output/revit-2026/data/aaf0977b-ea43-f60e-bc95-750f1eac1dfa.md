# VertexIndexPairArray.Item Property

---  
Gets or sets a VertexIndex pair at a specified index within the array.
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public virtual VertexIndexPair this[
    	int index
    ] { get; set; }
    
    Public Overridable Property Item ( 
    	index As Integer
    ) As VertexIndexPair
    	Get
    	Set
    
    public:
    virtual property VertexIndexPair^ Item[int index] {
    	VertexIndexPair^ get (int index);
    	void set (int index, VertexIndexPair^ value);
    }
    
    abstract Item : VertexIndexPair with get, set
    override Item : VertexIndexPair with get, set
#### Parameters
index Int32
    The index of the VertexIndex pair to be set or retrieved.
#### Return Value
[VertexIndexPair](8deec2c5-1ef4-5951-6745-259b6514c46b.htm)Returns the VertexIndex pair at the specified index.
#### Reference
[VertexIndexPairArray Class](ebf9396b-0cd1-2510-3957-80cd871a9db7.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)