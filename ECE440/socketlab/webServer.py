from socket import *
server = socket(AF_INET, SOCK_STREAM)
port = 12030
server.bind((gethostname(), port))
server.listen(1)
while True:
    print 'Ready to serve'
    conection,  addr = server.accept()                      #accept messages from port
    try:
		conection.send("HTTP/1.1 200 OK\r\n\r\n")   #ok mesage
                message = conection.recv(1024)              #recive message buffer
		#print message                               #debug message
                filename = message.split()[1]               #get file name
                #print filename                          #debug
                f = open(filename[1:])                      #open files
		outputdata = f.read()                       #read html file
		for i in range(0, len(outputdata)):         #write out the file
			conection.send(outputdata[i])
		conection.close()                           #close the connecion
    except IOError:
                conection.send("ERORR 404 : PAGE NOT FOUND")
		conection.close()                           #error out and close conection
    except KeyboardInterrupt:
        server.close()                                      #kill the program.
        conection.close()
        break;                                              #exit

#in browser open page with '"computer_name":12030'
