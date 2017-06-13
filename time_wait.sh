#!/bin/bash
# Rean Managed Service Script 


$condtion=$(sudo netstat -ntp | grep -i "TIME_WAIT" | wc -l )

if [ $condtion -ge 100 ];
	Then
  sudo echo "1" > /proc/sys/net/ipv4/tcp_tw_reuse
  sudo 
else
  
fi