# PlanViewRange Class

---  
This class represents the view range of a plan view or a plan region. It records the element ids of the levels which a plane is relative to and the offset of each plane from that level. 
SystemObject Autodesk.Revit.DBPlanViewRange
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public class PlanViewRange : IDisposable
    
    Public Class PlanViewRange
    	Implements IDisposable
    
    public ref class PlanViewRange : IDisposable
    
    type PlanViewRange = 
        class
            interface IDisposable
        end
The PlanViewRange type exposes the following members.
| Name| Description  
---|---|---  
![Public property](../icons/pubProperty.gif)![Static member](../icons/Static.gif)| [Current](4ced7a98-7576-a63b-f37e-97f70fd212c9.htm)|  View range for the current plane   
![Public property](../icons/pubProperty.gif)| [IsValidObject](f8b304ba-c227-9327-0f32-596735100174.htm)|  Specifies whether the .NET object represents a valid Revit entity.   
![Public property](../icons/pubProperty.gif)![Static member](../icons/Static.gif)| [LevelAbove](9c2c47f9-1fc8-addf-f6bd-dcf767efe3b8.htm)|  View range for the level above the specified plane   
![Public property](../icons/pubProperty.gif)![Static member](../icons/Static.gif)| [LevelBelow](b474e148-6212-feeb-9d1b-351937ad238c.htm)|  View range for the level below the specified plane   
![Public property](../icons/pubProperty.gif)![Static member](../icons/Static.gif)| [Unlimited](5b21cada-9846-35fa-0a1e-e661d3d916c0.htm)|  View range is unlimited   
Top
| Name| Description  
---|---|---  
![Public method](../icons/pubMethod.gif)| [Dispose](e9adce93-1f75-e82a-67de-06eb3d9100ea.htm)| Releases all resources used by the PlanViewRange  
![Public method](../icons/pubMethod.gif)| Equals| Determines whether the specified object is equal to the current object.(Inherited from Object)  
![Public method](../icons/pubMethod.gif)| GetHashCode| Serves as the default hash function.(Inherited from Object)  
![Public method](../icons/pubMethod.gif)| [GetLevelId](9c56cd0b-bd1b-47f6-b669-5870b2966c1f.htm)|  Get the element id of the level for a View Depth plane   
![Public method](../icons/pubMethod.gif)| [GetOffset](109ec4bc-f4d5-e995-bc93-92c2b498674f.htm)|  Get the offset value associated with a View Depth plane   
![Public method](../icons/pubMethod.gif)| GetType| Gets the Type of the current instance.(Inherited from Object)  
![Public method](../icons/pubMethod.gif)| [SetLevelId](ef2d4027-3b09-f62e-5507-2d39615b8b4a.htm)|  Set the level for a View Depth plane   
![Public method](../icons/pubMethod.gif)| [SetOffset](3ba94bad-a426-0f12-ba41-05f7cd0637bc.htm)|  Set the offset value associated with a View Depth plane   
![Public method](../icons/pubMethod.gif)| ToString| Returns a string that represents the current object.(Inherited from Object)  
Top
#### Reference
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)