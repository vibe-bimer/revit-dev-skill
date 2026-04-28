# RebarContainerItem.SetHookOrientation Method

---  
**Note: This API is now obsolete.**
Sets the orientation of the hook plane at the start or at the end of the rebar with respect to the orientation of the first or the last curve and the plane normal. 
**Namespace:** [Autodesk.Revit.DB.Structure](d586b341-f687-9d90-e96d-255806b7d4fc.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    [ObsoleteAttribute("This method is deprecated in Revit 2026 and may be removed in a later version of Revit. Please use RebarContainerItem.SetTerminationOrientation(int end, RebarTerminationOrientation hookOrientation) instead.")]
    public void SetHookOrientation(
    	int end,
    	RebarHookOrientation hookOrientation
    )
    
    <ObsoleteAttribute("This method is deprecated in Revit 2026 and may be removed in a later version of Revit. Please use RebarContainerItem.SetTerminationOrientation(int end, RebarTerminationOrientation hookOrientation) instead.")>
    Public Sub SetHookOrientation ( 
    	end As Integer,
    	hookOrientation As RebarHookOrientation
    )
    
    public:
    [ObsoleteAttribute(L"This method is deprecated in Revit 2026 and may be removed in a later version of Revit. Please use RebarContainerItem.SetTerminationOrientation(int end, RebarTerminationOrientation hookOrientation) instead.")]
    void SetHookOrientation(
    	int end, 
    	RebarHookOrientation hookOrientation
    )
    
    [<ObsoleteAttribute("This method is deprecated in Revit 2026 and may be removed in a later version of Revit. Please use RebarContainerItem.SetTerminationOrientation(int end, RebarTerminationOrientation hookOrientation) instead.")>]
    member SetHookOrientation : 
            end : int * 
            hookOrientation : RebarHookOrientation -> unit 
#### Parameters
end Int32
     0 for the start hook, 1 for the end hook. 
hookOrientation [RebarHookOrientation](e8365754-0811-8d4e-864a-55bf34af3a87.htm)
     Only two values are permitted: Value = Right: The hook is on your right as you stand at the end of the bar, with the bar behind you, taking the bar's normal as "up." Value = Left: The hook is on your left as you stand at the end of the bar, with the bar behind you, taking the bar's normal as "up." 
Exception| Condition  
---|---  
[ArgumentOutOfRangeException](60f148c9-ece0-a6bb-4e12-bb4a9c8c8a24.htm)|  end must be 0 or 1. -or- A value passed for an enumeration argument is not a member of that enumeration   
If RebarShapeDefinesHooks property of ReinforcementSettings is true (non-European shapes), setHookOrientation method does nothing. 
#### Reference
[RebarContainerItem Class](764f647c-9c3e-b971-1c44-b63f756e1448.htm)
[Autodesk.Revit.DB.Structure Namespace](d586b341-f687-9d90-e96d-255806b7d4fc.htm)