# CompoundStructure.ClearWallSweeps Method

---  
Removes all sweeps or reveals from the compound structure. 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public void ClearWallSweeps(
    	WallSweepType wallSweepType
    )
    
    Public Sub ClearWallSweeps ( 
    	wallSweepType As WallSweepType
    )
    
    public:
    void ClearWallSweeps(
    	WallSweepType wallSweepType
    )
    
    member ClearWallSweeps : 
            wallSweepType : WallSweepType -> unit 
#### Parameters
wallSweepType [WallSweepType](f66354e5-a9c6-de97-695c-4a2fba036232.htm)
     The type of a wall sweep. 
Exception| Condition  
---|---  
[ArgumentOutOfRangeException](60f148c9-ece0-a6bb-4e12-bb4a9c8c8a24.htm)|  A value passed for an enumeration argument is not a member of that enumeration   
[InvalidOperationException](9e715f03-3884-e539-4dd6-8d7545733adc.htm)|  This operation is valid only for vertically compound structures.   
#### Reference
[CompoundStructure Class](dc1a081e-8dab-565f-145d-a429098d353c.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)