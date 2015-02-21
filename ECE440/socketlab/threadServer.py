from socket import *
import threading

class newclient(threading.Thread):
    def __init__(self, addr,conection):
        threading.Thread.__init__(self)                         #initalize the new thread
        self.addr = addr                                        #give addrs and port vals
        self.socket = conection
        #print "New thread Made\n"
    def run(self):
        print "Connecting to" + str(addr)
	try:
		conection.send("HTTP /1.1 200 OK\r\n\r\n")      #send okay header
		message = conection.recv(1024)                  #recieve buffer
		filename = message.split()[1]                   #cuts off the '/' in the request page
		#print filename 
                f = open(filename[1:])                          
		outputdata = f.read()                           #read in the file
		for i in range(0, len(outputdata)):
			conection.send(outputdata[i])
		conection.close()
	except IOError:
		conection.send("404 NOT FOUND")
		conection.close()
	except KeyboardInterrupt:
		server.close()
		conection.close()
		exit();



server = socket(AF_INET, SOCK_STREAM)
port = 12030
server.bind((gethostname(), port))

while True:
    server.listen(5) 
    print 'Ready to serve'
    conection,  addr = server.accept()                          #accept the connection
    newthread = newclient(addr,conection)                       #start new thread and pass it the parmeters
    newthread.start()                                           #start thread
#in browser open page with '"computer_name":12030'
