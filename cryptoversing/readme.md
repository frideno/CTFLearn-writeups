I used Ghidra to reverse it. 
i simplifed the c code to normal names and entered dynamic values using gdb.
it is in ghidrad.

overall, there is a cihper string and two keys:
cipher = 'h_bO}EcDOR+G)uh(jl,vL'
key1=0x10, key2=0x18

key1 is xored over the first half of input, then key2 on the second half.
the result is cipher.
we use python to reverse it:

k1 = 0x10
k2 = 0x18
xored_str = 'h_bO}EcDOR+G)uh(jl,vL'
xored = [ord(c) for c in xored_str]
m_1 = ''.join([chr(c^k1) for c in xored[:len(xored)//2]])
m_2 = ''.join([chr(c^k2) for c in xored[len(xored)//2:]])
print('flag = ' + m_1 + m_2)

output: 
flag = xOr_mUsT_B3_1mp0rt4nT
