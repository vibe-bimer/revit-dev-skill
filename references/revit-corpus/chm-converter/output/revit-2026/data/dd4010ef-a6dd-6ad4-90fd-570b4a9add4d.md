# RibbonItem.ToolTipImage Property

---  
The image to show as a part of the button extended tooltip 
**Namespace:** [Autodesk.Revit.UI](e86fd90a-8957-02a6-da7f-ced248966e3e.htm)**Assembly:** RevitAPIUI (in RevitAPIUI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public ImageSource ToolTipImage { get; set; }
    
    Public Property ToolTipImage As ImageSource
    	Get
    	Set
    
    public:
    property ImageSource^ ToolTipImage {
    	ImageSource^ get ();
    	void set (ImageSource^ value);
    }
    
    member ToolTipImage : ImageSource with get, set
#### Property Value
ImageSource
Shown when the cursor hovers over the command. If neither this property nor LongDescription is supplied, the button will not have an extended tooltip. Maximum height or width is 355 pixels. SplitButton and RadioButtonGroup cannot display the tooltip set by this method. SplitButton shows the current PushButton tooltip and RadioButtonGroup has no tooltip.
#### Reference
[RibbonItem Class](79225f03-1633-3722-15b0-752c91a3740d.htm)
[Autodesk.Revit.UI Namespace](e86fd90a-8957-02a6-da7f-ced248966e3e.htm)