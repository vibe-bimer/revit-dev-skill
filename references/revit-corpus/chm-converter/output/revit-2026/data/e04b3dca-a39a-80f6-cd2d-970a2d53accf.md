# ExportLayerInfo.CategoryType Property

---  
The category type which this layer belongs to. 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public LayerCategoryType CategoryType { get; set; }
    
    Public Property CategoryType As LayerCategoryType
    	Get
    	Set
    
    public:
    property LayerCategoryType CategoryType {
    	LayerCategoryType get ();
    	void set (LayerCategoryType value);
    }
    
    member CategoryType : LayerCategoryType with get, set
#### Property Value
[LayerCategoryType](7fc41293-ee24-a6cd-dc71-a5f9941cd0da.htm)
Exception| Condition  
---|---  
[ArgumentOutOfRangeException](60f148c9-ece0-a6bb-4e12-bb4a9c8c8a24.htm)|  When setting this property: A value passed for an enumeration argument is not a member of that enumeration   
#### Reference
[ExportLayerInfo Class](88a99694-968a-99f7-870a-f46737bd5927.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)