# TextRange.Length Property

---  
The length of the range. 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public int Length { get; set; }
    
    Public Property Length As Integer
    	Get
    	Set
    
    public:
    property int Length {
    	int get ();
    	void set (int value);
    }
    
    member Length : int with get, set
#### Property Value
Int32
Exception| Condition  
---|---  
[ArgumentOutOfRangeException](60f148c9-ece0-a6bb-4e12-bb4a9c8c8a24.htm)|  When setting this property: The given value for length is negative.   
#### Reference
[TextRange Class](8a00baaf-8cb8-d9f0-e0a0-eaa5aa16e55e.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)