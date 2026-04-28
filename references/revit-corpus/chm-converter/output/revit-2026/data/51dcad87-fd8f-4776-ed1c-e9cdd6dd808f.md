# IFCExtrusionCreationData.IsValidObject Property

---  
Specifies whether the .NET object represents a valid Revit entity. 
**Namespace:** [Autodesk.Revit.DB.IFC](b823fafb-1ba1-896b-4097-142c2817ce74.htm)**Assembly:** RevitAPIIFC (in RevitAPIIFC.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public bool IsValidObject { get; }
    
    Public ReadOnly Property IsValidObject As Boolean
    	Get
    
    public:
    property bool IsValidObject {
    	bool get ();
    }
    
    member IsValidObject : bool with get
#### Return Value
Boolean True if the API object holds a valid Revit native object, false otherwise. 
If the corresponding Revit native object is destroyed, or creation of the corresponding object is undone, a managed API object containing it is no longer valid. API methods cannot be called on invalidated wrapper objects. 
#### Reference
[IFCExtrusionCreationData Class](9447a335-6861-0533-6896-e6ff1fd41761.htm)
[Autodesk.Revit.DB.IFC Namespace](b823fafb-1ba1-896b-4097-142c2817ce74.htm)