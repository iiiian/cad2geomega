Shape Box sheetup_subshape1
sheetup_subshape1.Parameters 34.0 3.0 0.25

Shape Box sheetup_subshape2
sheetup_subshape2.Parameters 34.0 0.25 1.5

Shape TRD1 sheetup_subshape3
sheetup_subshape3.Parameters 2.12132 9.414241 0.25 3.646445

Shape TUBE sheetup_subshape4
sheetup_subshape4.Parameters 0 2.12132 0.251 0 360

Include Materials.geo

Orientation sheetup_subshape1_to_sheetup_subshape2
sheetup_subshape1_to_sheetup_subshape2.Position 0.0 -2.75 -1.75
sheetup_subshape1_to_sheetup_subshape2.Rotation 0 0 0

Shape Union sheetup_subshape5
sheetup_subshape5.Parameters sheetup_subshape1 sheetup_subshape2 sheetup_subshape1_to_sheetup_subshape2

Orientation sheetup_subshape1_to_sheetup_subshape3
sheetup_subshape1_to_sheetup_subshape3.Position 0.0 -2.75 -6.896445
sheetup_subshape1_to_sheetup_subshape3.Rotation 0.0 0.0 0.0

Shape Union sheetup_subshape6
sheetup_subshape6.Parameters sheetup_subshape5 sheetup_subshape3 sheetup_subshape1_to_sheetup_subshape3

Orientation sheetup_subshape1_to_sheetup_subshape4
sheetup_subshape1_to_sheetup_subshape4.Position 0.0 -2.75 -10.44289
sheetup_subshape1_to_sheetup_subshape4.Rotation 0 90.0 -90.0

Shape Union sheetup_subshape7
sheetup_subshape7.Parameters sheetup_subshape6 sheetup_subshape4 sheetup_subshape1_to_sheetup_subshape4

Volume sheetup
sheetup.Material Aluminium
sheetup.Shape sheetup_subshape7
sheetup.Copy sheetup1
sheetup.Copy sheetup2

sheetup1.Mother WorldVolume
sheetup1.Color 10
sheetup1.Position {2.6884471+3.3677786976552215e-16} {7.04633+2.75} {129+-0.24999999999999967}
sheetup1.Rotation 180.0 0.0 180.0

sheetup2.Mother WorldVolume
sheetup2.Color 10
sheetup2.Position {2.6884471+0.0} {-61.50366+-2.75} {129+-0.24999999999999967}
sheetup2.Rotation 180.0 0.0 0.0

