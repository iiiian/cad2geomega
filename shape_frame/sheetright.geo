Shape Box sheetright_subshape1
sheetright_subshape1.Parameters 9.0 0.25 29.0

Shape Box sheetright_subshape2
sheetright_subshape2.Parameters 4.0 0.25 7.5

Shape Box sheetright_subshape3
sheetright_subshape3.Parameters 4.0 0.25 7.5

Include Materials.geo

Orientation sheetright_subshape1_to_sheetright_subshape2
sheetright_subshape1_to_sheetright_subshape2.Position 5.0 0.0 15.5
sheetright_subshape1_to_sheetright_subshape2.Rotation 0 0 0 0 0 0 

Shape Subtraction sheetright_subshape4
sheetright_subshape4.Parameters sheetright_subshape1 sheetright_subshape2 sheetright_subshape1_to_sheetright_subshape2

Orientation sheetright_subshape1_to_sheetright_subshape3
sheetright_subshape1_to_sheetright_subshape3.Position 5.0 0.0 -15.5
sheetright_subshape1_to_sheetright_subshape3.Rotation 0 0 0 0 0 0 

Shape Subtraction sheetright_subshape5
sheetright_subshape5.Parameters sheetright_subshape4 sheetright_subshape3 sheetright_subshape1_to_sheetright_subshape3

Volume sheetright
sheetright.Mother WorldVolume
sheetright.Material Aluminium
sheetright.Shape sheetright_subshape5
sheetright.Position 0.0 0.0 0.0