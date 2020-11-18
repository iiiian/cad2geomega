import numpy as np

def di(a,b):
    #distance of a b 
    dis=a-b
    ans=0
    for i in dis:
        ans+=i**2
    ans=ans**0.5
    return ans

a=np.array([10.03553, -3.5])
b=np.array([9.328427,-3.792893])
print(np.arccos(di(a,b)))