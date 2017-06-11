#!/bin/bash
# This is the script to clear sssd cache 
# Lincy Varghese
# version 1.0

cahce_path='/var/lib/sss/db/'

set -e # setting the debug mode 
sudo sss_cache -E # clearing the sssd cache with command

if [ -f $(ls $cahce_path) ];
then
  #stoping the service 
  sudo service sssd stop
  #removing the cache
  sudo rm -rf $cahce_path*
  #starting the cache
  sudo service sssd start
else
 echo "cache Flushed OUT"
fi

