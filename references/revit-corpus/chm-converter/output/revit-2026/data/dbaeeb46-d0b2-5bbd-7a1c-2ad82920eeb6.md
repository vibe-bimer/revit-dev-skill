# PointRelativeToPoint Class

---  
Represents a point placed relative to another point.
SystemObject [Autodesk.Revit.DBPointElementReference](f1548185-45ba-c1c6-8bde-4f9bb0669026.htm) Autodesk.Revit.DBPointRelativeToPoint
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public class PointRelativeToPoint : PointElementReference
    
    Public Class PointRelativeToPoint
    	Inherits PointElementReference
    
    public ref class PointRelativeToPoint : public PointElementReference
    
    type PointRelativeToPoint = 
        class
            inherit PointElementReference
        end
The PointRelativeToPoint type exposes the following members.
| Name| Description  
---|---|---  
![Public method](../icons/pubMethod.gif)| Equals| Determines whether the specified object is equal to the current object.(Inherited from Object)  
![Public method](../icons/pubMethod.gif)| GetHashCode| Serves as the default hash function.(Inherited from Object)  
![Public method](../icons/pubMethod.gif)| [GetHostPointReference](609ac007-f461-f815-2ec1-2c4e14a457ba.htm)| Get a copy of the host point reference.  
![Public method](../icons/pubMethod.gif)| GetType| Gets the Type of the current instance.(Inherited from Object)  
![Public method](../icons/pubMethod.gif)| [SetHostPointReference](68d232d3-f67f-4c19-79e6-e7ceed0407f2.htm)| Change the host point reference.  
![Public method](../icons/pubMethod.gif)| ToString| Returns a string that represents the current object.(Inherited from Object)  
Top
For this release, the only workflow supported is that the point is placed coincident with the referenced host (a relative transformation of Transform.Identity). 
#### Reference
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)