# FabricSheet.GetBendProfileWithFillets Method

---  
Returns the profile with generated fillets that defines the shape of the Fabric Sheet bending. 
**Namespace:** [Autodesk.Revit.DB.Structure](d586b341-f687-9d90-e96d-255806b7d4fc.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public CurveLoop GetBendProfileWithFillets()
    
    Public Function GetBendProfileWithFillets As CurveLoop
    
    public:
    CurveLoop^ GetBendProfileWithFillets()
    
    member GetBendProfileWithFillets : unit -> CurveLoop 
#### Return Value
[CurveLoop](84824924-cb89-9e20-de6e-3461f429dfd6.htm) The bend profile with generated fillets that defines the shape of the fabric sheet bending for bent fabric sheet, for flat fabric sheet  will be returned. 
Returned curve loop is created automatically as a result of adding fillets to bend profile. The returned profile defines the center-curve of a wire. Note that bent Fabric Sheets can have planar geometry, but flat Fabric Sheets are always planar. 
#### Reference
[FabricSheet Class](1f420619-ab30-942a-e5b6-028b7ff3889f.htm)
[Autodesk.Revit.DB.Structure Namespace](d586b341-f687-9d90-e96d-255806b7d4fc.htm)