Shape Box wall_subshape1
wall_subshape1.Parameters 12.914213499999999 3.0 2.0

Shape Box wall_subshape2
wall_subshape2.Parameters 4.664213800000001 3.0 1.8357859999999997

Shape TRD1 wall_subshape3_sub1
wall_subshape3_sub1.Parameters 2.363961581426462 0.5 3.0 2.0000001420774427

Shape BOX wall_subshape3_sub2
wall_subshape3_sub2.Parameters 1.431980790713231 3.0 2.0000001420774427

Orientation wall_subshape3_sub1_to_wall_subshape3_sub2
wall_subshape3_sub1_to_wall_subshape3_sub2.Position 0.9319807907132309 0 0

Shape Subtraction wall_subshape3
wall_subshape3.Parameters wall_subshape3_sub1 wall_subshape3_sub2 wall_subshape3_sub1_to_wall_subshape3_sub2

Shape TUBE wall_subshape4
wall_subshape4.Parameters 0 1.5 2.0001 0 360

Shape TUBE wall_subshape5
wall_subshape5.Parameters 0 1.4999998277773268 2.0000989218419494 0 360

Shape Box wall_subshape6
wall_subshape6.Parameters 12.914213499999999 3.0 2.0

Shape Box wall_subshape7
wall_subshape7.Parameters 4.664213800000001 3.0 1.8357859999999997

Shape TRD1 wall_subshape8_sub1
wall_subshape8_sub1.Parameters 2.363961581426462 0.5 3.0 2.0000001420774427

Shape BOX wall_subshape8_sub2
wall_subshape8_sub2.Parameters 1.431980790713231 3.0 2.0000001420774427

Orientation wall_subshape8_sub1_to_wall_subshape8_sub2
wall_subshape8_sub1_to_wall_subshape8_sub2.Position 0.9319807907132309 0 0

Shape Subtraction wall_subshape8
wall_subshape8.Parameters wall_subshape8_sub1 wall_subshape8_sub2 wall_subshape8_sub1_to_wall_subshape8_sub2

Shape TUBE wall_subshape9
wall_subshape9.Parameters 0 1.5 2.0001 0 360

Shape TUBE wall_subshape10
wall_subshape10.Parameters 0 1.4999998277773268 2.0000989218419494 0 360

Include Materials.geo

Orientation wall_subshape1_to_wall_subshape2
wall_subshape1_to_wall_subshape2.Position -16.068019300000003 0.0 -3.982233
wall_subshape1_to_wall_subshape2.Rotation 0.0 -45.0 0.0

Shape Union wall_subshape11
wall_subshape11.Parameters wall_subshape1 wall_subshape2 wall_subshape1_to_wall_subshape2

Orientation wall_subshape1_to_wall_subshape3
wall_subshape1_to_wall_subshape3.Position -13.171572690000001 0.0 -1.08578696
wall_subshape1_to_wall_subshape3.Rotation 0.0 135.0 0.0

Shape Union wall_subshape12
wall_subshape12.Parameters wall_subshape11 wall_subshape3 wall_subshape1_to_wall_subshape3

Orientation wall_subshape1_to_wall_subshape6
wall_subshape1_to_wall_subshape6.Position -42.171573 0.0 0.0
wall_subshape1_to_wall_subshape6.Rotation 0 0 0

Shape Union wall_subshape13
wall_subshape13.Parameters wall_subshape12 wall_subshape6 wall_subshape1_to_wall_subshape6

Orientation wall_subshape1_to_wall_subshape7
wall_subshape1_to_wall_subshape7.Position -26.1035537 0.0 -3.982233
wall_subshape1_to_wall_subshape7.Rotation 0.0 -45.0 180.0

Shape Union wall_subshape14
wall_subshape14.Parameters wall_subshape13 wall_subshape7 wall_subshape1_to_wall_subshape7

Orientation wall_subshape1_to_wall_subshape8
wall_subshape1_to_wall_subshape8.Position -29.00000031 0.0 -1.08578696
wall_subshape1_to_wall_subshape8.Rotation 0.0 135.0 180.0

Shape Union wall_subshape15
wall_subshape15.Parameters wall_subshape14 wall_subshape8 wall_subshape1_to_wall_subshape8

Orientation wall_subshape1_to_wall_subshape4
wall_subshape1_to_wall_subshape4.Rotation 0 180.0 90.0
wall_subshape1_to_wall_subshape4.Position 9.914213499999999 0.0 0.0

Shape Subtraction wall_subshape16
wall_subshape16.Parameters wall_subshape15 wall_subshape4 wall_subshape1_to_wall_subshape4

Orientation wall_subshape1_to_wall_subshape5
wall_subshape1_to_wall_subshape5.Rotation 0 134.99996758859515 0.0
wall_subshape1_to_wall_subshape5.Position -17.903806000000003 0.0 -5.818018

Shape Subtraction wall_subshape17
wall_subshape17.Parameters wall_subshape16 wall_subshape5 wall_subshape1_to_wall_subshape5

Orientation wall_subshape1_to_wall_subshape9
wall_subshape1_to_wall_subshape9.Rotation 0 180.0 90.0
wall_subshape1_to_wall_subshape9.Position -52.0857865 0.0 0.0

Shape Subtraction wall_subshape18
wall_subshape18.Parameters wall_subshape17 wall_subshape9 wall_subshape1_to_wall_subshape9

Orientation wall_subshape1_to_wall_subshape10
wall_subshape1_to_wall_subshape10.Rotation 0 134.99996758859515 180.0
wall_subshape1_to_wall_subshape10.Position -24.267767 0.0 -5.818018

Shape Subtraction wall_subshape19
wall_subshape19.Parameters wall_subshape18 wall_subshape10 wall_subshape1_to_wall_subshape10

Volume wall
wall.Mother WorldVolume
wall.Material Aluminium
wall.Shape wall_subshape19
wall.Position 21.0857865 0.0 -2.0