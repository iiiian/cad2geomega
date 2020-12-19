Shape Box pcbconnector_subshape1
pcbconnector_subshape1.Parameters 35.0 0.8 30.0

Shape TUBE pcbconnector_subshape2
pcbconnector_subshape2.Parameters 0 1.5 0.8001 0 360

Shape TUBE pcbconnector_subshape3
pcbconnector_subshape3.Parameters 0 1.5 0.8001 0 360

Shape TUBE pcbconnector_subshape4
pcbconnector_subshape4.Parameters 0 1.5 0.8001 0 360

Shape TUBE pcbconnector_subshape5
pcbconnector_subshape5.Parameters 0 1.5 0.8001 0 360

Include Materials.geo

Orientation pcbconnector_subshape1_to_pcbconnector_subshape2
pcbconnector_subshape1_to_pcbconnector_subshape2.Rotation 0 90.0 -90.0
pcbconnector_subshape1_to_pcbconnector_subshape2.Position 26.0 0.0 27.0

Shape Subtraction pcbconnector_subshape6
pcbconnector_subshape6.Parameters pcbconnector_subshape1 pcbconnector_subshape2 pcbconnector_subshape1_to_pcbconnector_subshape2

Orientation pcbconnector_subshape1_to_pcbconnector_subshape3
pcbconnector_subshape1_to_pcbconnector_subshape3.Rotation 0 90.0 -90.0
pcbconnector_subshape1_to_pcbconnector_subshape3.Position 26.0 0.0 -27.0

Shape Subtraction pcbconnector_subshape7
pcbconnector_subshape7.Parameters pcbconnector_subshape6 pcbconnector_subshape3 pcbconnector_subshape1_to_pcbconnector_subshape3

Orientation pcbconnector_subshape1_to_pcbconnector_subshape4
pcbconnector_subshape1_to_pcbconnector_subshape4.Rotation 0 90.0 -90.0
pcbconnector_subshape1_to_pcbconnector_subshape4.Position -26.0 0.0 27.0

Shape Subtraction pcbconnector_subshape8
pcbconnector_subshape8.Parameters pcbconnector_subshape7 pcbconnector_subshape4 pcbconnector_subshape1_to_pcbconnector_subshape4

Orientation pcbconnector_subshape1_to_pcbconnector_subshape5
pcbconnector_subshape1_to_pcbconnector_subshape5.Rotation 0 90.0 -90.0
pcbconnector_subshape1_to_pcbconnector_subshape5.Position -26.0 0.0 -27.0

Shape Subtraction pcbconnector_subshape9
pcbconnector_subshape9.Parameters pcbconnector_subshape8 pcbconnector_subshape5 pcbconnector_subshape1_to_pcbconnector_subshape5

Volume pcbconnector1
pcbconnector1.Mother WorldVolume
pcbconnector1.Color 8
pcbconnector1.Material Aluminium
pcbconnector1.Shape pcbconnector_subshape9
pcbconnector1.Position {2.69+0.0} {-27.25+0.0} {80.30+0.0}
pcbconnector1.Rotation 90.0 0.0 0.0
