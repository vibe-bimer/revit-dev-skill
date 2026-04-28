# TransactionGroup.RollBack Method

---  
Rolls back the transaction group, which effectively undoes all transactions committed inside the group. 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public TransactionStatus RollBack()
    
    Public Function RollBack As TransactionStatus
    
    public:
    TransactionStatus RollBack()
    
    member RollBack : unit -> TransactionStatus 
#### Return Value
[TransactionStatus](29b9a7a8-6754-8310-e063-622b569bb6d5.htm) If finished successfully, this method returns TransactionStatus.RolledBack. 
Exception| Condition  
---|---  
[InvalidOperationException](9e715f03-3884-e539-4dd6-8d7545733adc.htm)|  The Transaction group has not been started (its status is not 'Started').. -or- The transaction's document is currently in failure mode. Transaction groups cannot be closed until failure handling is finished. You may use a transaction finalizer to close a group after the failure handling ends.   
Note that once a group is rolled back, the undone transactions cannot be redone.
RollBack can be called only when all inner transaction groups and transactions are finished, i.e. after they were either committed or rolled back.
#### Reference
[TransactionGroup Class](f1113d30-4c36-7844-1537-aad7f095cea0.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)