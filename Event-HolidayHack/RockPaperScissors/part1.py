from pwn import *
import time

conn = remote('138.197.193.132',5001)
for i in range(4):
	print(conn.recvline().decode('ascii'))



def winning(s):
	if s == 'R': return 'P'
	if s == 'P': return 'S'
	if s == 'S': return 'R'

theirsteps = ['R', 'S', 'R', 'P', 'R', 'R', 'P' , 'R' , 'S' , 'R', 'P', 'S', 'S']

d = {}
f = open('input', 'w')
for i in range(10):
	step = winning(theirsteps[i])
	f.write(step+'\n')
	# send next input:
	conn.send(step)
	# get fidbek lines:	
	d['didIWon'] = conn.recvline().decode('ascii').split('!')[0] == '>>>You won'
	line = conn.recvline().decode('ascii').split(' ')
	d['theyCoose'] = line[2]
	d['BasedOn'] = int(line[-1])
	conn.recvline()
	print(d)
	# calculate my next step:
time.sleep(2)
print(conn.recvline().decode('ascii'))
print(conn.recvline().decode('ascii'))
