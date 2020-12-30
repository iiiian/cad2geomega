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


a=np.array([393.214, -414.428, 0])
b=np.array([414.428, -435.641, 0])
l=di(a,b)
print(l/2)

c=np.array([-40,-434.712,506.593])
d=np.array([-445,435.05,709.974])
print((c+d)/2)
