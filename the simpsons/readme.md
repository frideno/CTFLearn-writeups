# strings ItskrumpingTime.jpg
find out:


Ahh! Realistically the Simpsons would use octal instead of decimal!
encoded = 152 162 152 145 162 167 150 172 153 162 145 170 141 162
key = chr(SolutionToDis(110 157 167 040 155 165 143 150 040 144 151 144 040 115 141 147 147 151 145 040 157 162 151 147 151 156 141 154 154 171 040 143 157 163 164 077 040 050 104 151 166 151 144 145 144 040 142 171 040 070 054 040 164 157 040 164 150 145 040 156 145 141 162 145 163 164 040 151 156 164 145 147 145 162 054 040 141 156 144 040 164 150 145 156 040 160 154 165 163 040 146 157 165 162 051))
key = key + key + chr(ord(key)-4)
print(DecodeDat(key=key,text=encoded))


numbers must be in octal base:

In [0]: def intArr_toStr(a): 
   ...:     return ''.join([chr(x) for x in [int(t, base=8) for t in a.split(' ')]]) 
   ...:      
   ...:  

then:
In [1]: cipher = intArr_toStr('152 162 152 145 162 167 150 172 153 162 145 170 141 162')                                                                                                                    

In [2]: keyinside = intArr_toStr('110 157 167 040 155 165 143 150 040 144 151 144 040 115 141 147 147 151 145 040 157 162 151 147 151 156 141 154 154 171 040 143 157 163 164 077 040 050 104 151 166 151 14
   ...: 4 145 144 040 142 171 040 070 054 040 164 157 040 164 150 145 040 156 145 141 162 145 163 164 040 151 156 164 145 147 145 162 054 040 141 156 144 040 164 150 145 156 040 160 154 165 163 040 146 15
   ...: 7 165 162 051')                                                                                                                                                                                     

In [3]: keyinside                                                                                                                                                                                          
Out[0]: 'How much did Maggie originally cost? (Divided by 8, to the nearest integer, and then plus four)'

SolutionToDis(keyinside) is the answer to this question from the simpsons: 847.63$ is the price, so the answer is (848/8+4) which is 110.
(found on https://www.neatorama.com/2011/12/16/a-few-more-facts-about-the-simpsons/)

so:
In [4]: key = chr(110)                                                                                                                                                                                     

In [5]: key = key + key + chr(ord(key)-4) 
    ...:                                                                                                                                                                                                    

so now we need to decode with cipher, key given.
In [6]: cipher, key                                                                                                                                                                                        
Out[2]: ('jrjerwhzkrexar', 'nnj')

define a subtition cipher function to decrypt:
In [7]: def decrypt(cpr, k): 
    ...:     cpr = [ord(c)-ord('a') for c in cpr] 
    ...:     k = [ord(c) - ord('a') for c in k] 
    ...:     m = [] 
    ...:     for i in range(len(cpr)): 
    ...:         c = cpr[i] 
    ...:         m.append(chr(ord('a') + (c - k[i%len(k)])%26 )) 
    ...:     return ''.join(m) 
    ...:      
    ...:      
    ...:                                                                                                                                                                                                    

In [8]: decrypt(cipher, key)                                                                                                                                                                               
Out[2]: 'wearenumberone'

and here is the flag!
