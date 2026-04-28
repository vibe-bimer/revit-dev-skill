# UpdaterRegistry.RemoveAllTriggers Method

---  
Removes all triggers associated with Updater with specified UpdaterId. Does not unregister updater. 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public static void RemoveAllTriggers(
    	UpdaterId id
    )
    
    Public Shared Sub RemoveAllTriggers ( 
    	id As UpdaterId
    )
    
    public:
    static void RemoveAllTriggers(
    	UpdaterId^ id
    )
    
    static member RemoveAllTriggers : 
            id : UpdaterId -> unit 
#### Parameters
id [UpdaterId](16a9604f-51bd-ce34-f145-17ae06b7c1cf.htm)
     Id of specified updater 
Exception| Condition  
---|---  
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  A non-optional argument was null   
[InvalidOperationException](9e715f03-3884-e539-4dd6-8d7545733adc.htm)|  The updater's owner's AddIn does not match the currently active AddIn. -or- RemoveAllTriggers called while executing an updater.   
#### Reference
[UpdaterRegistry Class](4f24f516-5274-1420-f255-458c0af5d318.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)