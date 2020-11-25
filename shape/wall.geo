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

Shape TUBE wall_subshape8
wall_subshape8.Parameters 0 1.5 1.5001 0 360

Shape TUBE wall_subshape9
wall_subshape9.Parameters 0 1.5 2.2501 0 360

Shape TUBE wall_subshape10
wall_subshape10.Parameters 0 1.5000071817062242 1.500110010150016 0 360

Shape TUBE wall_subshape11
wall_subshape11.Parameters 0 1.5 1.5001 0 360

Shape TUBE wall_subshape12
wall_subshape12.Parameters 0 1.5 1.5001 0 360

Shape TUBE wall_subshape13
wall_subshape13.Parameters 0 3.0 1.5001 0 360

Shape Box wall_subshape14
wall_subshape14.Parameters 3.0 5.0 3.0

Shape Box wall_subshape15
wall_subshape15.Parameters 1.5 3.0 22.0

Shape Box wall_subshape16
wall_subshape16.Parameters 4.102182 5.0 3.0

Shape Box wall_subshape17
wall_subshape17.Parameters 7.5 7.5 1.5

Shape Box wall_subshape18
wall_subshape18.Parameters 1.9151049999999996 3.0 3.1213200000000008

Shape Box wall_subshape19
wall_subshape19.Parameters 2.1213200000000008 3.0 1.0

Shape TRD1 wall_subshape20_sub1
wall_subshape20_sub1.Parameters 4.7426400000000015 0.5 3.0 2.1213200000000008

Shape BOX wall_subshape20_sub2
wall_subshape20_sub2.Parameters 2.6213200000000008 3.0 2.1213200000000008

Orientation wall_subshape20_sub1_to_wall_subshape20_sub2
wall_subshape20_sub1_to_wall_subshape20_sub2.Position -2.1213200000000008 0 0

Shape Subtraction wall_subshape20
wall_subshape20.Parameters wall_subshape20_sub1 wall_subshape20_sub2 wall_subshape20_sub1_to_wall_subshape20_sub2

Shape TUBE wall_subshape21
wall_subshape21.Parameters 0 1.5 1.5001 0 360

Shape TUBE wall_subshape22
wall_subshape22.Parameters 0 1.5 2.2501 0 360

Shape TUBE wall_subshape23
wall_subshape23.Parameters 0 1.5000071817062242 1.500110010150016 0 360

Shape TUBE wall_subshape24
wall_subshape24.Parameters 0 1.5 1.5001 0 360

Shape TUBE wall_subshape25
wall_subshape25.Parameters 0 1.5 1.5001 0 360

Shape TUBE wall_subshape26
wall_subshape26.Parameters 0 3.0 1.5001 0 360

Shape Box wall_subshape27
wall_subshape27.Parameters 1.5 28.0 2.0

Shape Box wall_subshape28
wall_subshape28.Parameters 1.5 28.0 3.5

Include Materials.geo

Orientation wall_subshape1_to_wall_subshape2
wall_subshape1_to_wall_subshape2.Position 1.5 2.0 -25.0
wall_subshape1_to_wall_subshape2.Rotation 0 0 0

Shape Union wall_subshape29
wall_subshape29.Parameters wall_subshape1 wall_subshape2 wall_subshape1_to_wall_subshape2

Orientation wall_subshape1_to_wall_subshape3
wall_subshape1_to_wall_subshape3.Position -1.102182 0.0 -50.0
wall_subshape1_to_wall_subshape3.Rotation 0 0 0

Shape Union wall_subshape30
wall_subshape30.Parameters wall_subshape29 wall_subshape3 wall_subshape1_to_wall_subshape3

Orientation wall_subshape1_to_wall_subshape4
wall_subshape1_to_wall_subshape4.Position 10.5 -6.5 -52.5
wall_subshape1_to_wall_subshape4.Rotation 0 0 0

Shape Union wall_subshape31
wall_subshape31.Parameters wall_subshape30 wall_subshape4 wall_subshape1_to_wall_subshape4

Orientation wall_subshape1_to_wall_subshape5
wall_subshape1_to_wall_subshape5.Position 4.915105 2.0 -24.12311
wall_subshape1_to_wall_subshape5.Rotation 0 0 0

Shape Union wall_subshape32
wall_subshape32.Parameters wall_subshape31 wall_subshape5 wall_subshape1_to_wall_subshape5

Orientation wall_subshape1_to_wall_subshape6
wall_subshape1_to_wall_subshape6.Position 8.95153 2.0 -26.24443
wall_subshape1_to_wall_subshape6.Rotation 0 0 0

Shape Union wall_subshape33
wall_subshape33.Parameters wall_subshape32 wall_subshape6 wall_subshape1_to_wall_subshape6

Orientation wall_subshape1_to_wall_subshape7
wall_subshape1_to_wall_subshape7.Position 6.330209999999999 2.0 -23.12311
wall_subshape1_to_wall_subshape7.Rotation 0 0.0 0

Shape Union wall_subshape34
wall_subshape34.Parameters wall_subshape33 wall_subshape7 wall_subshape1_to_wall_subshape7

Orientation wall_subshape1_to_wall_subshape14
wall_subshape1_to_wall_subshape14.Position 0.0 66.0 0.0
wall_subshape1_to_wall_subshape14.Rotation 0 0 0

Shape Union wall_subshape35
wall_subshape35.Parameters wall_subshape34 wall_subshape14 wall_subshape1_to_wall_subshape14

Orientation wall_subshape1_to_wall_subshape15
wall_subshape1_to_wall_subshape15.Position 1.5 64.0 -25.0
wall_subshape1_to_wall_subshape15.Rotation 0 0 0

Shape Union wall_subshape36
wall_subshape36.Parameters wall_subshape35 wall_subshape15 wall_subshape1_to_wall_subshape15

Orientation wall_subshape1_to_wall_subshape16
wall_subshape1_to_wall_subshape16.Position -1.102182 66.0 -50.0
wall_subshape1_to_wall_subshape16.Rotation 0 0 0

Shape Union wall_subshape37
wall_subshape37.Parameters wall_subshape36 wall_subshape16 wall_subshape1_to_wall_subshape16

Orientation wall_subshape1_to_wall_subshape17
wall_subshape1_to_wall_subshape17.Position 10.5 72.5 -52.5
wall_subshape1_to_wall_subshape17.Rotation 0 0 0

Shape Union wall_subshape38
wall_subshape38.Parameters wall_subshape37 wall_subshape17 wall_subshape1_to_wall_subshape17

Orientation wall_subshape1_to_wall_subshape18
wall_subshape1_to_wall_subshape18.Position 4.915105 64.0 -24.12311
wall_subshape1_to_wall_subshape18.Rotation 0 0 0

Shape Union wall_subshape39
wall_subshape39.Parameters wall_subshape38 wall_subshape18 wall_subshape1_to_wall_subshape18

Orientation wall_subshape1_to_wall_subshape19
wall_subshape1_to_wall_subshape19.Position 8.95153 64.0 -26.24443
wall_subshape1_to_wall_subshape19.Rotation 0 0 0

Shape Union wall_subshape40
wall_subshape40.Parameters wall_subshape39 wall_subshape19 wall_subshape1_to_wall_subshape19

Orientation wall_subshape1_to_wall_subshape20
wall_subshape1_to_wall_subshape20.Position 6.330209999999999 64.0 -23.12311
wall_subshape1_to_wall_subshape20.Rotation 0 0.0 0

Shape Union wall_subshape41
wall_subshape41.Parameters wall_subshape40 wall_subshape20 wall_subshape1_to_wall_subshape20

Orientation wall_subshape1_to_wall_subshape27
wall_subshape1_to_wall_subshape27.Position 1.5 33.0 -26.0
wall_subshape1_to_wall_subshape27.Rotation 0 0 0

Shape Union wall_subshape42
wall_subshape42.Parameters wall_subshape41 wall_subshape27 wall_subshape1_to_wall_subshape27

Orientation wall_subshape1_to_wall_subshape28
wall_subshape1_to_wall_subshape28.Position 1.5 33.0 -49.5
wall_subshape1_to_wall_subshape28.Rotation 0 0 0

Shape Union wall_subshape43
wall_subshape43.Parameters wall_subshape42 wall_subshape28 wall_subshape1_to_wall_subshape28

Orientation wall_subshape1_to_wall_subshape8
wall_subshape1_to_wall_subshape8.Rotation 0 90.0 90.0
wall_subshape1_to_wall_subshape8.Position 0.0 -3.5 0.0

Shape Subtraction wall_subshape44
wall_subshape44.Parameters wall_subshape43 wall_subshape8 wall_subshape1_to_wall_subshape8

Orientation wall_subshape1_to_wall_subshape9
wall_subshape1_to_wall_subshape9.Rotation 0 180.0 90.0
wall_subshape1_to_wall_subshape9.Position 0.0 2.0 0.75

Shape Subtraction wall_subshape45
wall_subshape45.Parameters wall_subshape44 wall_subshape9 wall_subshape1_to_wall_subshape9

Orientation wall_subshape1_to_wall_subshape10
wall_subshape1_to_wall_subshape10.Rotation 0 134.99960836501603 180.0
wall_subshape1_to_wall_subshape10.Position 7.890874 2.0 -24.18377

Shape Subtraction wall_subshape46
wall_subshape46.Parameters wall_subshape45 wall_subshape10 wall_subshape1_to_wall_subshape10

Orientation wall_subshape1_to_wall_subshape11
wall_subshape1_to_wall_subshape11.Rotation 0 90.0 90.0
wall_subshape1_to_wall_subshape11.Position 0.0 -3.5 -50.0

Shape Subtraction wall_subshape47
wall_subshape47.Parameters wall_subshape46 wall_subshape11 wall_subshape1_to_wall_subshape11

Orientation wall_subshape1_to_wall_subshape12
wall_subshape1_to_wall_subshape12.Rotation 0 90.0 180.0
wall_subshape1_to_wall_subshape12.Position 1.5 8.5 -49.5

Shape Subtraction wall_subshape48
wall_subshape48.Parameters wall_subshape47 wall_subshape12 wall_subshape1_to_wall_subshape12

Orientation wall_subshape1_to_wall_subshape13
wall_subshape1_to_wall_subshape13.Rotation 0 180.0 90.0
wall_subshape1_to_wall_subshape13.Position 10.5 -6.5 -52.5

Shape Subtraction wall_subshape49
wall_subshape49.Parameters wall_subshape48 wall_subshape13 wall_subshape1_to_wall_subshape13

Orientation wall_subshape1_to_wall_subshape21
wall_subshape1_to_wall_subshape21.Rotation 0 90.0 -90.0
wall_subshape1_to_wall_subshape21.Position 0.0 69.5 0.0

Shape Subtraction wall_subshape50
wall_subshape50.Parameters wall_subshape49 wall_subshape21 wall_subshape1_to_wall_subshape21

Orientation wall_subshape1_to_wall_subshape22
wall_subshape1_to_wall_subshape22.Rotation 0 180.0 90.0
wall_subshape1_to_wall_subshape22.Position 0.0 64.0 0.75

Shape Subtraction wall_subshape51
wall_subshape51.Parameters wall_subshape50 wall_subshape22 wall_subshape1_to_wall_subshape22

Orientation wall_subshape1_to_wall_subshape23
wall_subshape1_to_wall_subshape23.Rotation 0 134.99960836501603 180.0
wall_subshape1_to_wall_subshape23.Position 7.890874 64.0 -24.18377

Shape Subtraction wall_subshape52
wall_subshape52.Parameters wall_subshape51 wall_subshape23 wall_subshape1_to_wall_subshape23

Orientation wall_subshape1_to_wall_subshape24
wall_subshape1_to_wall_subshape24.Rotation 0 90.0 -90.0
wall_subshape1_to_wall_subshape24.Position 0.0 69.5 -50.0

Shape Subtraction wall_subshape53
wall_subshape53.Parameters wall_subshape52 wall_subshape24 wall_subshape1_to_wall_subshape24

Orientation wall_subshape1_to_wall_subshape25
wall_subshape1_to_wall_subshape25.Rotation 0 90.0 180.0
wall_subshape1_to_wall_subshape25.Position 1.5 57.5 -49.5

Shape Subtraction wall_subshape54
wall_subshape54.Parameters wall_subshape53 wall_subshape25 wall_subshape1_to_wall_subshape25

Orientation wall_subshape1_to_wall_subshape26
wall_subshape1_to_wall_subshape26.Rotation 0 180.0 90.0
wall_subshape1_to_wall_subshape26.Position 10.5 72.5 -52.5

Shape Subtraction wall_subshape55
wall_subshape55.Parameters wall_subshape54 wall_subshape26 wall_subshape1_to_wall_subshape26

Volume wall
wall.Mother WorldVolume
wall.Material Aluminium
wall.Shape wall_subshape55
wall.Position 3.0 -33.0 54.0