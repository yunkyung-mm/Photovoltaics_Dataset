import h5py
import os 
import shutil
import numpy as np 

# for i in range(10):
#     file_dst='./validation_set_{}'.format(i)
#     os.mkdir(file_dst)

f=h5py.File('./model_data_validation.h5')
for key in f.keys():
    if key=='Y_validation':

        print(key)
        print(len(f[key].value))
        # x=f[key].value.sum(axis=0)
        # print(x)
        for i in range(len(f[key].value)):
            index=np.where(f[key].value[i]==1)
            index=index[0][0]
            shutil.copy('validation_set/morph_valid_{}.png'.format(i+1),'./validation_set_{}'.format(index))
