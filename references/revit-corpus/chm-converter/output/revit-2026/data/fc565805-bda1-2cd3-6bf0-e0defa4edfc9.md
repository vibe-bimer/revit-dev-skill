# TessellatedShapeBuilder.AreTargetAndFallbackCompatible Method

---  
Checks whether this combination of fallback and target parameters can be used as a valid combination of inputs. 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public bool AreTargetAndFallbackCompatible(
    	TessellatedShapeBuilderTarget target,
    	TessellatedShapeBuilderFallback fallback
    )
    
    Public Function AreTargetAndFallbackCompatible ( 
    	target As TessellatedShapeBuilderTarget,
    	fallback As TessellatedShapeBuilderFallback
    ) As Boolean
    
    public:
    bool AreTargetAndFallbackCompatible(
    	TessellatedShapeBuilderTarget target, 
    	TessellatedShapeBuilderFallback fallback
    )
    
    member AreTargetAndFallbackCompatible : 
            target : TessellatedShapeBuilderTarget * 
            fallback : TessellatedShapeBuilderFallback -> bool 
#### Parameters
target [TessellatedShapeBuilderTarget](c445e799-cb1d-a4cb-5333-719f5c19df18.htm)
     What kind of geometrical objects should be built. 
fallback [TessellatedShapeBuilderFallback](ce755fa3-8727-2cd3-dbc3-c952bdc83a17.htm)
     What should be done if a geometrical object described by 'target' parameter cannot be built using all data from all stored face sets. 
#### Return Value
Boolean True if the combination of fallback and target are a valid combination, false otherwise. 
Exception| Condition  
---|---  
[ArgumentOutOfRangeException](60f148c9-ece0-a6bb-4e12-bb4a9c8c8a24.htm)|  A value passed for an enumeration argument is not a member of that enumeration   
#### Reference
[TessellatedShapeBuilder Class](a144b0e3-c997-eac1-5c00-51c56d9e66f2.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)