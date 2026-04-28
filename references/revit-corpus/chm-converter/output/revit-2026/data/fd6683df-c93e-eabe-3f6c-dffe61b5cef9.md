# ParameterUtils.DownloadParameterOptions Method

---  
Retrieves settings associated with the given parameter from the Parameters Service. 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public static ParameterDownloadOptions DownloadParameterOptions(
    	ForgeTypeId parameterTypeId
    )
    
    Public Shared Function DownloadParameterOptions ( 
    	parameterTypeId As ForgeTypeId
    ) As ParameterDownloadOptions
    
    public:
    static ParameterDownloadOptions^ DownloadParameterOptions(
    	ForgeTypeId^ parameterTypeId
    )
    
    static member DownloadParameterOptions : 
            parameterTypeId : ForgeTypeId -> ParameterDownloadOptions 
#### Parameters
parameterTypeId [ForgeTypeId](d9fcf276-9566-de83-2b0b-d89b65ccc8af.htm)
     Parameter identifier. 
#### Return Value
[ParameterDownloadOptions](7359f11b-4102-15f3-597b-51078e1141bc.htm) Settings associated with a parameter. 
Exception| Condition  
---|---  
[AccessDeniedException](f280ddf5-9f59-eca8-634e-ace30de1f4bb.htm)|  Thrown when the user is not authorized to access the requested information.   
[ArgumentException](2e6e4206-97a8-dd4b-df5d-4269f4bb6088.htm)|  Thrown when the given parameter identifier is empty.   
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  A non-optional argument was null   
[!:Autodesk::Revit::Exceptions::NetworkCommunicationError]|  Thrown when communication with the Parameters Service is unsuccessful.   
[ResourceNotFoundException](4ef7bcee-5831-e2c9-ee4a-06a0dd6c255f.htm)|  Thrown when the requested parameter is not found.   
[ServerInternalException](dea21550-dd2d-e9d1-4f2f-5f18e0e58bc4.htm)|  Thrown when the Parameters Service reports an internal error.   
[UnauthenticatedException](e94e82b6-4345-48ca-7be9-fd8393b0ff7f.htm)|  Thrown when the user is not signed in.   
The settings associated with a parameter definition are accessible only to an authorized user. To retrieve them, the user must be signed in. 
#### Reference
[ParameterUtils Class](df5da06e-35c6-e32e-53c0-9fd68d3ab142.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)