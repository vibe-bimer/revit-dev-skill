# RevitLinkType.Create(Document, ExternalResourceReference, RevitLinkOptions) Method

---  
Creates a new Revit link type from an external resource reference and loads the linked document. 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public static LinkLoadResult Create(
    	Document document,
    	ExternalResourceReference resourceReference,
    	RevitLinkOptions options
    )
    
    Public Shared Function Create ( 
    	document As Document,
    	resourceReference As ExternalResourceReference,
    	options As RevitLinkOptions
    ) As LinkLoadResult
    
    public:
    static LinkLoadResult^ Create(
    	Document^ document, 
    	ExternalResourceReference^ resourceReference, 
    	RevitLinkOptions^ options
    )
    
    static member Create : 
            document : Document * 
            resourceReference : ExternalResourceReference * 
            options : RevitLinkOptions -> LinkLoadResult 
#### Parameters
document [Document](db03274b-a107-aa32-9034-f3e0df4bb1ec.htm)
     The document in which to create the Revit link. 
resourceReference [ExternalResourceReference](ffad9c15-8fc9-fbfd-f328-101533f4cf74.htm)
     An external resource reference describing the source of the linked Revit document. 
options [RevitLinkOptions](3f710983-5a4d-d515-a633-12b06a419b30.htm)
     An options class for loading Revit links. The path type information will be ignored. 
#### Return Value
[LinkLoadResult](f846bfb0-b047-9332-567f-75ae880d8359.htm) An object containing the results of creating and loading the Revit link type. It contains the ElementId of the new link. 
Exception| Condition  
---|---  
[ArgumentException](2e6e4206-97a8-dd4b-df5d-4269f4bb6088.htm)|  document is not a project document. -or- The server referenced by the ExternalResourceReference does not exist or does not implement IExternalResourceServer. -or- The server referenced by the ExternalResourceReference cannot support Revit links. -or- The ExternalResourceReference (resourceReference) is not in a format that is supported by its server. -or- The link type referred to by the ExternalResourceReference "resourceReference" already exists in the document. You cannot create another copy of the link type. You can create instances with RevitLinkInstance.Create(), or reload the link using RevitLinkType.Reload().   
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  A non-optional argument was null   
[InvalidOperationException](9e715f03-3884-e539-4dd6-8d7545733adc.htm)|  Revit cannot customize worksets for this model.   
[ModificationForbiddenException](53205486-5917-7c33-8e67-e362106ddc97.htm)|  The document is in failure mode: an operation has failed, and Revit requires the user to either cancel the operation or fix the problem (usually by deleting certain elements). -or- The document is being loaded, or is in the midst of another sensitive process.   
[ModificationOutsideTransactionException](8f025460-c283-ea99-aa8a-5a36e11528f4.htm)|  The document has no open transaction.   
This function regenerates the input document.
Only the WorksetConfiguration information in the options argument will be used. The path type information will be ignored.
#### Reference
[RevitLinkType Class](2204a5ab-6476-df41-116d-23dbe3cb5407.htm)
[Create Overload](4cdb6058-0ae0-d584-24f7-52b72af617bc.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)