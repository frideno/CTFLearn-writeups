
e = 3
c = 219878849218803628752496734037301843801487889344508611639028
n = 245841236512478852752909734912575581815967630033049838269083
# with factordb.com, we found:
p =  416064700201658306196320137931
q = 590872612825179551336102196593
phi = (p-1)*(q-1)
def egcd(a,b):
    if a == 0: return (b, 0, 1)
    else:
        g, y, x = egcd(b %a, a)
        return (g, x - (b // a) * y, y)
        

def mod_inverse(a, n):
    g, x, y = egcd(a, n)
    if g != 1:
        return "mod inverse not exsits, must be a*b = 1 mod n"
    else:
        return x % n
        
d = mod_inverse(e, n)
In[7] = ""
d
d %n
import gmt2
import gmpy2
f = open('writeup',  'w')
for line in In:
    f.write(str(line)+'\n\')
for line in In:
    f.write(str(line)+'\n')


import gmpy2s
>>> phi = gmpy2.mul(p-1,q-1)
>>> d = gmpy2.invert(e, phi)
>>> d
mpz(163894157674985901835273156607712429668627194783678277289707)
>>> m = powmod(c, d, n)
>>> message = bytes.fromhex(hex(m)[2:])
>>> message
b'abctf{rs4_is_aw3s0m3}
    
