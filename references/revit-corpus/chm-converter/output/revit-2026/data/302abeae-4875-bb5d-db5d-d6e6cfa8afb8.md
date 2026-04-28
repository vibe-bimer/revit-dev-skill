# ElectricalSetting.GetElectricalSettings Method

---  
Get the electrical settings of the project. 
**Namespace:** [Autodesk.Revit.DB.Electrical](212a1314-7843-2c6c-3322-363127e4059f.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public static ElectricalSetting GetElectricalSettings(
    	Document document
    )
    
    Public Shared Function GetElectricalSettings ( 
    	document As Document
    ) As ElectricalSetting
    
    public:
    static ElectricalSetting^ GetElectricalSettings(
    	Document^ document
    )
    
    static member GetElectricalSettings : 
            document : Document -> ElectricalSetting 
#### Parameters
document [Document](db03274b-a107-aa32-9034-f3e0df4bb1ec.htm)
     The document. 
#### Return Value
[ElectricalSetting](d0c5bb12-7cf7-35e0-fc72-51e491c56bc2.htm) The electrical settings of the project. 
Exception| Condition  
---|---  
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  A non-optional argument was null   
#### Reference
[ElectricalSetting Class](d0c5bb12-7cf7-35e0-fc72-51e491c56bc2.htm)
[Autodesk.Revit.DB.Electrical Namespace](212a1314-7843-2c6c-3322-363127e4059f.htm)