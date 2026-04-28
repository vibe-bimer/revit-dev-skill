# StructuralInstanceUsageFilter Class

---  
A filter used to find elements that are structural family instances (typically columns, beams or braces) of the given structural usage. 
SystemObject [Autodesk.Revit.DBElementFilter](b8b46cbf-9ecc-0745-ec53-c3c3b6510113.htm) [Autodesk.Revit.DBElementSlowFilter](e06b1e14-dd8d-8137-74ac-8ac4929eee85.htm) Autodesk.Revit.DB.StructureStructuralInstanceUsageFilter
**Namespace:** [Autodesk.Revit.DB.Structure](d586b341-f687-9d90-e96d-255806b7d4fc.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public class StructuralInstanceUsageFilter : ElementSlowFilter
    
    Public Class StructuralInstanceUsageFilter
    	Inherits ElementSlowFilter
    
    public ref class StructuralInstanceUsageFilter : public ElementSlowFilter
    
    type StructuralInstanceUsageFilter = 
        class
            inherit ElementSlowFilter
        end
The StructuralInstanceUsageFilter type exposes the following members.
| Name| Description  
---|---|---  
![Public method](../icons/pubMethod.gif)| [StructuralInstanceUsageFilter(StructuralInstanceUsage)](f3785343-c384-6d4b-440c-1f1c9bcc75b7.htm)|  Constructs a new instance of a filter to match structural family instances (typically columns, beams, or braces) of the given structural usage.   
![Public method](../icons/pubMethod.gif)| [StructuralInstanceUsageFilter(StructuralInstanceUsage, Boolean)](bb575ce2-5911-c72c-a012-0475f75abd01.htm)|  Constructs a new instance of a filter to match family instances by structural usage, with the option to match all family instances which are not of the given structural usage.   
Top
| Name| Description  
---|---|---  
![Public property](../icons/pubProperty.gif)| [Inverted](ceab2eea-cc4c-d7dc-b34c-b3c1f012eda1.htm)|  True if the results of the filter are inverted; elements that would normally be accepted by this filter will be rejected, and elements that would normally be rejected will be accepted. (Inherited from [ElementFilter](b8b46cbf-9ecc-0745-ec53-c3c3b6510113.htm))  
![Public property](../icons/pubProperty.gif)| [IsValidObject](027ccc75-b7f6-4ee2-cf98-563df96b0dbb.htm)|  Specifies whether the .NET object represents a valid Revit entity. (Inherited from [ElementFilter](b8b46cbf-9ecc-0745-ec53-c3c3b6510113.htm))  
![Public property](../icons/pubProperty.gif)| [StructuralUsage](97da5c43-52bd-79a2-94c2-e184c75bf221.htm)|  The family instance structural usage.   
Top
| Name| Description  
---|---|---  
![Public method](../icons/pubMethod.gif)| [Dispose](5d3ffdf8-dce9-0724-d101-44693775671c.htm)| (Inherited from [ElementFilter](b8b46cbf-9ecc-0745-ec53-c3c3b6510113.htm))  
![Public method](../icons/pubMethod.gif)| Equals| Determines whether the specified object is equal to the current object.(Inherited from Object)  
![Public method](../icons/pubMethod.gif)| GetHashCode| Serves as the default hash function.(Inherited from Object)  
![Public method](../icons/pubMethod.gif)| GetType| Gets the Type of the current instance.(Inherited from Object)  
![Public method](../icons/pubMethod.gif)| [PassesFilter(Element)](1402f6e0-995c-2644-c7a9-7016a81a4ef4.htm)|  Applies the filter to a given element. (Inherited from [ElementFilter](b8b46cbf-9ecc-0745-ec53-c3c3b6510113.htm))  
![Public method](../icons/pubMethod.gif)| [PassesFilter(Document, ElementId)](a8e86084-b91f-c3cf-c334-e163168328d6.htm)|  Applies the filter to a given element. (Inherited from [ElementFilter](b8b46cbf-9ecc-0745-ec53-c3c3b6510113.htm))  
![Public method](../icons/pubMethod.gif)| ToString| Returns a string that represents the current object.(Inherited from Object)  
Top
This filter is a slow filter, but it uses a quick filter to eliminate non-candidate elements before the elements are obtained and expanded. Therefore this filter does not have to be paired with another quick filter to minimize the number of Elements that are expanded. 
#### Reference
[Autodesk.Revit.DB.Structure Namespace](d586b341-f687-9d90-e96d-255806b7d4fc.htm)