# ViewSchedule.KeyScheduleParameterName Property

---  
In a key schedule, the name of the parameter for choosing one of the keys. 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public string KeyScheduleParameterName { get; set; }
    
    Public Property KeyScheduleParameterName As String
    	Get
    	Set
    
    public:
    property String^ KeyScheduleParameterName {
    	String^ get ();
    	void set (String^ value);
    }
    
    member KeyScheduleParameterName : string with get, set
#### Property Value
String The name of the key schedule parameter. 
Exception| Condition  
---|---  
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  When setting this property: A non-optional argument was null   
[InvalidOperationException](9e715f03-3884-e539-4dd6-8d7545733adc.htm)|  This ViewSchedule is not key schedule.   
[ModificationForbiddenException](53205486-5917-7c33-8e67-e362106ddc97.htm)|  When setting this property: The document containing this ViewSchedule is in failure mode: an operation has failed, and Revit requires the user to either cancel the operation or fix the problem (usually by deleting certain elements). -or- When setting this property: The document containing this ViewSchedule is being loaded, or is in the midst of another sensitive process. -or- When setting this property: This ViewSchedule is an internal element, such as a component of a loaded family or a group type. -or- When setting this property: The document containing this ViewSchedule is in Group Edit Mode, Sketch Edit Mode, or Paste Mode, and the element is not a member of the group, sketch, or clipboard. -or- When setting this property: This ViewSchedule is a member of a group or sketch, and the document is not currently editing the group or sketch.   
[ModificationOutsideTransactionException](8f025460-c283-ea99-aa8a-5a36e11528f4.htm)|  When setting this property: The document containing this ViewSchedule has no open transaction.   
When a key schedule is created, elements of the schedule's category receive a new parameter for choosing one of the keys defined in the key schedule. This is the name of that parameter. 
#### Reference
[ViewSchedule Class](0dae24ba-5dcb-9a34-cccc-0cf8cc52bcd3.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)