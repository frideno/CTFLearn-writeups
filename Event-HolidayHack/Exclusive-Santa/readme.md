we get first a Exslusive_Santa.rar file
by the caption of the mission and the "Exclusive" there is great chance this is xor related.

we get two images: 1.png, 3.png 
3.png is actually xor draw in group theory.
1.png is a blured image of what seems as night king from game of thrones, with teh caption "winter is coming"
after some thoughts, we can try to find the original picture of this, and xored between them, to get the flag picture.
it took a while but i found the origial, saved as nk.jpeg.
i wrote xor.py which xors two picures and save the result to xored.png
we activate:
python3 xor.py 1.png nk.jpeg
but there is an error: 
    result = np.bitwise_xor(im1np, im2np).astype(np.uint8)
ValueError: operands could not be broadcast together with shapes (720,1280,4) (720,1280,3) 

which causes because 1.png is bmp which means that it is rgb-alpha, and jpg is just rgb here. depth 4 vs 3.
we can online convert 1.png to 1.jpg, and opereate xor again, this time works.
the result is xored.png which seems as a flag but mirrored.
online we mirror it into xored_mirrored.png, and there is the flag:

CTFLearn{Santa_1s_C0ming}
