# AssetProperty.AddConnectedAsset Method

---  
Adds a new connected asset attached to this asset property, if it allows it. 
**Namespace:** [Autodesk.Revit.DB.Visual](f5a10581-6ac2-be19-0e32-f87d05bc8b83.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public void AddConnectedAsset(
    	string schema
    )
    
    Public Sub AddConnectedAsset ( 
    	schema As String
    )
    
    public:
    void AddConnectedAsset(
    	String^ schema
    )
    
    member AddConnectedAsset : 
            schema : string -> unit 
#### Parameters
schema String
     The schema name. 
Exception| Condition  
---|---  
[ArgumentException](2e6e4206-97a8-dd4b-df5d-4269f4bb6088.htm)|  The schema name is not valid.   
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  A non-optional argument was null   
[InvalidOperationException](9e715f03-3884-e539-4dd6-8d7545733adc.htm)|  The asset property is not editable. -or- Cannot check validity for a property not being edited in AppearanceAssetEditScope. -or- Asset property is already connected to one asset.   
Cannot add a connected asset if one is already connected. Use RemoveConnectedAsset() to avoid an exception being thrown. A new preset asset is created and connected to the property. For "UnifiedBitmap", it contains an empty property unifiedbitmap_Bitmap. 
#### Reference
[AssetProperty Class](7be89499-d011-ab43-4715-0ee6f9335970.htm)
[Autodesk.Revit.DB.Visual Namespace](f5a10581-6ac2-be19-0e32-f87d05bc8b83.htm)