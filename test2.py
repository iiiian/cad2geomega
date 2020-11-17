from write_geo import write_all
import numpy as np 

am=np.array([1,2,3,4])
bm=np.array([5,6,7,8])
print(am-bm)

write_all('./shape/wall.txt','./wall.geo','wall',"WorldVolume","Aluminium",["Materials.geo"])