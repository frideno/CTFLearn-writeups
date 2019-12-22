import numpy as np
from PIL import Image
import sys

# Open images
im1 = Image.open(sys.argv[1])
im2 = Image.open(sys.argv[2])

# Make into Numpy arrays
im1np = np.array(im1)
im2np = np.array(im2)
# XOR with Numpy
result = np.bitwise_xor(im1np, im2np).astype(np.uint8)

# Convert back to PIL image and save
Image.fromarray(result).save('xored.png')
