import re
from mpl_toolkits import mplot3d
import matplotlib.pyplot as plt
import plotly.express as px
import pandas as pd
from tqdm import tqdm
 
car=re.compile(r"CARTESIAN_POINT \( 'NONE',  \( (-?[0-9]+\.[0-9]+E*-?[0-9]*), (-?[0-9]+\.[0-9]+E*-?[0-9]*), (-?[0-9]+\.[0-9]+E*-?[0-9]*) \) \) ;")
vert=re.compile(r"VERTEX_POINT \( 'NONE', #([0-9]+) \) ;")
vec=re.compile(r"VECTOR \( 'NONE', #([0-9]+), (-?[0-9]+\.[0-9]+E*-?[0-9]*) \) ;")
edg_c=re.compile(r"EDGE_CURVE \( 'NONE', #([0-9]+), #([0-9]+), #([0-9]+), .T. \) ;")
edg_l=re.compile(r"EDGE_LOOP \( 'NONE', \( #([0-9]+), #([0-9]+), #([0-9]+), #([0-9]+) \) \) ;")
ins_pattern={'cartesian_point':car,'vertex_point':vert,'vector':vec,'edge_curve':edg_c,'edge_loop':edg_l}


def find_ins(file,ins_name,id_num,sup=True):
    with open(file,'r',errors='ignore') as step:
        line=step.readline()
        while line:
            mat=re.findall(r"\A#" + str(id_num) + r" =",line)
            if mat:
                if not sup:
                    print('---------------------------')
                    print('find')
                    print("id_num = "+str(id_num))
                    print("type = "+ins_name)
                    print('line = '+line)
                    print('---------------------------')
                
                ans=re.findall(ins_pattern[ins_name],line)[0]
            line=step.readline()
        return ans


def view_line(file,sup=True):
    #plotting
    fig = plt.figure()
    ax = plt.axes(projection='3d')

    print("start finding edge curve")
    with open(file,'r',errors='ignore') as wall:
        edgc=[]
        edgc_com=[]
        line=wall.readline()
        while line:
            mat=re.findall(r"#([0-9]+) = EDGE_CURVE \( 'NONE', #([0-9]+), #([0-9]+), #([0-9]+), .T. \) ;", line)
            if mat:
                #print(line)
                edgc.append(mat[0][0])
                com=[mat[0][1],mat[0][2],mat[0][3]]
                edgc_com.append(com)
            line=wall.readline()
    print("finish finding edge curve")

    tpo=[]

    print("start finding sub component of edge curve")
    for i in tqdm(range(len(edgc))):
        ver1=find_ins(file,'vertex_point',edgc_com[i][0],sup=sup)
        ver2=find_ins(file,'vertex_point',edgc_com[i][1],sup=sup)
        car1=find_ins(file,'cartesian_point',ver1,sup=sup)
        car2=find_ins(file,'cartesian_point',ver2,sup=sup)
        #ax.plot([float(car1[0]),float(car2[0])],[float(car1[1]),float(car2[1])],[float(car1[2]),float(car2[2])])
        tpo.append([float(car1[0]),float(car1[1]),float(car1[2]),str(i)])
        tpo.append([float(car2[0]),float(car2[1]),float(car2[2]),str(i)])
    print("finish finding sub component of edge curve")

    print("start excluding repeated edge curve")
    tpo_non_repeat=['none']
    for i in tpo:
        if_save=True
        for j in tpo_non_repeat:
            if i==j:
                if_save=False
            
        if if_save:
            tpo_non_repeat.append(i)

    tpo_non_repeat=tpo_non_repeat[1:]
    print("finished excluding repeated edge curve")

    print("start ploting")
    df=pd.DataFrame(tpo,columns=['x','y','z','id'])
    fig=px.line_3d(df,x='x', y='y', z='z',color='id')
    fig.update_scenes(aspectmode='data')

    """
    df=pd.DataFrame(tpo_non_repeat,columns=['x','y','z'])
    df['size'] = pd.Series([1 for x in range(len(df.index))], index=df.index)
    fig=px.scatter_3d(df, x='x', y='y', z='z',size='size')
    """
    fig.show()


    #for i in range(1,len(tpo_non_repeat)):
        #text=str(i)
        #ax.text(float(tpo_non_repeat[i][0]),float(tpo_non_repeat[i][1]),float(tpo_non_repeat[i][2]),text,zdir=(1, 1, 1))
    #ax.axis('equal')
    #plt.show()

