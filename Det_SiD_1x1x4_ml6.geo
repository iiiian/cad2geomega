## definitions of a single detector dimensions  
Constant Vol_Det_NLayers         4
Constant Vol_Det_Array_ZPitch    {0.3}
Constant Vol_Det_Array_ZMax      {Vol_Frame_HalfThick+Vol_SiPMComp_pitch*3+Vol_Scin_Crystal_Height+TotalLayers*Vol_Si_sides_Width+Vol_Det_Array_ZPitch+Vol_Det_SiD_halfHeight}
#iConstant Vol_Det_Array_XIntvl    {0.234}
#Constant Vol_Det_Array_YIntvl    {0.234}
#Constant Vol_Det_Array_XOffSet   {0}
#Constant Vol_Det_Array_YOffSet   {0}

# First define one detector (scatter plate)  
Volume	Vol_Det
Vol_Det.Material	Silicon
Vol_Det.Shape	BRIK	2.6	2.6	Vol_Det_SiD_halfHeight
Vol_Det.Position	0.0	0.0	0.0
###Vol_Det.Position	0.0	0.0	10-0.8
#Vol_Det.Mother	WorldVolume
Vol_Det.Color	6
Vol_Det.Visibility	1

# Then detector array in a row... (Use this description or not: TBD)  
Volume Vol_Det_Array
Vol_Det_Array.Virtual		True
Vol_Det_Array.Visibility	1
Vol_Det_Array.Material		Vacuum
Vol_Det_Array.Shape		BRIK	0.6	0.6	0.3


For Z {Vol_Det_NLayers} {Vol_Det_Array_ZMax} {Vol_Det_Array_ZPitch+Vol_Det_SiD_halfHeight*2}
        Vol_Det.Copy Vol_Det_%Z
        Vol_Det_%Z.Position 0      0      $Z
        Vol_Det_%Z.Mother WorldVolume
Done

Strip3D Strip_Vol_Det
Strip_Vol_Det.SensitiveVolume    Vol_Det
Strip_Vol_Det.DetectorVolume     Vol_Det
# Both Values below from: $MEGALIB/resource/examples/geomega/mpesatellitebaseline/SiStripDetector.det
# ref: from Bloser.et.al "Development of Silicon Strip Detectors for a Medium Energy Gamma-ray Telescope"
# ref: https://arxiv.org/pdf/astro-ph/0302500.pdf
Strip_Vol_Det.NoiseThreshold     15	//in keV, TBD
Strip_Vol_Det.TriggerThreshold   40	//Detections start at 40 keV? TBD
Strip_Vol_Det.EnergyResolution   Gauss   0	0	4
Strip_Vol_Det.EnergyResolution   Gauss   100    100     4 
Strip_Vol_Det.Offset     0.2     0.2
Strip_Vol_Det.StripNumber        8     8
Strip_Vol_Det.GuardringEnergyResolution 100 1.5
Strip_Vol_Det.GuardringEnergyResolution 1000 1.5
Strip_Vol_Det.GuardringTriggerThreshold 40
Strip_Vol_Det.DepthResolution    200     0.05
Strip_Vol_Det.DepthResolutionThreshold   1

Trigger Tri_Vol_Det
Tri_Vol_Det.Veto false
Tri_Vol_Det.TriggerByChannel    true
Tri_Vol_Det.Detector     Strip_Vol_Det   1

Trigger SiD_GRTrigger
SiD_GRTrigger.Veto True
SiD_GRTrigger.TriggerByDetector True
SiD_GRTrigger.GuardringDetector Strip_Vol_Det 1
