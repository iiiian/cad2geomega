import re

new_assem=open("newassemble.txt","w")
with open('assemble.geo.setup','r') as assem:
    line=assem.readline()
    while line:
        a=re.findall(r"([a-z]+)([1-9]+)_mother.Position (-?[0-9]+\.[0-9]+) (-?[0-9]+\.[0-9]+) (-?[0-9]+\.[0-9]+)",line)
        b=re.findall(r"([a-z]+)([1-9]+)_mother.Rotation (-?[0-9]+\.[0-9]+) (-?[0-9]+\.[0-9]+) (-?[0-9]+\.[0-9]+)",line)
        c=re.findall(r"(m[1-9]_[1-9]+mm)([1-9]+)_mother.Position (-?[0-9]+\.[0-9]+) (-?[0-9]+\.[0-9]+) (-?[0-9]+\.[0-9]+)",line)
        d=re.findall(r"(m[1-9]_[1-9]+mm)([1-9]+)_mother.Rotation (-?[0-9]+\.[0-9]+) (-?[0-9]+\.[0-9]+) (-?[0-9]+\.[0-9]+)",line)

        if c:
            c=c[0]
            v_name=c[0]+c[1]
            m_v_name=c[0]
            new_assem.write(v_name+".Mother "+m_v_name)
            new_assem.write("\n")
            new_assem.write(v_name+".Position "+c[2]+" "+c[3]+" "+c[4])
            new_assem.write("\n")
        elif d: 
            d=d[0]
            v_name=d[0]+d[1]
            new_assem.write(v_name+".Rotation "+d[2]+" "+d[3]+" "+d[4])
            new_assem.write("\n")
            new_assem.write("\n")
            new_assem.write("\n")

        elif a:
            a=a[0]
            v_name=a[0]+a[1]
            m_v_name=a[0]
            new_assem.write(v_name+".Mother "+m_v_name)
            new_assem.write("\n")
            new_assem.write(v_name+".Position "+a[2]+" "+a[3]+" "+a[4])
            new_assem.write("\n")

        elif b: 
            b=b[0]
            v_name=b[0]+b[1]
            new_assem.write(v_name+".Rotation "+b[2]+" "+b[3]+" "+b[4])
            new_assem.write("\n")
            new_assem.write("\n")
            new_assem.write("\n")

        line=assem.readline()
new_assem.close()
    