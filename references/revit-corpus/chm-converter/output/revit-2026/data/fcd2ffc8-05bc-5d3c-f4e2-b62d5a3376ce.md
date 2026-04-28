# CompoundStructure.GetWidth Method

---  
The width implied by this compound structure. 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public double GetWidth()
    
    Public Function GetWidth As Double
    
    public:
    double GetWidth()
    
    member GetWidth : unit -> float 
#### Return Value
Double The width of a host object with this compound structure. 
If the structure is not vertically compound, then this is simply the sum of all layers' widths. If the structure is vertically compound, this is the width of the rectangular grid stored in the vertically compound structure. The presence of a layer with variable width has no effect on the value returned by this method. The value returned assumes that all layers have their specified width. 
#### Reference
[CompoundStructure Class](dc1a081e-8dab-565f-145d-a429098d353c.htm)
[GetWidth Overload](b131b5cc-f977-51bb-c0ab-be4a5a025b44.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)