# Wall.Create(Document, Curve, ElementId, ElementId, Double, Double, Boolean, Boolean) Method

---  
Creates a new rectangular profile wall within the project using the specified wall type, height, and offset. 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public static Wall Create(
    	Document document,
    	Curve curve,
    	ElementId wallTypeId,
    	ElementId levelId,
    	double height,
    	double offset,
    	bool flip,
    	bool structural
    )
    
    Public Shared Function Create ( 
    	document As Document,
    	curve As Curve,
    	wallTypeId As ElementId,
    	levelId As ElementId,
    	height As Double,
    	offset As Double,
    	flip As Boolean,
    	structural As Boolean
    ) As Wall
    
    public:
    static Wall^ Create(
    	Document^ document, 
    	Curve^ curve, 
    	ElementId^ wallTypeId, 
    	ElementId^ levelId, 
    	double height, 
    	double offset, 
    	bool flip, 
    	bool structural
    )
    
    static member Create : 
            document : Document * 
            curve : Curve * 
            wallTypeId : ElementId * 
            levelId : ElementId * 
            height : float * 
            offset : float * 
            flip : bool * 
            structural : bool -> Wall 
#### Parameters
document [Document](db03274b-a107-aa32-9034-f3e0df4bb1ec.htm)
     The document in which the new wall is created. 
curve [Curve](400cc9b6-9ff7-de85-6fd8-c20002209d25.htm)
     A curve representing the base line of the wall. 
wallTypeId [ElementId](44f3f7b1-3229-3404-93c9-dc5e70337dd6.htm)
     Id of the wall type to be used by the new wall instead of the default type. 
levelId [ElementId](44f3f7b1-3229-3404-93c9-dc5e70337dd6.htm)
     Id of the level on which the wall is to be placed. 
height Double
     The height of the wall other than the default height. 
offset Double
     Modifies the wall's Base Offset parameter to determine its vertical placement. 
flip Boolean
     Change which side of the wall is considered to be the inside and outside of the wall. 
structural Boolean
     If set, specifies that the wall is structural in nature. 
#### Return Value
[Wall](b5891733-c602-12df-beab-da414b58d608.htm) If successful a new wall object within the project. 
Exception| Condition  
---|---  
[ArgumentException](2e6e4206-97a8-dd4b-df5d-4269f4bb6088.htm)|  The curve argument is not valid for wall creation.   
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  A non-optional argument was null   
[ArgumentOutOfRangeException](60f148c9-ece0-a6bb-4e12-bb4a9c8c8a24.htm)|  The given value for height must be greater than 0 and no more than 30000 feet. -or- The given value for offset must be no more than 30000 feet in absolute value.   
[ModificationForbiddenException](53205486-5917-7c33-8e67-e362106ddc97.htm)|  The document is in failure mode: an operation has failed, and Revit requires the user to either cancel the operation or fix the problem (usually by deleting certain elements). -or- The document is being loaded, or is in the midst of another sensitive process.   
[ModificationOutsideTransactionException](8f025460-c283-ea99-aa8a-5a36e11528f4.htm)|  The document has no open transaction.   
#### Reference
[Wall Class](b5891733-c602-12df-beab-da414b58d608.htm)
[Create Overload](3ef7e31c-b41b-c8cc-2713-8f098954613d.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)