# TaskDialog.AddCommandLink(TaskDialogCommandLinkId, String, String) Method

---  
Adds a CommandLink associated to the given id, displaying the indicating main and supporting content. 
**Namespace:** [Autodesk.Revit.UI](e86fd90a-8957-02a6-da7f-ced248966e3e.htm)**Assembly:** RevitAPIUI (in RevitAPIUI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public void AddCommandLink(
    	TaskDialogCommandLinkId id,
    	string mainContent,
    	string supportingContent
    )
    
    Public Sub AddCommandLink ( 
    	id As TaskDialogCommandLinkId,
    	mainContent As String,
    	supportingContent As String
    )
    
    public:
    void AddCommandLink(
    	TaskDialogCommandLinkId id, 
    	String^ mainContent, 
    	String^ supportingContent
    )
    
    member AddCommandLink : 
            id : TaskDialogCommandLinkId * 
            mainContent : string * 
            supportingContent : string -> unit 
#### Parameters
id [TaskDialogCommandLinkId](21d69e07-93bf-18a6-1b76-c7e917edf897.htm)
     The id of the CommandLink. This corresponds to the value returned by Show() when the link is chosen by the user. 
mainContent String
     The main content of the CommandLink. 
supportingContent String
     The main content of the CommandLink. 
Exception| Condition  
---|---  
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  Thrown when mainContent is .   
[ArgumentException](2e6e4206-97a8-dd4b-df5d-4269f4bb6088.htm)|  Thrown when mainContent is an empty string.   
[ArgumentException](2e6e4206-97a8-dd4b-df5d-4269f4bb6088.htm)|  Thrown when the mainContent contains newline characters.   
Parameter mainContent cannot contain newlines. 
If the id has already been set to the task dialog, the new CommandLink definition overrides the old one. 
CommandLinks will always be shown in the dialog in the order of their ids. 
#### Reference
[TaskDialog Class](853afb57-7455-a636-9881-61a391118c16.htm)
[AddCommandLink Overload](29d66720-13af-f1f7-0494-80c7ef6de11d.htm)
[Autodesk.Revit.UI Namespace](e86fd90a-8957-02a6-da7f-ced248966e3e.htm)