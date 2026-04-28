# ComboBox.AddItem Method

---  
Adds a new item to the ComboBox.
**Namespace:** [Autodesk.Revit.UI](e86fd90a-8957-02a6-da7f-ced248966e3e.htm)**Assembly:** RevitAPIUI (in RevitAPIUI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public ComboBoxMember AddItem(
    	ComboBoxMemberData memberData
    )
    
    Public Function AddItem ( 
    	memberData As ComboBoxMemberData
    ) As ComboBoxMember
    
    public:
    ComboBoxMember^ AddItem(
    	ComboBoxMemberData^ memberData
    )
    
    member AddItem : 
            memberData : ComboBoxMemberData -> ComboBoxMember 
#### Parameters
memberData [ComboBoxMemberData](aba69b9c-dae6-c872-8dea-91ef7fda5e81.htm)
    An object containing the data needed to construct the ComboBoxMember. 
#### Return Value
[ComboBoxMember](3677ac9c-03e3-caee-d3eb-60f36856180a.htm) The newly added ComboBoxMember. 
Exception| Condition  
---|---  
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)| Thrown when memberData is .  
[ArgumentException](2e6e4206-97a8-dd4b-df5d-4269f4bb6088.htm)|  Thrown when button with memberData.Name already exists in the drop-down list.   
#### Reference
[ComboBox Class](a5667995-e628-13df-c157-39c95b2435d6.htm)
[Autodesk.Revit.UI Namespace](e86fd90a-8957-02a6-da7f-ced248966e3e.htm)