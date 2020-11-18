Shape Box frameupper_subshape1
frameupper_subshape1.Parameters 12.1590095 3.0 2.0

Shape TRD1 frameupper_subshape2_sub1
frameupper_subshape2_sub1.Parameters 2.010408 0.5 3.0 2.0732235

Shape BOX frameupper_subshape2_sub2
frameupper_subshape2_sub2.Parameters 1.255204 3.0 2.0732235

Orientation frameupper_subshape2_sub1_to_frameupper_subshape2_sub2
frameupper_subshape2_sub1_to_frameupper_subshape2_sub2.Position -0.755204 0 0

Shape Subtraction frameupper_subshape2
frameupper_subshape2.Parameters frameupper_subshape2_sub1 frameupper_subshape2_sub2 frameupper_subshape2_sub1_to_frameupper_subshape2_sub2

Shape TRD1 frameupper_subshape3_sub1
frameupper_subshape3_sub1.Parameters 2.363961581426462 0.5 3.0 2.0000001420774427

Shape BOX frameupper_subshape3_sub2
frameupper_subshape3_sub2.Parameters 1.431980790713231 3.0 2.0000001420774427

Orientation frameupper_subshape3_sub1_to_frameupper_subshape3_sub2
frameupper_subshape3_sub1_to_frameupper_subshape3_sub2.Position 0.9319807907132309 0 0

Shape Subtraction frameupper_subshape3
frameupper_subshape3.Parameters frameupper_subshape3_sub1 frameupper_subshape3_sub2 frameupper_subshape3_sub1_to_frameupper_subshape3_sub2

Shape Box frameupper_subshape4
frameupper_subshape4.Parameters 4.664213800000001 3.0 1.8357859999999997

Shape TUBE frameupper_subshape5
frameupper_subshape5.Parameters 0 1.5 2.0 0 360

Shape TUBE frameupper_subshape6
frameupper_subshape6.Parameters 0 1.4999998277773268 1.9999989218419494 0 360

Shape Box frameupper_subshape7
frameupper_subshape7.Parameters 12.1590095 3.0 2.0

Shape TRD1 frameupper_subshape8_sub1
frameupper_subshape8_sub1.Parameters 2.010408 0.5 3.0 2.0732235

Shape BOX frameupper_subshape8_sub2
frameupper_subshape8_sub2.Parameters 1.255204 3.0 2.0732235

Orientation frameupper_subshape8_sub1_to_frameupper_subshape8_sub2
frameupper_subshape8_sub1_to_frameupper_subshape8_sub2.Position -0.755204 0 0

Shape Subtraction frameupper_subshape8
frameupper_subshape8.Parameters frameupper_subshape8_sub1 frameupper_subshape8_sub2 frameupper_subshape8_sub1_to_frameupper_subshape8_sub2

Shape TRD1 frameupper_subshape9_sub1
frameupper_subshape9_sub1.Parameters 2.363961581426462 0.5 3.0 2.0000001420774427

Shape BOX frameupper_subshape9_sub2
frameupper_subshape9_sub2.Parameters 1.431980790713231 3.0 2.0000001420774427

Orientation frameupper_subshape9_sub1_to_frameupper_subshape9_sub2
frameupper_subshape9_sub1_to_frameupper_subshape9_sub2.Position 0.9319807907132309 0 0

Shape Subtraction frameupper_subshape9
frameupper_subshape9.Parameters frameupper_subshape9_sub1 frameupper_subshape9_sub2 frameupper_subshape9_sub1_to_frameupper_subshape9_sub2

Shape Box frameupper_subshape10
frameupper_subshape10.Parameters 4.664213800000001 3.0 1.8357859999999997

Shape TUBE frameupper_subshape11
frameupper_subshape11.Parameters 0 1.5 2.0 0 360

Shape TUBE frameupper_subshape12
frameupper_subshape12.Parameters 0 1.4999998277773268 1.9999989218419494 0 360

Include Materials.geo

Orientation frameupper_subshape1_to_frameupper_subshape2
frameupper_subshape1_to_frameupper_subshape2.Position -11.6590095 0.0 -0.07322350000000011
frameupper_subshape1_to_frameupper_subshape2.Rotation 0 180.0 0

Shape Union frameupper_subshape13
frameupper_subshape13.Parameters frameupper_subshape1 frameupper_subshape2 frameupper_subshape1_to_frameupper_subshape2

Orientation frameupper_subshape1_to_frameupper_subshape3
frameupper_subshape1_to_frameupper_subshape3.Position -13.92677669 0.0 -1.08578696
frameupper_subshape1_to_frameupper_subshape3.Rotation 0.0 135.0 0.0

Shape Union frameupper_subshape14
frameupper_subshape14.Parameters frameupper_subshape13 frameupper_subshape3 frameupper_subshape1_to_frameupper_subshape3

Orientation frameupper_subshape1_to_frameupper_subshape4
frameupper_subshape1_to_frameupper_subshape4.Position -16.823223300000002 0.0 -3.982233
frameupper_subshape1_to_frameupper_subshape4.Rotation 0.0 -45.0 0.0

Shape Union frameupper_subshape15
frameupper_subshape15.Parameters frameupper_subshape14 frameupper_subshape4 frameupper_subshape1_to_frameupper_subshape4

Orientation frameupper_subshape1_to_frameupper_subshape7
frameupper_subshape1_to_frameupper_subshape7.Position -43.681981 0.0 0.0
frameupper_subshape1_to_frameupper_subshape7.Rotation 0 0 0

Shape Union frameupper_subshape16
frameupper_subshape16.Parameters frameupper_subshape15 frameupper_subshape7 frameupper_subshape1_to_frameupper_subshape7

Orientation frameupper_subshape1_to_frameupper_subshape8
frameupper_subshape1_to_frameupper_subshape8.Position -32.0229715 0.0 -0.07322350000000011
frameupper_subshape1_to_frameupper_subshape8.Rotation 0 180.0 0

Shape Union frameupper_subshape17
frameupper_subshape17.Parameters frameupper_subshape16 frameupper_subshape8 frameupper_subshape1_to_frameupper_subshape8

Orientation frameupper_subshape1_to_frameupper_subshape9
frameupper_subshape1_to_frameupper_subshape9.Position -29.75520431 0.0 -1.08578696
frameupper_subshape1_to_frameupper_subshape9.Rotation 0.0 135.0 180.0

Shape Union frameupper_subshape18
frameupper_subshape18.Parameters frameupper_subshape17 frameupper_subshape9 frameupper_subshape1_to_frameupper_subshape9

Orientation frameupper_subshape1_to_frameupper_subshape10
frameupper_subshape1_to_frameupper_subshape10.Position -26.858757699999998 0.0 -3.982233
frameupper_subshape1_to_frameupper_subshape10.Rotation 0.0 -45.0 180.0

Shape Union frameupper_subshape19
frameupper_subshape19.Parameters frameupper_subshape18 frameupper_subshape10 frameupper_subshape1_to_frameupper_subshape10

Orientation frameupper_subshape1_to_frameupper_subshape5
frameupper_subshape1_to_frameupper_subshape5.Rotation 0 180.0 90.0
frameupper_subshape1_to_frameupper_subshape5.Position 9.1590095 0.0 0.0

Shape Subtraction frameupper_subshape20
frameupper_subshape20.Parameters frameupper_subshape19 frameupper_subshape5 frameupper_subshape1_to_frameupper_subshape5

Orientation frameupper_subshape1_to_frameupper_subshape6
frameupper_subshape1_to_frameupper_subshape6.Rotation 0 134.99996758859515 0.0
frameupper_subshape1_to_frameupper_subshape6.Position -18.659010000000002 0.0 -5.818018

Shape Subtraction frameupper_subshape21
frameupper_subshape21.Parameters frameupper_subshape20 frameupper_subshape6 frameupper_subshape1_to_frameupper_subshape6

Orientation frameupper_subshape1_to_frameupper_subshape11
frameupper_subshape1_to_frameupper_subshape11.Rotation 0 180.0 90.0
frameupper_subshape1_to_frameupper_subshape11.Position -52.840990500000004 0.0 0.0

Shape Subtraction frameupper_subshape22
frameupper_subshape22.Parameters frameupper_subshape21 frameupper_subshape11 frameupper_subshape1_to_frameupper_subshape11

Orientation frameupper_subshape1_to_frameupper_subshape12
frameupper_subshape1_to_frameupper_subshape12.Rotation 0 134.99996758859515 180.0
frameupper_subshape1_to_frameupper_subshape12.Position -25.022971 0.0 -5.818018

Shape Subtraction frameupper_subshape23
frameupper_subshape23.Parameters frameupper_subshape22 frameupper_subshape12 frameupper_subshape1_to_frameupper_subshape12

%the middle tube

Shape TUBE frameupper_subshape24
frameupper_subshape24.Parameters 0.395284 5.016608 3 45 135 

Orientation frameupper_subshape1_to_frameupper_subshape24
frameupper_subshape1_to_frameupper_subshape24.Position -21.8409905 0 -5.64124195
frameupper_subshape1_to_frameupper_subshape24.Rotation 90 180 0

Shape Union frameupper_subshape25
frameupper_subshape25.Parameters frameupper_subshape23 frameupper_subshape24 frameupper_subshape1_to_frameupper_subshape24

Volume frameupper
frameupper.Mother WorldVolume
frameupper.Material Aluminium
frameupper.Shape frameupper_subshape25
frameupper.Position 21.8409905 0.0 -2.0