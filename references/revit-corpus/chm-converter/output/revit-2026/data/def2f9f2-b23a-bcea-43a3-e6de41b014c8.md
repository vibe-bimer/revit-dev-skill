# Element.BoundingBox Property

---  
Retrieves a box that circumscribes all geometry of the element.
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public BoundingBoxXYZ this[
    	View A_0
    ] { get; }
    
    Public ReadOnly Property BoundingBox ( 
    	A_0 As View
    ) As BoundingBoxXYZ
    	Get
    
    public:
    property BoundingBoxXYZ^ BoundingBox[View^ A_0] {
    	BoundingBoxXYZ^ get (View^ A_0);
    }
    
    member BoundingBox : BoundingBoxXYZ with get
#### Parameters
A_0 [View](fb92a4e7-f3a7-ef14-e631-342179b18de9.htm)
    
#### Property Value
[BoundingBoxXYZ](3c452286-57b1-40e2-2795-c90bff1fcec2.htm)
Pass in a view to query view-specific (e.g., cut) geometry or  for model geometry. If the view box is not known or cannot be calculated, this will return the model box; if the model box is not known, this will return . The box will always be aligned to the default axes of the model coordinate system (thus no rotation should be applied to the return value). Also note that this bounding box volume may enclose geometry that is not obvious. For example, the "flip controls" that could be part of a family will be included in the computation of the bounding box even though they are not always visible in the family instance of the family.
#### Reference
[Element Class](eb16114f-69ea-f4de-0d0d-f7388b105a16.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)