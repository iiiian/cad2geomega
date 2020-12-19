//AbsorptionFileDirectory $(MEGALIB)/resource/examples/geomega/materials
AbsorptionFileDirectory $MEGAlib/resource/examples/geomega/materials  

Material Vacuum
Vacuum.Density	1E-12
Vacuum.RadiationLength	1E+12
Vacuum.Component	1 1 1

//Crystal Scintillator
Material CeBr3
CeBr3.Density	5.1
CeBr3.ComponentByAtoms	Ce	1.0
CeBr3.ComponentByAtoms	Br	3.0

//Plastic Scintillator
Material	BC412
BC412.Density	     1.032
BC412.ComponentByAtoms	C	10.0	//	C
BC412.ComponentByAtoms	H	11.0	//	H

Material	EJ200  //CH2CH(C6H4CH3)
EJ200.Density	1.023
EJ200.ComponentByAtoms	C	9.0 //C
EJ200.ComponentByAtoms	H	10.0	//H

Material	Aluminium
Aluminium.Density	2.7
Aluminium.ComponentByAtoms	Al	1.0

Material        Tantalum
Tantalum.Density	16.69
Tantalum.ComponentByAtoms	Ta	1.0

Material	Alu6061
Alu6061.Density               2.6989
Alu6061.ComponentByMass       28.086  14.  0.0060
Alu6061.ComponentByMass       55.847  26.  0.0070
Alu6061.ComponentByMass       63.546  29.  0.0030
Alu6061.ComponentByMass       54.938  25.  0.0015
Alu6061.ComponentByMass       24.305  12.  0.0100
Alu6061.ComponentByMass       51.996  24.  0.0020
Alu6061.ComponentByMass       65.390  30.  0.0025
Alu6061.ComponentByMass       47.880  22.  0.0015
Alu6061.ComponentByMass       26.982  13.  0.9665

Material	Quartz
Quartz.Density	2.65
Quartz.ComponentByAtoms	Si	1.0	//Silicon
Quartz.ComponentByAtoms	O	2.0	//Oxygen

Material	Vinyl //PVC
Vinyl.Density	1.38
Vinyl.ComponentByAtoms	C	2.0	//
Vinyl.ComponentByAtoms	H	3.0	//
Vinyl.ComponentByAtoms	Cl	1.0	//

Material	RTV615
RTV615.Density	1.02
RTV615.ComponentByAtoms	Si	1	//
RTV615.ComponentByAtoms	C	2	//
RTV615.ComponentByAtoms	H	3	//
RTV615.ComponentByAtoms	O	1	//

Material Germanium
Germanium.Density               5.323
Germanium.Component             Ge  1

Material Silicon
Silicon.Density	2.3290
Silicon.ComponentByAtoms	Si	1	//Si

Material SiliconeResin
SiliconeResin.Density	1.2
SiliconeResin.ComponentByAtoms	Si	1	//Si
SiliconeResin.ComponentByAtoms	C	1	//
SiliconeResin.ComponentByAtoms	H	3	//
SiliconeResin.ComponentByAtoms	O	3	//

Material Lead
Lead.Density	11.34
Lead.ComponentByAtoms	Pb	1

Material	EpoxyResin	//C21H25ClO5
EpoxyResin.Density	1.4
EpoxyResin.ComponentByAtoms	C	21
EpoxyResin.ComponentByAtoms	H	25
EpoxyResin.ComponentByAtoms	Cl	1
EpoxyResin.ComponentByAtoms	O	5

Material Kapton  //C22H10O5N2
Kapton.Density	1.42
Kapton.ComponentByAtoms	C	22
Kapton.ComponentByAtoms	H	10
Kapton.ComponentByAtoms	O	5
Kapton.ComponentByAtoms	N   2

Material BaSO4  
BaSO4.Density	4.49
BaSO4.ComponentByAtoms	Ba	1
BaSO4.ComponentByAtoms	S	1
BaSO4.ComponentByAtoms	O	4

Material GAGG
GAGG.Density    6.63
GAGG.ComponentByAtoms   Gd      3
GAGG.ComponentByAtoms   Ga      3
GAGG.ComponentByAtoms   Al      2
GAGG.ComponentByAtoms   O       12
