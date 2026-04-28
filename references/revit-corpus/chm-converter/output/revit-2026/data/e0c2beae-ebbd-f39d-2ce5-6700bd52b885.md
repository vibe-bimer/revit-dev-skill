# IExportContext2D.OnElementBegin2D Method

---  
This method marks the beginning of an element to be exported. 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    RenderNodeAction OnElementBegin2D(
    	ElementNode node
    )
    
    Function OnElementBegin2D ( 
    	node As ElementNode
    ) As RenderNodeAction
    
    RenderNodeAction OnElementBegin2D(
    	ElementNode^ node
    )
    
    abstract OnElementBegin2D : 
            node : ElementNode -> RenderNodeAction 
#### Parameters
node [ElementNode](45f8a303-c479-9d6e-c39e-7705169820c2.htm)
     Node representing the element that is about to start being exported. Contains element ID and document. 
#### Return Value
[RenderNodeAction](39f98799-628b-8d65-765c-ca86949ce7ed.htm) Return RenderNodeAction.Skip if you wish to skip exporting this element, or return RenderNodeAction.Proceed otherwise. 
For views having non-Wireframe display style, geometry of elements is output outside of view, instance and link begin/end brackets. Therefore the argument to this method is ElementNode that has both element ID and the host document. 
#### Reference
[IExportContext2D Interface](a4578846-6ecf-e354-668d-96d8ef5d1a32.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)