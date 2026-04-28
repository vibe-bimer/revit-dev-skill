# AlignmentStationLabel.CreateSet Method

---  
Creates a collection of [AlignmentStationLabel](5c51c34b-8b34-99fe-d8c6-b6f1ba7caba7.htm) objects along with their underlying [SpotDimension](f3c633ac-1595-cb8d-5c1b-66eb3eefb433.htm) elements. 
**Namespace:** [Autodesk.Revit.DB.Infrastructure](cedea963-42a0-acf8-0f0e-5477c4212ae9.htm)**Assembly:** Autodesk.CivilAlignments.DBApplication (in Autodesk.CivilAlignments.DBApplication.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public static ICollection<AlignmentStationLabel> CreateSet(
    	Alignment alignment,
    	View view,
    	AlignmentStationLabelSetOptions options
    )
    
    Public Shared Function CreateSet ( 
    	alignment As Alignment,
    	view As View,
    	options As AlignmentStationLabelSetOptions
    ) As ICollection(Of AlignmentStationLabel)
    
    public:
    static ICollection<AlignmentStationLabel^>^ CreateSet(
    	Alignment^ alignment, 
    	View^ view, 
    	AlignmentStationLabelSetOptions^ options
    )
    
    static member CreateSet : 
            alignment : Alignment * 
            view : View * 
            options : AlignmentStationLabelSetOptions -> ICollection<AlignmentStationLabel> 
#### Parameters
alignment [Alignment](6594712d-3b22-9b08-ab4c-782df88f36d1.htm)
    The alignment on which the alignment station label is placed.
view [View](fb92a4e7-f3a7-ef14-e631-342179b18de9.htm)
    The view for which the alignment station label is created.
options [AlignmentStationLabelSetOptions](15f4337d-738d-ec32-e7bc-4f2c569f4c59.htm)
    The alignment station options of the label set to be created.
#### Return Value
ICollection[AlignmentStationLabel](5c51c34b-8b34-99fe-d8c6-b6f1ba7caba7.htm)
#### Reference
[AlignmentStationLabel Class](5c51c34b-8b34-99fe-d8c6-b6f1ba7caba7.htm)
[Autodesk.Revit.DB.Infrastructure Namespace](cedea963-42a0-acf8-0f0e-5477c4212ae9.htm)