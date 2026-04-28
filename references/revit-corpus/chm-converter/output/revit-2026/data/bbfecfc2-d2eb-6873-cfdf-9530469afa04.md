# IContextMenuCreator Interface

---  
Interface class for Context Menu creation. 
**Namespace:** [Autodesk.Revit.UI](e86fd90a-8957-02a6-da7f-ced248966e3e.htm)**Assembly:** RevitAPIUI (in RevitAPIUI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public interface IContextMenuCreator
    
    Public Interface IContextMenuCreator
    
    public interface class IContextMenuCreator
    
    type IContextMenuCreator = interface end
The IContextMenuCreator type exposes the following members.
| Name| Description  
---|---|---  
![Public method](../icons/pubMethod.gif)| [BuildContextMenu](7c529d0d-2fd4-45b3-6599-4fee3b45ee9e.htm)|  Build a Context Menu.   
Top
In order to customize Autodesk Revit context menus, create a class that implements the IContextMenuCreator interface. 
An IExternalApplication can register one or more IContextMenuCreator subclasses using the RegisterContextMenu() method. 
Whenever an end user right-clicks in Canvas or ProjectBrowser, all IContextMenuCreator buildContextMenu implementations are called on by one. Each buildContextMenu implementation is passed in an empty [ContextMenu](a47515a8-389d-ac38-852f-600948ba63e6.htm) object. Depending on the active document, view and selection, you can add one or more MenuItems to the ContextMenu object. All MenuItems will be added in the end of the context menu presented to the user. 
#### Reference
[Autodesk.Revit.UI Namespace](e86fd90a-8957-02a6-da7f-ced248966e3e.htm)