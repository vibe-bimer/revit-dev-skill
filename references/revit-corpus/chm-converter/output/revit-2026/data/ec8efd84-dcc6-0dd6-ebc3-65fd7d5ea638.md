# StructuralSectionLAngle Constructor

---  
Creates a new instance of Structural Section L Angle shape with the associated set of parameters, used to attach to structural element. 
**Namespace:** [Autodesk.Revit.DB.Structure.StructuralSections](09862f38-63f6-a5f8-e560-ae775901bc92.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public StructuralSectionLAngle(
    	double width,
    	double height,
    	double flangeThickness,
    	double webThickness,
    	double webFillet,
    	double flangeFillet,
    	double centroidHorizontal,
    	double centroidVertical,
    	double principalAxesAngle,
    	double sectionArea,
    	double perimeter,
    	double nominalWeight,
    	double momentOfInertiaStrongAxis,
    	double momentOfInertiaWeakAxis,
    	double elasticModulusStrongAxis,
    	double elasticModulusWeakAxis,
    	double plasticModulusStrongAxis,
    	double plasticModulusWeakAxis,
    	double torsionalMomentOfInertia,
    	double torsionalModulus,
    	double warpingConstant,
    	double shearAreaStrongAxis,
    	double shearAreaWeakAxis,
    	double boltSpacing1LongerFlange,
    	double boltSpacing2LongerFlange,
    	double boltSpacingShorterFlange,
    	double boltDiameterLongerFlange,
    	double boltDiameterShorterFlange,
    	double topWebFillet
    )
    
    Public Sub New ( 
    	width As Double,
    	height As Double,
    	flangeThickness As Double,
    	webThickness As Double,
    	webFillet As Double,
    	flangeFillet As Double,
    	centroidHorizontal As Double,
    	centroidVertical As Double,
    	principalAxesAngle As Double,
    	sectionArea As Double,
    	perimeter As Double,
    	nominalWeight As Double,
    	momentOfInertiaStrongAxis As Double,
    	momentOfInertiaWeakAxis As Double,
    	elasticModulusStrongAxis As Double,
    	elasticModulusWeakAxis As Double,
    	plasticModulusStrongAxis As Double,
    	plasticModulusWeakAxis As Double,
    	torsionalMomentOfInertia As Double,
    	torsionalModulus As Double,
    	warpingConstant As Double,
    	shearAreaStrongAxis As Double,
    	shearAreaWeakAxis As Double,
    	boltSpacing1LongerFlange As Double,
    	boltSpacing2LongerFlange As Double,
    	boltSpacingShorterFlange As Double,
    	boltDiameterLongerFlange As Double,
    	boltDiameterShorterFlange As Double,
    	topWebFillet As Double
    )
    
    public:
    StructuralSectionLAngle(
    	double width, 
    	double height, 
    	double flangeThickness, 
    	double webThickness, 
    	double webFillet, 
    	double flangeFillet, 
    	double centroidHorizontal, 
    	double centroidVertical, 
    	double principalAxesAngle, 
    	double sectionArea, 
    	double perimeter, 
    	double nominalWeight, 
    	double momentOfInertiaStrongAxis, 
    	double momentOfInertiaWeakAxis, 
    	double elasticModulusStrongAxis, 
    	double elasticModulusWeakAxis, 
    	double plasticModulusStrongAxis, 
    	double plasticModulusWeakAxis, 
    	double torsionalMomentOfInertia, 
    	double torsionalModulus, 
    	double warpingConstant, 
    	double shearAreaStrongAxis, 
    	double shearAreaWeakAxis, 
    	double boltSpacing1LongerFlange, 
    	double boltSpacing2LongerFlange, 
    	double boltSpacingShorterFlange, 
    	double boltDiameterLongerFlange, 
    	double boltDiameterShorterFlange, 
    	double topWebFillet
    )
    
    new : 
            width : float * 
            height : float * 
            flangeThickness : float * 
            webThickness : float * 
            webFillet : float * 
            flangeFillet : float * 
            centroidHorizontal : float * 
            centroidVertical : float * 
            principalAxesAngle : float * 
            sectionArea : float * 
            perimeter : float * 
            nominalWeight : float * 
            momentOfInertiaStrongAxis : float * 
            momentOfInertiaWeakAxis : float * 
            elasticModulusStrongAxis : float * 
            elasticModulusWeakAxis : float * 
            plasticModulusStrongAxis : float * 
            plasticModulusWeakAxis : float * 
            torsionalMomentOfInertia : float * 
            torsionalModulus : float * 
            warpingConstant : float * 
            shearAreaStrongAxis : float * 
            shearAreaWeakAxis : float * 
            boltSpacing1LongerFlange : float * 
            boltSpacing2LongerFlange : float * 
            boltSpacingShorterFlange : float * 
            boltDiameterLongerFlange : float * 
            boltDiameterShorterFlange : float * 
            topWebFillet : float -> StructuralSectionLAngle
#### Parameters
width Double
     Section width. 
height Double
     Section height, depth. 
flangeThickness Double
     Flange Thickness. 
webThickness Double
     Web Thickness. 
webFillet Double
     Web Fillet - fillet radius between web and flange. 
flangeFillet Double
     Flange Fillet - fillet radius at the flange end. 
centroidHorizontal Double
     Distance from centroid to the left extremites along horizontal axis. 
centroidVertical Double
     Distance from centroid to the upper extremites along vertical axis. 
principalAxesAngle Double
     Rotation angle between the principal axes and cross section reference planes. 
sectionArea Double
     Cross section area. 
perimeter Double
     Painting surface of the unit length. 
nominalWeight Double
     Unit weight (not mass) per unit length, for self-weight calculation or quantity survey. 
momentOfInertiaStrongAxis Double
     Moment of Inertia about main strong axis (I). 
momentOfInertiaWeakAxis Double
     Moment of Inertia about main weak axis (I). 
elasticModulusStrongAxis Double
     Elastic section modulus about main strong axis for calculation of bending stresses. 
elasticModulusWeakAxis Double
     Elastic section modulus about main weak axis for calculation of bending stresses. 
plasticModulusStrongAxis Double
     Plastic section modulus in bending about main strong axis (Z, Wpl) 
plasticModulusWeakAxis Double
     Plastic section modulus in bending about main weak axis. 
torsionalMomentOfInertia Double
     Torsional Moment of inertia (J, IT, K), for calculation of torsional deformation 
torsionalModulus Double
     Section modulus for calculations of torsion stresses (Ct) 
warpingConstant Double
     Warping constant (Cw, Iomega, H) 
shearAreaStrongAxis Double
     Shear area (reduced extreme shear stress coefficient) in the direction of strong axis (Wq). 
shearAreaWeakAxis Double
     Shear area (reduced extreme shear stress coefficient) in the direction of weak axis (Wq). 
boltSpacing1LongerFlange Double
     Standard bolt spacing first row in the longer flange, in. (mm) 
boltSpacing2LongerFlange Double
     Standard bolt spacing second row in the longer flange, in. (mm) 
boltSpacingShorterFlange Double
     Standard bolt spacing in the shorter flangI-split Parallel Flangee, in. (mm) 
boltDiameterLongerFlange Double
     Maximum bolt hole diameter in the longer flange, in. (mm) 
boltDiameterShorterFlange Double
     Maximum bolt hole diameter in the shorter flange, in. (mm) 
topWebFillet Double
     Top Web Fillet - fillet radius at the top of web. 
#### Reference
[StructuralSectionLAngle Class](977c3aa9-0676-c93b-1546-c0db2d96c564.htm)
[Autodesk.Revit.DB.Structure.StructuralSections Namespace](09862f38-63f6-a5f8-e560-ae775901bc92.htm)