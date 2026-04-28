# TemporaryGraphicsManager.SetTooltip Method

---  
Sets the tooltip for the temporary graphics object. 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public void SetTooltip(
    	int index,
    	string tooltip
    )
    
    Public Sub SetTooltip ( 
    	index As Integer,
    	tooltip As String
    )
    
    public:
    void SetTooltip(
    	int index, 
    	String^ tooltip
    )
    
    member SetTooltip : 
            index : int * 
            tooltip : string -> unit 
#### Parameters
index Int32
     Unique index of the temporary graphics object to be updated. 
tooltip String
     Tooltip to be set. 
Exception| Condition  
---|---  
[ArgumentException](2e6e4206-97a8-dd4b-df5d-4269f4bb6088.htm)|  index is out of range of TemporaryGraphicsManager managed objects, or the indexed object has been removed from the document.   
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  A non-optional argument was null   
#### Reference
[TemporaryGraphicsManager Class](1dd29f70-d381-fa60-8ffa-1076eac55ed7.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)