# PhaseFilter.GetPhaseStatusPresentation Method

---  
Gets the phase status presentation. 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public PhaseStatusPresentation GetPhaseStatusPresentation(
    	ElementOnPhaseStatus status
    )
    
    Public Function GetPhaseStatusPresentation ( 
    	status As ElementOnPhaseStatus
    ) As PhaseStatusPresentation
    
    public:
    PhaseStatusPresentation GetPhaseStatusPresentation(
    	ElementOnPhaseStatus status
    )
    
    member GetPhaseStatusPresentation : 
            status : ElementOnPhaseStatus -> PhaseStatusPresentation 
#### Parameters
status [ElementOnPhaseStatus](bfc481cc-11c8-de0b-1d71-7b2ffa711780.htm)
     The element phase status. 
#### Return Value
[PhaseStatusPresentation](84d5855c-fba2-b026-ee60-7f2a24b78129.htm) The phase status presentation. 
Exception| Condition  
---|---  
[ArgumentException](2e6e4206-97a8-dd4b-df5d-4269f4bb6088.htm)|  status is invalid for presentation query.   
[ArgumentOutOfRangeException](60f148c9-ece0-a6bb-4e12-bb4a9c8c8a24.htm)|  A value passed for an enumeration argument is not a member of that enumeration   
#### Reference
[PhaseFilter Class](3236c80e-48be-f657-951f-70490a43f065.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)