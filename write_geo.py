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
    
    orientation=[0,0,0,0,0,0]
    ans=[bo,mid,orientation]
    return ans


def di(a,b):
    #distance of a b 
    dis=a-b
    ans=0
    for i in dis:
        ans+=i**2
    ans=ans**0.5
    return ans


def nor(a):
    #norm vector a
    norm=0
    for i in a:
        norm+=i**2
    norm=norm**0.5
    if norm != 0:
        ans=a/norm
    else:
        ans=a
    return ans

def r2d(a):
    #rad2degree
    ans=a/np.pi*180
    return ans


def write_ptri(line,shape_name,geofile):
    p=re.findall(r"ptri ([0-1]) (-?[0-9]+\.*[0-9]*) (-?[0-9]+\.*[0-9]*) (-?[0-9]+\.*[0-9]*) (-?[0-9]+\.*[0-9]*) (-?[0-9]+\.*[0-9]*) (-?[0-9]+\.*[0-9]*) (-?[0-9]+\.*[0-9]*) (-?[0-9]+\.*[0-9]*) (-?[0-9]+\.*[0-9]*) (-?[0-9]+\.*[0-9]*) (-?[0-9]+\.*[0-9]*) (-?[0-9]+\.*[0-9]*)",line)
    a=np.array([float(p[0][1]),float(p[0][2]),float(p[0][3])])
    b=np.array([float(p[0][4]),float(p[0][5]),float(p[0][6])])
    c=np.array([float(p[0][7]),float(p[0][8]),float(p[0][9])])
    d=np.array([float(p[0][10]),float(p[0][11]),float(p[0][12])])
    with open(geofile,'a') as geo:
        sub1_name=shape_name+'_sub1'
        geo.write('Shape TRD1 '+sub1_name)
        geo.write('\n')
        geo.write(sub1_name+'.Parameters '+str(di(a,b)+0.5)+' '+str(0.5)+' '+str(di(d,c)/2)+' '+str(di(c,a)/2))
        geo.write('\n')
        geo.write('\n')
        sub2_name=shape_name+'_sub2'
        geo.write('Shape BOX '+sub2_name)
        geo.write('\n')
        geo.write(sub2_name+'.Parameters '+str((di(a,b)+1)/2)+' '+str(di(c,d)/2)+' '+str(di(c,a)/2))
        geo.write('\n')
        geo.write('\n')
        #write orientation
        o_name=sub1_name+'_to_'+sub2_name
        geo.write('Orientation '+o_name)
        geo.write('\n')
        geo.write(o_name+'.Position '+str(-di(a,b)/2)+' 0 0')
        geo.write('\n')
        geo.write('\n')
        #subtract
        geo.write('Shape Subtraction '+shape_name)
        geo.write('\n')
        geo.write(shape_name+'.Parameters '+sub1_name+' '+sub2_name+' '+o_name)
        geo.write('\n')
        geo.write('\n')

        bo=float(p[0][0])
        mid=0.5*(a+d)-0.5*nor(b-a)
        z=np.array([0,0,1])
        z_prime=nor(d-c)
        theta=r2d(np.arccos(np.dot(z,z_prime)))
        xy_norm=(z_prime[0]**2+z_prime[1]**2)**0.5
        phi=r2d(np.arccos(z_prime[0]/xy_norm))
        if z_prime[1] >= 0:
            phi=phi
        else:
            phi=-phi
        orientation=[0,0,0,0,theta,phi]
        ans=[bo,mid,orientation]
        return ans


def write_all(file_in, file_out, v_name, v_world_volume, v_material, included_file):
    sub_real=[]
    sub_real_name=[]   
    sub_void=[]
    sub_void_name=[]
    with open(file_in,'r') as f_in:
        i=1
        line=f_in.readline()
        while line:
            if_match=False
            if re.match(r"rec",line):
                if_match=True
                shape_n=v_name+"_subshape"+str(i)
                [bo, mid, orientation]=write_box(line, shape_n,file_out)
                if bo==1:
                    sub_real.append([mid, orientation])
                    sub_real_name.append(shape_n)
                elif bo==0:
                    sub_void.append([mid, orientation])
                    sub_void_name.append(shape_n)

            if re.match(r"ptri",line):
                if_match=True
                shape_n=v_name+"_subshape"+str(i)
                [bo, mid, orientation]=write_ptri(line, shape_n,file_out)
                if bo==1:
                    sub_real.append([mid, orientation])
                    sub_real_name.append(shape_n)
                elif bo==0:
                    sub_void.append([mid, orientation])
                    sub_void_name.append(shape_n)

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
            geo.write(o_name+'.Rotation '+str(orientation[0])+' '+str(orientation[1])+' '+str(orientation[2])+' '+str(orientation[3])+' '+str(orientation[4])+' '+str(orientation[5])+' ')
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
                geo.write(o_name+'.Position '+str(pos[0])+' '+str(pos[1])+' '+str(pos[2]))
                geo.write('\n')
                geo.write(o_name+'.Rotation '+str(orientation[0])+' '+str(orientation[1])+' '+str(orientation[2])+' '+str(orientation[3])+' '+str(orientation[4])+' '+str(orientation[5])+' ')
                geo.write('\n')
                geo.write('\n')
                #merge rectangles
                shape_n=v_name+"_subshape"+str(i)
                geo.write('Shape Subtraction '+shape_n)
                geo.write('\n')
                geo.write(shape_n+'.Parameters '+m_shape_name+' '+sub_real_name[j]+' '+o_name)
                geo.write('\n')
                geo.write('\n')
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