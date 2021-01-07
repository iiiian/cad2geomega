from zoom_geo_func import zoom_shape

file_list=[
'inner_frame_new.geo'
]

dir_in='/home/ian/Documents/bus_0.1x/'
dir_out='/home/ian/Documents/'

for i in file_list:
    fin=dir_in+i
    fot=dir_out+i
    zoom_shape(fin,fot,0.1)
    print(i)