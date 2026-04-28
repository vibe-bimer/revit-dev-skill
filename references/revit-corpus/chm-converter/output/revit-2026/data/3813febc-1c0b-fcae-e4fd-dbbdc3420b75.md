# Entity.Get<FieldType>(Field) Method

---  
Retrieves the value of the field in the entity. 
**Namespace:** [Autodesk.Revit.DB.ExtensibleStorage](79486a74-376c-9555-c873-45d5a750f051.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public FieldType Get<FieldType>(
    	Field field
    )
    
    
    Public Function Get(Of FieldType) ( 
    	field As Field
    ) As FieldType
    
    public:
    generic<typename FieldType>
    FieldType Get(
    	Field^ field
    )
    
    member Get : 
            field : Field -> 'FieldType 
#### Parameters
field [Field](0aeabd09-5c61-0439-e4c7-e1d68d0e1a3b.htm)
     The field to retrieve. 
#### Type Parameters
FieldType
     The type of the field 
#### Return Value
FieldType
Exception| Condition  
---|---  
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  A non-optional argument was NULL   
[InvalidOperationException](9e715f03-3884-e539-4dd6-8d7545733adc.htm)|  The Field belongs to a different Schema from this Entity, or this Entity is invalid.   
[ArgumentException](2e6e4206-97a8-dd4b-df5d-4269f4bb6088.htm)|  Requested type does not match the field type.   
[ArgumentException](2e6e4206-97a8-dd4b-df5d-4269f4bb6088.htm)|  For floating-point fields, use the overload taking a ForgeTypeId parameter.   
[ArgumentException](2e6e4206-97a8-dd4b-df5d-4269f4bb6088.htm)|  This field's subschema prevents reading.   
The template parameter must match the type of the field (specified when creating the Schema) exactly; this method does not perform data type conversions. The types for containers are IList for arrays and IDictionary for maps. 
#### Reference
[Entity Class](cf17f0e8-33bd-ef95-bf4b-e6298406f29b.htm)
[Get Overload](08a1c6b1-4635-dd3a-e18a-c4ca56bb7a8b.htm)
[Autodesk.Revit.DB.ExtensibleStorage Namespace](79486a74-376c-9555-c873-45d5a750f051.htm)