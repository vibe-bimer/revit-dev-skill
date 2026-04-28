# ExternalResourceLoadContext.GetCallingDocumentModelPath Method

---  
Returns a copy of the ModelPath of the document that is requesting the external resource. 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public ModelPath GetCallingDocumentModelPath()
    
    Public Function GetCallingDocumentModelPath As ModelPath
    
    public:
    ModelPath^ GetCallingDocumentModelPath()
    
    member GetCallingDocumentModelPath : unit -> ModelPath 
#### Return Value
[ModelPath](40a84c72-e4b8-72ac-2f71-3216c66a11b3.htm) A copy of the ModelPath of the document that is requesting the external resource. 
Exception| Condition  
---|---  
[InvalidOperationException](9e715f03-3884-e539-4dd6-8d7545733adc.htm)|  The document requesting the external resource does not have a ModelPath, either because it is detached, or because it has not been saved to disk yet.   
#### Reference
[ExternalResourceLoadContext Class](225225cb-6161-4681-34f9-1da4a6d50856.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)