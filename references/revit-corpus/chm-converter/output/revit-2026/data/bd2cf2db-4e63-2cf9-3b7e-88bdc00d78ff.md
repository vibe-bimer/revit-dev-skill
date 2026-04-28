# DefaultOpenFromCloudCallback.OnOpenConflict Method

---  
A method called when the conflict is happen during the model opening. 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public virtual OpenConflictResult OnOpenConflict(
    	OpenConflictScenario scenario
    )
    
    Public Overridable Function OnOpenConflict ( 
    	scenario As OpenConflictScenario
    ) As OpenConflictResult
    
    public:
    virtual OpenConflictResult OnOpenConflict(
    	OpenConflictScenario scenario
    )
    
    abstract OnOpenConflict : 
            scenario : OpenConflictScenario -> OpenConflictResult 
    override OnOpenConflict : 
            scenario : OpenConflictScenario -> OpenConflictResult 
#### Parameters
scenario [OpenConflictScenario](7db711fa-cfb1-39da-a184-5aaf4230b660.htm)
     The scenario of the conflict. 
#### Return Value
[OpenConflictResult](7d97b28b-b287-03c0-7d7d-205649ca4ecf.htm) Returns the result to indicate whether to keep the unsynchronized change, or open the latest version or cancel the open action. 
#### Implements
[IOpenFromCloudCallbackOnOpenConflict(OpenConflictScenario)](21c8169e-9a58-3a6f-9060-e42975f39b16.htm)
#### Reference
[DefaultOpenFromCloudCallback Class](6269ec13-f36e-64fd-f173-aa7c358912f9.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)