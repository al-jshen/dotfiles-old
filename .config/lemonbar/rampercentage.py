f = open('/home/js/.config/lemonbar/ramin', 'r')
x = f.read()
f.close()
x2 = ''
x4 = []
x6 = ''

for i in x:
   if i != '/':
      x2 += i
x3 = x2.split()
for j in x3:
   l = float(j)
   x4.append(l)
x5 = str((x4[0] / x4[1]) * 100)
for k in x5:
    if k != '.':
        x6 += k
    else:
        x6 += k
        x6 += (x5[x5.index(k) + 1])
        break
print(x6 + '%')
