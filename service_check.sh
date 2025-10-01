#!/bin/bash

process_name_="nginx"

if systemctl is-active --quiet "$process_name_"; then
       echo "Process is running"	
elif systemctl is-enabled --quiet "$process_name_"; then
       echo "Process is inactive,please start it!" 
else       
   systemctl enable "$process_name_"
   systemctl start  "$process_name_"

    echo " The process was disabled, but i have restarted it for you"

fi   
