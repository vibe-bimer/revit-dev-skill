# WireMaterialType.Name Property

---  
Get name of wire material type. 
**Namespace:** [Autodesk.Revit.DB.Electrical](212a1314-7843-2c6c-3322-363127e4059f.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public override string Name { set; }
    
    Public Overrides WriteOnly Property Name As String
    	Set
    
    public:
    virtual property String^ Name {
    	void set (String^ value) override;
    }
    
    abstract Name : string with set
    override Name : string with set
#### Property Value
String
Exception| Condition  
---|---  
[InvalidOperationException](9e715f03-3884-e539-4dd6-8d7545733adc.htm)| Set name can't be supported.  
#### Reference
[WireMaterialType Class](3d05ec79-0289-c6d1-2a13-7e6b07241afd.htm)
[Autodesk.Revit.DB.Electrical Namespace](212a1314-7843-2c6c-3322-363127e4059f.htm)