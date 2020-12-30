from zoom_geo_func import zoom_shape

file_list=[
'wall.geo',
'sensorcover.geo',
'basebeamupper.geo',
'frameupper.geo',
'sensorbacksupport.geo',
'sheetleft.geo',
'sheetback.geo',
'pcbconnector.geo',
'sheetfront.geo',
'sheetup.geo',
'm6_10mm.geo',
'm3_6mm.geo'
]

dir_in='/home/ian/Documents/GTM massmodel/geo_10x/'
dir_out='/home/ian/Documents/GTM massmodel/geo_new/'

for i in file_list:
    fin=dir_in+i
    fot=dir_out+i
    zoom_shape(fin,fot,0.1)
    print(i)