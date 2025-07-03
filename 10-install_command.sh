
#!/bin/bash
userid=$(id -u)
if [ $userid -ne 0]
then
    echo " error : run with root access "
else
    ech0 "running with root access "
fi