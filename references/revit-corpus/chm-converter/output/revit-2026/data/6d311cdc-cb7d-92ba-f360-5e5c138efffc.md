# StructuralFramingUtils.IsEndReferenceValid Method

---  
Determines if the given reference can be set for the given end of the framing element. 
**Namespace:** [Autodesk.Revit.DB.Structure](d586b341-f687-9d90-e96d-255806b7d4fc.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public static bool IsEndReferenceValid(
    	FamilyInstance familyInstance,
    	int end,
    	Reference pick
    )
    
    Public Shared Function IsEndReferenceValid ( 
    	familyInstance As FamilyInstance,
    	end As Integer,
    	pick As Reference
    ) As Boolean
    
    public:
    static bool IsEndReferenceValid(
    	FamilyInstance^ familyInstance, 
    	int end, 
    	Reference^ pick
    )
    
    static member IsEndReferenceValid : 
            familyInstance : FamilyInstance * 
            end : int * 
            pick : Reference -> bool 
#### Parameters
familyInstance [FamilyInstance](0d2231f8-91e6-794f-92ae-16aad8014b27.htm)
     The FamilyInstance, which must be of a structural framing category, non-concrete and joined at the given end. 
end Int32
     The index of the end (0 for the start, 1 for the end). 
pick [Reference](d28155ae-817b-1f31-9c3f-c9c6a28acc0d.htm)
     The reference to be checked against the given end of the framing element. 
#### Return Value
Boolean True if the given reference can be set for the given end of the framing element. 
Exception| Condition  
---|---  
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  A non-optional argument was null   
[ArgumentOutOfRangeException](60f148c9-ece0-a6bb-4e12-bb4a9c8c8a24.htm)|  end must be 0 or 1.   
#### Reference
[StructuralFramingUtils Class](93d93c87-dfa2-12d5-dcb0-13d5cb0c0696.htm)
[Autodesk.Revit.DB.Structure Namespace](d586b341-f687-9d90-e96d-255806b7d4fc.htm)