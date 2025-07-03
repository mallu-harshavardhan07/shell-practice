#!/bin/bash
 #we no need to define these variables .  
 #Already they are defined and shell  will provide to us.
 #eg :- $1

echo " All the variables passed to script : $@ "
echo "No of varaibles passed : $# "
echo " script name : $0 "
echo " present working directory is : $PWD "
echo " home directory of user running is :$USER "
echo "PID of the current script is : $$ "
sleep 10 &
echo "PID of the last command running in background : $! "
