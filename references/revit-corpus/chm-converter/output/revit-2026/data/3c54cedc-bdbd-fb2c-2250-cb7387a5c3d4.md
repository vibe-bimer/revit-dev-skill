# ViewActivatedEventArgs Class

---  
The event arguments used by the ViewActivated event. 
SystemObject SystemEventArgs [Autodesk.Revit.DB.EventsRevitAPIEventArgs](7c98499c-e345-cfda-ef89-48eccd3c9992.htm) [Autodesk.Revit.DB.EventsRevitAPIPostEventArgs](93554f52-0145-3454-5697-3f1015e46434.htm) [Autodesk.Revit.DB.EventsRevitAPIPostDocEventArgs](7d3fba7a-5efb-6a4c-a49c-16c25f972830.htm) Autodesk.Revit.UI.EventsViewActivatedEventArgs
**Namespace:** [Autodesk.Revit.UI.Events](21d3e79a-2484-60b0-b4c6-5cf65cd96039.htm)**Assembly:** RevitAPIUI (in RevitAPIUI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public class ViewActivatedEventArgs : RevitAPIPostDocEventArgs
    
    Public Class ViewActivatedEventArgs
    	Inherits RevitAPIPostDocEventArgs
    
    public ref class ViewActivatedEventArgs : public RevitAPIPostDocEventArgs
    
    type ViewActivatedEventArgs = 
        class
            inherit RevitAPIPostDocEventArgs
        end
The ViewActivatedEventArgs type exposes the following members.
| Name| Description  
---|---|---  
![Public property](../icons/pubProperty.gif)| [Cancellable](a393138a-34b5-1724-aa69-92cef651482b.htm)|  Indicates whether an event may be cancelled by an event delegate. (Inherited from [RevitAPIEventArgs](7c98499c-e345-cfda-ef89-48eccd3c9992.htm))  
![Public property](../icons/pubProperty.gif)| [CurrentActiveView](5e105bf3-a62b-9998-f1b7-32c393f138b1.htm)|  The view that has just become active.   
![Public property](../icons/pubProperty.gif)| [Document](b0a5235e-b2b3-0a29-799c-2ef535a51909.htm)|  The document associated with the event. (Inherited from [RevitAPIPostDocEventArgs](7d3fba7a-5efb-6a4c-a49c-16c25f972830.htm))  
![Public property](../icons/pubProperty.gif)| [IsValidObject](35c0066a-b3dc-9d37-c79e-c29f90713b2d.htm)|  Specifies whether the .NET object represents a valid Revit entity. (Inherited from [RevitAPIEventArgs](7c98499c-e345-cfda-ef89-48eccd3c9992.htm))  
![Public property](../icons/pubProperty.gif)| [PreviousActiveView](1417a2d1-a1cc-8e24-7ee3-7c411d9142ca.htm)|  The previously active view.   
![Public property](../icons/pubProperty.gif)| [Status](01c1c4b6-fc91-0651-3312-4d988073433a.htm)|  Indicates whether the action associated with this event succeeded, failed, or was cancelled (by an API event handler). (Inherited from [RevitAPIPostEventArgs](93554f52-0145-3454-5697-3f1015e46434.htm))  
Top
| Name| Description  
---|---|---  
![Public method](../icons/pubMethod.gif)| [Dispose](697794d0-db4b-41ee-90a3-388296ffeefb.htm)| (Inherited from [RevitAPIEventArgs](7c98499c-e345-cfda-ef89-48eccd3c9992.htm))  
![Public method](../icons/pubMethod.gif)| Equals| Determines whether the specified object is equal to the current object.(Inherited from Object)  
![Public method](../icons/pubMethod.gif)| GetHashCode| Serves as the default hash function.(Inherited from Object)  
![Public method](../icons/pubMethod.gif)| GetType| Gets the Type of the current instance.(Inherited from Object)  
![Public method](../icons/pubMethod.gif)| [IsCancelled](5627aeaa-9d9c-dcbe-b34f-db40f1c025be.htm)|  Indicates whether the event is being cancelled. (Inherited from [RevitAPIEventArgs](7c98499c-e345-cfda-ef89-48eccd3c9992.htm))  
![Public method](../icons/pubMethod.gif)| ToString| Returns a string that represents the current object.(Inherited from Object)  
Top
#### Reference
[Autodesk.Revit.UI.Events Namespace](21d3e79a-2484-60b0-b4c6-5cf65cd96039.htm)