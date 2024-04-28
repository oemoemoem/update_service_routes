#!/bin/bash
if [[ $# -eq 1 ]] ; then
	echo "Starting update of Service Routes!"

	sudo iptables -t nat -A PREROUTING -d 10.0.0.2 -j DNAT --to-destination $1 
	sudo iptables -t nat -A POSTROUTING -s $1 -j SNAT --to-source 10.0.0.2
	sudo iptables -t nat -A PREROUTING -d 10.0.1.1 -j DNAT --to-destination $1 
	sudo iptables -t nat -A POSTROUTING -s $1 -j SNAT --to-source 10.0.1.1
	sudo iptables -t nat -A PREROUTING -d 10.0.1.2 -j DNAT --to-destination $1 
	sudo iptables -t nat -A POSTROUTING -s $1 -j SNAT --to-source 10.0.1.2
	sudo iptables -t nat -A PREROUTING -d 10.0.1.3 -j DNAT --to-destination $1 
	sudo iptables -t nat -A POSTROUTING -s $1 -j SNAT --to-source 10.0.1.3
	sudo iptables -t nat -A PREROUTING -d 10.0.1.4 -j DNAT --to-destination $1 
	sudo iptables -t nat -A POSTROUTING -s $1 -j SNAT --to-source 10.0.1.4
	sudo iptables -t nat -A PREROUTING -d 10.0.128.1 -j DNAT --to-destination $1 
	sudo iptables -t nat -A POSTROUTING -s $1 -j SNAT --to-source 10.0.1.129
        sudo iptables -t nat -A PREROUTING -d 10.0.1.129 -j DNAT --to-destination $1 

	sudo iptables -t nat -A POSTROUTING -s $1 -j SNAT --to-source 10.0.128.1
	sudo iptables -t nat -A PREROUTING -d 10.0.128.2 -j DNAT --to-destination $1 
	sudo iptables -t nat -A POSTROUTING -s $1 -j SNAT --to-source 10.0.128.2
	sudo iptables -t nat -A PREROUTING -d 10.0.129.1 -j DNAT --to-destination $1 
	sudo iptables -t nat -A POSTROUTING -s $1 -j SNAT --to-source 10.0.129.1
	sudo iptables -t nat -A PREROUTING -d 10.0.129.2 -j DNAT --to-destination $1 
	sudo iptables -t nat -A POSTROUTING -s $1 -j SNAT --to-source 10.0.129.2
	sudo iptables -t nat -A PREROUTING -d 10.0.130.1 -j DNAT --to-destination $1 
	sudo iptables -t nat -A POSTROUTING -s $1 -j SNAT --to-source 10.0.130.1
	sudo iptables -t nat -A PREROUTING -d 10.0.130.2 -j DNAT --to-destination $1 
	sudo iptables -t nat -A POSTROUTING -s $1 -j SNAT --to-source 10.0.130.2

	sudo iptables -t nat -A PREROUTING -d 10.0.131.1 -j DNAT --to-destination $1 
	sudo iptables -t nat -A POSTROUTING -s $1 -j SNAT --to-source 10.0.131.1
	sudo iptables -t nat -A PREROUTING -d 10.0.131.2 -j DNAT --to-destination $1 
	sudo iptables -t nat -A POSTROUTING -s $1 -j SNAT --to-source 10.0.131.2
	sudo iptables -t nat -A PREROUTING -d 10.0.132.1 -j DNAT --to-destination $1 
	sudo iptables -t nat -A POSTROUTING -s $1 -j SNAT --to-source 10.0.132.1
	sudo iptables -t nat -A PREROUTING -d 10.0.132.2 -j DNAT --to-destination $1 
	sudo iptables -t nat -A POSTROUTING -s $1 -j SNAT --to-source 10.0.132.2
	sudo iptables -t nat -A PREROUTING -d 192.168.102.1 -j DNAT --to-destination $1 
	sudo iptables -t nat -A POSTROUTING -s $1 -j SNAT --to-source 192.168.102.1
	sudo iptables -t nat -A PREROUTING -d 192.168.102.2 -j DNAT --to-destination $1 

	sudo iptables -t nat -A POSTROUTING -s $1 -j SNAT --to-source 192.168.102.2
	sudo iptables -t nat -A PREROUTING -d 204.254.74.126 -j DNAT --to-destination $1 
	sudo iptables -t nat -A POSTROUTING -s $1 -j SNAT --to-source 204.254.74.126
	sudo iptables -t nat -A PREROUTING -d 207.76.180.1 -j DNAT --to-destination $1 
	sudo iptables -t nat -A POSTROUTING -s $1 -j SNAT --to-source 207.76.180.1
	sudo iptables -t nat -A PREROUTING -d 207.76.180.2 -j DNAT --to-destination $1 
	sudo iptables -t nat -A POSTROUTING -s $1 -j SNAT --to-source 207.76.180.2
	sudo iptables -t nat -A PREROUTING -d 207.76.180.12 -j DNAT --to-destination $1 
	sudo iptables -t nat -A POSTROUTING -s $1 -j SNAT --to-source 207.76.180.12
	sudo iptables -t nat -A PREROUTING -d 207.76.180.13 -j DNAT --to-destination $1 
	sudo iptables -t nat -A POSTROUTING -s $1 -j SNAT --to-source 207.76.180.13

	sudo iptables -t nat -A PREROUTING -d 207.76.180.96 -j DNAT --to-destination $1 
	sudo iptables -t nat -A POSTROUTING -s $1 -j SNAT --to-source 207.76.180.96
	sudo iptables -t nat -A PREROUTING -d 209.240.194.40 -j DNAT --to-destination $1 
	sudo iptables -t nat -A POSTROUTING -s $1 -j SNAT --to-source 209.240.194.40
	sudo iptables -t nat -A PREROUTING -d 209.240.194.41 -j DNAT --to-destination $1 
	sudo iptables -t nat -A POSTROUTING -s $1 -j SNAT --to-source 209.240.194.41
	sudo iptables -t nat -A PREROUTING -d 209.240.194.42 -j DNAT --to-destination $1 
	sudo iptables -t nat -A POSTROUTING -s $1 -j SNAT --to-source 209.240.194.42
	sudo iptables -t nat -A PREROUTING -d 209.240.194.70 -j DNAT --to-destination $1 
	sudo iptables -t nat -A POSTROUTING -s $1 -j SNAT --to-source 209.240.194.70
	sudo iptables -t nat -A PREROUTING -d 209.240.194.71 -j DNAT --to-destination $1 

	sudo iptables -t nat -A POSTROUTING -s $1 -j SNAT --to-source 209.240.194.71
	sudo iptables -t nat -A PREROUTING -d 209.240.194.72 -j DNAT --to-destination $1 
	sudo iptables -t nat -A POSTROUTING -s $1 -j SNAT --to-source 209.240.194.72
	sudo iptables -t nat -A PREROUTING -d 209.240.194.73 -j DNAT --to-destination $1 
	sudo iptables -t nat -A POSTROUTING -s $1 -j SNAT --to-source 209.240.194.73
	sudo iptables -t nat -A PREROUTING -d 210.150.22.37 -j DNAT --to-destination $1 
	sudo iptables -t nat -A POSTROUTING -s $1 -j SNAT --to-source 210.150.22.37
	sudo iptables -t nat -A PREROUTING -d 210.150.22.58 -j DNAT --to-destination $1 
	sudo iptables -t nat -A POSTROUTING -s $1 -j SNAT --to-source 210.150.22.58
	sudo iptables -t nat -A PREROUTING -p tcp --dport 1615 -j DNAT --to-destination $1:1615
	sudo iptables -t nat -A POSTROUTING -p tcp -d 10.0.0.1 --dport 1615 -j SNAT --to-source $1

	sudo iptables -t nat -A POSTROUTING -p tcp -d 192.168.1.1 --dport 1615 -j SNAT --to-source $1
	sudo iptables -t nat -A POSTROUTING -p tcp -d 192.168.1.1 --dport 1615 -j SNAT --to-source $1

	echo "Service IP address has been updated to: ($1)"
	exit 1
fi

if [[ $# -eq 0 ]] ; then	
	echo "MISSING DESIRED IP ADDRESS!"
	echo "This screipt requires the command format: update_service_routes.sh <DESIREDIP>"
	exit 1
fi