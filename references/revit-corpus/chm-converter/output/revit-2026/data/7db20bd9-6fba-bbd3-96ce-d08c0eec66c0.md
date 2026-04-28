# DuctFittingAndAccessoryData Class

---  
The input data used by external servers for calculation of the duct fitting and duct accessory coefficient. 
SystemObject Autodesk.Revit.DB.MechanicalDuctFittingAndAccessoryData
**Namespace:** [Autodesk.Revit.DB.Mechanical](0eafd899-5912-56fd-94b1-d286156e26fc.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public class DuctFittingAndAccessoryData : IDisposable
    
    Public Class DuctFittingAndAccessoryData
    	Implements IDisposable
    
    public ref class DuctFittingAndAccessoryData : IDisposable
    
    type DuctFittingAndAccessoryData = 
        class
            interface IDisposable
        end
The DuctFittingAndAccessoryData type exposes the following members.
| Name| Description  
---|---|---  
![Public property](../icons/pubProperty.gif)| [Density](39bfde86-cd51-d76c-49c5-2eda2ff7a2aa.htm)|  The air density for the duct fitting or duct accessory, Units: kg/ft^3.   
![Public property](../icons/pubProperty.gif)| [DynamicViscosity](fd65feaa-bf6d-3f17-c278-01648880a9e4.htm)|  The dynamic viscosity of air for the duct fitting or duct accessory, Units: (kg/(ftÂ·s)).   
![Public property](../icons/pubProperty.gif)| [IsValidObject](fd6dd959-097d-38ce-2ce4-7295cb9f03bb.htm)|  Specifies whether the .NET object represents a valid Revit entity.   
![Public property](../icons/pubProperty.gif)| [Origin](e861b86d-b8ef-6978-3c78-1ff297e512ff.htm)|  The origin position of the duct fitting or duct accessory.   
![Public property](../icons/pubProperty.gif)| [PartType](798cb715-a76a-1a2e-7162-abba4f773337.htm)|  The part type of the duct fitting or duct accessory.   
![Public property](../icons/pubProperty.gif)| [ServerGUID](94277b06-9ddc-a15a-032e-984176ddbd44.htm)|  The GUID of the duct fitting or duct accessory.   
![Public property](../icons/pubProperty.gif)| [SystemClassification](b6c60ee8-b012-b506-dc42-a47c82ee9e7c.htm)|  The system classification of the duct fitting or duct accessory.   
Top
| Name| Description  
---|---|---  
![Public method](../icons/pubMethod.gif)| [Dispose](a637738b-5a16-7783-de47-0829610e360d.htm)| Releases all resources used by the DuctFittingAndAccessoryData  
![Public method](../icons/pubMethod.gif)| Equals| Determines whether the specified object is equal to the current object.(Inherited from Object)  
![Public method](../icons/pubMethod.gif)| [GetAllConnectorData](6a6fd6cc-325d-4d44-6e08-309cdc81ef42.htm)|  Gets the connector data of the pipe fitting or pipe accessory.   
![Public method](../icons/pubMethod.gif)| [GetEntity](c1e1344a-74d7-fd84-877f-e4513270e61c.htm)|  Returns an Entity of the Schema of the serverGUID. or an invalid entity otherwise.   
![Public method](../icons/pubMethod.gif)| [GetFamilyInstanceId](b219f66a-497c-b7ca-a1fa-6cf36287b7a4.htm)|  Gets the Id of the fiting or accessory instance   
![Public method](../icons/pubMethod.gif)| GetHashCode| Serves as the default hash function.(Inherited from Object)  
![Public method](../icons/pubMethod.gif)| GetType| Gets the Type of the current instance.(Inherited from Object)  
![Public method](../icons/pubMethod.gif)| ToString| Returns a string that represents the current object.(Inherited from Object)  
Top
A FamilyInstance is the input data for the calculation, 
#### Reference
[Autodesk.Revit.DB.Mechanical Namespace](0eafd899-5912-56fd-94b1-d286156e26fc.htm)