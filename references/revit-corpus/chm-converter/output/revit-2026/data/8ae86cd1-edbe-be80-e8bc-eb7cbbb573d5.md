# PipeSettings.AddPipeSlope Method

---  
Add a pipe slope value. 
**Namespace:** [Autodesk.Revit.DB.Plumbing](cc553597-37c2-fcd9-6025-d904c129c80a.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public void AddPipeSlope(
    	double slope
    )
    
    Public Sub AddPipeSlope ( 
    	slope As Double
    )
    
    public:
    void AddPipeSlope(
    	double slope
    )
    
    member AddPipeSlope : 
            slope : float -> unit 
#### Parameters
slope Double
     The pipe slope value. Revit stores the slope value as a percentage (0-100). 
Exception| Condition  
---|---  
[ArgumentOutOfRangeException](60f148c9-ece0-a6bb-4e12-bb4a9c8c8a24.htm)|  The given value for slope must be between 0 and 100. Slope value is stored in percentage. e.g. 100 means 100%, and it is 45 degree.   
[InvalidOperationException](9e715f03-3884-e539-4dd6-8d7545733adc.htm)|  Can not add a pipe slope value that was already added.   
#### Reference
[PipeSettings Class](2de0109b-0d0d-a0fe-2adf-6edec8bc1a06.htm)
[Autodesk.Revit.DB.Plumbing Namespace](cc553597-37c2-fcd9-6025-d904c129c80a.htm)