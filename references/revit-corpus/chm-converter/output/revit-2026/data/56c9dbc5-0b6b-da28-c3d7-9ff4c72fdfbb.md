# FilteredWorksetIdIterator.Reset Method

---  
Resets the iterator to the beginning. 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public virtual void Reset()
    
    Public Overridable Sub Reset
    
    public:
    virtual void Reset()
    
    abstract Reset : unit -> unit 
    override Reset : unit -> unit 
Exception| Condition  
---|---  
[InvalidOperationException](9e715f03-3884-e539-4dd6-8d7545733adc.htm)|  The FilteredWorksetCollector that yielded this iterator has been reset by another operation. No further iteration is permitted with this iterator.   
#### Reference
[FilteredWorksetIdIterator Class](3d4b2969-fe55-7b1a-bdc0-b60165e12856.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)