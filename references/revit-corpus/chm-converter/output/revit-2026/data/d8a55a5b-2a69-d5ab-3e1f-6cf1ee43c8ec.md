# Element.Geometry Property

---  
Retrieves the geometric representation of the element.
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public GeometryElement this[
    	Options options
    ] { get; }
    
    Public ReadOnly Property Geometry ( 
    	options As Options
    ) As GeometryElement
    	Get
    
    public:
    property GeometryElement^ Geometry[Options^ options] {
    	GeometryElement^ get (Options^ options);
    }
    
    member Geometry : GeometryElement with get
#### Parameters
options [Options](aa41fc13-9f81-836c-4271-82568ba5d7e8.htm)
    User preferences for parsing of geometry.
#### Property Value
[GeometryElement](09eaeb08-58bb-8049-8925-f3a5aa846fdc.htm)An object that provides access to the geometry of the element.
This call will retrieve 3d representation of the element.  will be returned for symbols, annotations or details. This involves extensive parsing or Revit's data structures, so try to minimize calls if performance is critical.
Geometry objects provided from this method are obtained directly from the element. When the element is changed for any reason, the geometry will be recalculated by Revit and geometry objects obtained before the change are likely to no longer be valid. If you need to preserve geometry information obtained an element even after changes to that element, you should copy the geometry objects or save the properties independently.
Although the geometry obtained from this method comes directly from the element, any attempt to modify any of the geometry objects will operate only on a disconnected copy of the original geometry object from the element. The modification will not affect the geometry of the original element from which it was obtained - to change the geometry of the element you must use methods that directly affect the geometry calculated or stored by Revit for this element.
If you require that the geometry items obtained contain valid [Reference objects](d28155ae-817b-1f31-9c3f-c9c6a28acc0d.htm), be sure to set the ComputeReferences property of the Options.
#### Reference
[Element Class](eb16114f-69ea-f4de-0d0d-f7388b105a16.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)