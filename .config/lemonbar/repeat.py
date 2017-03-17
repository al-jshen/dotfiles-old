f = open('/home/js/.config/lemonbar/repeat', 'r')
x = f.read()
f.close()
for i in range(len(x)-43):
	if x[i:i+6] == "repeat":
		if x[i+9] == "n":
			print "(R)"
