from pwn import *
from mt19937predictor import MT19937Predictor

predictor = MT19937Predictor()
conn = remote('138.197.193.132',5002, timeout=11048576)
for i in range(4):
	print(conn.recvline().decode('ascii'))


# winning over input move.
def winning(s):
	if s == 'R': return 'P'
	if s == 'P': return 'S'
	if s == 'S': return 'R'

d = {}
xs = []
# feed predictor with 624 examples.
for i in range(624):
	step = 'R'
	# send next input:
	conn.sendline(step)
	# get fidbek lines:
	conn.recvline()
	line = conn.recvline().decode('ascii').split(' ')
	basedon  = int(line[-1])
	xs.append(basedon)
	conn.recvline()
	print(i)
print('done with 624 exapmles')
choses = ['R', 'P', 'S']
# now knows how to win 30 times:

predictor = MT19937Predictor()
for x in xs:
	predictor.setrandbits(x, 32)
predictions = [predictor.getrandbits(32) for i in range(30)]
moves = [winning(choses[s%3]) for s in predictions]
print(moves)
conn.interactive()
"""
for i in range(30):
	conn.sendline(moves[i])
	d['didIWon'] = int(conn.recvline().decode('ascii').split('!')[0] == '>>>You won')
	line = conn.recvline().decode('ascii').split(' ')
	basedon  = int(line[-1])
	d['basedOn'] = basedon
	print(i,d)
	conn.recvline()

print(conn.recvline().decode('ascii'))
print(conn.recvline().decode('ascii'))
"""
