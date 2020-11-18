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


a=np.array([9.681981, 3, -4.146447])
b=np.array([8.171573, 3, 0])
c=np.array([2.12132, 3, -11.70711])
l=di(a,b)
ac=c-a
ab=b-a
mx=np.array([-1,0,0])
print(di(a,b))
print('theta')
print(r2d(np.arccos(ac[0]/di(a,c))))    #theta
print(r2d(np.arccos(np.dot(ac,ab)/di(a,c)/di(a,b))))    #a
alpha=np.arccos(np.dot(ac,ab)/di(a,c)/di(a,b))
p=b+nor(ac)*(np.sin(alpha-np.pi/2)*l)
mid=0.5*(a+p)+nor(ac)*0.5
pa=a-p
print(p)
print('x')
print(di(b,p))
print('z')
print(di(a,p))
print(mid)
print(r2d(np.arccos(pa[2]/di(p,a))))
print('-----------------')
print(di(a,b)**2)
print(di(a,p)**2+di(b,p)**2)
