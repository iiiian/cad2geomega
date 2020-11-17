import re
import numpy as np

def write_box(line,shape_name,geofile):
    a=re.findall(r"rec ([0-1]) (-?[0-9]+\.*[0-9]*) (-?[0-9]+\.*[0-9]*) (-?[0-9]+\.*[0-9]*) (-?[0-9]+\.*[0-9]*) (-?[0-9]+\.*[0-9]*) (-?[0-9]+\.*[0-9]*)",line)
    p1=np.array([float(a[0][1]),float(a[0][2]),float(a[0][3])])
    p2=np.array([float(a[0][4]),float(a[0][5]),float(a[0][6])])
    mid=(p1+p2)/2
    vec=p1-p2
    bo=float(a[0][0])
    x_h=abs(vec[0])/2
    y_h=abs(vec[1])/2
    z_h=abs(vec[2])/2
    with open(geofile,'a') as geo:
        geo.write('Shape Box '+shape_name)
        geo.write('\n')
        geo.write(shape_name+'.Parameters '+str(x_h)+' '+str(y_h)+' '+str(z_h))
        geo.write('\n')
        geo.write('\n')
    
    ans=[bo,mid]
    return ans


def write_all(file_in, file_out, v_name, v_density, v_material):
    rec_real=[]
    rec_real_name=[]   
    rec_void=[]
    rec_void_name=[]
    with open(file_in,'r') as f_in:
        i=1
        line=f_in.readline()
        while line:
            if_match=False
            if re.match(r"rec",line):
                if_match=True
                shape_n=v_name+"_subshape"+str(i)
                [bo, mid]=write_box(line, shape_n,file_out)
                if bo==1:
                    rec_real.append(mid)
                    rec_real_name.append(shape_n)
                elif bo==0:
                    rec_void.append(mid)
                    rec_void_name.append(shape_n)
            line=f_in.readline()
            if if_match:
                i+=1

    with open(file_out,'a') as geo:
        #merge all sub shape
        origin=rec_real[0]
        origin_name=rec_real_name[0]

        #merge real rec
        m_shape_name=origin_name
        for j in range(1, len(rec_real)):
            pos=rec_real[j]-origin
            #write orientation
            o_name=origin_name+'_to_'+rec_real_name[j]
            geo.write('Orientation '+o_name)
            geo.write('\n')
            geo.write(o_name+'.Position '+str(pos[0])+' '+str(pos[1])+' '+str(pos[2]))
            geo.write('\n')
            geo.write('\n')
            #merge rectangles
            shape_n=v_name+"_subshape"+str(i)
            geo.write('Shape Union '+shape_n)
            geo.write('\n')
            geo.write(shape_n+'.Parameters '+m_shape_name+' '+rec_real_name[j]+' '+o_name)
            geo.write('\n')
            geo.write('\n')
            m_shape_name=shape_n
            i+=1

        #subtract void rec
        if rec_void:
            for j in range(0, len(rec_void)):
                pos=rec_void[j]-origin
                #write orientation
                o_name=origin_name+'_to_'+rec_void_name[j]
                geo.write('Orientation '+o_name)
                geo.write('\n')
                geo.write(o_name+'.Position '+str(pos[0])+' '+str(pos[1])+' '+str(pos[2]))
                geo.write('\n')
                geo.write('\n')
                #merge rectangles
                shape_n=v_name+"_subshape"+str(i)
                geo.write('Shape Subtraction '+shape_n)
                geo.write('\n')
                geo.write(shape_n+'.Parameters '+m_shape_name+' '+rec_void_name[j]+' '+o_name)
                geo.write('\n')
                geo.write('\n')
                m_shape_name=shape_n
                i+=1



        geo.write('Volume '+v_name)
        geo.write('\n')
        geo.write(v_name+".Density "+str(v_density))
        geo.write('\n')
        geo.write(v_name+".Material "+str(v_material))
        geo.write('\n')
        geo.write(v_name+".Shape "+shape_n)
        geo.write('\n')
        geo.write(v_name+'.Position '+str(origin[0])+' '+str(origin[1])+' '+str(origin[2]))





    
