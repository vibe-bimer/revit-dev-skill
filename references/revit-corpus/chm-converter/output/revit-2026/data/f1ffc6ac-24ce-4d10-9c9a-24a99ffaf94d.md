# AssemblyInstance.Location Property

---  
This property is used to find the physical location of the assembly instance within project.
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public override Location Location { get; }
    
    Public Overrides ReadOnly Property Location As Location
    	Get
    
    public:
    virtual property Location^ Location {
    	Location^ get () override;
    }
    
    abstract Location : Location with get
    override Location : Location with get
#### Property Value
[Location](3dbe57e5-fdea-5bf9-c715-52653f56073f.htm)
The Location property returns an object that can be used to find the location of an object within the project. Assembly instances return a point location object positioned at the center of the assembly instance.
#### Reference
[AssemblyInstance Class](4e60704c-dfe3-72b6-7892-6440503fa078.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)