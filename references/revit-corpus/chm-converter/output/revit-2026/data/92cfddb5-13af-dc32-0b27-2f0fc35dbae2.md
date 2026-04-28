# ViewSchedule.RowHeightOverride Property

---  
Defines the override that is applied to the row height. 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public RowHeightOverrideOptions RowHeightOverride { get; set; }
    
    Public Property RowHeightOverride As RowHeightOverrideOptions
    	Get
    	Set
    
    public:
    property RowHeightOverrideOptions RowHeightOverride {
    	RowHeightOverrideOptions get ();
    	void set (RowHeightOverrideOptions value);
    }
    
    member RowHeightOverride : RowHeightOverrideOptions with get, set
#### Property Value
[RowHeightOverrideOptions](3f75752e-c4df-90c9-e296-ac604f8c4fd9.htm)
  * [None](3f75752e-c4df-90c9-e296-ac604f8c4fd9.htm) to disable row height override.
  * [All](3f75752e-c4df-90c9-e296-ac604f8c4fd9.htm) enables row height override for all the body rows in the schedule.
  * [ImageRows](3f75752e-c4df-90c9-e296-ac604f8c4fd9.htm) enables row height override for all the schedule body rows that contains images or custom graphics.

Exception| Condition  
---|---  
[ArgumentOutOfRangeException](60f148c9-ece0-a6bb-4e12-bb4a9c8c8a24.htm)|  When setting this property: A value passed for an enumeration argument is not a member of that enumeration   
Setting this property to anything but [None](3f75752e-c4df-90c9-e296-ac604f8c4fd9.htm) will allow setting the [RowHeight](aca396e1-2fec-666c-005d-7e36d5153999.htm) property. This is taken into account when the schedule is viewed as a ScheduleSheetInstance on a ViewSheet.
#### Reference
[ViewSchedule Class](0dae24ba-5dcb-9a34-cccc-0cf8cc52bcd3.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)