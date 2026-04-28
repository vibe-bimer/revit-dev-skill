# FilteredElementCollector.WhereElementIsCurveDriven Method

---  
Applies an ElementIsCurveDrivenFilter to the collector. 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public FilteredElementCollector WhereElementIsCurveDriven()
    
    Public Function WhereElementIsCurveDriven As FilteredElementCollector
    
    public:
    FilteredElementCollector^ WhereElementIsCurveDriven()
    
    member WhereElementIsCurveDriven : unit -> FilteredElementCollector 
#### Return Value
[FilteredElementCollector](263cf06b-98be-6f91-c4da-fb47d01688f3.htm) A handle to this collector. This is the same collector that has just been modified, returned so you can chain multiple calls together in one line. 
Only elements that are curve driven will pass the collector. If you have an active iterator to this collector it will be stopped by this call. 
#### Reference
[FilteredElementCollector Class](263cf06b-98be-6f91-c4da-fb47d01688f3.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)