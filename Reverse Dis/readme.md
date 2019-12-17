first, chmod +x problem. then we can run it:

omri@omri-Latitude-E7240:~/ctflearn/Reverse Dis$ ./problem
Input password: pass
Wrong password

we start by doing strings problem. it gives:
Input password: 
Good job dude !!!
Wrong password
;*3$"
IdontKnowWhatsGoingOn

so we need to go deeper:
we disassemble it, into dis.txt, and globs.txt (objdump -d and -t).
assembly only 260 lines, with 70 of main:

we noitice first that there is a for loop of i=0 to i<=0x15 (=22).
there is variables named key, key2, str, msg. lets get their values:
0x555555755020 <str>:	0x00000008	0x00000006	0x0000002c	0x0000003a
0x555555755030 <str+16>:	0x00000032	0x00000030	0x0000001c	0x0000005c
0x555555755040 <str+32>:	0x00000001	0x00000032	0x0000001a	0x00000012
0x555555755050 <str+48>:	0x00000045	0x0000001d	0x00000020	0x00000030
0x555555755060 <str+64>:	0x0000000d	0x0000001b	0x00000003	0x0000007c
0x555555755070 <str+80>:	0x00000013	0x00000000	0x00000000	0x00000000
0x555555755080 <key>:	0x6e6f6449	0x6f6e4b74	0x61685777	0x6f477374
0x555555755090 <key+16>:	0x4f676e69	0x0000006e	0x00000001	0x00000000
key2 used to store bytes of key.
msg is array which is msg[i] = str[i]^key[i]
then, a cmp between msg and input is preformed.

lets, just use gdb to get right before they get compared, to check value of msg.
