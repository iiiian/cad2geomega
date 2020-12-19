Shape Box frameupper_subshape1
frameupper_subshape1.Parameters 12.914213499999999 3.0 2.0

Shape Box frameupper_subshape2
frameupper_subshape2.Parameters 6.27795 3.0 2.000145

Shape TUBE frameupper_subshape3
frameupper_subshape3.Parameters 0 1.5 2.001 0 360

Shape TUBE frameupper_subshape4
frameupper_subshape4.Parameters 0 1.4999998277773268 2.0009989218419495 0 360

Shape Box frameupper_subshape5
frameupper_subshape5.Parameters 12.914213499999999 3.0 2.0

Shape Box frameupper_subshape6
frameupper_subshape6.Parameters 6.27795 3.0 2.000145

Shape TUBE frameupper_subshape7
frameupper_subshape7.Parameters 0 1.5 2.001 0 360

Shape TUBE frameupper_subshape8
frameupper_subshape8.Parameters 0 1.4999998277773268 2.0009989218419495 0 360

Shape TUBE frameupper_subshape9
frameupper_subshape9.Parameters 0.0 3.87489 3.0 56.8076 123.1924

Include Materials.geo

Orientation frameupper_subshape1_to_frameupper_subshape2
frameupper_subshape1_to_frameupper_subshape2.Position -15.939346500000001 0.0 -3.8535500000000003
frameupper_subshape1_to_frameupper_subshape2.Rotation 0.0 -45.0 0.0

Shape Union frameupper_subshape10
frameupper_subshape10.Parameters frameupper_subshape1 frameupper_subshape2 frameupper_subshape1_to_frameupper_subshape2

Orientation frameupper_subshape1_to_frameupper_subshape5
frameupper_subshape1_to_frameupper_subshape5.Position -42.171573 0.0 0.0
frameupper_subshape1_to_frameupper_subshape5.Rotation 0 0 0

Shape Union frameupper_subshape11
frameupper_subshape11.Parameters frameupper_subshape10 frameupper_subshape5 frameupper_subshape1_to_frameupper_subshape5

Orientation frameupper_subshape1_to_frameupper_subshape6
frameupper_subshape1_to_frameupper_subshape6.Position -26.232226500000003 0.0 -3.8535500000000003
frameupper_subshape1_to_frameupper_subshape6.Rotation 0.0 45.0 0.0

Shape Union frameupper_subshape12
frameupper_subshape12.Parameters frameupper_subshape11 frameupper_subshape6 frameupper_subshape1_to_frameupper_subshape6

Orientation frameupper_subshape1_to_frameupper_subshape9
frameupper_subshape1_to_frameupper_subshape9.Position -21.0857865 0.0 -6.464460000000001
frameupper_subshape1_to_frameupper_subshape9.Rotation 90.0 -180.0 0.0

Shape Union frameupper_subshape13
frameupper_subshape13.Parameters frameupper_subshape12 frameupper_subshape9 frameupper_subshape1_to_frameupper_subshape9

Orientation frameupper_subshape1_to_frameupper_subshape3
frameupper_subshape1_to_frameupper_subshape3.Rotation 0 180.0 90.0
frameupper_subshape1_to_frameupper_subshape3.Position 9.914213499999999 0.0 0.0

Shape Subtraction frameupper_subshape14
frameupper_subshape14.Parameters frameupper_subshape13 frameupper_subshape3 frameupper_subshape1_to_frameupper_subshape3

Orientation frameupper_subshape1_to_frameupper_subshape4
frameupper_subshape1_to_frameupper_subshape4.Rotation 0 134.99996758859515 0.0
frameupper_subshape1_to_frameupper_subshape4.Position -17.903806000000003 0.0 -5.818018

Shape Subtraction frameupper_subshape15
frameupper_subshape15.Parameters frameupper_subshape14 frameupper_subshape4 frameupper_subshape1_to_frameupper_subshape4

Orientation frameupper_subshape1_to_frameupper_subshape7
frameupper_subshape1_to_frameupper_subshape7.Rotation 0 180.0 90.0
frameupper_subshape1_to_frameupper_subshape7.Position -52.0857865 0.0 0.0

Shape Subtraction frameupper_subshape16
frameupper_subshape16.Parameters frameupper_subshape15 frameupper_subshape7 frameupper_subshape1_to_frameupper_subshape7

Orientation frameupper_subshape1_to_frameupper_subshape8
frameupper_subshape1_to_frameupper_subshape8.Rotation 0 134.99996758859515 180.0
frameupper_subshape1_to_frameupper_subshape8.Position -24.267767 0.0 -5.818018

Shape Subtraction frameupper_subshape17
frameupper_subshape17.Parameters frameupper_subshape16 frameupper_subshape8 frameupper_subshape1_to_frameupper_subshape8

Volume frameupper
frameupper.Material Aluminium
frameupper.Shape frameupper_subshape17
frameupper.Copy frameupper1
frameupper.Copy frameupper2

frameupper1.Mother WorldVolume
frameupper1.Color 4
frameupper1.Position {2.69+21.0857865} {3.75+2.4492935982947064e-16} {128.5+2.0}
frameupper1.Rotation 180.0 0.0 0.0

frameupper2.Mother WorldVolume
frameupper2.Color 4
frameupper2.Position {2.69+21.0857865} {-58.25+-2.4492935982947064e-16} {128.5+2.0}
frameupper2.Rotation -180.0 0.0 0.0
