# FamilyType.AsInteger Method

---  
Provides access to the integer number of the given family parameter.
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public int? AsInteger(
    	FamilyParameter familyParameter
    )
    
    Public Function AsInteger ( 
    	familyParameter As FamilyParameter
    ) As Integer?
    
    public:
    Nullable<int> AsInteger(
    	FamilyParameter^ familyParameter
    )
    
    member AsInteger : 
            familyParameter : FamilyParameter -> Nullable<int> 
#### Parameters
familyParameter [FamilyParameter](6175e974-870e-7fbc-3df7-46105f937a6e.htm)
    
#### Return Value
NullableInt32The integer value contained in the parameter. Returns  if the storage type of the input argument is not integer type or this parameter has no value.
Exception| Condition  
---|---  
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  Thrown when the input argument-"familyParameter"-is .   
[ArgumentException](2e6e4206-97a8-dd4b-df5d-4269f4bb6088.htm)|  Thrown if the input argument-"familyParameter"-is invalid,   
#### Reference
[FamilyType Class](7f15b213-c99b-db59-3622-3280757b82d9.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)