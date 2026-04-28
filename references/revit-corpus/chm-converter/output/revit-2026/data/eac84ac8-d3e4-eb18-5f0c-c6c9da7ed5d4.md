# LossFactor.IsValidObject Property

---  
Specifies whether the .NET object represents a valid Revit entity. 
**Namespace:** [Autodesk.Revit.DB.Lighting](a6a04f07-7fd2-0a4e-12e7-01842ee6daaf.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
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
[LossFactor Class](23224470-b97a-7acc-8dbe-667086568b1c.htm)
[Autodesk.Revit.DB.Lighting Namespace](a6a04f07-7fd2-0a4e-12e7-01842ee6daaf.htm)