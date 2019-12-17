# noitice that the flag file is large base64 string. 
# after trying to decode it, its again base64 string. decided to do it again and again until a plaintext achived.

s = open('flag.txt','r').read()
from base64 import b64decode as d
t = s
while len(t)>30:
	t = d(t)
print(t)

output: 'ABCTF{pr3tty_b4s1c_r1ght?}'

