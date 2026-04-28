# CriticalPathCollector.GetCalculatedPressureDrop Method

---  
Gets the calculated pressure drop of the network. 
**Namespace:** [Autodesk.Revit.DB.Analysis](958e2e12-587d-f188-5d7b-f13d7dbfdf48.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public double GetCalculatedPressureDrop()
    
    Public Function GetCalculatedPressureDrop As Double
    
    public:
    double GetCalculatedPressureDrop()
    
    member GetCalculatedPressureDrop : unit -> float 
#### Return Value
Double The pressure drop value in the internal Revit unit kg/(ft*s^2). 
The calculated pressure drop is the total pressure loss value of all analytical segment on the critical path. The value is often used to select the equipment. 
#### Reference
[CriticalPathCollector Class](a152f21d-fd43-94dc-f52d-ece283f47c8a.htm)
[Autodesk.Revit.DB.Analysis Namespace](958e2e12-587d-f188-5d7b-f13d7dbfdf48.htm)