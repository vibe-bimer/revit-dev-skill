# FailureDefinitionId Class

---  
The unique identifier of a FailureDefinition. 
SystemObject [Autodesk.Revit.DBGuidEnum](36623d19-ba65-63c0-337a-f43c593a9931.htm) Autodesk.Revit.DBFailureDefinitionId
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public class FailureDefinitionId : GuidEnum
    
    Public Class FailureDefinitionId
    	Inherits GuidEnum
    
    public ref class FailureDefinitionId : public GuidEnum
    
    type FailureDefinitionId = 
        class
            inherit GuidEnum
        end
The FailureDefinitionId type exposes the following members.
| Name| Description  
---|---|---  
![Public method](../icons/pubMethod.gif)| [FailureDefinitionId](d8c33d58-de02-1ca4-3d3b-57a806b6dc33.htm)| Creates a new FailureDefinitionId instance.  
Top
| Name| Description  
---|---|---  
![Public property](../icons/pubProperty.gif)| [Guid](bc40d585-4c79-959e-5de2-0fe093c89bd1.htm)|  The Guid of GUID-based enum object. (Inherited from [GuidEnum](36623d19-ba65-63c0-337a-f43c593a9931.htm))  
Top
| Name| Description  
---|---|---  
![Public method](../icons/pubMethod.gif)| [Equals](7e78b321-b3c8-4283-875c-499d7de34acb.htm)|  Compares two Guid-based enum object based on their concrete class and GUID value. (Inherited from [GuidEnum](36623d19-ba65-63c0-337a-f43c593a9931.htm))  
![Public method](../icons/pubMethod.gif)| [GetHashCode](ac66f072-e558-0e10-b7ed-4cec874b0e0d.htm)|  Generates a hash code for this Guid-based enum object. (Inherited from [GuidEnum](36623d19-ba65-63c0-337a-f43c593a9931.htm))  
![Public method](../icons/pubMethod.gif)| GetType| Gets the Type of the current instance.(Inherited from Object)  
![Public method](../icons/pubMethod.gif)| ToString| Returns a string that represents the current object.(Inherited from Object)  
Top
| Name| Description  
---|---|---  
![Public operator](../icons/pubOperator.gif)![Static member](../icons/Static.gif)| [Equality(FailureDefinitionId, FailureDefinitionId)](a1872570-45a1-b596-b9b0-3a649efd8eaa.htm)| Compares two FailureDefinitionId instances.  
![Public operator](../icons/pubOperator.gif)![Static member](../icons/Static.gif)| [Inequality(FailureDefinitionId, FailureDefinitionId)](2c1212ac-b498-db33-a5f2-e9eccd71cdc8.htm)| Compares two FailureDefinitionId instances.  
Top
Each possible failure in Revit must be defined and registered during Revit application startup by creating a FailureDefinition object. Unique FailureDefinitionId must be used as a key to register FailureDefinition. Those unique FailureDefinitionId should be created using GUID generation tool. Later FailureDefinitionId can be used to lookup FailureDefinition in FailureDefinitionRegistry, and create and post FailureMessages. 
#### Reference
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)