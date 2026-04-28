# BRepBuilderPersistentIds Methods

---  
The [BRepBuilderPersistentIds](c9dd5c21-1d35-9f12-ec28-553e699a6ee2.htm) type exposes the following members.
| Name| Description  
---|---|---  
![Public method](../icons/pubMethod.gif)| [AddSubTag](c8bf3c16-6864-8323-3c57-c132e9282473.htm)|  Adds a correspondence between an ExternalGeometryId and a BRepBuilderGeometryId. Note that an existing correspondence in the map cannot be updated and that a particular BRepBuilderGeometryId may be related to at most one ExternalGeometryId.   
![Public method](../icons/pubMethod.gif)| [Dispose](73d61523-7280-b04d-480f-9ae04a9373af.htm)|   
![Public method](../icons/pubMethod.gif)| Equals| Determines whether the specified object is equal to the current object.(Inherited from Object)  
![Public method](../icons/pubMethod.gif)| GetHashCode| Serves as the default hash function.(Inherited from Object)  
![Public method](../icons/pubMethod.gif)| GetType| Gets the Type of the current instance.(Inherited from Object)  
![Public method](../icons/pubMethod.gif)| [IsAssociatedBRepBuilderValid](817496ab-6542-91cf-247d-6455add3df09.htm)|  Validates the associated (in the constructor) BRepBuilder for this BRepBuilderPersistentIds.   
![Public method](../icons/pubMethod.gif)| [IsBRepBuilderGeometryIdFaceOrEdge](22fae990-9618-4ea0-3fc7-775000c40a94.htm)|  Validates the input BRepBuilderGeometryId that will be used to create a correspondence. In order to be valid, the input BRepBuilderGeometryId must represent the ID of either a Face or an Edge.   
![Public method](../icons/pubMethod.gif)| [IsValidBRepBuilderGeometryIdForNewCorrespondence](1d7e2823-e05b-2519-a55b-1b3075744497.htm)|  Validates the input BRepBuilderGeometryId that will be used to create a correspondence. In order to be valid, a correspondence for the input BRepBuilderGeometryId must not already exist.   
![Public method](../icons/pubMethod.gif)| [IsValidExternalGeometryIdForNewCorrespondence](634779e5-d3d2-c68c-ccc8-07731fe44486.htm)|  Validates the input ExternalGeometryId that will be used to create a correspondence. In order to be valid, a correspondence for the input ExternalGeometryId must not already exist.   
![Public method](../icons/pubMethod.gif)| ToString| Returns a string that represents the current object.(Inherited from Object)  
Top
#### Reference
[BRepBuilderPersistentIds Class](c9dd5c21-1d35-9f12-ec28-553e699a6ee2.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)