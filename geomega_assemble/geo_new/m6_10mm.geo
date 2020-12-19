Shape TUBE m6_10mm_subshape1
m6_10mm_subshape1.Parameters 0 5.0 3.0 0 360

Shape TUBE m6_10mm_subshape2
m6_10mm_subshape2.Parameters 0 3.0 5.0 0 360

Include Materials.geo

Orientation m6_10mm_subshape1_to_m6_10mm_subshape2
m6_10mm_subshape1_to_m6_10mm_subshape2.Position 0.0 0.0 -8.0
m6_10mm_subshape1_to_m6_10mm_subshape2.Rotation 0 180.0 90.0

Shape Union m6_10mm_subshape3
m6_10mm_subshape3.Parameters m6_10mm_subshape1 m6_10mm_subshape2 m6_10mm_subshape1_to_m6_10mm_subshape2

Volume m6_10mm
m6_10mm.Material Aluminium
m6_10mm.Shape m6_10mm_subshape3
m6_10mm.Copy m6_10mm1
m6_10mm.Copy m6_10mm2
m6_10mm.Copy m6_10mm3
m6_10mm.Copy m6_10mm4

m6_10mm1.Mother WorldVolume
m6_10mm1.Color 11
m6_10mm1.Position {44.19+0.0} {-66.75+0.0} {80.5+-3.0}
m6_10mm1.Rotation 0.0 0.0 0.0

m6_10mm2.Mother WorldVolume
m6_10mm2.Color 11
m6_10mm2.Position {-38.81+0.0} {-66.75+0.0} {80.5+-3.0}
m6_10mm2.Rotation 0.0 0.0 0.0

m6_10mm3.Mother WorldVolume
m6_10mm3.Color 11
m6_10mm3.Position {44.19+0.0} {12.25+0.0} {80.5+-3.0}
m6_10mm3.Rotation 0.0 0.0 0.0

m6_10mm4.Mother WorldVolume
m6_10mm4.Color 11
m6_10mm4.Position {-38.81+0.0} {12.25+0.0} {80.5+-3.0}
m6_10mm4.Rotation 0.0 0.0 0.0
