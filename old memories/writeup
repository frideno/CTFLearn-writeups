when we open the images we can see both 512*512 pixels, when each pixel is black or white only.
first idea i have is xor the pixels of the images, lets try it.

we need to load pixels to arrays p1,p2, then xor them, then rebuild image.

python:
>>> from PIL import Image
>>> import numpy as np
>>> img1 = Image.open('1.png')
>>> img2 = Image.open('2.png')
>>> pxls1 = np.array(img1)
>>> pxls2 = np.array(img2)
>>> pxls1
array([[  0, 255,   0, ...,   0, 255, 255],
       [255,   0, 255, ..., 255,   0, 255],
       [  0, 255, 255, ...,   0,   0, 255],
       ...,
       [255, 255, 255, ...,   0,   0,   0],
       [255,   0, 255, ..., 255, 255,   0],
       [255, 255, 255, ...,   0, 255,   0]], dtype=uint8)
>>> pxls1.size
262144
>>> pxls1.shape
(512, 512)
>>> outputpxls = numpy.zeros((512,512))
>>> outimg = Image.fromarray(np.uint8(outputpxls) , 'L')
>>> outimg.save('1xor2.png')

now we can look at the output image 1xor2.png, and tell that its writen the flag:
CTF{I_L0V3_PYTH0N}
and we are done!
