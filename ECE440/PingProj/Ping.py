from socket import *
import os
import sys
import struct
import time
import select
import binascii

ICMP_ECHO_REQUEST = 8

def checksum(str): 
	csum = 0
	countTo = (len(str) / 2) * 2
	count = 0
	while count < countTo:
		thisVal = ord(str[count+1]) * 256 + ord(str[count]) 
		csum = csum + thisVal 
		csum = csum & 0xffffffffL 
		count = count + 2
	if countTo < len(str):
		csum = csum + ord(str[len(str) - 1])
		csum = csum & 0xffffffffL 

	csum = (csum >> 16) + (csum & 0xffff)
	csum = csum + (csum >> 16)
	answer = ~csum
	answer = answer & 0xffff 
	answer = answer >> 8 | (answer << 8 & 0xff00) 
	return answer


def receiveOnePing(mySocket, ID, timeout, destAddr):
	timeLeft = timeout
        while 1:
                startedSelect = time.time()
		whatReady = select.select([mySocket], [], [], timeLeft)
		howLongInSelect = (time.time() - startedSelect)
		#print("what ready" , whatReady[0])
                if whatReady[0] == []: 
			#Timeout
			return 0 
		timeReceived = time.time() #time since epoch 
		recPacket, addr = mySocket.recvfrom(1500)
		#parse icmp packet
                icmpHeader = recPacket[20:28]
                type = ord(recPacket[20])
                code = ord(recPacket[21])
                checksum = ord(recPacket[22]) | (ord(recPacket[23]) << 8)
                packetID = ord(recPacket[24]) | (ord(recPacket[25]) << 8)
                sequence = ord(recPacket[26]) | (ord(recPacket[26]) << 8)
                #type,code,checksum,packetID,sequence=struct.unpack("bbHHh",icmpHeader)
		#print("type" ,type )
		#print("code" ,code )
		#print("checksum" ,checksum )
		#print "packetID && ID" ,packetID, ID 
		#print "Sequence" , sequence
                if packetID == ID:
			bytesInDouble = struct.calcsize("d")
			timeSent = struct.unpack("d", recPacket[28:28 + bytesInDouble])[0]
                        if ((type == 3) and ( code == 0)):
                            print "Net Unreachable"
                            return 0 
                        if ((type == 3) and ( code == 1)):
                            print "Host Unreachable"
                            return 0 
                        if ((type == 3) and ( code == 2)):
                            print "Protocol Unreachable"
                            return 0 
                        if ((type == 3) and ( code == 3)):
                            print "Port Unreachable"
                            return 0 
                        if ((type == 3) and ( code == 4)):
                            print "Fragmentation Needed and Don't Fragment was Set"
                            return 0 
                        if ((type == 3) and ( code == 5)):
                            print "Source Route Failed"
                            return 0 
                        if ((type == 3) and ( code == 6)):
                            print "Destination Network Unknown"
                            return 0 
                        if ((type == 3) and ( code == 7)):
                            print "Destination Host Unknown"
                            return 0 
                        if ((type == 3) and ( code == 8)):
                            print "Source Host Isloated"
                            return 0 
                        if ((type == 3) and ( code == 9)):
                            print "Communication with Destination Network is \
                                    Administartively Prohibited"
                            return 0 
                        if ((type == 3) and ( code == 10)):
                            print "Communication with Destination Host is\
                                    Administartively Prohibited"
                            return 0 
                        if ((type == 3) and ( code == 11)):
                            print "Destination Network Unreachable for Type of Serivce"
                            return 0 
                        if ((type == 3) and ( code == 12)):
                            print "Destination Host Unreachable for Type of Service"
                            return 0 
                        if ((type == 3) and ( code == 13)):
                            print "Communication Administartively Prohibited"
                            return 0 
                        if ((type == 3) and ( code == 14)):
                            print "Host Precedence Violation"
                            return 0 
                        if ((type == 3) and ( code == 15)):
                            print "Prescedence cutoff in effect"
                            return 0 
                        return timeReceived - timeSent
		#Fetch the ICMP header from the IP packet 
		timeLeft = timeLeft - howLongInSelect
		if timeLeft <= 0:
			return 0

def sendOnePing(mySocket, destAddr, ID):
	# Header is type (8), code (8), checksum (16), id (16), sequence (16) 
	myChecksum = 0
	# Make a dummy header with a 0 checksum.
	# struct-- Interpret strings as packed binary data
	header = struct.pack("bbHHh", ICMP_ECHO_REQUEST, 0, myChecksum, ID, 1)
	#print("CREATED HEADER", header)
	data = struct.pack("d", time.time()) 
	# Calculate the checksum on the data and the dummy header.
	myChecksum = checksum(header + data)
	# Get the right checksum, and put in the header
	if sys.platform == 'darwin':
		myChecksum = htons(myChecksum) & 0xffff 
		#Convert 16-bit integers from host to network byte order.
	else:
		myChecksum = htons(myChecksum)  
	
	header = struct.pack("bbHHh", ICMP_ECHO_REQUEST, 0, myChecksum, ID, 1)
	#print("SEND ONE PING ID :: ", ID)
	packet = header + data
	mySocket.sendto(packet, (destAddr, 1)) 	
	#AF_INET address must be tuple, not str
	#Both LISTS and TUPLES consist of a number of objects 
	#which can be referenced by their position number within the object
		
def doOnePing(destAddr, timeout): 
	icmp = getprotobyname("icmp")
	#Create Socket here
	mySocket = socket(AF_INET,SOCK_RAW, icmp)
        mySocket.bind(("",12030))
        myID = os.getpid() & 0xFFFF 
	#Return the current process i
	sendOnePing(mySocket, destAddr, myID)
	delay = receiveOnePing(mySocket, myID, timeout, destAddr) 
	mySocket.close() 
	return delay
	
def ping(host, timeout=1):
	#timeout=1 means: If one second goes by without a reply from the server,
	#the client assumes that either the clinet ping or server ping is lost
	dest = gethostbyname(host)
	packetloss = 0
        print "Pinging " + dest + " using Python:"
	print ""
	#Send ping requests to a server separated by approximately one second
	while 1 :
		delay = doOnePing(dest, timeout)                
                if delay == 0 :
                    packetloss = packetloss + 1
                delay1 = doOnePing(dest, timeout)
                if delay1 == 0 :
                    packetloss = packetloss + 1
                delay2= doOnePing(dest, timeout)  
                if delay2 == 0 :
                    packetloss = packetloss + 1
                delay3= doOnePing(dest, timeout)
                if delay3 == 0 :
                    packetloss = packetloss + 1
                delay4= doOnePing(dest, timeout)
                if delay4 == 0 :
                    packetloss = packetloss + 1
                Minimum = min(delay,delay1,delay2,delay3,delay4) * 1000
                Maximum = max(delay,delay1,delay2,delay3,delay4) * 1000
                avg = ((delay+delay2+delay3+delay4)/5) * 1000
                #print "PACKET LOSS ==>" ,packetloss
                print "Minimum: " , round(Minimum,5), " ms || AVG: " ,  round(avg,5), "ms"
                print "Maximum: " , round(Maximum,5), " ms || Packet Loss : ",\
                        (packetloss/float(5))*100,"%"
		#time.sleep(1)	
		#one second
		return delay


while(True):
    ping(sys.argv[1])
    print ""
    break
