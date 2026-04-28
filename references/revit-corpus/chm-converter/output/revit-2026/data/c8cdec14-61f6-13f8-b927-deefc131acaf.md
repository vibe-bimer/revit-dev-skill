# AdaptiveComponentInstanceUtils.GetInstanceShapeHandlePointElementRefIds Method

---  
Gets Shape Handle Adaptive Point Element Ref ids to which the instance geometry adapts. 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public static IList<ElementId> GetInstanceShapeHandlePointElementRefIds(
    	FamilyInstance famInst
    )
    
    Public Shared Function GetInstanceShapeHandlePointElementRefIds ( 
    	famInst As FamilyInstance
    ) As IList(Of ElementId)
    
    public:
    static IList<ElementId^>^ GetInstanceShapeHandlePointElementRefIds(
    	FamilyInstance^ famInst
    )
    
    static member GetInstanceShapeHandlePointElementRefIds : 
            famInst : FamilyInstance -> IList<ElementId> 
#### Parameters
famInst [FamilyInstance](0d2231f8-91e6-794f-92ae-16aad8014b27.htm)
     The FamilyInstance 
#### Return Value
IList[ElementId](44f3f7b1-3229-3404-93c9-dc5e70337dd6.htm) The Shape Handle Adaptive Point Element Ref ids to which the instance geometry adapts. 
Exception| Condition  
---|---  
[ArgumentException](2e6e4206-97a8-dd4b-df5d-4269f4bb6088.htm)|  The FamilyInstance famInst is not an Adaptive Family Instance. -or- The FamilyInstance famInst does not have an Adaptive Family Symbol.   
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  A non-optional argument was null   
[InvalidOperationException](9e715f03-3884-e539-4dd6-8d7545733adc.htm)|  This operation failed.   
The output contains shape handle point ref ids. If there are no shape handle points defined in the Family then the output is empty. 
#### Reference
[AdaptiveComponentInstanceUtils Class](786db8ac-a051-37e4-7b4c-dbf286fe9a7c.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)