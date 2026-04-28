# IExportContextBase.OnPolyline Method

---  
This method is called when a Polyline is being output. 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    RenderNodeAction OnPolyline(
    	PolylineNode node
    )
    
    Function OnPolyline ( 
    	node As PolylineNode
    ) As RenderNodeAction
    
    RenderNodeAction OnPolyline(
    	PolylineNode^ node
    )
    
    abstract OnPolyline : 
            node : PolylineNode -> RenderNodeAction 
#### Parameters
node [PolylineNode](d0d38779-f0a4-e975-e71d-c8e7026cadfd.htm)
     An output node that represents a Polyline. 
#### Return Value
[RenderNodeAction](39f98799-628b-8d65-765c-ca86949ce7ed.htm) Return RenderNodeAction.Proceed if you wish to receive tessellated geometry (polyline segments) for this polyline, or otherwise return RenderNodeAction.Skip. 
Note for 2D export: if the export is performed for the view in non-Wireframe display style tesselated geometry will be output regardless of the return value.
Note that this method is invoked only if the custom exporter was set up to include geometric objects in the output stream. See [IncludeGeometricObjects](2ce1075e-380e-01e7-6459-b7467c2a2414.htm) for mode details. 
Note for 2D export: if the export is performed for the view in non-Wireframe display style this method will be called regardless of whether the object will be eventially output, i.e. even if it's occluded by another element.
#### Reference
[IExportContextBase Interface](6691ecd5-a88a-1f58-7a71-a8f6233b6c51.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)