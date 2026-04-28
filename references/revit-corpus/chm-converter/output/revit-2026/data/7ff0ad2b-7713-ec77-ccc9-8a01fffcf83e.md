# ApplicationEntryPoint Class

---  
For Revit Macros use only.
SystemObject [Autodesk.Revit.UIUIApplication](51ca80e2-3e5f-7dd2-9d95-f210950c72ae.htm) Autodesk.Revit.UI.MacrosApplicationEntryPoint
**Namespace:** [Autodesk.Revit.UI.Macros](b95f100a-6cb5-12b3-9b2d-01bc661452db.htm)**Assembly:** RevitAPIUI (in RevitAPIUI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public abstract class ApplicationEntryPoint : UIApplication, 
    	IEntryPoint
    
    Public MustInherit Class ApplicationEntryPoint
    	Inherits UIApplication
    	Implements IEntryPoint
    
    public ref class ApplicationEntryPoint abstract : public UIApplication, 
    	IEntryPoint
    
    [<AbstractClassAttribute>]
    type ApplicationEntryPoint = 
        class
            inherit UIApplication
            interface IEntryPoint
        end
The ApplicationEntryPoint type exposes the following members.
| Name| Description  
---|---|---  
![Public method](../icons/pubMethod.gif)| [ApplicationEntryPoint](09d117e2-88dd-a571-7954-50a9d22eef38.htm)| Initializes a new instance of the ApplicationEntryPoint class  
Top
| Name| Description  
---|---|---  
![Public property](../icons/pubProperty.gif)| [ActiveAddInId](ff42e969-2daf-d436-2ded-860e87195823.htm)|  Get current active external application or external command id. (Inherited from [UIApplication](51ca80e2-3e5f-7dd2-9d95-f210950c72ae.htm))  
![Public property](../icons/pubProperty.gif)| [ActiveUIDocument](3488133d-60c2-aa7c-ab72-0d9360ff122a.htm)| Provides access to an object that represents the currently active project.(Inherited from [UIApplication](51ca80e2-3e5f-7dd2-9d95-f210950c72ae.htm))  
![Public property](../icons/pubProperty.gif)| [AddinFolder](b53d72ab-a4e6-5d4d-cd05-4a2d1f73070a.htm)|  The full path to the Revit Macros module.   
![Public property](../icons/pubProperty.gif)| [Application](ef60b8a9-75b6-a227-f991-55d73ef0c695.htm)|  Returns the database level Application represented by this UI level Application. (Inherited from [UIApplication](51ca80e2-3e5f-7dd2-9d95-f210950c72ae.htm))  
![Public property](../icons/pubProperty.gif)| [DrawingAreaExtents](f7d3b688-17bf-3652-360b-9443d23ff1c1.htm)| Get the rectangle that represents the screen pixel coordinates of drawing area. (Inherited from [UIApplication](51ca80e2-3e5f-7dd2-9d95-f210950c72ae.htm))  
![Public property](../icons/pubProperty.gif)| [IsValidObject](564c625f-fa6b-e6df-9cdb-8319f0f403b0.htm)|  Specifies whether the .NET object represents a valid Revit entity. (Inherited from [UIApplication](51ca80e2-3e5f-7dd2-9d95-f210950c72ae.htm))  
![Public property](../icons/pubProperty.gif)| [IsViewerModeActive](b5247639-12ba-784e-2683-a1954e382da8.htm)|  Determines if Revit session is in Viewer mode. (Inherited from [UIApplication](51ca80e2-3e5f-7dd2-9d95-f210950c72ae.htm))  
![Public property](../icons/pubProperty.gif)| [LoadedApplications](4f740794-5f0f-a17b-3620-3695606b5ac5.htm)|  Returns an array of successfully loaded external applications. (Inherited from [UIApplication](51ca80e2-3e5f-7dd2-9d95-f210950c72ae.htm))  
![Public property](../icons/pubProperty.gif)| [MainWindowExtents](1e99edf8-234b-b636-ce88-dde92a75e8a8.htm)| Get the rectangle that represents the screen pixel coordinates of the Revit main window. (Inherited from [UIApplication](51ca80e2-3e5f-7dd2-9d95-f210950c72ae.htm))  
![Public property](../icons/pubProperty.gif)| [MainWindowHandle](e28d23a9-6814-1e70-9943-1ee852887dae.htm)| Get the handle of the Revit main window.(Inherited from [UIApplication](51ca80e2-3e5f-7dd2-9d95-f210950c72ae.htm))  
![Public property](../icons/pubProperty.gif)| [ProductIsRS](b4b3ff0a-242a-d829-7b0d-f8a0918c9486.htm)|  Identifies if the current Revit product has an RS designation. Most add-ins will not need to use this information. (Inherited from [UIApplication](51ca80e2-3e5f-7dd2-9d95-f210950c72ae.htm))  
Top
| Name| Description  
---|---|---  
![Public method](../icons/pubMethod.gif)| [CanPostCommand](ad477369-623b-2747-9f76-f24b17aed6b4.htm)|  Identifies if the given command can be posted, using [PostCommand(RevitCommandId)](b0df464d-1733-ea9e-ac40-399fa9c9a037.htm).(Inherited from [UIApplication](51ca80e2-3e5f-7dd2-9d95-f210950c72ae.htm))  
![Public method](../icons/pubMethod.gif)| [CreateAddInCommandBinding](a9a2ddeb-f35c-de4f-55b2-83f6fdea7dae.htm)| Creates a new AddInCommandBinding.(Inherited from [UIApplication](51ca80e2-3e5f-7dd2-9d95-f210950c72ae.htm))  
![Public method](../icons/pubMethod.gif)| [CreateRibbonPanel(String)](855200bf-24a4-2d34-a716-5b70647d34ae.htm)| (Overrides [UIApplicationCreateRibbonPanel(String)](17555f25-1afe-db1a-ebd5-845a41c4b28b.htm))  
![Public method](../icons/pubMethod.gif)| [CreateRibbonPanel(String, String)](9480ac88-4c6c-899e-05d5-aeff3fcbd829.htm)| (Overrides [UIApplicationCreateRibbonPanel(String, String)](5c22d48b-59b3-2599-7c7a-83257cddf0df.htm))  
![Public method](../icons/pubMethod.gif)| [CreateRibbonPanel(Tab, String)](d2bde88f-d642-83d1-371a-736d44e7809b.htm)| (Overrides [UIApplicationCreateRibbonPanel(Tab, String)](4b622d01-661e-7bf7-a6c6-a4ca67c5e365.htm))  
![Public method](../icons/pubMethod.gif)| [CreateRibbonTab](89b8e17b-bf07-6ed4-e237-862fdd035386.htm)| (Overrides [UIApplicationCreateRibbonTab(String)](841d6694-4e2c-b75d-2d11-b39e7fda1c37.htm))  
![Public method](../icons/pubMethod.gif)| [Dispose](e6297962-5639-88c2-d673-79c8cc030757.htm)| (Inherited from [UIApplication](51ca80e2-3e5f-7dd2-9d95-f210950c72ae.htm))  
![Public method](../icons/pubMethod.gif)| Equals| Determines whether the specified object is equal to the current object.(Inherited from Object)  
![Public method](../icons/pubMethod.gif)| [FinishInitializationEO](fae6c1ae-a22b-5d80-6b13-fdd08be4a920.htm)|  For Revit Macros internal use only.  
![Public method](../icons/pubMethod.gif)| [GetDockablePane](45a7e7c9-1bd2-b7aa-27c9-4efad9882870.htm)| Gets a DockablePane object by its ID.(Inherited from [UIApplication](51ca80e2-3e5f-7dd2-9d95-f210950c72ae.htm))  
![Public method](../icons/pubMethod.gif)| GetHashCode| Serves as the default hash function.(Inherited from Object)  
![Public method](../icons/pubMethod.gif)| [GetRibbonPanels](3abcb2a7-e687-0d30-f0c4-bff2f57276de.htm)| (Overrides [UIApplicationGetRibbonPanels](a360da3d-94a3-4521-ee55-4797112da02d.htm))  
![Public method](../icons/pubMethod.gif)| [GetRibbonPanels(String)](eae8d4a1-1c9b-99a5-c7e8-01aca6f201b9.htm)| (Overrides [UIApplicationGetRibbonPanels(String)](050f1ec2-e323-a09e-610f-5e31553b39bf.htm))  
![Public method](../icons/pubMethod.gif)| [GetRibbonPanels(Tab)](3bd3fa1d-dc68-86a7-86fb-c5fe91bb9491.htm)| (Overrides [UIApplicationGetRibbonPanels(Tab)](0b079368-6f89-a359-eb7e-039ba25ac792.htm))  
![Public method](../icons/pubMethod.gif)| GetType| Gets the Type of the current instance.(Inherited from Object)  
![Public method](../icons/pubMethod.gif)| [Initialize](bc060e44-2e6c-1e29-4f64-ceb8a020d6ad.htm)|  For Revit Macros internal use only.  
![Public method](../icons/pubMethod.gif)| [LoadAddIn](d2da5644-3202-dfeb-daed-6ff046e5640c.htm)| Loads add-ins from the given manifest file. (Inherited from [UIApplication](51ca80e2-3e5f-7dd2-9d95-f210950c72ae.htm))  
![Public method](../icons/pubMethod.gif)| [LoadPackageContents](dc0790b0-44ca-2db9-30af-aec18344bf00.htm)| Loads add-ins from the given packageContents.xml file. (Inherited from [UIApplication](51ca80e2-3e5f-7dd2-9d95-f210950c72ae.htm))  
![Public method](../icons/pubMethod.gif)| [OnShutdownEO](6ab1c3be-aaf2-1fbc-48d6-5edc1c13a391.htm)|  For Revit Macros internal use only.  
![Public method](../icons/pubMethod.gif)| [OpenAndActivateDocument(String)](3b3d671d-47ec-2ed8-1818-a7c19d01884b.htm)|  Opens and activates a Revit document. (Inherited from [UIApplication](51ca80e2-3e5f-7dd2-9d95-f210950c72ae.htm))  
![Public method](../icons/pubMethod.gif)| [OpenAndActivateDocument(ModelPath, OpenOptions, Boolean)](e74b17da-9e81-900e-c8df-a63718e4e82b.htm)|  Opens and activates a Revit document, include both local document or cloud document. (Inherited from [UIApplication](51ca80e2-3e5f-7dd2-9d95-f210950c72ae.htm))  
![Public method](../icons/pubMethod.gif)| [OpenAndActivateDocument(ModelPath, OpenOptions, Boolean, IOpenFromCloudCallback)](4df0298b-b35e-c110-8643-527641980560.htm)|  Opens and activates a Revit document, include both local document or cloud document. (Inherited from [UIApplication](51ca80e2-3e5f-7dd2-9d95-f210950c72ae.htm))  
![Public method](../icons/pubMethod.gif)| [PostCommand](b0df464d-1733-ea9e-ac40-399fa9c9a037.htm)|  Posts the command to the Revit message queue to be invoked when control returns from the current API context. (Inherited from [UIApplication](51ca80e2-3e5f-7dd2-9d95-f210950c72ae.htm))  
![Public method](../icons/pubMethod.gif)| [RegisterContextMenu](9eff0601-5d26-7fdf-6fdf-30a71c129baf.htm)| Adds a new context menu creator.(Inherited from [UIApplication](51ca80e2-3e5f-7dd2-9d95-f210950c72ae.htm))  
![Public method](../icons/pubMethod.gif)| [RegisterDockablePane](8b0d1acb-838a-d11e-aa38-7d8207be8d32.htm)| Adds a new dockable pane to the Revit user interface.(Inherited from [UIApplication](51ca80e2-3e5f-7dd2-9d95-f210950c72ae.htm))  
![Public method](../icons/pubMethod.gif)| [RemoveAddInCommandBinding](71a20b47-41d4-43be-4edb-b8b14cf56962.htm)| Removes an AddInCommandBinding.(Inherited from [UIApplication](51ca80e2-3e5f-7dd2-9d95-f210950c72ae.htm))  
![Public method](../icons/pubMethod.gif)| ToString| Returns a string that represents the current object.(Inherited from Object)  
Top
| Name| Description  
---|---|---  
![Public event](../icons/pubEvent.gif)| [ApplicationClosing](61068521-c216-3ab5-9d6e-28006fcfe0ae.htm)|  Subscribe to the ApplicationClosing event to be notified when the Revit application is just about to be closed. (Inherited from [UIApplication](51ca80e2-3e5f-7dd2-9d95-f210950c72ae.htm))  
![Public event](../icons/pubEvent.gif)| [DialogBoxShowing](cb46ea4c-2b80-0ec2-063f-dda6f662948a.htm)|  Subscribe to the DialogBoxShowing event to be notified when Revit is just about to show a dialog box or a message box. (Inherited from [UIApplication](51ca80e2-3e5f-7dd2-9d95-f210950c72ae.htm))  
![Public event](../icons/pubEvent.gif)| [DisplayingOptionsDialog](7d12db51-950c-b506-f23d-19c1e58bd615.htm)|  Subscribe to the options dialog displaying event to be notified when Revit options dialog is displaying. (Inherited from [UIApplication](51ca80e2-3e5f-7dd2-9d95-f210950c72ae.htm))  
![Public event](../icons/pubEvent.gif)| [DockableFrameFocusChanged](f007d1f4-e911-60cf-3973-af1007b67ce2.htm)|  Subscribe to this event to be notified when a Revit GenericDockableFrame has gained focus or lost focus in the Revit user interface. This event is called only for API-created GenericDockableFrames. (Inherited from [UIApplication](51ca80e2-3e5f-7dd2-9d95-f210950c72ae.htm))  
![Public event](../icons/pubEvent.gif)| [DockableFrameVisibilityChanged](6ae2552a-6a6c-bc44-515d-8ca7ad7f6ae4.htm)|  Subscribe to this event to be notified when a Revit GenericDockableFrame has been shown or hidden in the Revit user interface. This event is called only for API-created GenericDockableFrames. (Inherited from [UIApplication](51ca80e2-3e5f-7dd2-9d95-f210950c72ae.htm))  
![Public event](../icons/pubEvent.gif)| [FabricationPartBrowserChanged](4b9bd1fa-925a-a5a3-af6c-d7b7b54e3ee7.htm)|  Subscribe to MEP Fabrication part browser changed event to be notified when MEP Fabrication part browser is updated. (Inherited from [UIApplication](51ca80e2-3e5f-7dd2-9d95-f210950c72ae.htm))  
![Public event](../icons/pubEvent.gif)| [FormulaEditing](ff842cc8-67a9-2c51-843d-d17767e757a8.htm)|  Subscribe to the FormulaEditing event to be notified when the edit formula button has been clicked. (Inherited from [UIApplication](51ca80e2-3e5f-7dd2-9d95-f210950c72ae.htm))  
![Public event](../icons/pubEvent.gif)| [Idling](56145d84-e948-730a-dc72-2a7b88a50a99.htm)|  Subscribe to the Idling event to be notified when Revit is not in an active tool or transaction. (Inherited from [UIApplication](51ca80e2-3e5f-7dd2-9d95-f210950c72ae.htm))  
![Public event](../icons/pubEvent.gif)| [MacroUpdated](a301f8e8-e4fa-eef8-0500-3b110a3635f1.htm)|  MacroUpdated. (Inherited from [UIApplication](51ca80e2-3e5f-7dd2-9d95-f210950c72ae.htm))  
![Public event](../icons/pubEvent.gif)| [SelectionChanged](9ac32ac2-974b-235c-ceea-5d436e5b8e59.htm)|  Subscribe to the SelectionChanged event to be notified after the selection was changed. (Inherited from [UIApplication](51ca80e2-3e5f-7dd2-9d95-f210950c72ae.htm))  
![Public event](../icons/pubEvent.gif)| [ThemeChanged](1038e6c9-bba1-d0ec-10cf-3a4fcbcc6351.htm)|  Subscribe to the ThemeChanged event to be notified after the theme was changed. (Inherited from [UIApplication](51ca80e2-3e5f-7dd2-9d95-f210950c72ae.htm))  
![Public event](../icons/pubEvent.gif)| [TransferredProjectStandards](8c9b377b-1416-01b2-91ec-5ceb04ae55b3.htm)|  Subscribe to the TransferredProjectStandards event to be notified after the scope of a Transfer Project Standards operation has been finalized. (Inherited from [UIApplication](51ca80e2-3e5f-7dd2-9d95-f210950c72ae.htm))  
![Public event](../icons/pubEvent.gif)| [TransferringProjectStandards](a7326050-7532-df52-a54a-8acd66a2a8a3.htm)|  Subscribe to the TransferringProjectStandards event to be notified before the scope of an impending Transfer Project Standards operation has been finalized in the Transfer Project Standards dialog. (Inherited from [UIApplication](51ca80e2-3e5f-7dd2-9d95-f210950c72ae.htm))  
![Public event](../icons/pubEvent.gif)| [ViewActivated](b208aae7-5cbf-21b4-b70e-af2e63ece383.htm)|  Subscribe to the ViewActivated event to be notified immediately after Revit has finished activating a view of a document. (Inherited from [UIApplication](51ca80e2-3e5f-7dd2-9d95-f210950c72ae.htm))  
![Public event](../icons/pubEvent.gif)| [ViewActivating](ee4212fa-e41d-5cb5-ddc3-e31bc42db881.htm)|  Subscribe to the ViewActivating event to be notified when Revit is just about to activate a view of a document. (Inherited from [UIApplication](51ca80e2-3e5f-7dd2-9d95-f210950c72ae.htm))  
Top
#### Reference
[Autodesk.Revit.UI.Macros Namespace](b95f100a-6cb5-12b3-9b2d-01bc661452db.htm)