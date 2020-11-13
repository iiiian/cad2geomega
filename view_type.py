import re

with open('wall.STEP','r') as wall:
    line=wall.readline()
    typ=[]
    while line:
        mat=re.findall(r"#\d+ = ([A-Z_]+)",line)
        #print(mat)
        if mat:
            typ.append(mat[0])
        line=wall.readline()


typ=set(typ)
for i in typ:
    print(i)