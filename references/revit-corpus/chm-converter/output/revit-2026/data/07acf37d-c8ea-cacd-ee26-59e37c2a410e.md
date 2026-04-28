# StructuralAsset.MetalResistanceCalculationStrength Property

---  
The resistance calculation strength of the asset. 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public double MetalResistanceCalculationStrength { get; set; }
    
    Public Property MetalResistanceCalculationStrength As Double
    	Get
    	Set
    
    public:
    property double MetalResistanceCalculationStrength {
    	double get ();
    	void set (double value);
    }
    
    member MetalResistanceCalculationStrength : float with get, set
#### Property Value
Double
Exception| Condition  
---|---  
[InapplicableDataException](dc1a6d15-8923-a1fe-722a-4e976634a519.htm)|  When setting this property: the material type must be Metal to set this property.   
Applies to metal-based structural assets. 
#### Reference
[StructuralAsset Class](39c2e2ad-474e-2514-bc15-07c24a989a61.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)