# Transform.HasReflection Property

---  
The boolean value that indicates whether this transformation produces reflection.
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public bool HasReflection { get; }
    
    Public ReadOnly Property HasReflection As Boolean
    	Get
    
    public:
    property bool HasReflection {
    	bool get ();
    }
    
    member HasReflection : bool with get
#### Property Value
Boolean
Exception| Condition  
---|---  
[InvalidOperationException](9e715f03-3884-e539-4dd6-8d7545733adc.htm)|  Thrown when this transformation is not conformal and the reflection is undefined.   
Reflection transformation changes the handedness of a coordinate system. 
#### Reference
[Transform Class](58dd01c8-b3fc-7142-e4f3-c524079a282d.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)