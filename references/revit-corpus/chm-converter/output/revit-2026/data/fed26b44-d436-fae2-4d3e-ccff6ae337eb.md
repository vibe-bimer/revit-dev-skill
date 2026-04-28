# AnalyticalPanel.Create(Document, CurveLoop) Method

---  
Creates a new instance of an Analytical Panel within the project. 
**Namespace:** [Autodesk.Revit.DB.Structure](d586b341-f687-9d90-e96d-255806b7d4fc.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public static AnalyticalPanel Create(
    	Document aDoc,
    	CurveLoop curveLoop
    )
    
    Public Shared Function Create ( 
    	aDoc As Document,
    	curveLoop As CurveLoop
    ) As AnalyticalPanel
    
    public:
    static AnalyticalPanel^ Create(
    	Document^ aDoc, 
    	CurveLoop^ curveLoop
    )
    
    static member Create : 
            aDoc : Document * 
            curveLoop : CurveLoop -> AnalyticalPanel 
#### Parameters
aDoc [Document](db03274b-a107-aa32-9034-f3e0df4bb1ec.htm)
     Revit document. 
curveLoop [CurveLoop](84824924-cb89-9e20-de6e-3461f429dfd6.htm)
     CurveLoop for the Analytical Panel. 
#### Return Value
[AnalyticalPanel](b88181d3-743b-8cca-8fb3-0cc13e5d70aa.htm) The newly created AnalyticalPanel instance. 
Exception| Condition  
---|---  
[ArgumentException](2e6e4206-97a8-dd4b-df5d-4269f4bb6088.htm)|  One of the following requirements is not satisfied : \- curve loop curveLoop is not planar \- curve loop curveLoop is self-intersecting \- curve loop curveLoop contains zero length curves   
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  A non-optional argument was null   
[ModificationForbiddenException](53205486-5917-7c33-8e67-e362106ddc97.htm)|  The document is in failure mode: an operation has failed, and Revit requires the user to either cancel the operation or fix the problem (usually by deleting certain elements). -or- The document is being loaded, or is in the midst of another sensitive process.   
[ModificationOutsideTransactionException](8f025460-c283-ea99-aa8a-5a36e11528f4.htm)|  The document has no open transaction.   
CurveLoop must be planar and not self-intersecting. 
#### Reference
[AnalyticalPanel Class](b88181d3-743b-8cca-8fb3-0cc13e5d70aa.htm)
[Create Overload](6091562c-c40f-b6ea-962a-4b5bdc21b875.htm)
[Autodesk.Revit.DB.Structure Namespace](d586b341-f687-9d90-e96d-255806b7d4fc.htm)