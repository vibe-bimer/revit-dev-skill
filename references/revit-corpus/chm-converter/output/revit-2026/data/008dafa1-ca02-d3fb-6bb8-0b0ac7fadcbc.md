# ElectricalSystem.SelectPanel Method

---  
Set the panel for the Electrical System. 
**Namespace:** [Autodesk.Revit.DB.Electrical](212a1314-7843-2c6c-3322-363127e4059f.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public void SelectPanel(
    	FamilyInstance panel
    )
    
    Public Sub SelectPanel ( 
    	panel As FamilyInstance
    )
    
    public:
    void SelectPanel(
    	FamilyInstance^ panel
    )
    
    member SelectPanel : 
            panel : FamilyInstance -> unit 
#### Parameters
panel [FamilyInstance](0d2231f8-91e6-794f-92ae-16aad8014b27.htm)
     The panel of the electrical system. 
Exception| Condition  
---|---  
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  A non-optional argument was null   
[InvalidOperationException](9e715f03-3884-e539-4dd6-8d7545733adc.htm)|  The panel does not have enough slots and Feed Through Lugs is unchecked or already in use. -or- Thrown when the panel cannot be set for the electrical system.   
If successful, the panel will be set for the system. Otherwise the exception will be thrown. This method will only function with the Autodesk Revit MEP application. 
#### Reference
[ElectricalSystem Class](158b4be3-bbe5-11eb-cccc-788edd3a7590.htm)
[Autodesk.Revit.DB.Electrical Namespace](212a1314-7843-2c6c-3322-363127e4059f.htm)