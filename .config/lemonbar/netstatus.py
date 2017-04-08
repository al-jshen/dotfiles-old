connectionStatusFile = open('/home/js/.config/lemonbar/netfile', 'r')
connectionStatus = connectionStatusFile.read()
connectionStatusFile.close()
networkAddressFile = open('/home/js/.config/lemonbar/netaddr', 'r')
networkAddress = networkAddressFile.read()
networkAddressFile.close()
if 'Not' in connectionStatus:
	print('Not Connected')
else:
	print('Connected to ' + networkAddress)
