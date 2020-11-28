
import cv2 as cv
import numpy as np
import pandas as pd

img_path='./test_set_0/morph_test_86.png'
img=cv.imread(img_path,cv.IMREAD_GRAYSCALE)

image_array=np.reshape(img,(1,-1))
image_array=list(image_array[0])

bins=np.arange(min(image_array),max(image_array)+1,1)
hist, bins =np.histogram(image_array,bins)
array=[image_array,[min(image_array),max(image_array)],bins,hist]
df=pd.DataFrame(array).T
df.to_excel(excel_writer = './test.xlsx',header=False, index=False)