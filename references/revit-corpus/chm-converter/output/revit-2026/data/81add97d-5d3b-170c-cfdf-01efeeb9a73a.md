# TextBox.ShowImageAsButton Property

---  
Gets or sets a value that indicates if the Image set in the text box should be displayed as a clickable button.
**Namespace:** [Autodesk.Revit.UI](e86fd90a-8957-02a6-da7f-ced248966e3e.htm)**Assembly:** RevitAPIUI (in RevitAPIUI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public bool ShowImageAsButton { get; set; }
    
    Public Property ShowImageAsButton As Boolean
    	Get
    	Set
    
    public:
    property bool ShowImageAsButton {
    	bool get ();
    	void set (bool value);
    }
    
    member ShowImageAsButton : bool with get, set
#### Property Value
Boolean
If this property is true, the image will shown as a button inside the textbox. Clicking this button will trigger the EnterPressed event. The default value is false.
#### Reference
[TextBox Class](5cfff6ff-3982-e8f7-a3c8-43d93204d41a.htm)
[Autodesk.Revit.UI Namespace](e86fd90a-8957-02a6-da7f-ced248966e3e.htm)