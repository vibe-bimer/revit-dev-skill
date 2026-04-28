# Element.GetPhaseStatus Method

---  
Gets the status of a given element in the input phase 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public ElementOnPhaseStatus GetPhaseStatus(
    	ElementId phaseId
    )
    
    Public Function GetPhaseStatus ( 
    	phaseId As ElementId
    ) As ElementOnPhaseStatus
    
    public:
    ElementOnPhaseStatus GetPhaseStatus(
    	ElementId^ phaseId
    )
    
    member GetPhaseStatus : 
            phaseId : ElementId -> ElementOnPhaseStatus 
#### Parameters
phaseId [ElementId](44f3f7b1-3229-3404-93c9-dc5e70337dd6.htm)
     Id of the phase. 
#### Return Value
[ElementOnPhaseStatus](bfc481cc-11c8-de0b-1d71-7b2ffa711780.htm) The status of the element in the phase. 
Exception| Condition  
---|---  
[ArgumentException](2e6e4206-97a8-dd4b-df5d-4269f4bb6088.htm)|  The id does not represent a valid phase.   
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  A non-optional argument was null   
#### Reference
[Element Class](eb16114f-69ea-f4de-0d0d-f7388b105a16.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)