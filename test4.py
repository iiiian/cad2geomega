import numpy as np

def di(a,b):
    #distance of a b 
    dis=a-b
    ans=0
    for i in dis:
        ans+=i**2
    ans=ans**0.5
    return ans


def r2d(a):
    #rad2degree
    ans=a/np.pi*180
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

b=np.array([0.3535535, 3, -7.818019])
a=np.array([0.7071068, 3, -8.171573])
d=np.array([-0.3535535, 3, -7.818019])
c=np.array([-0.7071068, 3, -8.171573])
or1=np.array([34 ,3 ,0])
or2=np.array([9.681981 ,-3 ,-4])
ori=0.5*(or1+or2)

dz=b[2]-a[2]
r=di(b,d)/di(a,c)
mid=0.5*(b+d)+r*(np.array([0,0,dz]))
mid=mid-ori
print(mid)
print(di(a,mid))
print(di(b,mid))
ba=a-b
dc=c-d
theta=r2d(np.arccos(np.dot(ba,dc)/di(b,a)/di(d,c)))
print(theta)
print(ori)

Shape TUBE frameupper_subshape8
frameupper_subshape8.Parameters 0.395284 5.016608 3 90 135 

Orientation frameupper_subshape1_to_frameupper_subshape8
frameupper_subshape1_to_frameupper_subshape8.Position -21.8409905 0 -5.64124195
frameupper_subshape1_to_frameupper_subshape8.Rotation 90 180 0

Shape Union frameupper_subshape9
frameupper_subshape9.Parameters frameupper_subshape7 frameupper_subshape8 frameupper_subshape1_to_frameupper_subshape8