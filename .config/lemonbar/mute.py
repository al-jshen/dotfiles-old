f = open('/home/js/.config/lemonbar/mutefile', 'r')
x = f.read()
f.close()
if 'f' in x:
	print('Muted')

