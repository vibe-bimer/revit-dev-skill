# StorageType Enumeration

---  
An enumerated type listing all of the internal parameter data storage types that Autodesk Revit supports. 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public enum StorageType
    
    Public Enumeration StorageType
    
    public enum class StorageType
    
    type StorageType
Member name| Value| Description  
---|---|---  
Double| 2|  The data will be stored internally in the form of an 8 byte floating point number.   
ElementId| 4|  The data type represents an element and is stored as the id of the element.   
Integer| 1|  The internal data is stored in the form of a signed 32 bit integer.   
None| 0|  None represents an invalid storage type. This value should not be used.   
String| 3|  The internal data will be stored in the form of a string of characters.   
#### Reference
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)