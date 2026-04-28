# Document.Link(String, DWFImportOptions) Method

---  
Links Markups in a DWF file into the project document. 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public IList<ElementId> Link(
    	string file,
    	DWFImportOptions options
    )
    
    Public Function Link ( 
    	file As String,
    	options As DWFImportOptions
    ) As IList(Of ElementId)
    
    public:
    IList<ElementId^>^ Link(
    	String^ file, 
    	DWFImportOptions^ options
    )
    
    member Link : 
            file : string * 
            options : DWFImportOptions -> IList<ElementId> 
#### Parameters
file String
     Full path of the file to link. File must exist and must be a valid DWF file. 
options [DWFImportOptions](8465ab77-dc06-79c2-4bed-e17a564adb22.htm)
     Various link options applicable to the DWF format. 
#### Return Value
IList[ElementId](44f3f7b1-3229-3404-93c9-dc5e70337dd6.htm) A collection of link instance element ids created by the markup link. 
Exception| Condition  
---|---  
[ArgumentException](2e6e4206-97a8-dd4b-df5d-4269f4bb6088.htm)|  Not a valid file for DWF import (.dwf or.dwfx files are valid). -or- Some of the views are not importable.   
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  A non-optional argument was null   
[FileArgumentNotFoundException](ca9ccaa9-ed08-d40d-31a7-1af3ad2dcb84.htm)|  The given file does not exist.   
[InvalidOperationException](9e715f03-3884-e539-4dd6-8d7545733adc.htm)|  Import is temporarily disabled. -or- This Document is not a project document.   
[ModificationForbiddenException](53205486-5917-7c33-8e67-e362106ddc97.htm)|  The document is in failure mode: an operation has failed, and Revit requires the user to either cancel the operation or fix the problem (usually by deleting certain elements). -or- The document is being loaded, or is in the midst of another sensitive process.   
[ModificationOutsideTransactionException](8f025460-c283-ea99-aa8a-5a36e11528f4.htm)|  The document has no open transaction.   
Link isn't supported for family documents. Please use import instead. 
#### Reference
[Document Class](db03274b-a107-aa32-9034-f3e0df4bb1ec.htm)
[Link Overload](0e45b625-904e-06be-fabc-8591fed616f8.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)