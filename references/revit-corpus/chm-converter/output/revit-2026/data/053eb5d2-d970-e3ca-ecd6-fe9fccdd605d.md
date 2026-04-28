# IPipePlumbingFixtureFlowServer.GetHtmlDescription Method

---  
The method that Revit will invoke to get an HTML formatted description of the server. 
**Namespace:** [Autodesk.Revit.DB.Plumbing](cc553597-37c2-fcd9-6025-d904c129c80a.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    string GetHtmlDescription()
    
    Function GetHtmlDescription As String
    
    String^ GetHtmlDescription()
    
    abstract GetHtmlDescription : unit -> string 
#### Return Value
String The HTML format description of the server. 
The HTML description is used by Revit unless it is empty or the server is not available, in which case, Revit will use the plain text description from IExternalServer.GetDescription(). 
#### Reference
[IPipePlumbingFixtureFlowServer Interface](ef369072-84eb-cace-a564-335aed35626b.htm)
[Autodesk.Revit.DB.Plumbing Namespace](cc553597-37c2-fcd9-6025-d904c129c80a.htm)