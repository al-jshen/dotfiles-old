f = open('/home/js/.config/lemonbar/mutefile', 'r')
x = f.read()
f.close()
if 't' in x:
	print "(Muted)"

