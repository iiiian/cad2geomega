import re
from mpl_toolkits import mplot3d
import matplotlib.pyplot as plt

with open('wall.STEP','r') as wall:
    line=wall.readline()
    typ=[]
    while line:
        mat=re.findall(r"CARTESIAN_POINT \( 'NONE',  \( ([0-9]+\.[0-9]+), ([0-9]+\.[0-9]+), ([0-9]+\.[0-9]+) \) \) ;",line)
        #print(mat)
        if mat:
            typ.append(mat[0])
        line=wall.readline()

"""
for i in typ:
    print(i)
"""

#plotting
fig = plt.figure()
ax = plt.axes(projection='3d')
x=[]
y=[]
z=[]
for i in typ:
    x.append(float(i[0]))
    y.append(float(i[1]))
    z.append(float(i[2]))

ax.scatter(x,y,z)
plt.show()
