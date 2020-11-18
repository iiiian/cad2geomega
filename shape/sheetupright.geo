Shape Box sheetupright_subshape1
sheetupright_subshape1.Parameters 0.25 2.0 22.0

Shape Box sheetupright_subshape2
sheetupright_subshape2.Parameters 0.25 2.25 10.5

Shape Box sheetupright_subshape3
sheetupright_subshape3.Parameters 3.0 0.25 9.5

Shape Box sheetupright_subshape4
sheetupright_subshape4.Parameters 3.0 0.25 9.5

Include Materials.geo

Orientation sheetupright_subshape1_to_sheetupright_subshape2
sheetupright_subshape1_to_sheetupright_subshape2.Position 0.0 -4.25 -11.5
sheetupright_subshape1_to_sheetupright_subshape2.Rotation 0 0 0 0 0 0 

Shape Union sheetupright_subshape5
sheetupright_subshape5.Parameters sheetupright_subshape1 sheetupright_subshape2 sheetupright_subshape1_to_sheetupright_subshape2

Orientation sheetupright_subshape1_to_sheetupright_subshape3
sheetupright_subshape1_to_sheetupright_subshape3.Position -3.25 1.75 -12.5
sheetupright_subshape1_to_sheetupright_subshape3.Rotation 0 0 0 0 0 0 

Shape Union sheetupright_subshape6
sheetupright_subshape6.Parameters sheetupright_subshape5 sheetupright_subshape3 sheetupright_subshape1_to_sheetupright_subshape3

Orientation sheetupright_subshape1_to_sheetupright_subshape4
sheetupright_subshape1_to_sheetupright_subshape4.Position -3.25 1.75 12.5
sheetupright_subshape1_to_sheetupright_subshape4.Rotation 0 0 0 0 0 0 

Shape Union sheetupright_subshape7
sheetupright_subshape7.Parameters sheetupright_subshape6 sheetupright_subshape4 sheetupright_subshape1_to_sheetupright_subshape4

Volume sheetupright
sheetupright.Mother WorldVolume
sheetupright.Material Aluminium
sheetupright.Shape sheetupright_subshape7
sheetupright.Position 6.25 -1.5 0.0