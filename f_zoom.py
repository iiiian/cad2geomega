from zoom_geo_func import zoom_shape

file_list=[
'tele_support_small.geo'
]

dir_in='/home/ian/Documents/GTM massmodel/bus/'
dir_out='/home/ian/Documents/GTM massmodel/bus_0.1x/'

for i in file_list:
    fin=dir_in+i
    fot=dir_out+i
    zoom_shape(fin,fot,0.1)
    print(i)