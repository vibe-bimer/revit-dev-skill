# FabricationConfiguration.ValidateConnectionsForAllFabricationParts Method

---  
Validates all fabrication part connections in the current project. Invalid connections found will be added to the connection validation information class. The validation checks for bad alignments or gaps, incompatible connection types, mismatches of size, mismatches of shapes. 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public ConnectionValidationInfo ValidateConnectionsForAllFabricationParts(
    	bool updateGapForStraights
    )
    
    Public Function ValidateConnectionsForAllFabricationParts ( 
    	updateGapForStraights As Boolean
    ) As ConnectionValidationInfo
    
    public:
    ConnectionValidationInfo^ ValidateConnectionsForAllFabricationParts(
    	bool updateGapForStraights
    )
    
    member ValidateConnectionsForAllFabricationParts : 
            updateGapForStraights : bool -> ConnectionValidationInfo 
#### Parameters
updateGapForStraights Boolean
     Attempt to update straights to remove the gap between the connctors. 
#### Return Value
[ConnectionValidationInfo](f9acd482-6c59-12ef-342c-7b6a3ab7f867.htm) The information about the validation check. 
Exception| Condition  
---|---  
[InvalidOperationException](9e715f03-3884-e539-4dd6-8d7545733adc.htm)|  this operation failed.   
If set to update straights any updated straights will be added to a set of element identifiers. Call [GetUpdatedStraightsFromValidateConnections](710c220d-b82b-413b-7491-e9d633359713.htm) to get the set of element identifiers for the updated straights. 
#### Reference
[FabricationConfiguration Class](f7094105-2acf-03f1-7a7f-82dd24087a17.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)