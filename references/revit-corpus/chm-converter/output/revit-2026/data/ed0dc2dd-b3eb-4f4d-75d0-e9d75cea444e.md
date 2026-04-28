# RebarContainerItem.NumberOfBarPositions Property

---  
The number of potential bars in the set. 
**Namespace:** [Autodesk.Revit.DB.Structure](d586b341-f687-9d90-e96d-255806b7d4fc.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public int NumberOfBarPositions { get; set; }
    
    Public Property NumberOfBarPositions As Integer
    	Get
    	Set
    
    public:
    property int NumberOfBarPositions {
    	int get ();
    	void set (int value);
    }
    
    member NumberOfBarPositions : int with get, set
#### Property Value
Int32
Exception| Condition  
---|---  
[ArgumentOutOfRangeException](60f148c9-ece0-a6bb-4e12-bb4a9c8c8a24.htm)|  When setting this property: the number of bar positions numberOfBarPositions is less than 1 or more than 1002.   
[InapplicableDataException](dc1a6d15-8923-a1fe-722a-4e976634a519.htm)|  When setting this property: This rebar element represents a single bar (the layout rule is Single).   
The number of positions is equal to the number of actual bars (the Quantity), plus one or two more positions depending on IncludeFistBar and IncludeLastBar. 
#### Reference
[RebarContainerItem Class](764f647c-9c3e-b971-1c44-b63f756e1448.htm)
[Autodesk.Revit.DB.Structure Namespace](d586b341-f687-9d90-e96d-255806b7d4fc.htm)