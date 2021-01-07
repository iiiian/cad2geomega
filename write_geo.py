import re
import numpy as np 
from write_geo_func import *
import os


def app(bo, mid, orientation,shape_n,sub_real,sub_real_name,sub_void,sub_void_name,sub_real_last,sub_real_last_name,sub_void_last,sub_void_last_name):
    if bo==1:
        sub_real.append([mid, orientation])
        sub_real_name.append(shape_n)
    elif bo==0:
        sub_void.append([mid, orientation])
        sub_void_name.append(shape_n)
    elif bo==2:
        sub_real_last.append([mid, orientation])
        sub_real_last_name.append(shape_n)
    elif bo==3:
        sub_void_last.append([mid, orientation])
        sub_void_last_name.append(shape_n)
    
    ans=[sub_real,sub_real_name,sub_void,sub_void_name,sub_real_last,sub_real_last_name,sub_void_last,sub_void_last_name]
    return ans


def write_all(file_in, file_out, v_name, v_world_volume, v_material, included_file):
    sub_real=[]
    sub_real_name=[]   
    sub_void=[]
    sub_void_name=[]
    sub_real_last=[]
    sub_real_last_name=[]   
    sub_void_last=[]
    sub_void_last_name=[]  
    #check if .geo exist
    if os.path.isfile(file_out):
        os.remove(file_out)
    with open(file_in,'r') as f_in:
        i=1
        line=f_in.readline()
        while line:
            if_match=False
            if re.match(r"rec",line):
                if_match=True
                shape_n=v_name+"_subshape"+str(i)
                [bo, mid, orientation]=write_box(line, shape_n,file_out)
                [sub_real,sub_real_name,sub_void,sub_void_name,sub_real_last,sub_real_last_name,sub_void_last,sub_void_last_name]=app(bo, mid, orientation,shape_n,sub_real,sub_real_name,sub_void,sub_void_name,sub_real_last,sub_real_last_name,sub_void_last,sub_void_last_name)
                    

            if re.match(r"ztrec",line):
                if_match=True
                shape_n=v_name+"_subshape"+str(i)
                [bo, mid, orientation]=write_ztrec(line, shape_n,file_out)
                [sub_real,sub_real_name,sub_void,sub_void_name,sub_real_last,sub_real_last_name,sub_void_last,sub_void_last_name]=app(bo, mid, orientation,shape_n,sub_real,sub_real_name,sub_void,sub_void_name,sub_real_last,sub_real_last_name,sub_void_last,sub_void_last_name)

            
            if re.match(r"cyl",line):
                if_match=True
                shape_n=v_name+"_subshape"+str(i)
                [bo, mid, orientation]=write_cyl(line, shape_n,file_out)
                [sub_real,sub_real_name,sub_void,sub_void_name,sub_real_last,sub_real_last_name,sub_void_last,sub_void_last_name]=app(bo, mid, orientation,shape_n,sub_real,sub_real_name,sub_void,sub_void_name,sub_real_last,sub_real_last_name,sub_void_last,sub_void_last_name)


            if re.match(r"acyl",line):
                if_match=True
                shape_n=v_name+"_subshape"+str(i)
                [bo, mid, orientation]=write_acyl(line, shape_n,file_out)
                [sub_real,sub_real_name,sub_void,sub_void_name,sub_real_last,sub_real_last_name,sub_void_last,sub_void_last_name]=app(bo, mid, orientation,shape_n,sub_real,sub_real_name,sub_void,sub_void_name,sub_real_last,sub_real_last_name,sub_void_last,sub_void_last_name)


            if re.match(r"trd1",line):
                print('match trd1')
                if_match=True
                shape_n=v_name+"_subshape"+str(i)
                [bo, mid, orientation]=write_trd1(line, shape_n,file_out)
                [sub_real,sub_real_name,sub_void,sub_void_name,sub_real_last,sub_real_last_name,sub_void_last,sub_void_last_name]=app(bo, mid, orientation,shape_n,sub_real,sub_real_name,sub_void,sub_void_name,sub_real_last,sub_real_last_name,sub_void_last,sub_void_last_name)


            line=f_in.readline()
            if if_match:
                i+=1

    with open(file_out,'a') as geo:
        #include file
        for k in included_file:
            geo.write("Include "+k)
            geo.write("\n")
            geo.write("\n")
        #merge all sub shape
        origin=sub_real[0][0]
        origin_name=sub_real_name[0]

        #merge real 
        m_shape_name=origin_name
        for j in range(1, len(sub_real)):
            mid=sub_real[j][0]
            orientation=sub_real[j][1]
            pos=mid-origin
            #write orientation
            o_name=origin_name+'_to_'+sub_real_name[j]
            geo.write('Orientation '+o_name)
            geo.write('\n')
            geo.write(o_name+'.Position '+str(pos[0])+' '+str(pos[1])+' '+str(pos[2]))
            geo.write('\n')
            geo.write(o_name+'.Rotation '+str(orientation[0])+' '+str(orientation[1])+' '+str(orientation[2]))
            geo.write('\n')
            geo.write('\n')
            #merge rectangles
            shape_n=v_name+"_subshape"+str(i)
            geo.write('Shape Union '+shape_n)
            geo.write('\n')
            geo.write(shape_n+'.Parameters '+m_shape_name+' '+sub_real_name[j]+' '+o_name)
            geo.write('\n')
            geo.write('\n')
            m_shape_name=shape_n
            i+=1

        #subtract void rec
        if sub_void:
            for j in range(0, len(sub_void)):
                mid=sub_void[j][0]
                orientation=sub_void[j][1]
                pos=mid-origin
                #write orientation
                o_name=origin_name+'_to_'+sub_void_name[j]
                geo.write('Orientation '+o_name)
                geo.write('\n')
                geo.write(o_name+'.Rotation '+str(orientation[0])+' '+str(orientation[1])+' '+str(orientation[2]))
                geo.write('\n')
                geo.write(o_name+'.Position '+str(pos[0])+' '+str(pos[1])+' '+str(pos[2]))
                geo.write('\n')
                geo.write('\n')
                #merge rectangles
                shape_n=v_name+"_subshape"+str(i)
                geo.write('Shape Subtraction '+shape_n)
                geo.write('\n')
                geo.write(shape_n+'.Parameters '+m_shape_name+' '+sub_void_name[j]+' '+o_name)
                geo.write('\n')
                geo.write('\n')
                m_shape_name=shape_n
                i+=1
            
        #merge sub real last
        if sub_real_last:
            for j in range(0, len(sub_real_last)):
                mid=sub_real_last[j][0]
                orientation=sub_real_last[j][1]
                pos=mid-origin
                #write orientation
                o_name=origin_name+'_to_'+sub_real_last_name[j]
                geo.write('Orientation '+o_name)
                geo.write('\n')
                geo.write(o_name+'.Position '+str(pos[0])+' '+str(pos[1])+' '+str(pos[2]))
                geo.write('\n')
                geo.write(o_name+'.Rotation '+str(orientation[0])+' '+str(orientation[1])+' '+str(orientation[2]))
                geo.write('\n')
                geo.write('\n')
                #merge rectangles
                shape_n=v_name+"_subshape"+str(i)
                geo.write('Shape Union '+shape_n)
                geo.write('\n')
                geo.write(shape_n+'.Parameters '+m_shape_name+' '+sub_real_last_name[j]+' '+o_name)
                geo.write('\n')
                geo.write('\n')
                m_shape_name=shape_n
                i+=1

        #merge sub void last
        if sub_void_last:
            print(sub_void_last_name)
            for j in range(0, len(sub_void_last)):
                mid=sub_void_last[j][0]
                orientation=sub_void_last[j][1]
                pos=mid-origin
                #write orientation
                o_name=origin_name+'_to_'+sub_void_last_name[j]
                geo.write('Orientation '+o_name)
                geo.write('\n')
                geo.write(o_name+'.Position '+str(pos[0])+' '+str(pos[1])+' '+str(pos[2]))
                geo.write('\n')
                geo.write(o_name+'.Rotation '+str(orientation[0])+' '+str(orientation[1])+' '+str(orientation[2]))
                geo.write('\n')
                geo.write('\n')
                #merge rectangles
                shape_n=v_name+"_subshape"+str(i)
                geo.write('Shape Subtraction '+shape_n)
                geo.write('\n')
                geo.write(shape_n+'.Parameters '+m_shape_name+' '+sub_void_last_name[j]+' '+o_name)
                geo.write('\n')
                geo.write('\n')
                print('write type3 (sub void last) success')
                m_shape_name=shape_n
                i+=1



        geo.write('Volume '+v_name)
        geo.write('\n')
        geo.write(v_name+".Mother "+v_world_volume)
        geo.write('\n')
        geo.write(v_name+".Material "+str(v_material))
        geo.write('\n')
        geo.write(v_name+".Shape "+shape_n)
        geo.write('\n')
        geo.write(v_name+'.Position '+str(origin[0])+' '+str(origin[1])+' '+str(origin[2]))