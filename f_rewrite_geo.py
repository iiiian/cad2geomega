"""
this script aims to rewrite all geo
"""
import numpy as np
import re

# assemble.geo.setup
assem = open('/home/ian/Documents/GTM massmodel/geo_test/assemble.geo.setup', 'r')

#set path
path = '/home/ian/Documents/GTM massmodel/geo_test/'
obj_dir = '/home/ian/Documents/GTM massmodel/geo_10x/'

#set zoom factor
zoom_fac=0.1

lines = assem.read()
typelist = re.findall(r"Include (.+)\.geo", lines)
# exlude materials
typelist = typelist[1:]
print(typelist)

# set color
color = 1

# set new mother
nmother = 'WorldVolume'

for i in typelist:
    # the old and new .geo
    ogeo = open(path+i+'.geo', 'r')
    ngeo = open(obj_dir+i+'.geo', 'w')

    ogeo_line = ogeo.readline()
    while ogeo_line:
        # find .geo pos
        v_pos_pattern = '('+i + \
            '[0-9]+)\.Position (-?[0-9]+\.*[0-9]*) (-?[0-9]+\.*[0-9]*) (-?[0-9]+\.*[0-9]*)'
        v_pos_raw = re.findall(v_pos_pattern, ogeo_line)

        # find .geo mother
        v_mot_pattern = '('+i+'[0-9]+)\.Mother (.+)'
        v_mother_raw = re.findall(v_mot_pattern, ogeo_line)

        # find .geo color
        v_col_pattern = '('+i+'[0-9]+)\.Color (.+)'
        v_color_raw = re.findall(v_col_pattern, ogeo_line)

        if v_pos_raw:
            # find mother pos and rot
            vm_pos_pattern = '('+v_pos_raw[0][0] + \
                '_mother)\.Position (-?[0-9]+\.*[0-9]*) (-?[0-9]+\.*[0-9]*) (-?[0-9]+\.*[0-9]*)'
            vm_rot_pattern = '('+v_pos_raw[0][0] + \
                '_mother)\.Rotation (-?[0-9]+\.*[0-9]*) (-?[0-9]+\.*[0-9]*) (-?[0-9]+\.*[0-9]*)'
            vm_pos_raw = re.findall(vm_pos_pattern, lines)
            vm_rot_raw = re.findall(vm_rot_pattern, lines)

            # convert to numpy array
            v_pos = np.array([float(v_pos_raw[0][1]), float(
                v_pos_raw[0][2]), float(v_pos_raw[0][3])])
            vm_pos = np.array([float(vm_pos_raw[0][1]), float(
                vm_pos_raw[0][2]), float(vm_pos_raw[0][3])])
            vm_rot = np.array([float(vm_rot_raw[0][1]), float(
                vm_rot_raw[0][2]), float(vm_rot_raw[0][3])])

            # convert to rad
            vm_rot_deg = vm_rot
            vm_rot = vm_rot/180*np.pi

            # create rotation matrix
            rotx = np.array([[1, 0, 0], [0, np.cos(vm_rot[0]), -np.sin(vm_rot[0])], [0, np.sin(vm_rot[0]), np.cos(vm_rot[0])]])
            roty = np.array([[np.cos(vm_rot[1]), 0, np.sin(vm_rot[1])], [0, 1, 0], [-np.sin(vm_rot[1]), 0, np.cos(vm_rot[1])]])
            rotz = np.array([[np.cos(vm_rot[2]), -np.sin(vm_rot[2]), 0],[np.sin(vm_rot[2]), np.cos(vm_rot[2]), 0], [0, 0, 1]])

            # combined coordinate
            n_v_pos = rotz@roty@rotx@v_pos

            #zoom
            vm_pos=zoom_fac*vm_pos
            n_v_pos=zoom_fac*n_v_pos

            # write new .geo
            v_name = v_pos_raw[0][0]
            ngeo.write(v_name+'.Position {'+str(vm_pos[0])+'+'+str(n_v_pos[0])+'} {'+str(vm_pos[1])+'+'+str(
                n_v_pos[1])+'} {'+str(vm_pos[2])+'+'+str(n_v_pos[2])+'}')
            ngeo.write('\n')
            ngeo.write(v_name+'.Rotation ' +
                       str(vm_rot_deg[0])+' '+str(vm_rot_deg[1])+' '+str(vm_rot_deg[2]))
            ngeo.write('\n')

        elif v_mother_raw:
            ngeo.write(v_mother_raw[0][0]+'.Mother '+nmother)
            ngeo.write('\n')
            # write auto index color
            ngeo.write(v_mother_raw[0][0]+'.Color '+str(color))
            ngeo.write('\n')

        elif v_color_raw:
            pass

        else:
            ngeo.write(ogeo_line)

        ogeo_line = ogeo.readline()
    # change the color
    color += 1

ogeo.close()
ngeo.close()
assem.close()
