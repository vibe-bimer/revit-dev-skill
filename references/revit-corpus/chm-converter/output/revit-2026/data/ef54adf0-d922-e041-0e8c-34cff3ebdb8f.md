# SpaceTag Class

---  
Provides access to the space tag in Autodesk Revit.
SystemObject [Autodesk.Revit.DBElement](eb16114f-69ea-f4de-0d0d-f7388b105a16.htm) [Autodesk.Revit.DBSpatialElementTag](0a20cdd6-6e44-bc77-a4c3-2d35470ba911.htm) Autodesk.Revit.DB.MechanicalSpaceTag
**Namespace:** [Autodesk.Revit.DB.Mechanical](0eafd899-5912-56fd-94b1-d286156e26fc.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public class SpaceTag : SpatialElementTag
    
    Public Class SpaceTag
    	Inherits SpatialElementTag
    
    public ref class SpaceTag : public SpatialElementTag
    
    type SpaceTag = 
        class
            inherit SpatialElementTag
        end
The SpaceTag type exposes the following members.
| Name| Description  
---|---|---  
![Public property](../icons/pubProperty.gif)| [AssemblyInstanceId](83989f69-1aca-1a49-9647-e57bc2d58b21.htm)|  The id of the assembly instance to which the element belongs. (Inherited from [Element](eb16114f-69ea-f4de-0d0d-f7388b105a16.htm))  
![Public property](../icons/pubProperty.gif)| [BoundingBox](def2f9f2-b23a-bcea-43a3-e6de41b014c8.htm)| Retrieves a box that circumscribes all geometry of the element.(Inherited from [Element](eb16114f-69ea-f4de-0d0d-f7388b105a16.htm))  
![Public property](../icons/pubProperty.gif)| [Category](8990bd36-af08-fc99-496b-f94fcb056b21.htm)| Retrieves a Category object that represents the category or sub category in which the element resides.(Inherited from [Element](eb16114f-69ea-f4de-0d0d-f7388b105a16.htm))  
![Public property](../icons/pubProperty.gif)| [CreatedPhaseId](c6032e01-f7cb-b2ea-3312-697d14216a31.htm)|  Id of a Phase at which the Element was created. (Inherited from [Element](eb16114f-69ea-f4de-0d0d-f7388b105a16.htm))  
![Public property](../icons/pubProperty.gif)| [DemolishedPhaseId](7949a983-c5dc-62a3-594a-d685365449d5.htm)|  Id of a Phase at which the Element was demolished. (Inherited from [Element](eb16114f-69ea-f4de-0d0d-f7388b105a16.htm))  
![Public property](../icons/pubProperty.gif)| [DesignOption](5c20fe58-e301-6ddb-3438-666db5c586ee.htm)| Returns the design option to which the element belongs.(Inherited from [Element](eb16114f-69ea-f4de-0d0d-f7388b105a16.htm))  
![Public property](../icons/pubProperty.gif)| [Document](9e530d25-61ca-3899-a531-cbcfd994358d.htm)| Returns the Document in which the Element resides.(Inherited from [Element](eb16114f-69ea-f4de-0d0d-f7388b105a16.htm))  
![Public property](../icons/pubProperty.gif)| [Geometry](d8a55a5b-2a69-d5ab-3e1f-6cf1ee43c8ec.htm)| Retrieves the geometric representation of the element.(Inherited from [Element](eb16114f-69ea-f4de-0d0d-f7388b105a16.htm))  
![Public property](../icons/pubProperty.gif)| [GroupId](9508a6c5-9681-bbef-07c5-1351583b0e1e.htm)|  The id of the group to which an element belongs. (Inherited from [Element](eb16114f-69ea-f4de-0d0d-f7388b105a16.htm))  
![Public property](../icons/pubProperty.gif)| [HasElbow](3a30f767-9284-8287-ba2f-dc1660c368b8.htm)|  Identifies if the tag's leader has an elbow point or not. (Inherited from [SpatialElementTag](0a20cdd6-6e44-bc77-a4c3-2d35470ba911.htm))  
![Public property](../icons/pubProperty.gif)| [HasLeader](645e86f1-72c0-00b4-ac36-f5e09a9be15f.htm)|  Identifies if a leader is displayed for the tag or not. (Inherited from [SpatialElementTag](0a20cdd6-6e44-bc77-a4c3-2d35470ba911.htm))  
![Public property](../icons/pubProperty.gif)| [Id](9235095b-b7ae-b6e5-6cc2-2b8d397644de.htm)|  A unique identifier for an Element in an Autodesk Revit project. (Inherited from [Element](eb16114f-69ea-f4de-0d0d-f7388b105a16.htm))  
![Public property](../icons/pubProperty.gif)| [IsModifiable](65f9f835-daaa-3efa-2976-3f932aa18366.htm)|  Identifies if the element is modifiable. (Inherited from [Element](eb16114f-69ea-f4de-0d0d-f7388b105a16.htm))  
![Public property](../icons/pubProperty.gif)| [IsOrphaned](f2e699b0-20cf-9af1-98c5-aa9f339260a0.htm)|  Identifies if the tag is orphaned or not. (Inherited from [SpatialElementTag](0a20cdd6-6e44-bc77-a4c3-2d35470ba911.htm))  
![Public property](../icons/pubProperty.gif)| [IsTaggingLink](75f8aca2-6dbe-c124-02fa-001620407989.htm)|  Identifies if the tag has reference to a spatial element in a linked document or not. (Inherited from [SpatialElementTag](0a20cdd6-6e44-bc77-a4c3-2d35470ba911.htm))  
![Public property](../icons/pubProperty.gif)| [IsTransient](f391d235-555f-6651-99c6-895fc443f8d8.htm)|  Indicates whether an element is transient or permanent. (Inherited from [Element](eb16114f-69ea-f4de-0d0d-f7388b105a16.htm))  
![Public property](../icons/pubProperty.gif)| [IsValidObject](0ffcf585-a39d-623c-9b5b-ab63c7bebfb6.htm)|  Specifies whether the .NET object represents a valid Revit entity. (Inherited from [Element](eb16114f-69ea-f4de-0d0d-f7388b105a16.htm))  
![Public property](../icons/pubProperty.gif)| [LeaderElbow](8c75fb6c-8b26-077b-125e-b4e2bce3d230.htm)|  The position of the leader's elbow (middle point). (Inherited from [SpatialElementTag](0a20cdd6-6e44-bc77-a4c3-2d35470ba911.htm))  
![Public property](../icons/pubProperty.gif)| [LeaderEnd](32bac43c-9a67-7d69-4068-eb4fe34f6acb.htm)|  The position of the leader's end. (Inherited from [SpatialElementTag](0a20cdd6-6e44-bc77-a4c3-2d35470ba911.htm))  
![Public property](../icons/pubProperty.gif)| [LevelId](27033fe3-6740-61e3-be82-47a6b8ae77db.htm)|  The id of the level associated with the element. (Inherited from [Element](eb16114f-69ea-f4de-0d0d-f7388b105a16.htm))  
![Public property](../icons/pubProperty.gif)| [Location](ac42ff31-d480-8b0e-4735-b5eb6ee1d53e.htm)| The location of the tag.(Inherited from [SpatialElementTag](0a20cdd6-6e44-bc77-a4c3-2d35470ba911.htm))  
![Public property](../icons/pubProperty.gif)| [Name](e372092e-ff47-71c2-1272-50ab08e5a41d.htm)| A human readable name for the Element.(Inherited from [Element](eb16114f-69ea-f4de-0d0d-f7388b105a16.htm))  
![Public property](../icons/pubProperty.gif)| [OwnerViewId](174c1adf-0be8-a4b0-41f3-9e3ea1d6b1f1.htm)|  The id of the view that owns the element. (Inherited from [Element](eb16114f-69ea-f4de-0d0d-f7388b105a16.htm))  
![Public property](../icons/pubProperty.gif)| [ParameterBuiltInParameter](2f91a9f3-7f69-72f9-08d6-a2d71dfb33db.htm)| Retrieves a parameter from the element given a parameter id.(Inherited from [Element](eb16114f-69ea-f4de-0d0d-f7388b105a16.htm))  
![Public property](../icons/pubProperty.gif)| [ParameterDefinition](87d8a88c-906e-85a9-f575-f263788b8584.htm)| Retrieves a parameter from the element based on its definition.(Inherited from [Element](eb16114f-69ea-f4de-0d0d-f7388b105a16.htm))  
![Public property](../icons/pubProperty.gif)| [ParameterGuid](2e852bc4-46c6-5598-cc45-0eaf38cf8973.htm)| Retrieves a parameter from the element given a GUID for a shared parameter.(Inherited from [Element](eb16114f-69ea-f4de-0d0d-f7388b105a16.htm))  
![Public property](../icons/pubProperty.gif)| [Parameters](7af5d66f-4533-33d2-dd82-d9573eaabf15.htm)| Retrieves a set containing all of the parameters that are contained within the element.(Inherited from [Element](eb16114f-69ea-f4de-0d0d-f7388b105a16.htm))  
![Public property](../icons/pubProperty.gif)| [ParametersMap](82c45482-a018-32e4-d8e5-9751e10ffeb9.htm)| Retrieves a map containing all of the parameters that are contained within the element.(Inherited from [Element](eb16114f-69ea-f4de-0d0d-f7388b105a16.htm))  
![Public property](../icons/pubProperty.gif)| [Pinned](c37bc7f9-409e-9b8a-f491-f700228985e2.htm)|  Identifies if the element has been pinned to prevent changes. (Inherited from [Element](eb16114f-69ea-f4de-0d0d-f7388b105a16.htm))  
![Public property](../icons/pubProperty.gif)| [RotationAngle](b82d0c41-45b0-9fb8-8370-f481988fc19b.htm)|  The rotation angle of the tag relative to its view (Inherited from [SpatialElementTag](0a20cdd6-6e44-bc77-a4c3-2d35470ba911.htm))  
![Public property](../icons/pubProperty.gif)| [Space](7fa4b1d8-2459-a46b-f68f-0a3a78a8383d.htm)| The space that the tag is associated with.  
![Public property](../icons/pubProperty.gif)| [SpaceTagType](fe2ef2e7-a378-40f1-388c-0acc0f03b1ab.htm)| The tag type.  
![Public property](../icons/pubProperty.gif)| [TagHeadPosition](4a5d8e7d-2a08-faec-4266-6773280aeb61.htm)|  The position of the tag's head. (Inherited from [SpatialElementTag](0a20cdd6-6e44-bc77-a4c3-2d35470ba911.htm))  
![Public property](../icons/pubProperty.gif)| [TagOrientation](710d99f6-e7eb-7254-d81c-392b18e9ddc6.htm)|  The orientation of the tag. (Inherited from [SpatialElementTag](0a20cdd6-6e44-bc77-a4c3-2d35470ba911.htm))  
![Public property](../icons/pubProperty.gif)| [TagText](0d546fcf-75eb-85e2-d603-171a629ed9fc.htm)|  The text displayed by the tag. (Inherited from [SpatialElementTag](0a20cdd6-6e44-bc77-a4c3-2d35470ba911.htm))  
![Public property](../icons/pubProperty.gif)| [UniqueId](f9a9cb77-6913-6d41-ecf5-4398a24e8ff8.htm)|  A stable unique identifier for an element within the document. (Inherited from [Element](eb16114f-69ea-f4de-0d0d-f7388b105a16.htm))  
![Public property](../icons/pubProperty.gif)| [VersionGuid](2a1eae53-2c5c-a7be-1ef2-0f48626c62f5.htm)|  Get the element version Guid. (Inherited from [Element](eb16114f-69ea-f4de-0d0d-f7388b105a16.htm))  
![Public property](../icons/pubProperty.gif)| [View](abc98018-65b1-0908-373d-1d9359346167.htm)|  The view in which the tag was placed. (Inherited from [SpatialElementTag](0a20cdd6-6e44-bc77-a4c3-2d35470ba911.htm))  
![Public property](../icons/pubProperty.gif)| [ViewSpecific](785b351e-51cb-e3c6-cb91-f307c8e4ba73.htm)|  Identifies if the element is owned by a view. (Inherited from [Element](eb16114f-69ea-f4de-0d0d-f7388b105a16.htm))  
![Public property](../icons/pubProperty.gif)| [WorksetId](4b45250a-7a07-a89a-0f63-cf8d142a7b93.htm)|  Get Id of the Workset which owns the element. (Inherited from [Element](eb16114f-69ea-f4de-0d0d-f7388b105a16.htm))  
Top
| Name| Description  
---|---|---  
![Public method](../icons/pubMethod.gif)| [ArePhasesModifiable](329b02eb-5ee4-1715-2fbf-2cbbc0d3ff2a.htm)|  Returns true if the properties CreatedPhaseId and DemolishedPhaseId can be modified for this Element. (Inherited from [Element](eb16114f-69ea-f4de-0d0d-f7388b105a16.htm))  
![Public method](../icons/pubMethod.gif)| [CanBeHidden](887010c4-de58-96b6-0931-4c226e6b142b.htm)| Indicates if the element can be hidden in the view.(Inherited from [Element](eb16114f-69ea-f4de-0d0d-f7388b105a16.htm))  
![Public method](../icons/pubMethod.gif)| [CanBeLocked](5ef8834b-168d-02ac-2f29-5d43f5da87f2.htm)|  Identifies if the element can be locked. (Inherited from [Element](eb16114f-69ea-f4de-0d0d-f7388b105a16.htm))  
![Public method](../icons/pubMethod.gif)| [CanDeleteSubelement](c9795398-2d2c-db8e-a4e7-ca99d69fcc1d.htm)|  Checks if given subelement can be removed from the element. (Inherited from [Element](eb16114f-69ea-f4de-0d0d-f7388b105a16.htm))  
![Public method](../icons/pubMethod.gif)| [CanHaveTypeAssigned](051e2945-b690-5387-d083-7cdb7cb75332.htm)|  Identifies if the element can have a type assigned. (Inherited from [Element](eb16114f-69ea-f4de-0d0d-f7388b105a16.htm))  
![Public method](../icons/pubMethod.gif)| [ChangeTypeId(ElementId)](479b5d94-abd3-db42-27d7-6a3eda12f285.htm)|  Changes the type of the element. (Inherited from [Element](eb16114f-69ea-f4de-0d0d-f7388b105a16.htm))  
![Public method](../icons/pubMethod.gif)| [DeleteEntity](ef0fa7d8-8152-6300-285d-1c0cdc08e5a7.htm)|  Deletes the existing entity created by %schema% in the element (Inherited from [Element](eb16114f-69ea-f4de-0d0d-f7388b105a16.htm))  
![Public method](../icons/pubMethod.gif)| [DeleteSubelement](de199938-feea-7437-c19f-162714b70dcd.htm)|  Removes a subelement from the element. (Inherited from [Element](eb16114f-69ea-f4de-0d0d-f7388b105a16.htm))  
![Public method](../icons/pubMethod.gif)| [DeleteSubelements](6410b135-88fe-b111-769f-f14e86b42a05.htm)| (Inherited from [Element](eb16114f-69ea-f4de-0d0d-f7388b105a16.htm))  
![Public method](../icons/pubMethod.gif)| [Dispose](e3b07ee4-f500-1b95-c786-8984289a5143.htm)| (Inherited from [Element](eb16114f-69ea-f4de-0d0d-f7388b105a16.htm))  
![Public method](../icons/pubMethod.gif)| Equals| Determines whether the specified object is equal to the current object.(Inherited from Object)  
![Public method](../icons/pubMethod.gif)| [EvaluateAllParameterValues](5250da77-1e16-13c6-fed6-5ef29997e6f9.htm)|  Evaluates all the parameters' values of the element. (Inherited from [Element](eb16114f-69ea-f4de-0d0d-f7388b105a16.htm))  
![Public method](../icons/pubMethod.gif)| [EvaluateParameterValues](1a6ca65f-09d9-a4e6-9365-3ed64e3097fc.htm)| (Inherited from [Element](eb16114f-69ea-f4de-0d0d-f7388b105a16.htm))  
![Public method](../icons/pubMethod.gif)| [GetDependentElements](56e875d3-014b-a996-69c3-e6ed9b885f5c.htm)|  Get all elements that, from a logical point of view, are the children of this Element. (Inherited from [Element](eb16114f-69ea-f4de-0d0d-f7388b105a16.htm))  
![Public method](../icons/pubMethod.gif)| [GetEntity](09d80bf1-c1d0-aa2e-4f18-e5a5e9c9d93f.htm)|  Returns the existing entity corresponding to the Schema if it has been saved in the Element, or an invalid entity otherwise. (Inherited from [Element](eb16114f-69ea-f4de-0d0d-f7388b105a16.htm))  
![Public method](../icons/pubMethod.gif)| [GetEntitySchemaGuids](742313cb-1bea-f873-e5ca-1bfac782286b.htm)|  Returns the Schema guids of any Entities stored in this element. (Inherited from [Element](eb16114f-69ea-f4de-0d0d-f7388b105a16.htm))  
![Public method](../icons/pubMethod.gif)| [GetExternalFileReference](e784fb6e-94f4-09bd-1f9c-17e6968e18a5.htm)|  Gets information pertaining to the external file referenced by the element. (Inherited from [Element](eb16114f-69ea-f4de-0d0d-f7388b105a16.htm))  
![Public method](../icons/pubMethod.gif)| [GetExternalResourceReference](fb4b9493-1d7b-5387-c171-2078225183ca.htm)|  Gets the ExternalResourceReference associated with a specified external resource type. (Inherited from [Element](eb16114f-69ea-f4de-0d0d-f7388b105a16.htm))  
![Public method](../icons/pubMethod.gif)| [GetExternalResourceReferenceExpanded](1a28171e-8460-d849-4e7d-9a306a22cd6e.htm)|  Gets the collection of ExternalResourceReference associated with a specified external resource type. (Inherited from [Element](eb16114f-69ea-f4de-0d0d-f7388b105a16.htm))  
![Public method](../icons/pubMethod.gif)| [GetExternalResourceReferences](7df4341b-5102-8016-d6fa-45bc27e8c3af.htm)|  Gets the map of the external resource references referenced by the element. (Inherited from [Element](eb16114f-69ea-f4de-0d0d-f7388b105a16.htm))  
![Public method](../icons/pubMethod.gif)| [GetExternalResourceReferencesExpanded](954cb21e-5c4e-1e52-7e35-1eb0ed4b050b.htm)|  Gets the expanded map of the external resource references referenced by the element. (Inherited from [Element](eb16114f-69ea-f4de-0d0d-f7388b105a16.htm))  
![Public method](../icons/pubMethod.gif)| [GetGeneratingElementIds](112590d2-de20-dd1f-ae05-df7dfb3b410f.htm)|  Returns the ids of the element(s) that generated the input geometry object. (Inherited from [Element](eb16114f-69ea-f4de-0d0d-f7388b105a16.htm))  
![Public method](../icons/pubMethod.gif)| [GetGeometryObjectFromReference](536b3d7a-ec8d-29f6-5957-751468c98dd0.htm)|  Retrieve one geometric primitive contained in the element given a reference. (Inherited from [Element](eb16114f-69ea-f4de-0d0d-f7388b105a16.htm))  
![Public method](../icons/pubMethod.gif)| GetHashCode| Serves as the default hash function.(Inherited from Object)  
![Public method](../icons/pubMethod.gif)| [GetMaterialArea](02417c40-bcc4-f04c-9897-cf47737e8739.htm)|  Gets the area of the material with the given id. (Inherited from [Element](eb16114f-69ea-f4de-0d0d-f7388b105a16.htm))  
![Public method](../icons/pubMethod.gif)| [GetMaterialIds](6011352e-151b-b8ac-14cc-45970f2fe5ad.htm)|  Gets the element ids of all materials present in the element. (Inherited from [Element](eb16114f-69ea-f4de-0d0d-f7388b105a16.htm))  
![Public method](../icons/pubMethod.gif)| [GetMaterialVolume](99b50d87-bfa6-ca67-e205-47b22cad6587.htm)|  Gets the volume of the material with the given id. (Inherited from [Element](eb16114f-69ea-f4de-0d0d-f7388b105a16.htm))  
![Public method](../icons/pubMethod.gif)| [GetMonitoredLinkElementIds](42b25291-f1b9-d240-c876-1b53f24f60e0.htm)|  Provides the link instance IDs when the element is monitoring. (Inherited from [Element](eb16114f-69ea-f4de-0d0d-f7388b105a16.htm))  
![Public method](../icons/pubMethod.gif)| [GetMonitoredLocalElementIds](47ca1e8c-f79d-a18b-505b-73a4358d2264.htm)|  Provides the local element IDs when the element is monitoring. (Inherited from [Element](eb16114f-69ea-f4de-0d0d-f7388b105a16.htm))  
![Public method](../icons/pubMethod.gif)| [GetOrderedParameters](4bf4c0da-f841-0943-f9e0-246a666c1775.htm)|  Gets the parameters associated to the element in order. (Inherited from [Element](eb16114f-69ea-f4de-0d0d-f7388b105a16.htm))  
![Public method](../icons/pubMethod.gif)| [GetParameter](fc4e5245-d2e5-e31d-a6e3-177106e75e10.htm)| Retrieves a parameter from the element given identifier.(Inherited from [Element](eb16114f-69ea-f4de-0d0d-f7388b105a16.htm))  
![Public method](../icons/pubMethod.gif)| [GetParameterFormatOptions](476c8179-f938-d047-db7c-776cf7e2929c.htm)|  Returns a FormatOptions override for the element Parameter, or a default FormatOptions if no override exists. (Inherited from [Element](eb16114f-69ea-f4de-0d0d-f7388b105a16.htm))  
![Public method](../icons/pubMethod.gif)| [GetParameters](0cf342ef-c64f-b0b7-cbec-da8f3428a7dc.htm)| Retrieves the parameters from the element via the given name.(Inherited from [Element](eb16114f-69ea-f4de-0d0d-f7388b105a16.htm))  
![Public method](../icons/pubMethod.gif)| [GetPhaseStatus](eedf5981-b5e2-dda7-cb5e-01a4d4fc7f6c.htm)|  Gets the status of a given element in the input phase (Inherited from [Element](eb16114f-69ea-f4de-0d0d-f7388b105a16.htm))  
![Public method](../icons/pubMethod.gif)| [GetSubelements](feabfd59-bd0f-ab61-34a1-d0d22f58c881.htm)|  Returns the collection of element subelements. (Inherited from [Element](eb16114f-69ea-f4de-0d0d-f7388b105a16.htm))  
![Public method](../icons/pubMethod.gif)| GetType| Gets the Type of the current instance.(Inherited from Object)  
![Public method](../icons/pubMethod.gif)| [GetTypeId](cc66ca8e-302e-f072-edca-d847bcf14c86.htm)|  Returns the identifier of this element's type. (Inherited from [Element](eb16114f-69ea-f4de-0d0d-f7388b105a16.htm))  
![Public method](../icons/pubMethod.gif)| [GetValidTypes](086554ba-3c70-9c0f-8a09-55a4da4ef905.htm)|  Obtains a set of types that are valid for this element. (Inherited from [Element](eb16114f-69ea-f4de-0d0d-f7388b105a16.htm))  
![Public method](../icons/pubMethod.gif)| [HasPhases](5d850f8a-4a50-406b-6c59-b85d49dcbb2e.htm)|  Returns true if this Element has the properties CreatedPhaseId and DemolishedPhaseId. (Inherited from [Element](eb16114f-69ea-f4de-0d0d-f7388b105a16.htm))  
![Public method](../icons/pubMethod.gif)| [IsCreatedPhaseOrderValid](b2bcaf7f-c453-d6e2-fd85-083783e935f3.htm)|  Returns true if createdPhaseId and demolishedPhaseId are in order. (Inherited from [Element](eb16114f-69ea-f4de-0d0d-f7388b105a16.htm))  
![Public method](../icons/pubMethod.gif)| [IsDemolishedPhaseOrderValid](46ec60b6-b1c5-25aa-c544-34379298c7b8.htm)|  Returns true if createdPhaseId and demolishedPhaseId are in order. (Inherited from [Element](eb16114f-69ea-f4de-0d0d-f7388b105a16.htm))  
![Public method](../icons/pubMethod.gif)| [IsExternalFileReference](2bf6162f-0b0f-88cb-9c67-d4bd435537b5.htm)|  Determines whether this Element represents an external file. (Inherited from [Element](eb16114f-69ea-f4de-0d0d-f7388b105a16.htm))  
![Public method](../icons/pubMethod.gif)| [IsHidden](2c3d4123-fded-cd5f-ed0d-12b1e1a3ce42.htm)| Identifies if the element has been permanently hidden in the view.(Inherited from [Element](eb16114f-69ea-f4de-0d0d-f7388b105a16.htm))  
![Public method](../icons/pubMethod.gif)| [IsMonitoringLinkElement](fde81756-5518-4924-c14e-f9ef2bb3fa6e.htm)|  Indicate whether an element is monitoring any elements in any linked models. (Inherited from [Element](eb16114f-69ea-f4de-0d0d-f7388b105a16.htm))  
![Public method](../icons/pubMethod.gif)| [IsMonitoringLocalElement](9a41a87c-2b3b-b6ed-1743-98c002b20ce3.htm)|  Indicate whether an element is monitoring other local elements. (Inherited from [Element](eb16114f-69ea-f4de-0d0d-f7388b105a16.htm))  
![Public method](../icons/pubMethod.gif)| [IsPhaseCreatedValid](ae48b10d-4a66-ee2c-85bf-f426435d0dbe.htm)|  Returns true if createdPhaseId is an allowed value for the property CreatedPhaseId in this Element. (Inherited from [Element](eb16114f-69ea-f4de-0d0d-f7388b105a16.htm))  
![Public method](../icons/pubMethod.gif)| [IsPhaseDemolishedValid](f97c9af7-fcbe-f617-d7ff-cfd4fb5af37f.htm)|  Returns true if demolishedPhaseId is an allowed value for the property DemolishedPhaseId in this Element. (Inherited from [Element](eb16114f-69ea-f4de-0d0d-f7388b105a16.htm))  
![Public method](../icons/pubMethod.gif)| [IsValidType(ElementId)](c3ca4ee5-c2b3-beb3-ee51-cc6cafc82c93.htm)|  Checks if given type is valid for this element. (Inherited from [Element](eb16114f-69ea-f4de-0d0d-f7388b105a16.htm))  
![Public method](../icons/pubMethod.gif)| [LookupParameter](4400b9f8-3787-0947-5113-2522ff5e5de2.htm)| Attempts to find a parameter on the element which has the given name.(Inherited from [Element](eb16114f-69ea-f4de-0d0d-f7388b105a16.htm))  
![Public method](../icons/pubMethod.gif)| [MoveToReferenceLocation](d6a80b4d-020f-6271-49eb-54db837725a5.htm)|  Moves the SpatialElementTag to the location of SpatialElement that the tag is associated with. (Inherited from [SpatialElementTag](0a20cdd6-6e44-bc77-a4c3-2d35470ba911.htm))  
![Public method](../icons/pubMethod.gif)| [RefersToExternalResourceReference](0a4aabb3-f684-0800-7bf5-31540831593f.htm)|  Determines whether this Element uses external resources associated with a specified external resource type. (Inherited from [Element](eb16114f-69ea-f4de-0d0d-f7388b105a16.htm))  
![Public method](../icons/pubMethod.gif)| [RefersToExternalResourceReferences](387c00cd-3932-76e6-152b-bfe4efb8fbc1.htm)|  Determines whether this Element uses external resources. (Inherited from [Element](eb16114f-69ea-f4de-0d0d-f7388b105a16.htm))  
![Public method](../icons/pubMethod.gif)| [SetEntity](e90c01ab-3d2f-2f46-3e88-8297e686dc80.htm)|  Stores the entity in the element. If an Entity described by the same Schema already exists, it is overwritten. (Inherited from [Element](eb16114f-69ea-f4de-0d0d-f7388b105a16.htm))  
![Public method](../icons/pubMethod.gif)| ToString| Returns a string that represents the current object.(Inherited from Object)  
Top
The space Tag object can be queried for space information.
#### Reference
[Autodesk.Revit.DB.Mechanical Namespace](0eafd899-5912-56fd-94b1-d286156e26fc.htm)