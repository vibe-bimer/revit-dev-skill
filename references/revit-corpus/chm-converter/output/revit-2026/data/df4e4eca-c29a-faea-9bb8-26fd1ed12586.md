# RebarConstraint.GetTargetHostFaceReference Method

---  
Returns a reference to the host Element face to which the RebarConstraint is attached. The RebarConstraintType of the RebarConstraint must be 'FixedDistanceToHostFace' or 'ToCover'. Will throw exception if it's a multi target constraint. 
**Namespace:** [Autodesk.Revit.DB.Structure](d586b341-f687-9d90-e96d-255806b7d4fc.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public Reference GetTargetHostFaceReference()
    
    Public Function GetTargetHostFaceReference As Reference
    
    public:
    Reference^ GetTargetHostFaceReference()
    
    member GetTargetHostFaceReference : unit -> Reference 
#### Return Value
[Reference](d28155ae-817b-1f31-9c3f-c9c6a28acc0d.htm) Requested reference. 
Exception| Condition  
---|---  
[InvalidOperationException](9e715f03-3884-e539-4dd6-8d7545733adc.htm)|  RebarConstraint is no longer valid. -or- The RebarConstraint is not of RebarConstraintType 'FixedDistanceToHostFace' or 'ToCover'. -or- Multi target constraint. Consider using the indexed version of the method.   
#### Reference
[RebarConstraint Class](748823c8-f059-68c1-d7b5-7cfaba93a445.htm)
[GetTargetHostFaceReference Overload](ae76f8f5-0c2f-c059-fc30-5f112355affc.htm)
[Autodesk.Revit.DB.Structure Namespace](d586b341-f687-9d90-e96d-255806b7d4fc.htm)