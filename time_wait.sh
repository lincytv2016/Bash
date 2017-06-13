#!/bin/bash
#  
# Lincy Varghese [5678945]

# geting the time wait condtion set 
$condtion=$(sudo netstat -ntp | grep -i "TIME_WAIT" | wc -l )

if [ $condtion -ge 100 ]; Then
  # adding the keyvalue for the tcp_te_reuse 
  # default value is 0 changing to 1 to fluse the connections 
  sudo echo "1" > /proc/sys/net/ipv4/tcp_tw_reuse
  # Resatrting the service 
  sudo service network restart
fi
printf "Value Added"

if [ $condtion -ge 300 ]; Then
  # adding the keyvalue for the tcp_te_reuse 
  # default value is 0 changing to 1 to fluse the connections 
  sudo echo "1" > /proc/sys/net/ipv4/tcp_tw_recycle
  # Resatrting the service 
  sudo service network restart
fi

printf "Value Add"
