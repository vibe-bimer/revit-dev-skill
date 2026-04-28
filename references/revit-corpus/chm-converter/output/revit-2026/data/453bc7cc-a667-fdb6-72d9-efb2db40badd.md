# MassLevelData.IsValidConceptualConstructionTypeElement Method

---  
Checks if the ElementId is an acceptable conceptual construction type ElementId for the MassLevelData (Mass Floor). 
**Namespace:** [Autodesk.Revit.DB.Analysis](958e2e12-587d-f188-5d7b-f13d7dbfdf48.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public bool IsValidConceptualConstructionTypeElement(
    	ElementId id
    )
    
    Public Function IsValidConceptualConstructionTypeElement ( 
    	id As ElementId
    ) As Boolean
    
    public:
    bool IsValidConceptualConstructionTypeElement(
    	ElementId^ id
    )
    
    member IsValidConceptualConstructionTypeElement : 
            id : ElementId -> bool 
#### Parameters
id [ElementId](44f3f7b1-3229-3404-93c9-dc5e70337dd6.htm)
     The ElementId to be checked. 
#### Return Value
Boolean True if the ElementId is an acceptable conceptual construction type ElementId, false otherwise. 
Exception| Condition  
---|---  
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  A non-optional argument was null   
In the case that 'conceptualConstructionIsByEnergyData' is true, invalidElementId is also acceptable input. 
#### Reference
[MassLevelData Class](c1e62aaf-b7af-ad0c-60d5-4a1a9c1bed79.htm)
[Autodesk.Revit.DB.Analysis Namespace](958e2e12-587d-f188-5d7b-f13d7dbfdf48.htm)