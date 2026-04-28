# PrintSetup Class

---  
Represents the Print Setup (Application Menu->Print->Print Setup) within Autodesk Revit.
SystemObject [Autodesk.Revit.DBAPIObject](beb86ef5-39ad-3f0d-0cd9-0c929387a2bb.htm) Autodesk.Revit.DBPrintSetup
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public class PrintSetup : APIObject
    
    Public Class PrintSetup
    	Inherits APIObject
    
    public ref class PrintSetup : public APIObject
    
    type PrintSetup = 
        class
            inherit APIObject
        end
The PrintSetup type exposes the following members.
| Name| Description  
---|---|---  
![Public property](../icons/pubProperty.gif)| [CurrentPrintSetting](64b832f9-8c68-70eb-1ade-a20a6344525e.htm)| The current Print Setting of Print Setup.  
![Public property](../icons/pubProperty.gif)| [InSession](8fa68bd4-9e97-f772-629b-25ef129939e3.htm)| The in-session Print Setting of Print Setup.  
![Public property](../icons/pubProperty.gif)| [IsReadOnly](d516bcd2-a3fd-a578-58f6-f1add979bd07.htm)| Identifies if the object is read-only or modifiable.(Inherited from [APIObject](beb86ef5-39ad-3f0d-0cd9-0c929387a2bb.htm))  
Top
| Name| Description  
---|---|---  
![Public method](../icons/pubMethod.gif)| [Delete](8748eb34-b067-f058-1451-51eb342680ac.htm)| Delete the current print setting, and make the In-Session setting as the current one.  
![Public method](../icons/pubMethod.gif)| [Dispose](7c03212a-b587-1c89-3912-efea0d2619c5.htm)| Causes the object to release immediately any resources it may be utilizing.(Inherited from [APIObject](beb86ef5-39ad-3f0d-0cd9-0c929387a2bb.htm))  
![Public method](../icons/pubMethod.gif)| Equals| Determines whether the specified object is equal to the current object.(Inherited from Object)  
![Public method](../icons/pubMethod.gif)| GetHashCode| Serves as the default hash function.(Inherited from Object)  
![Public method](../icons/pubMethod.gif)| GetType| Gets the Type of the current instance.(Inherited from Object)  
![Public method](../icons/pubMethod.gif)| [Rename](ce2e12e0-8875-7238-26d4-3fd323142899.htm)| Rename the current print setting with the specified name.  
![Public method](../icons/pubMethod.gif)| [Revert](ddea247a-625d-18e9-660f-eee28615018c.htm)| Revert the current print setting.  
![Public method](../icons/pubMethod.gif)| [Save](ef2cf0c5-fce2-6fba-f3a9-8e49b5cde845.htm)| Save the changes for the current print setting.  
![Public method](../icons/pubMethod.gif)| [SaveAs](b2ff4be8-70c5-ea87-a9d4-e0b7c4af39c6.htm)| Save the current print setting to another print setting with the specified name.  
![Public method](../icons/pubMethod.gif)| ToString| Returns a string that represents the current object.(Inherited from Object)  
Top
The Print Setup object can only get from PrintManager object. 
#### Reference
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)