# RebarFreeFormAccessor Methods

---  
The [RebarFreeFormAccessor](bf146aa3-f780-646e-c3cd-42e7a61d18e6.htm) type exposes the following members.
| Name| Description  
---|---|---  
![Public method](../icons/pubMethod.gif)| [AddUpdatingSharedParameter](6401f06c-476d-bacd-6173-9c7948d286ce.htm)|  Add existing shared parameter as a dependency for the calculation of the rebar curves.   
![Public method](../icons/pubMethod.gif)| [CanBeHookNormal](3848f3d8-f2f3-fca8-66af-9122d00b3869.htm)| **Obsolete.** A vector can be termination's (e.g. hook, crank) normal if for a bar specified by index, the bar direction is not parallel with the vector.   
![Public method](../icons/pubMethod.gif)| [CanBeTerminationPlaneNormal](ebd9c149-79f2-9568-3a06-958146774435.htm)|  A vector can be termination (e.g. hook, crank) plane normal if for a bar specified by index, the bar direction is not parallel with the vector.   
![Public method](../icons/pubMethod.gif)| [DisconnectFromServer](0eab1821-30f3-19c9-05b0-fa7c08b6e038.htm)|  Sets the GUID of the API server to invalid value and removes all the server related data from the Rebar (ex. the current constraints and the handle tags are removed). Calling this method will result in a Rebar that will not react to host changes anymore, however it will still have all the properties that it used to have.   
![Public method](../icons/pubMethod.gif)| [Dispose](1fba9ff6-d5b4-937b-10fb-9d50b71c9e9a.htm)|   
![Public method](../icons/pubMethod.gif)| Equals| Determines whether the specified object is equal to the current object.(Inherited from Object)  
![Public method](../icons/pubMethod.gif)| [GetCouplerIdAtIndex](aeed9fe2-0225-4940-0914-a47a9e6c61d5.htm)|  Gets the id of the Rebar Coupler that is applied to the bar with index barPositionIndex at the specified end.   
![Public method](../icons/pubMethod.gif)| [GetCrankTypeIdAtIndex](73de7bb6-46fc-bfae-60c0-fdce7ed6c31d.htm)|  Gets the id of the Rebar Crank Type that is applied to this Rebar at the bar with index barPositionIndex at the specified end.   
![Public method](../icons/pubMethod.gif)| [GetCustomDistributionPath](122a818c-2a81-ff20-2435-67b19e20e5af.htm)|  Gets the custom distribution path for free form rebar set.   
![Public method](../icons/pubMethod.gif)| [GetEndTreatmentTypeIdAtIndex](12bf4634-9e2c-08c3-5aa2-54f796651c70.htm)|  Gets the id of the EndTreatmentType that is applied to the bar with index barPositionIndex at the specified end.   
![Public method](../icons/pubMethod.gif)| GetHashCode| Serves as the default hash function.(Inherited from Object)  
![Public method](../icons/pubMethod.gif)| [GetHookOrientationAngle](65b56092-69cf-d374-8e0f-689c91c53586.htm)| **Obsolete.** Get the termination's rotation angle at end. The angle is used for both hook and crank.   
![Public method](../icons/pubMethod.gif)| [GetHookOrientationAngleAtIndex](f75534af-b105-e4aa-fb99-27104ea6cf6c.htm)| **Obsolete.** Gets the termnination's rotation angle that is applied to this Rebar at the bar with index barPositionIndex at the specified end. The rotation angle it's the same for both hook and crank.   
![Public method](../icons/pubMethod.gif)| [GetHookOrientationAtIndex](c2292cbe-0b87-0105-6937-5caaae22955d.htm)| **Obsolete.** Gets the termination's orientation that is applied to this Rebar at the bar with index barPositionIndex at the specified end. The orientation it's the same for both hook and crank.   
![Public method](../icons/pubMethod.gif)| [GetHookPlaneNormalForBarIdx](b6111921-8664-832f-a7c4-e647e7db296e.htm)| **Obsolete.** Returns the plane's normal in which the termination (e.g. hook, crank) at end of bar with index barPositionIndex will stay. The plane's normal is used for both hook and crank.   
![Public method](../icons/pubMethod.gif)| [GetHookTypeIdAtIndex](27a70740-3367-6509-aeae-e58fb578e763.htm)|  Gets the id of the RebarHookType that is applied to this Rebar at the bar with index barPositionIndex at the specified end.   
![Public method](../icons/pubMethod.gif)| [GetServerGUID](10a19cd7-d552-6382-262b-4bf268957821.htm)|  Returns the GUID of the API server.   
![Public method](../icons/pubMethod.gif)| [GetShapeIdAtIndex](79172a28-c9c1-3659-681f-f365ba834f03.htm)|  Gets the Rebar Shape id for the bar with index barPositionIndex.   
![Public method](../icons/pubMethod.gif)| [GetTerminationOrientationAtIndex](a0787bdd-9f85-ba13-3ef8-8fc1d7344db8.htm)|  Gets the termination's (e.g. hook, crank ) orientation that is applied to this Rebar at the bar with index barPositionIndex at the specified end.   
![Public method](../icons/pubMethod.gif)| [GetTerminationPlaneNormalForBarIndex](5b8bc12b-dee4-a901-abf4-13a9bebcdb52.htm)|  Gets the plane's normal in which the termination (e.g. hook, crank) at end of bar with index barPositionIndex will stay.   
![Public method](../icons/pubMethod.gif)| [GetTerminationRotationAngleAtIndex](8abe8bb1-434d-fd91-5931-b326b400fb9c.htm)|  Gets the termination (e.g hook,crank) rotation angle that is applied to this Rebar at the bar with index barPositionIndex at the specified end.   
![Public method](../icons/pubMethod.gif)| GetType| Gets the Type of the current instance.(Inherited from Object)  
![Public method](../icons/pubMethod.gif)| [GetUpdatingSharedParameters](7a5ecdb0-a5cd-e64b-1640-c4c03cd16a25.htm)|  Get the shared parameters listed as dependencies in the calculation of the rebar curves   
![Public method](../icons/pubMethod.gif)| [HasValidAlignedServer](7ada7359-1303-4a2e-d276-c93567f2bdce.htm)|  Returns true if the current rebar is created with the Aligned Free Form rebar server, false otherwise.   
![Public method](../icons/pubMethod.gif)| [HasValidServer](be45e502-8cce-5dec-709d-38cfcc9e91d2.htm)|  Returns true if the current rebar contains a valid server GUID, false otherwise.   
![Public method](../icons/pubMethod.gif)| [IsBarMatchedWithShapeInReverseOrder](4e8d66b4-8a27-200a-e7d5-8cd8bec7c34b.htm)|  Checks if the bar at index barPositionIndex it's matched in reversed order with its shape.   
![Public method](../icons/pubMethod.gif)| [IsUnconstrained](4999e26b-8de2-5db8-ddbf-12e98184773e.htm)|  Returns true if the current rebar doesn't contains a valid server GUID, or contains a valid server GUID and no valid constraints.   
![Public method](../icons/pubMethod.gif)| [RemoveUpdatingSharedParameter](17cac627-4846-e71d-b181-6ea6ef7d5257.htm)|  Remove existing shared parameter as a dependency for the calculation of the rebar curves.   
![Public method](../icons/pubMethod.gif)| [SetCurves(IListCurveLoop)](8ca32c92-c297-84db-ffdc-8ab2017d6b98.htm)|   
![Public method](../icons/pubMethod.gif)| [SetCurves(IListIListCurve)](475f2655-9de8-66d5-441a-63b1e001452f.htm)|   
![Public method](../icons/pubMethod.gif)| [SetHookOrientationAngle](1bd55100-b071-0a46-c349-65cf46eb417f.htm)| **Obsolete.** Set the termination's rotation angle at end. The angle will be used for both hook and crank. Will throw exception if the rebar has valid constraints.   
![Public method](../icons/pubMethod.gif)| [SetHookPlaneNormalForBarIdx](1e594f7a-4db8-1a90-dec7-8787008dc934.htm)| **Obsolete.** Set the plane's normal in which the termination at end of bar with index barPositionIndex will stay. The plane's normal will be used for both hook and crank. Will throw exception if the rebar has valid constraints.   
![Public method](../icons/pubMethod.gif)| [SetLayoutAsFixedNumber](18bde367-36cd-ed5b-33cc-9d908158be4a.htm)|  Sets the Layout Rule property of rebar set to Fixed Number.   
![Public method](../icons/pubMethod.gif)| [SetLayoutAsMaximumSpacing](45957132-0208-54f9-c191-00ae98333a15.htm)|  Sets the Layout Rule property of rebar set to Maximum Spacing.   
![Public method](../icons/pubMethod.gif)| [SetLayoutAsMinimumClearSpacing](9f22ba8b-df0c-31fe-14f4-62e1ee79a04f.htm)|  Sets the Layout Rule property of rebar set to Minimum Clear Spacing.   
![Public method](../icons/pubMethod.gif)| [SetLayoutAsNumberWithSpacing](6ff04299-3217-c078-5f59-3f058c071bb2.htm)|  Sets the Layout Rule property of rebar set to Number With Spacing.   
![Public method](../icons/pubMethod.gif)| [SetLayoutAsSingle](95e8c923-7dea-1bb2-e5b9-70974a46485f.htm)|  Sets the Layout Rule property of rebar set to Single.   
![Public method](../icons/pubMethod.gif)| [SetReportedShape](3f015caf-7844-ab56-c962-9020b141e0d2.htm)|  This method changes the RebarShape of a Free Form Rebar that is using RebarWorkInstructions.Straight property to the provided RebarShape.   
![Public method](../icons/pubMethod.gif)| [SetTerminationPlaneNormalForBarIndex](e9008ca6-ffab-9c00-e366-1797d30e0a7b.htm)|  Sets the plane's normal in which the termination (e.g. hook, crank) at end of bar with index barPositionIndex will stay. Will throw exception if the rebar has valid constraints.   
![Public method](../icons/pubMethod.gif)| ToString| Returns a string that represents the current object.(Inherited from Object)  
Top
#### Reference
[RebarFreeFormAccessor Class](bf146aa3-f780-646e-c3cd-42e7a61d18e6.htm)
[Autodesk.Revit.DB.Structure Namespace](d586b341-f687-9d90-e96d-255806b7d4fc.htm)