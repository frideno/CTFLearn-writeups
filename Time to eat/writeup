first clean up and change to meaningfull names of functions.
original is eat0.py, and changed is eat.py

then, time to understand the functions:
main:
gets string x with length of 9. x[0,1,2,7,8] must be digits.
calculates res = f2(f3(x), f4(f3(x))
check if res == "E10a23t9090t9ae0140", then if it does, gives the ctf flag - which is "eaten_"+x.

f3(x): return 3*x[0,1,2] + rev(x)
f4(y): return "Eat9"+y[0,1,2]
f2(y,z):
 takes z[0] then y[0,1],
 then z[1] then y[2,3],
 and so on until the end of the strings.

put all together:
we want customize f2(y,z)=E10a23t9090t9ae0140, so we can get y,z by f2 activation:
y = 1023900tae14
z = Eat9900

we then know that 
f3(x) = y = 1023900tae14
f4(f3(x)) = z = Eat9900

by first info we can tell 1023 = 341 *3, then 900tae14() is rev(x) means ()41eat009 is x
this means that () is 3. because ()41 = 341.

therefore:
x = 341eat009, and we done.
and indeed 

/ctflearn/Time to eat$ python3 eat0.py

what's the answer
341eat009
1023900tae143 Eat9900
absolutely EATEN!!! CTFlearn{ eaten_341eat009 }

