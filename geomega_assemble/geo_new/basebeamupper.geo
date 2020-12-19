Shape Box basebeamupper_subshape1
basebeamupper_subshape1.Parameters 31.0 3.0 3.5

Shape TUBE basebeamupper_subshape2
basebeamupper_subshape2.Parameters 0 1.5 1.5001 0 360

Shape TUBE basebeamupper_subshape3
basebeamupper_subshape3.Parameters 0 1.5 1.5001 0 360

Shape TUBE basebeamupper_subshape4
basebeamupper_subshape4.Parameters 0 1.5 2.7501 0 360

Shape TUBE basebeamupper_subshape5
basebeamupper_subshape5.Parameters 0 1.5 2.7501 0 360

Include Materials.geo

Orientation basebeamupper_subshape1_to_basebeamupper_subshape2
basebeamupper_subshape1_to_basebeamupper_subshape2.Rotation 0 90.0 180.0
basebeamupper_subshape1_to_basebeamupper_subshape2.Position 29.5 0.0 0.0

Shape Subtraction basebeamupper_subshape6
basebeamupper_subshape6.Parameters basebeamupper_subshape1 basebeamupper_subshape2 basebeamupper_subshape1_to_basebeamupper_subshape2

Orientation basebeamupper_subshape1_to_basebeamupper_subshape3
basebeamupper_subshape1_to_basebeamupper_subshape3.Rotation 0 90.0 0.0
basebeamupper_subshape1_to_basebeamupper_subshape3.Position -29.5 0.0 0.0

Shape Subtraction basebeamupper_subshape7
basebeamupper_subshape7.Parameters basebeamupper_subshape6 basebeamupper_subshape3 basebeamupper_subshape1_to_basebeamupper_subshape3

Orientation basebeamupper_subshape1_to_basebeamupper_subshape4
basebeamupper_subshape1_to_basebeamupper_subshape4.Rotation 0 180.0 90.0
basebeamupper_subshape1_to_basebeamupper_subshape4.Position 25.0 0.0 0.75

Shape Subtraction basebeamupper_subshape8
basebeamupper_subshape8.Parameters basebeamupper_subshape7 basebeamupper_subshape4 basebeamupper_subshape1_to_basebeamupper_subshape4

Orientation basebeamupper_subshape1_to_basebeamupper_subshape5
basebeamupper_subshape1_to_basebeamupper_subshape5.Rotation 0 180.0 90.0
basebeamupper_subshape1_to_basebeamupper_subshape5.Position -25.0 0.0 0.75

Shape Subtraction basebeamupper_subshape9
basebeamupper_subshape9.Parameters basebeamupper_subshape8 basebeamupper_subshape5 basebeamupper_subshape1_to_basebeamupper_subshape5


Volume basebeamupper
basebeamupper.Material Aluminium
basebeamupper.Shape basebeamupper_subshape9
basebeamupper.Copy basebeamupper1
basebeamupper.Copy basebeamupper2

basebeamupper1.Mother WorldVolume
basebeamupper1.Color 3
basebeamupper1.Position {2.69+0.0} {-51.75+0.0} {76+0.0}
basebeamupper1.Rotation 0.0 0.0 0.0

basebeamupper2.Mother WorldVolume
basebeamupper2.Color 3
basebeamupper2.Position {2.69+0.0} {-2.75+0.0} {76+0.0}
basebeamupper2.Rotation 0.0 0.0 0.0