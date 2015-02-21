Steven Seppala & Seth Decker
Group U10

To run the code type 

$ > sudo python U10ping.py <HOST_OR_ADDRESS_TO_PING>

For example, to ping google you would type

$ > sudo python U10ping.py google.com

Tests made for this code inlcude forcing certain error codes and varrying the timeout delay dynamically.
We also tried to ping several different servers that were known to filter ICMP packets the way that UNM does.
Other than that, ICMP pack pong's were disected and observed to see where and how the different replies were sent.
On UNM's network, ping was tested against known internal IP addresses, and known good pings, such as google. The same
was done outside of the network to illistrate how ICMP packets are filtered on the UNM network.

There will be a trace back error if the website does not exist. As this was not a part of the design conditions, and all websites to 
be used with this program exist, it was left as is.

Screen captures of all outputs can be provided.


Example outputs from the internal UNM Network Follow ::

Ping of google.com 	::

Communication Administratively Prohibited
Minimum : 0.0 ms || AVG:  0.0 ms
Maximum : 0.0 ms || Packetloss 100.0%

Ping of unm.edu  	::

Minimum : 1.20902 ms || AVG: 1.45941 ms
Maximum : 2.33412 ms || Packetloss 0.0%


[This is a labcomputer. The IP was needed because they do not have DNS]
Ping of 64.106.20.117 	::

Minimum : .494 ms || AVG : .6536 ms
Maximum : .75197 ms || Packetloss 0.0%

________________________________________

Packet examples from outside UNM Network follow::

Ping of formin.finland.fi

Minimum : 47.53399 ms || AVG : 49.3726  ms
Maximum : 51.49058 ms || Packet Loss: 0.0%


Ping of www.mofa.go.jp

Minimum :  32.78804 ms || AVG : 33.87362 ms
Maximum :  35.01296 ms || Packet Loss: 0.0%


Ping of kremlin.ru

Minimum :  199.53799 ms || AVG : 203.218 ms
Maximum :  205.35493 ms || Packet Loss: 0.0%


Ping of unm.edu

Communication Administrativly Prohibited

Minimum :  0.0 ms || AVG :  0 ms
Maximum :  0.0 ms || Packet Loss: 100.0%


Ping of google.com

Minimum : 33.16307 ms || AVG : 35.91896 ms
Maximum : 38.42282 ms || Packet Loss: 0.0%



