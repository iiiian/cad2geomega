Shape Box wall_subshape1
wall_subshape1.Parameters 3.0 5.0 3.0

Shape Box wall_subshape2
wall_subshape2.Parameters 1.5 3.0 22.0

Shape Box wall_subshape3
wall_subshape3.Parameters 4.102182 5.0 3.0

Shape Box wall_subshape4
wall_subshape4.Parameters 7.5 7.5 1.5

Shape Box wall_subshape5
wall_subshape5.Parameters 1.9151049999999996 3.0 3.1213200000000008

Shape Box wall_subshape6
wall_subshape6.Parameters 2.1213200000000008 3.0 1.0

Shape TRD1 wall_subshape7_sub1
wall_subshape7_sub1.Parameters 4.7426400000000015 0.5 3.0 2.1213200000000008

Shape BOX wall_subshape7_sub2
wall_subshape7_sub2.Parameters 2.6213200000000008 3.0 2.1213200000000008

Orientation wall_subshape7_sub1_to_wall_subshape7_sub2
wall_subshape7_sub1_to_wall_subshape7_sub2.Position -2.1213200000000008 0 0

Shape Subtraction wall_subshape7
wall_subshape7.Parameters wall_subshape7_sub1 wall_subshape7_sub2 wall_subshape7_sub1_to_wall_subshape7_sub2

Shape Box wall_subshape8
wall_subshape8.Parameters 3.0 5.0 3.0

Shape Box wall_subshape9
wall_subshape9.Parameters 1.5 3.0 22.0

Shape Box wall_subshape10
wall_subshape10.Parameters 4.102182 5.0 3.0

Shape Box wall_subshape11
wall_subshape11.Parameters 7.5 7.5 1.5

Shape Box wall_subshape12
wall_subshape12.Parameters 1.9151049999999996 3.0 3.1213200000000008

Shape Box wall_subshape13
wall_subshape13.Parameters 2.1213200000000008 3.0 1.0

Shape TRD1 wall_subshape14_sub1
wall_subshape14_sub1.Parameters 4.7426400000000015 0.5 3.0 2.1213200000000008

Shape BOX wall_subshape14_sub2
wall_subshape14_sub2.Parameters 2.6213200000000008 3.0 2.1213200000000008

Orientation wall_subshape14_sub1_to_wall_subshape14_sub2
wall_subshape14_sub1_to_wall_subshape14_sub2.Position -2.1213200000000008 0 0

Shape Subtraction wall_subshape14
wall_subshape14.Parameters wall_subshape14_sub1 wall_subshape14_sub2 wall_subshape14_sub1_to_wall_subshape14_sub2

Shape Box wall_subshape15
wall_subshape15.Parameters 1.5 28.0 2.0

Shape Box wall_subshape16
wall_subshape16.Parameters 1.5 28.0 3.5

Include Materials.geo

Orientation wall_subshape1_to_wall_subshape2
wall_subshape1_to_wall_subshape2.Position 1.5 2.0 -25.0
wall_subshape1_to_wall_subshape2.Rotation 0 0 0 0 0 0 

Shape Union wall_subshape17
wall_subshape17.Parameters wall_subshape1 wall_subshape2 wall_subshape1_to_wall_subshape2

Orientation wall_subshape1_to_wall_subshape3
wall_subshape1_to_wall_subshape3.Position -1.102182 0.0 -50.0
wall_subshape1_to_wall_subshape3.Rotation 0 0 0 0 0 0 

Shape Union wall_subshape18
wall_subshape18.Parameters wall_subshape17 wall_subshape3 wall_subshape1_to_wall_subshape3

Orientation wall_subshape1_to_wall_subshape4
wall_subshape1_to_wall_subshape4.Position 10.5 -6.5 -52.5
wall_subshape1_to_wall_subshape4.Rotation 0 0 0 0 0 0 

Shape Union wall_subshape19
wall_subshape19.Parameters wall_subshape18 wall_subshape4 wall_subshape1_to_wall_subshape4

Orientation wall_subshape1_to_wall_subshape5
wall_subshape1_to_wall_subshape5.Position 4.915105 2.0 -24.12311
wall_subshape1_to_wall_subshape5.Rotation 0 0 0 0 0 0 

Shape Union wall_subshape20
wall_subshape20.Parameters wall_subshape19 wall_subshape5 wall_subshape1_to_wall_subshape5

Orientation wall_subshape1_to_wall_subshape6
wall_subshape1_to_wall_subshape6.Position 8.95153 2.0 -26.24443
wall_subshape1_to_wall_subshape6.Rotation 0 0 0 0 0 0 

Shape Union wall_subshape21
wall_subshape21.Parameters wall_subshape20 wall_subshape6 wall_subshape1_to_wall_subshape6

Orientation wall_subshape1_to_wall_subshape7
wall_subshape1_to_wall_subshape7.Position 6.330209999999999 2.0 -23.12311
wall_subshape1_to_wall_subshape7.Rotation 0 0 0 0 90.0 90.0 

Shape Union wall_subshape22
wall_subshape22.Parameters wall_subshape21 wall_subshape7 wall_subshape1_to_wall_subshape7

Orientation wall_subshape1_to_wall_subshape8
wall_subshape1_to_wall_subshape8.Position 0.0 66.0 0.0
wall_subshape1_to_wall_subshape8.Rotation 0 0 0 0 0 0 

Shape Union wall_subshape23
wall_subshape23.Parameters wall_subshape22 wall_subshape8 wall_subshape1_to_wall_subshape8

Orientation wall_subshape1_to_wall_subshape9
wall_subshape1_to_wall_subshape9.Position 1.5 64.0 -25.0
wall_subshape1_to_wall_subshape9.Rotation 0 0 0 0 0 0 

Shape Union wall_subshape24
wall_subshape24.Parameters wall_subshape23 wall_subshape9 wall_subshape1_to_wall_subshape9

Orientation wall_subshape1_to_wall_subshape10
wall_subshape1_to_wall_subshape10.Position -1.102182 66.0 -50.0
wall_subshape1_to_wall_subshape10.Rotation 0 0 0 0 0 0 

Shape Union wall_subshape25
wall_subshape25.Parameters wall_subshape24 wall_subshape10 wall_subshape1_to_wall_subshape10

Orientation wall_subshape1_to_wall_subshape11
wall_subshape1_to_wall_subshape11.Position 10.5 72.5 -52.5
wall_subshape1_to_wall_subshape11.Rotation 0 0 0 0 0 0 

Shape Union wall_subshape26
wall_subshape26.Parameters wall_subshape25 wall_subshape11 wall_subshape1_to_wall_subshape11

Orientation wall_subshape1_to_wall_subshape12
wall_subshape1_to_wall_subshape12.Position 4.915105 64.0 -24.12311
wall_subshape1_to_wall_subshape12.Rotation 0 0 0 0 0 0 

Shape Union wall_subshape27
wall_subshape27.Parameters wall_subshape26 wall_subshape12 wall_subshape1_to_wall_subshape12

Orientation wall_subshape1_to_wall_subshape13
wall_subshape1_to_wall_subshape13.Position 8.95153 64.0 -26.24443
wall_subshape1_to_wall_subshape13.Rotation 0 0 0 0 0 0 

Shape Union wall_subshape28
wall_subshape28.Parameters wall_subshape27 wall_subshape13 wall_subshape1_to_wall_subshape13

Orientation wall_subshape1_to_wall_subshape14
wall_subshape1_to_wall_subshape14.Position 6.330209999999999 64.0 -23.12311
wall_subshape1_to_wall_subshape14.Rotation 0 0 0 0 90.0 90.0 

Shape Union wall_subshape29
wall_subshape29.Parameters wall_subshape28 wall_subshape14 wall_subshape1_to_wall_subshape14

Orientation wall_subshape1_to_wall_subshape15
wall_subshape1_to_wall_subshape15.Position 1.5 33.0 -26.0
wall_subshape1_to_wall_subshape15.Rotation 0 0 0 0 0 0 

Shape Union wall_subshape30
wall_subshape30.Parameters wall_subshape29 wall_subshape15 wall_subshape1_to_wall_subshape15

Orientation wall_subshape1_to_wall_subshape16
wall_subshape1_to_wall_subshape16.Position 1.5 33.0 -49.5
wall_subshape1_to_wall_subshape16.Rotation 0 0 0 0 0 0 

Shape Union wall_subshape31
wall_subshape31.Parameters wall_subshape30 wall_subshape16 wall_subshape1_to_wall_subshape16

Volume wall
wall.Mother WorldVolume
wall.Material Aluminium
wall.Shape wall_subshape31
wall.Position 3.0 -33.0 54.0