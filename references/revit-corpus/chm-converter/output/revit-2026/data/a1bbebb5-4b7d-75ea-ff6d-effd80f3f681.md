# RebarCrankTypeUtils.CreateRebarCrankType Method

---  
Creates a Rebar Crank Type element. 
**Namespace:** [Autodesk.Revit.DB.Structure](d586b341-f687-9d90-e96d-255806b7d4fc.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public static ElementType CreateRebarCrankType(
    	Document document,
    	string typeName
    )
    
    Public Shared Function CreateRebarCrankType ( 
    	document As Document,
    	typeName As String
    ) As ElementType
    
    public:
    static ElementType^ CreateRebarCrankType(
    	Document^ document, 
    	String^ typeName
    )
    
    static member CreateRebarCrankType : 
            document : Document * 
            typeName : string -> ElementType 
#### Parameters
document [Document](db03274b-a107-aa32-9034-f3e0df4bb1ec.htm)
     The document. 
typeName String
     The Rebar Crank Type name. 
#### Return Value
[ElementType](ffb18296-0448-559c-580c-7857cbcdc094.htm) The Rebar Crank Type. 
Exception| Condition  
---|---  
[ArgumentException](2e6e4206-97a8-dd4b-df5d-4269f4bb6088.htm)|  The given value for typeName cannot be an empty string. -or- The given value for typeName cannot include prohibited characters. -or- The given value for typeName is already in use by another Rebar Crank Type.   
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  A non-optional argument was null   
#### Reference
[RebarCrankTypeUtils Class](0b779253-adc9-d628-0a3b-30d5897a74d1.htm)
[Autodesk.Revit.DB.Structure Namespace](d586b341-f687-9d90-e96d-255806b7d4fc.htm)