f = open('/home/js/.config/lemonbar/netfile', 'r')
x = f.read()
f.close()
if 'Not' in x:
	print('Not Connected')
else:
	print('Connected')
