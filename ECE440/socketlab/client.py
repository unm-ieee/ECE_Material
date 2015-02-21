from socket import *
import sys
print
# Create a TCP/IP socket
client = socket(AF_INET, SOCK_STREAM)
#Connect the socket to the port on the server given by the caller
server_address = (sys.argv[1],((int)(sys.argv[2]))) #set address
client.connect(server_address)                      #connect to address
target = "GET " + '/' + sys.argv[3]                       #get the target
print "Request: ",target                            #display request
client.send(target)                                 #sends the request
indata = client.recv(1024)                          #recieve buffer
if not indata:                                      #make sure file is valid
    quit()
print "From Server: ", indata                       #display recieved data
dat = 1                                             #get data packets and write them out
while (dat):
    dat = client.recv(4096)
    while(dat):
        print "From Server: ", dat
        dat = client.recv(4096)     

