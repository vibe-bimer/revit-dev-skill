# ScheduleFilter Class

---  
A filter in a schedule. 
SystemObject Autodesk.Revit.DBScheduleFilter
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public class ScheduleFilter : IDisposable
    
    Public Class ScheduleFilter
    	Implements IDisposable
    
    public ref class ScheduleFilter : IDisposable
    
    type ScheduleFilter = 
        class
            interface IDisposable
        end
The ScheduleFilter type exposes the following members.
| Name| Description  
---|---|---  
![Public method](../icons/pubMethod.gif)| [ScheduleFilter](aa3c48a1-94c7-a3dd-1b20-faa87fe1a23e.htm)|  Creates a new ScheduleFilter.   
![Public method](../icons/pubMethod.gif)| [ScheduleFilter(ScheduleFieldId, ScheduleFilterType)](cdde2306-7abe-15d5-dc37-39b23f916dbd.htm)|  Creates a new ScheduleFilter.   
![Public method](../icons/pubMethod.gif)| [ScheduleFilter(ScheduleFieldId, ScheduleFilterType, ElementId)](4ac7ace5-54dd-ef66-3e7d-b9503c5a7f75.htm)|  Creates a new ScheduleFilter.   
![Public method](../icons/pubMethod.gif)| [ScheduleFilter(ScheduleFieldId, ScheduleFilterType, Double)](1eedd87b-7ab3-e586-411d-241c5fa15eca.htm)|  Creates a new ScheduleFilter.   
![Public method](../icons/pubMethod.gif)| [ScheduleFilter(ScheduleFieldId, ScheduleFilterType, Int32)](979e8984-99f3-587c-648d-9dd21db7ef90.htm)|  Creates a new ScheduleFilter.   
![Public method](../icons/pubMethod.gif)| [ScheduleFilter(ScheduleFieldId, ScheduleFilterType, String)](6ec07804-d396-ad9b-d0b8-08b37b3b9ae7.htm)|  Creates a new ScheduleFilter.   
Top
| Name| Description  
---|---|---  
![Public property](../icons/pubProperty.gif)| [FieldId](c11c4781-9acd-baf9-692d-93bf4ab9c86e.htm)|  The ID of the field used to filter the schedule.   
![Public property](../icons/pubProperty.gif)| [FilterType](bbf3558f-d6a6-1f19-1f89-d51e68072baa.htm)|  The filter type.   
![Public property](../icons/pubProperty.gif)| [IsDoubleValue](27d2efc3-39f8-ba90-06e3-454c7889284c.htm)|  Indicates if the filter has a double value.   
![Public property](../icons/pubProperty.gif)| [IsElementIdValue](e96b8bef-b3e3-1a77-f2f5-4ec524f9fcd6.htm)|  Indicates if the filter has an ElementId value.   
![Public property](../icons/pubProperty.gif)| [IsIntegerValue](7e3e7135-4c1a-2c8b-1e77-15dcf80ec72e.htm)|  Indicates if the filter has an integer value.   
![Public property](../icons/pubProperty.gif)| [IsNullValue](40a03966-e5bd-237c-121c-23e9b28b5a82.htm)|  Indicates if the filter has no specified value.   
![Public property](../icons/pubProperty.gif)| [IsStringValue](6f4ef6ca-b44c-dd64-32e1-dd1bc236f89a.htm)|  Indicates if the filter has a string value.   
![Public property](../icons/pubProperty.gif)| [IsValidObject](eb738886-34c0-5603-c330-e94a88927381.htm)|  Specifies whether the .NET object represents a valid Revit entity.   
Top
| Name| Description  
---|---|---  
![Public method](../icons/pubMethod.gif)| [Dispose](6830e4c4-13dc-5e85-5d0c-715de0a52bf1.htm)| Releases all resources used by the ScheduleFilter  
![Public method](../icons/pubMethod.gif)| Equals| Determines whether the specified object is equal to the current object.(Inherited from Object)  
![Public method](../icons/pubMethod.gif)| [GetDoubleValue](9c1cce12-0cf2-35d6-0a3d-fe9caff8faf0.htm)|  Gets the filter value for a filter using a double value.   
![Public method](../icons/pubMethod.gif)| [GetElementIdValue](3ee4da28-2a21-f9a3-0b58-03286ec21bfc.htm)|  Gets the filter value for a filter using an ElementId value.   
![Public method](../icons/pubMethod.gif)| GetHashCode| Serves as the default hash function.(Inherited from Object)  
![Public method](../icons/pubMethod.gif)| [GetIntegerValue](f2fc20ab-05c6-2b2c-80dd-86a93d0ddd4c.htm)|  Gets the filter value for a filter using an integer value.   
![Public method](../icons/pubMethod.gif)| [GetStringValue](1bd344af-4984-367d-f8a6-769f7fb0d093.htm)|  Gets the filter value for a filter using a string value.   
![Public method](../icons/pubMethod.gif)| GetType| Gets the Type of the current instance.(Inherited from Object)  
![Public method](../icons/pubMethod.gif)| [SetNullValue](2c193a4c-37fd-0b4d-a026-d9dfd773c16b.htm)|  Sets the filter to have no specified value (used for HasParameter filters).   
![Public method](../icons/pubMethod.gif)| [SetValue(Double)](c510b2ca-b22d-789f-b329-58efd5713da0.htm)|  Set the filter value to a double.   
![Public method](../icons/pubMethod.gif)| [SetValue(ElementId)](768e344c-4e15-866f-4cb1-84fe74d549d3.htm)|  Set the filter value to an ElementId.   
![Public method](../icons/pubMethod.gif)| [SetValue(Int32)](2f52924c-8851-6512-c2b0-28205a799c21.htm)|  Set the filter value to an integer.   
![Public method](../icons/pubMethod.gif)| [SetValue(String)](9556c7a1-1bf9-2844-3357-ada1c0f653de.htm)|  Set the filter value to a string.   
![Public method](../icons/pubMethod.gif)| ToString| Returns a string that represents the current object.(Inherited from Object)  
Top
The ScheduleFilter class represents a single filter in a schedule. A filter is a condition that must be satisfied for an element to appear in the schedule. All filters must be satisfied for an element to appear in the schedule.
A schedule can be filtered by data that is not displayed in the schedule by marking the field used for filtering as hidden using the ScheduleField.IsHidden property.
#### Reference
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)