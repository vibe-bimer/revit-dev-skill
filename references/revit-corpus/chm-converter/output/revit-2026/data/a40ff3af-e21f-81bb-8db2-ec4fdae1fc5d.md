# IFCTransformSetter.Initialize Method

---  
Initializes the transformation in the transform setter. 
**Namespace:** [Autodesk.Revit.DB.IFC](b823fafb-1ba1-896b-4097-142c2817ce74.htm)**Assembly:** RevitAPIIFC (in RevitAPIIFC.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public void Initialize(
    	ExporterIFC exporterIFC,
    	Transform transform
    )
    
    Public Sub Initialize ( 
    	exporterIFC As ExporterIFC,
    	transform As Transform
    )
    
    public:
    void Initialize(
    	ExporterIFC^ exporterIFC, 
    	Transform^ transform
    )
    
    member Initialize : 
            exporterIFC : ExporterIFC * 
            transform : Transform -> unit 
#### Parameters
exporterIFC [ExporterIFC](c8697b81-e080-9202-14d3-ec883f951521.htm)
     The exporter. 
transform [Transform](58dd01c8-b3fc-7142-e4f3-c524079a282d.htm)
     The transform. 
Exception| Condition  
---|---  
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  A non-optional argument was null   
#### Reference
[IFCTransformSetter Class](75b9525d-3b8d-70d8-55de-a193b9eb5e76.htm)
[Autodesk.Revit.DB.IFC Namespace](b823fafb-1ba1-896b-4097-142c2817ce74.htm)