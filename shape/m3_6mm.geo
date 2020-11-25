Shape TUBE m3_6mm_subshape1
m3_6mm_subshape1.Parameters 0 2.75 1.5 0 360

Shape TUBE m3_6mm_subshape2
m3_6mm_subshape2.Parameters 0 1.5 3.0 0 360

Include Materials.geo

Orientation m3_6mm_subshape1_to_m3_6mm_subshape2
m3_6mm_subshape1_to_m3_6mm_subshape2.Position 0.0 0.0 -4.5
m3_6mm_subshape1_to_m3_6mm_subshape2.Rotation 0 180.0 90.0

Shape Union m3_6mm_subshape3
m3_6mm_subshape3.Parameters m3_6mm_subshape1 m3_6mm_subshape2 m3_6mm_subshape1_to_m3_6mm_subshape2

Volume m3_6mm
m3_6mm.Mother WorldVolume
m3_6mm.Material Aluminium
m3_6mm.Shape m3_6mm_subshape3
m3_6mm.Position 0.0 0.0 -1.5