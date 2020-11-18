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
        if xy_norm==0:
            xy_norm=1
        phi=r2d(np.arccos(z_prime[0]/xy_norm))
        if z_prime[1] >= 0:
            phi=phi
        else:
            phi=-phi
        orientation=[0,0,0,0,theta,phi]
        ans=[bo,mid,orientation]
        return ans


def write_ztbox(line,shape_name,geofile):
    p=re.findall(r"ztrec ([0-1]) (-?[0-9]+\.*[0-9]*) (-?[0-9]+\.*[0-9]*) (-?[0-9]+\.*[0-9]*) (-?[0-9]+\.*[0-9]*) (-?[0-9]+\.*[0-9]*) (-?[0-9]+\.*[0-9]*) (-?[0-9]+\.*[0-9]*) (-?[0-9]+\.*[0-9]*) (-?[0-9]+\.*[0-9]*) (-?[0-9]+\.*[0-9]*) (-?[0-9]+\.*[0-9]*) (-?[0-9]+\.*[0-9]*)",line)
    a=np.array([float(p[0][1]),float(p[0][2]),float(p[0][3])])
    b=np.array([float(p[0][4]),float(p[0][5]),float(p[0][6])])
    c=np.array([float(p[0][7]),float(p[0][8]),float(p[0][9])])
    d=np.array([float(p[0][10]),float(p[0][11]),float(p[0][12])])
    mid=(a+d)/2
    bo=float(p[0][0])
    x_h=di(a,b)/2
    y_h=di(c,b)/2
    z_h=di(d,c)/2

    with open(geofile,'a') as geo:
        geo.write('Shape Box '+shape_name)
        geo.write('\n')
        geo.write(shape_name+'.Parameters '+str(x_h)+' '+str(y_h)+' '+str(z_h))
        geo.write('\n')
        geo.write('\n')
    
    z=np.array([0,0,1])
    z_prime=nor(d-c)
    theta=r2d(np.arccos(np.dot(z,z_prime)))
    xy_norm=(z_prime[0]**2+z_prime[1]**2)**0.5
    if xy_norm==0:
        xy_norm=1
    phi=r2d(np.arccos(z_prime[0]/xy_norm))
    if z_prime[1] >= 0:
        phi=phi
    else:
        phi=-phi
    orientation=[0,0,0,0,theta,phi]
    ans=[bo,mid,orientation]
    return ans


def write_cyl(line,shape_name,geofile):
    p=re.findall(r"cyl ([0-1]) (-?[0-9]+\.*[0-9]*) (-?[0-9]+\.*[0-9]*) (-?[0-9]+\.*[0-9]*) (-?[0-9]+\.*[0-9]*) (-?[0-9]+\.*[0-9]*) (-?[0-9]+\.*[0-9]*) (-?[0-9]+\.*[0-9]*) (-?[0-9]+\.*[0-9]*) (-?[0-9]+\.*[0-9]*)",line)
    a=np.array([float(p[0][1]),float(p[0][2]),float(p[0][3])])
    b=np.array([float(p[0][4]),float(p[0][5]),float(p[0][6])])
    c=np.array([float(p[0][7]),float(p[0][8]),float(p[0][9])])
    mid=(a+c)/2
    bo=float(p[0][0])
    r=di(a,b)/2
    z_h=di(b,c)/2
    with open(geofile,'a') as geo:
        geo.write('Shape TUBE '+shape_name)
        geo.write('\n')
        geo.write(shape_name+'.Parameters 0 '+str(r)+' '+str(z_h)+' 0 360')
        geo.write('\n')
        geo.write('\n')
    
    z=np.array([0,0,1])
    z_prime=nor(c-b)
    theta=r2d(np.arccos(np.dot(z,z_prime)))
    print(theta)
    xy_norm=(z_prime[0]**2+z_prime[1]**2)**0.5
    if xy_norm==0:
        xy_norm=1
    phi=r2d(np.arccos(z_prime[0]/xy_norm))
    if z_prime[1] >= 0:
        phi=phi
    else:
        phi=-phi
    orientation=[0,0,0,0,theta,phi]
    ans=[bo,mid,orientation]
    return ans