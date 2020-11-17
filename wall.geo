Shape Box wall_subshape1
wall_subshape1.Parameters 3.0 5.0 3.0

Shape Box wall_subshape2
wall_subshape2.Parameters 1.5 3.0 22.0

Shape Box wall_subshape3
wall_subshape3.Parameters 4.102182 5.0 3.0

Shape Box wall_subshape4
wall_subshape4.Parameters 7.5 7.5 1.5

Shape Box wall_subshape5
wall_subshape5.Parameters 3.0 5.0 3.0

Shape Box wall_subshape6
wall_subshape6.Parameters 1.5 3.0 22.0

Shape Box wall_subshape7
wall_subshape7.Parameters 4.102182 5.0 3.0

Shape Box wall_subshape8
wall_subshape8.Parameters 7.5 7.5 1.5

Shape Box wall_subshape9
wall_subshape9.Parameters 1.5 28.0 2.0

Shape Box wall_subshape10
wall_subshape10.Parameters 1.5 28.0 3.5

Orientation wall_subshape1_to_wall_subshape2
wall_subshape1_to_wall_subshape2.Position 1.5 2.0 -25.0

Shape Union wall_subshape11
wall_subshape11.Parameters wall_subshape1 wall_subshape2 wall_subshape1_to_wall_subshape2

Orientation wall_subshape1_to_wall_subshape3
wall_subshape1_to_wall_subshape3.Position -1.102182 0.0 -50.0

Shape Union wall_subshape12
wall_subshape12.Parameters wall_subshape11 wall_subshape3 wall_subshape1_to_wall_subshape3

Orientation wall_subshape1_to_wall_subshape4
wall_subshape1_to_wall_subshape4.Position 10.5 -6.5 -52.5

Shape Union wall_subshape13
wall_subshape13.Parameters wall_subshape12 wall_subshape4 wall_subshape1_to_wall_subshape4

Orientation wall_subshape1_to_wall_subshape5
wall_subshape1_to_wall_subshape5.Position 0.0 66.0 0.0

Shape Union wall_subshape14
wall_subshape14.Parameters wall_subshape13 wall_subshape5 wall_subshape1_to_wall_subshape5

Orientation wall_subshape1_to_wall_subshape6
wall_subshape1_to_wall_subshape6.Position 1.5 68.0 -25.0

Shape Union wall_subshape15
wall_subshape15.Parameters wall_subshape14 wall_subshape6 wall_subshape1_to_wall_subshape6

Orientation wall_subshape1_to_wall_subshape7
wall_subshape1_to_wall_subshape7.Position -1.102182 66.0 -50.0

Shape Union wall_subshape16
wall_subshape16.Parameters wall_subshape15 wall_subshape7 wall_subshape1_to_wall_subshape7

Orientation wall_subshape1_to_wall_subshape8
wall_subshape1_to_wall_subshape8.Position 10.5 72.5 -52.5

Shape Union wall_subshape17
wall_subshape17.Parameters wall_subshape16 wall_subshape8 wall_subshape1_to_wall_subshape8

Orientation wall_subshape1_to_wall_subshape9
wall_subshape1_to_wall_subshape9.Position 1.5 33.0 -26.0

Shape Union wall_subshape18
wall_subshape18.Parameters wall_subshape17 wall_subshape9 wall_subshape1_to_wall_subshape9

Orientation wall_subshape1_to_wall_subshape10
wall_subshape1_to_wall_subshape10.Position 1.5 33.0 -49.5

Shape Union wall_subshape19
wall_subshape19.Parameters wall_subshape18 wall_subshape10 wall_subshape1_to_wall_subshape10

Volume wall
wall.Density 1
wall.Material Al
wall.Shape wall_subshape19
