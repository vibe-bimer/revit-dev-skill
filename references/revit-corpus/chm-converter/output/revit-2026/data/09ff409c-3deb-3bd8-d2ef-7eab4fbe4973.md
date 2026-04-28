# LabelUtils.GetLabelForDiscipline Method

---  
Gets the user-visible name for a discipline. 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public static string GetLabelForDiscipline(
    	ForgeTypeId disciplineTypeId
    )
    
    Public Shared Function GetLabelForDiscipline ( 
    	disciplineTypeId As ForgeTypeId
    ) As String
    
    public:
    static String^ GetLabelForDiscipline(
    	ForgeTypeId^ disciplineTypeId
    )
    
    static member GetLabelForDiscipline : 
            disciplineTypeId : ForgeTypeId -> string 
#### Parameters
disciplineTypeId [ForgeTypeId](d9fcf276-9566-de83-2b0b-d89b65ccc8af.htm)
     Identifier of the discipline. 
#### Return Value
String Returns the user-visible name for a discipline. 
Exception| Condition  
---|---  
[ArgumentException](2e6e4206-97a8-dd4b-df5d-4269f4bb6088.htm)|  Discipline must have a definition.   
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  A non-optional argument was null   
The name is obtained in the current Revit language. 
#### Reference
[LabelUtils Class](39d096e3-6f2f-13ac-237b-7549d9841ef5.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)