# ImporterIFCUtils.GetLocalFileName Method

---  
Get the local file name, including the path, corresponding to a linked IFC file. This will create a local copy of the IFC file if necessary. 
**Namespace:** [Autodesk.Revit.DB.IFC](b823fafb-1ba1-896b-4097-142c2817ce74.htm)**Assembly:** RevitAPIIFC (in RevitAPIIFC.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public static string GetLocalFileName(
    	Document aDoc,
    	string fileName
    )
    
    Public Shared Function GetLocalFileName ( 
    	aDoc As Document,
    	fileName As String
    ) As String
    
    public:
    static String^ GetLocalFileName(
    	Document^ aDoc, 
    	String^ fileName
    )
    
    static member GetLocalFileName : 
            aDoc : Document * 
            fileName : string -> string 
#### Parameters
aDoc [Document](db03274b-a107-aa32-9034-f3e0df4bb1ec.htm)
     The document that will contain the IFC link. 
fileName String
     The original file name and path. 
#### Return Value
String The local file name and path corresponding to the input file name. 
Exception| Condition  
---|---  
[ArgumentException](2e6e4206-97a8-dd4b-df5d-4269f4bb6088.htm)|  Can't process file name.   
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  A non-optional argument was null   
#### Reference
[ImporterIFCUtils Class](63c96f27-12ea-3b90-aa39-515a81c79e33.htm)
[Autodesk.Revit.DB.IFC Namespace](b823fafb-1ba1-896b-4097-142c2817ce74.htm)