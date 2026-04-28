# SplitButton.IsSynchronizedWithCurrentItem Property

---  
Indicates whether the top PushButton on the SplitButton changes based on the CurrentButton property. 
**Namespace:** [Autodesk.Revit.UI](e86fd90a-8957-02a6-da7f-ced248966e3e.htm)**Assembly:** RevitAPIUI (in RevitAPIUI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public bool IsSynchronizedWithCurrentItem { get; set; }
    
    Public Property IsSynchronizedWithCurrentItem As Boolean
    	Get
    	Set
    
    public:
    property bool IsSynchronizedWithCurrentItem {
    	bool get ();
    	void set (bool value);
    }
    
    member IsSynchronizedWithCurrentItem : bool with get, set
#### Property Value
Boolean
If this property is true the SplitButton uses the current PushButton's properties to display the image, text, tooltip, etc. and executes the current item when clicked. If it is false the first listed PushButton in the GetItems() return is shown, and executes this PushButton when clicked. If it is false the items in drop down list can only be executed by opening the drop down list and clicking an item in the list. The default value is true. 
#### Reference
[SplitButton Class](5301a4c6-ba0f-1f66-61c3-8d0909ab0fe6.htm)
[Autodesk.Revit.UI Namespace](e86fd90a-8957-02a6-da7f-ced248966e3e.htm)