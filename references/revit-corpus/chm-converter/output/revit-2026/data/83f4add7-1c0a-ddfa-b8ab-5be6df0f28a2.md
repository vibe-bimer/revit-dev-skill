# RevitLinkType.Unload Method

---  
Unloads the Revit link. 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public void Unload(
    	ISaveSharedCoordinatesCallback callback
    )
    
    Public Sub Unload ( 
    	callback As ISaveSharedCoordinatesCallback
    )
    
    public:
    void Unload(
    	ISaveSharedCoordinatesCallback^ callback
    )
    
    member Unload : 
            callback : ISaveSharedCoordinatesCallback -> unit 
#### Parameters
callback [ISaveSharedCoordinatesCallback](ed4eac2a-d482-7760-2ae7-855611d09c46.htm)
     A callback indicating what to do if Revit encounters links which have changes in shared coordinates. If , Revit will not save any shared coordinates changes to the link before unloading. 
Exception| Condition  
---|---  
[ForbiddenForDynamicUpdateException](c5b911f6-1e8f-2cd4-6965-286f41221fe0.htm)|  The function is not permitted during dynamic update.   
[InvalidOperationException](9e715f03-3884-e539-4dd6-8d7545733adc.htm)|  This RevitLinkType is not a top-level link. -or- Revit could not save shared coordinates changes to the link or one of its nested links. -or- There is a transaction phase left open (such as a transaction, sub-transaction of transaction group) at the time of invoking this method. -or- The document is read-only. It cannot be modified. -or- The document is in an edit mode or is in family mode. -or- Revit cannot link a cloud model to non-cloud model   
[RevitServerInternalException](6dcd093c-d643-07cd-535f-36ffa9d2db52.htm)|  Could be for any of the reasons that failed on service side.   
[RevitServerUnauthenticatedUserException](b9b68e56-c767-4680-a65b-73d268ee8860.htm)|  User is not signed in with Autodesk id.   
[RevitServerUnauthorizedException](9e8c1efc-8719-fe01-f311-cfade7b177ed.htm)|  User is not authorized to access the specified cloud model.   
This function regenerates the document.
The document's Undo history will be cleared by this command. As a result, this command and others executed before it cannot be undone. All transaction phases (e.g. transactions transaction groups and sub-transaction) that were explicitly started must be finished prior to calling this method.
#### Reference
[RevitLinkType Class](2204a5ab-6476-df41-116d-23dbe3cb5407.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)