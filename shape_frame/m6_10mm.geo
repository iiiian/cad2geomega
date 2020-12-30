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
m6_10mm.Mother WorldVolume
m6_10mm.Material Aluminium
m6_10mm.Shape m6_10mm_subshape3
m6_10mm.Position 0.0 0.0 -3.0