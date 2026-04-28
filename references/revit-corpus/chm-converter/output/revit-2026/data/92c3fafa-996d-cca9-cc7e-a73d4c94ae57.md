# RebarShapeSegmentEndReferenceType Enumeration

---  
A choice of two reference points for one end of a constraint driving the length of a RebarShapeSegment. 
**Namespace:** [Autodesk.Revit.DB.Structure](d586b341-f687-9d90-e96d-255806b7d4fc.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public enum RebarShapeSegmentEndReferenceType
    
    Public Enumeration RebarShapeSegmentEndReferenceType
    
    public enum class RebarShapeSegmentEndReferenceType
    
    type RebarShapeSegmentEndReferenceType
Member name| Value| Description  
---|---|---  
Exterior| 1|  Refers to the farthest point on the arc of the bend. Assuming the bend is 90 degrees or more, an Exterior constraint will be longer than a Straight constraint by an amount equal to the bend radius.   
Straight| 0|  Refers to the end of the straight part of the segment: the point where the bend begins.   
The RebarShapeSegmentEndReferenceType of a constraint is meaningful only when the bend is [right](176a9649-853e-f173-c108-d6722fcd5b61.htm) or [obtuse](176a9649-853e-f173-c108-d6722fcd5b61.htm). If the bend is [acute](176a9649-853e-f173-c108-d6722fcd5b61.htm), the reference type is ignored. 
#### Reference
[Autodesk.Revit.DB.Structure Namespace](d586b341-f687-9d90-e96d-255806b7d4fc.htm)