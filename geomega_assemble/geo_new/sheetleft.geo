Shape Box sheetleft_subshape1
sheetleft_subshape1.Parameters 22.0 4.0 39.0

Shape Box sheetleft_subshape2
sheetleft_subshape2.Parameters 22.01 3.51 38.01

Shape Box sheetleft_subshape3
sheetleft_subshape3.Parameters 8.51 0.51 32.51

Shape Box sheetleft_subshape4
sheetleft_subshape4.Parameters 4.01 0.51 35.01

Shape Box sheetleft_subshape5
sheetleft_subshape5.Parameters 1.5 0.5 20.0

Shape Box sheetleft_subshape6
sheetleft_subshape6.Parameters 3.01 3.26 0.51

Shape Box sheetleft_subshape7
sheetleft_subshape7.Parameters 3.01 3.26 0.51

Shape Box sheetleft_subshape8
sheetleft_subshape8.Parameters 0.51 0.51 5.34773

Shape Box sheetleft_subshape9
sheetleft_subshape9.Parameters 0.51 0.51 5.34773

Include Materials.geo

Orientation sheetleft_subshape1_to_sheetleft_subshape5
sheetleft_subshape1_to_sheetleft_subshape5.Position -23.5 3.5 0.0
sheetleft_subshape1_to_sheetleft_subshape5.Rotation 0 0 0

Shape Union sheetleft_subshape10
sheetleft_subshape10.Parameters sheetleft_subshape1 sheetleft_subshape5 sheetleft_subshape1_to_sheetleft_subshape5

Orientation sheetleft_subshape1_to_sheetleft_subshape2
sheetleft_subshape1_to_sheetleft_subshape2.Rotation 0 0 0
sheetleft_subshape1_to_sheetleft_subshape2.Position 0.0 -0.5 0.0

Shape Subtraction sheetleft_subshape11
sheetleft_subshape11.Parameters sheetleft_subshape10 sheetleft_subshape2 sheetleft_subshape1_to_sheetleft_subshape2

Orientation sheetleft_subshape1_to_sheetleft_subshape3
sheetleft_subshape1_to_sheetleft_subshape3.Rotation 0 0 0
sheetleft_subshape1_to_sheetleft_subshape3.Position 13.5 3.5 0.0

Shape Subtraction sheetleft_subshape12
sheetleft_subshape12.Parameters sheetleft_subshape11 sheetleft_subshape3 sheetleft_subshape1_to_sheetleft_subshape3

Orientation sheetleft_subshape1_to_sheetleft_subshape4
sheetleft_subshape1_to_sheetleft_subshape4.Rotation 0 0 0
sheetleft_subshape1_to_sheetleft_subshape4.Position 1.0 3.5 0.0

Shape Subtraction sheetleft_subshape13
sheetleft_subshape13.Parameters sheetleft_subshape12 sheetleft_subshape4 sheetleft_subshape1_to_sheetleft_subshape4

Orientation sheetleft_subshape1_to_sheetleft_subshape6
sheetleft_subshape1_to_sheetleft_subshape6.Rotation 0 0 0
sheetleft_subshape1_to_sheetleft_subshape6.Position 0.0 -0.75 38.5

Shape Subtraction sheetleft_subshape14
sheetleft_subshape14.Parameters sheetleft_subshape13 sheetleft_subshape6 sheetleft_subshape1_to_sheetleft_subshape6

Orientation sheetleft_subshape1_to_sheetleft_subshape7
sheetleft_subshape1_to_sheetleft_subshape7.Rotation 0 0 0
sheetleft_subshape1_to_sheetleft_subshape7.Position 0.0 -0.75 -38.5

Shape Subtraction sheetleft_subshape15
sheetleft_subshape15.Parameters sheetleft_subshape14 sheetleft_subshape7 sheetleft_subshape1_to_sheetleft_subshape7

Orientation sheetleft_subshape1_to_sheetleft_subshape8
sheetleft_subshape1_to_sheetleft_subshape8.Rotation 0 0 0
sheetleft_subshape1_to_sheetleft_subshape8.Position -21.5 3.5 25.33773

Shape Subtraction sheetleft_subshape16
sheetleft_subshape16.Parameters sheetleft_subshape15 sheetleft_subshape8 sheetleft_subshape1_to_sheetleft_subshape8

Orientation sheetleft_subshape1_to_sheetleft_subshape9
sheetleft_subshape1_to_sheetleft_subshape9.Rotation 0 0 0
sheetleft_subshape1_to_sheetleft_subshape9.Position -21.5 3.5 -25.33773

Shape Subtraction sheetleft_subshape17
sheetleft_subshape17.Parameters sheetleft_subshape16 sheetleft_subshape9 sheetleft_subshape1_to_sheetleft_subshape9


Volume sheetleft
sheetleft.Material Aluminium
sheetleft.Shape sheetleft_subshape17
sheetleft.Copy sheetleft1
sheetleft.Copy sheetleft2

sheetleft1.Mother WorldVolume
sheetleft1.Color 6
sheetleft1.Position {-32.81155+3.5} {-27.2553664+5.51091059616309e-16} {88+12.5}
sheetleft1.Rotation 0.0 -90.0 90.0

sheetleft2.Mother WorldVolume
sheetleft2.Color 6
sheetleft2.Position {38.19+-3.5} {-27.2553664+-9.797174393178826e-16} {88+12.5}
sheetleft2.Rotation 0.0 -90.0 -90.0
