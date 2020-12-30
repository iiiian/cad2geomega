import re


def zoom_shape(file_in, file_out, zoom_rate):
    # set initial value
    match_o = False
    match_box=False
    match_tube=False
    match_trd1=False
    match_vol=False

    o_file = open(file_in, 'r')
    n_file = open(file_out, 'w')

    line = o_file.readline()
    while line:
        n_line = line

        #if match shape
        if re.findall(r'Box',line):
            match_box=True
        if re.findall(r'TUBE',line):
            match_tube=True
        if re.findall(r'TRD1',line):
            match_trd1=True
        if re.findall(r'Orientation',line):
            match_o=True
        if re.findall(r'Volume',line):
            match_vol=True

        # zoom shape box
        m1 = re.findall(r'(.+)Parameters (-?[0-9]+\.*[0-9]*) (-?[0-9]+\.*[0-9]*) (-?[0-9]+\.*[0-9]*)', line)
        if match_box and m1:
            x = zoom_rate*float(m1[0][1])
            y = zoom_rate*float(m1[0][2])
            z = zoom_rate*float(m1[0][3])
            n_line = m1[0][0]+'Parameters '+str(x)+' '+str(y)+' '+str(z)+'\n'
            match_box=False
        # zoom shape tube
        m2 = re.findall(r'(.+)Parameters (-?[0-9]+\.*[0-9]*) (-?[0-9]+\.*[0-9]*) (-?[0-9]+\.*[0-9]*) (-?[0-9]+\.*[0-9]*) (-?[0-9]+\.*[0-9]*)', line)
        if match_tube and m2:
            i_r = zoom_rate*float(m2[0][1])
            o_r = zoom_rate*float(m2[0][2])
            h_h = zoom_rate*float(m2[0][3])
            n_line = m2[0][0]+'Parameters '+str(i_r)+' '+str(o_r)+' ' + str(h_h)+' '+m2[0][4]+' '+m2[0][5]+'\n'
            match_tube=False
        # zoom shape trd1
        m3 = re.findall(r'(.+)Parameters (-?[0-9]+\.*[0-9]*) (-?[0-9]+\.*[0-9]*) (-?[0-9]+\.*[0-9]*) (-?[0-9]+\.*[0-9]*)', line)
        if match_trd1 and m3:
            h_x1 = zoom_rate*float(m3[0][1])
            h_x2 = zoom_rate*float(m3[0][2])
            h_y = zoom_rate*float(m3[0][3])
            h_z = zoom_rate*float(m3[0][4])
            n_line = m3[0][0]+'Parameters '+str(h_x1)+' '+str(h_x2)+' '+str(h_y)+' '+str(h_z)+'\n'
            match_trd1=False
        # zoom orientation
        m4 = re.findall(r'(.+)Position (-?[0-9]+\.*[0-9]*) (-?[0-9]+\.*[0-9]*) (-?[0-9]+\.*[0-9]*)', line)
        if match_o and m4:
            x = zoom_rate*float(m4[0][1])
            y = zoom_rate*float(m4[0][2])
            z = zoom_rate*float(m4[0][3])
            n_line = m4[0][0]+'Position '+str(x)+' '+str(y)+' '+str(z)+'\n'
            match_o = False
        # zoom volume position
        m5 = re.findall(r'(.+)Position (-?[0-9]+\.*[0-9]*) (-?[0-9]+\.*[0-9]*) (-?[0-9]+\.*[0-9]*)', line)
        if match_vol and m5:
            x = zoom_rate*float(m5[0][1])
            y = zoom_rate*float(m5[0][2])
            z = zoom_rate*float(m5[0][3])
            n_line = m5[0][0]+'Position '+str(x)+' '+str(y)+' '+str(z)+'\n'

        # write new file
        n_file.write(n_line)

        line = o_file.readline()

    o_file.close()
    n_file.close()

