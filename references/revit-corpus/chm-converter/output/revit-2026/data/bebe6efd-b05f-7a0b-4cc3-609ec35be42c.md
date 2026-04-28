# FailureHandlingOptions.SetClearAfterRollback Method

---  
Sets a flag indicating that Revit should clear all posted failures silently when the failing transaction is being rolled back intentionally. If not set, the failures may still be displayed to the user during rollback. 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public FailureHandlingOptions SetClearAfterRollback(
    	bool bFlag
    )
    
    Public Function SetClearAfterRollback ( 
    	bFlag As Boolean
    ) As FailureHandlingOptions
    
    public:
    FailureHandlingOptions^ SetClearAfterRollback(
    	bool bFlag
    )
    
    member SetClearAfterRollback : 
            bFlag : bool -> FailureHandlingOptions 
#### Parameters
bFlag Boolean
     True to clear posted failures silently if the transaction is being rolled back, false to keep these failures in place (they may be displayed to the user). 
#### Return Value
[FailureHandlingOptions](c03bb2e5-f679-bf24-4e87-08b3c3a08385.htm) This FailureHandlingOptions object. 
#### Reference
[FailureHandlingOptions Class](c03bb2e5-f679-bf24-4e87-08b3c3a08385.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)