# StructuralFramingUtils.RemoveEndReference Method

---  
Resets the end reference of the structural framing element. 
**Namespace:** [Autodesk.Revit.DB.Structure](d586b341-f687-9d90-e96d-255806b7d4fc.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public static void RemoveEndReference(
    	FamilyInstance familyInstance,
    	int end
    )
    
    Public Shared Sub RemoveEndReference ( 
    	familyInstance As FamilyInstance,
    	end As Integer
    )
    
    public:
    static void RemoveEndReference(
    	FamilyInstance^ familyInstance, 
    	int end
    )
    
    static member RemoveEndReference : 
            familyInstance : FamilyInstance * 
            end : int -> unit 
#### Parameters
familyInstance [FamilyInstance](0d2231f8-91e6-794f-92ae-16aad8014b27.htm)
     The FamilyInstance, which must be of a structural framing category, non-concrete and joined. 
end Int32
     The index of the end (0 for the start, 1 for the end). 
Exception| Condition  
---|---  
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  A non-optional argument was null   
[ArgumentOutOfRangeException](60f148c9-ece0-a6bb-4e12-bb4a9c8c8a24.htm)|  end must be 0 or 1.   
[ArgumentsInconsistentException](05972c68-fa6d-3a83-d720-ad84fbc4780f.htm)|  The input familyInstance is not of a structural framing category or is concrete or is not joined at given end and cannot have an end reference set.   
The setback value will be changed as a result of the removal. 
#### Reference
[StructuralFramingUtils Class](93d93c87-dfa2-12d5-dcb0-13d5cb0c0696.htm)
[Autodesk.Revit.DB.Structure Namespace](d586b341-f687-9d90-e96d-255806b7d4fc.htm)